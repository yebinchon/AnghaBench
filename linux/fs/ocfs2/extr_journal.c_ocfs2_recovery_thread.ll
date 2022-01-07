; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_journal.c_ocfs2_recovery_thread.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_journal.c_ocfs2_recovery_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32, i32, i32*, i32, i64, i32 }

@__ocfs2_recovery_thread = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"ocfs2rec-%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocfs2_recovery_thread(%struct.ocfs2_super* %0, i32 %1) #0 {
  %3 = alloca %struct.ocfs2_super*, align 8
  %4 = alloca i32, align 4
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %6 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %5, i32 0, i32 1
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %10 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %13 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %12, i32 0, i32 4
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %16 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %19 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %27

23:                                               ; preds = %2
  %24 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @ocfs2_recovery_map_set(%struct.ocfs2_super* %24, i32 %25)
  br label %27

27:                                               ; preds = %23, %22
  %28 = phi i32 [ -1, %22 ], [ %26, %23 ]
  %29 = call i32 @trace_ocfs2_recovery_thread(i32 %8, i32 %11, i64 %14, i32* %17, i32 %28)
  %30 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %31 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %65

35:                                               ; preds = %27
  %36 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %37 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %65

41:                                               ; preds = %35
  %42 = load i32, i32* @__ocfs2_recovery_thread, align 4
  %43 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %44 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %45 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = call i32* @kthread_run(i32 %42, %struct.ocfs2_super* %43, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %49 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %48, i32 0, i32 2
  store i32* %47, i32** %49, align 8
  %50 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %51 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = call i64 @IS_ERR(i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %41
  %56 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %57 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = call i64 @PTR_ERR(i32* %58)
  %60 = trunc i64 %59 to i32
  %61 = call i32 @mlog_errno(i32 %60)
  %62 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %63 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %62, i32 0, i32 2
  store i32* null, i32** %63, align 8
  br label %64

64:                                               ; preds = %55, %41
  br label %65

65:                                               ; preds = %64, %40, %34
  %66 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %67 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %66, i32 0, i32 1
  %68 = call i32 @mutex_unlock(i32* %67)
  %69 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %70 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %69, i32 0, i32 0
  %71 = call i32 @wake_up(i32* %70)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @trace_ocfs2_recovery_thread(i32, i32, i64, i32*, i32) #1

declare dso_local i32 @ocfs2_recovery_map_set(%struct.ocfs2_super*, i32) #1

declare dso_local i32* @kthread_run(i32, %struct.ocfs2_super*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i64 @PTR_ERR(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
