; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_journal.c_ocfs2_journal_load.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_journal.c_ocfs2_journal_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_journal = type { i32, %struct.ocfs2_super* }
%struct.ocfs2_super = type { i32*, i32, i32, i32 }

@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Failed to load journal!\0A\00", align 1
@ocfs2_commit_thread = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"ocfs2cmt-%s\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"unable to launch ocfs2commit thread, error=%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_journal_load(%struct.ocfs2_journal* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ocfs2_journal*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ocfs2_super*, align 8
  store %struct.ocfs2_journal* %0, %struct.ocfs2_journal** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %4, align 8
  %10 = icmp ne %struct.ocfs2_journal* %9, null
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %4, align 8
  %15 = getelementptr inbounds %struct.ocfs2_journal, %struct.ocfs2_journal* %14, i32 0, i32 1
  %16 = load %struct.ocfs2_super*, %struct.ocfs2_super** %15, align 8
  store %struct.ocfs2_super* %16, %struct.ocfs2_super** %8, align 8
  %17 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %4, align 8
  %18 = getelementptr inbounds %struct.ocfs2_journal, %struct.ocfs2_journal* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @jbd2_journal_load(i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @ML_ERROR, align 4
  %25 = call i32 (i32, i8*, ...) @mlog(i32 %24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %77

26:                                               ; preds = %3
  %27 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %28 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %4, align 8
  %31 = getelementptr inbounds %struct.ocfs2_journal, %struct.ocfs2_journal* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %34 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ocfs2_clear_journal_error(i32 %29, i32 %32, i32 %35)
  %37 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @ocfs2_journal_toggle_dirty(%struct.ocfs2_super* %37, i32 1, i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %26
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @mlog_errno(i32 %43)
  br label %77

45:                                               ; preds = %26
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %73, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* @ocfs2_commit_thread, align 4
  %50 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %51 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %52 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32* @kthread_run(i32 %49, %struct.ocfs2_super* %50, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %56 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %55, i32 0, i32 0
  store i32* %54, i32** %56, align 8
  %57 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %58 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = call i64 @IS_ERR(i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %48
  %63 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %64 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @PTR_ERR(i32* %65)
  store i32 %66, i32* %7, align 4
  %67 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %68 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %67, i32 0, i32 0
  store i32* null, i32** %68, align 8
  %69 = load i32, i32* @ML_ERROR, align 4
  %70 = load i32, i32* %7, align 4
  %71 = call i32 (i32, i8*, ...) @mlog(i32 %69, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  br label %77

72:                                               ; preds = %48
  br label %76

73:                                               ; preds = %45
  %74 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %75 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %74, i32 0, i32 0
  store i32* null, i32** %75, align 8
  br label %76

76:                                               ; preds = %73, %72
  br label %77

77:                                               ; preds = %76, %62, %42, %23
  %78 = load i32, i32* %7, align 4
  ret i32 %78
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @jbd2_journal_load(i32) #1

declare dso_local i32 @mlog(i32, i8*, ...) #1

declare dso_local i32 @ocfs2_clear_journal_error(i32, i32, i32) #1

declare dso_local i32 @ocfs2_journal_toggle_dirty(%struct.ocfs2_super*, i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32* @kthread_run(i32, %struct.ocfs2_super*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
