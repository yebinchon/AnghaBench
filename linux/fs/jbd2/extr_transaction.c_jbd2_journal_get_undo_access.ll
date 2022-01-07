; ModuleID = '/home/carl/AnghaBench/linux/fs/jbd2/extr_transaction.c_jbd2_journal_get_undo_access.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jbd2/extr_transaction.c_jbd2_journal_get_undo_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32, i32 }
%struct.journal_head = type { i8* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@GFP_NOFS = common dso_local global i32 0, align 4
@__GFP_NOFAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"generate b_committed data\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jbd2_journal_get_undo_access(i32* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.journal_head*, align 8
  %8 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %5, align 8
  store i8* null, i8** %8, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %11 = call i64 @jbd2_write_access_granted(i32* %9, %struct.buffer_head* %10, i32 1)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %86

14:                                               ; preds = %2
  %15 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %16 = call %struct.journal_head* @jbd2_journal_add_journal_head(%struct.buffer_head* %15)
  store %struct.journal_head* %16, %struct.journal_head** %7, align 8
  %17 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %18 = call i32 @JBUFFER_TRACE(%struct.journal_head* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %19 = load i32*, i32** %4, align 8
  %20 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %21 = call i32 @do_get_write_access(i32* %19, %struct.journal_head* %20, i32 1)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %14
  br label %72

25:                                               ; preds = %14
  br label %26

26:                                               ; preds = %52, %25
  %27 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %28 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %40, label %31

31:                                               ; preds = %26
  %32 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %33 = call %struct.TYPE_2__* @jh2bh(%struct.journal_head* %32)
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @GFP_NOFS, align 4
  %37 = load i32, i32* @__GFP_NOFAIL, align 4
  %38 = or i32 %36, %37
  %39 = call i8* @jbd2_alloc(i32 %35, i32 %38)
  store i8* %39, i8** %8, align 8
  br label %40

40:                                               ; preds = %31, %26
  %41 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %42 = call i32 @jbd_lock_bh_state(%struct.buffer_head* %41)
  %43 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %44 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %69, label %47

47:                                               ; preds = %40
  %48 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %49 = call i32 @JBUFFER_TRACE(%struct.journal_head* %48, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i8*, i8** %8, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %47
  %53 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %54 = call i32 @jbd_unlock_bh_state(%struct.buffer_head* %53)
  br label %26

55:                                               ; preds = %47
  %56 = load i8*, i8** %8, align 8
  %57 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %58 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %57, i32 0, i32 0
  store i8* %56, i8** %58, align 8
  store i8* null, i8** %8, align 8
  %59 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %60 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %63 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %66 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @memcpy(i8* %61, i32 %64, i32 %67)
  br label %69

69:                                               ; preds = %55, %40
  %70 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %71 = call i32 @jbd_unlock_bh_state(%struct.buffer_head* %70)
  br label %72

72:                                               ; preds = %69, %24
  %73 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %74 = call i32 @jbd2_journal_put_journal_head(%struct.journal_head* %73)
  %75 = load i8*, i8** %8, align 8
  %76 = call i64 @unlikely(i8* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %72
  %79 = load i8*, i8** %8, align 8
  %80 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %81 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @jbd2_free(i8* %79, i32 %82)
  br label %84

84:                                               ; preds = %78, %72
  %85 = load i32, i32* %6, align 4
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %84, %13
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i64 @jbd2_write_access_granted(i32*, %struct.buffer_head*, i32) #1

declare dso_local %struct.journal_head* @jbd2_journal_add_journal_head(%struct.buffer_head*) #1

declare dso_local i32 @JBUFFER_TRACE(%struct.journal_head*, i8*) #1

declare dso_local i32 @do_get_write_access(i32*, %struct.journal_head*, i32) #1

declare dso_local i8* @jbd2_alloc(i32, i32) #1

declare dso_local %struct.TYPE_2__* @jh2bh(%struct.journal_head*) #1

declare dso_local i32 @jbd_lock_bh_state(%struct.buffer_head*) #1

declare dso_local i32 @jbd_unlock_bh_state(%struct.buffer_head*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @jbd2_journal_put_journal_head(%struct.journal_head*) #1

declare dso_local i64 @unlikely(i8*) #1

declare dso_local i32 @jbd2_free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
