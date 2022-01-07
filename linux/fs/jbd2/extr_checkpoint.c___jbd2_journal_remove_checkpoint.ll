; ModuleID = '/home/carl/AnghaBench/linux/fs/jbd2/extr_checkpoint.c___jbd2_journal_remove_checkpoint.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jbd2/extr_checkpoint.c___jbd2_journal_remove_checkpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.journal_head = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i32, %struct.transaction_chp_stats_s, i32*, i32*, %struct.TYPE_9__* }
%struct.transaction_chp_stats_s = type { i64 }
%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"not on transaction\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"removing from transaction\00", align 1
@T_FINISHED = common dso_local global i64 0, align 8
@jiffies = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__jbd2_journal_remove_checkpoint(%struct.journal_head* %0) #0 {
  %2 = alloca %struct.journal_head*, align 8
  %3 = alloca %struct.transaction_chp_stats_s*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  store %struct.journal_head* %0, %struct.journal_head** %2, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.journal_head*, %struct.journal_head** %2, align 8
  %8 = call i32 @JBUFFER_TRACE(%struct.journal_head* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.journal_head*, %struct.journal_head** %2, align 8
  %10 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %9, i32 0, i32 0
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %4, align 8
  %12 = icmp eq %struct.TYPE_8__* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.journal_head*, %struct.journal_head** %2, align 8
  %15 = call i32 @JBUFFER_TRACE(%struct.journal_head* %14, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %76

16:                                               ; preds = %1
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 5
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  store %struct.TYPE_9__* %19, %struct.TYPE_9__** %5, align 8
  %20 = load %struct.journal_head*, %struct.journal_head** %2, align 8
  %21 = call i32 @JBUFFER_TRACE(%struct.journal_head* %20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %22 = load %struct.journal_head*, %struct.journal_head** %2, align 8
  %23 = call i32 @__buffer_unlink(%struct.journal_head* %22)
  %24 = load %struct.journal_head*, %struct.journal_head** %2, align 8
  %25 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %24, i32 0, i32 0
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %25, align 8
  %26 = load %struct.journal_head*, %struct.journal_head** %2, align 8
  %27 = call i32 @jbd2_journal_put_journal_head(%struct.journal_head* %26)
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 4
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %16
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %32, %16
  br label %76

38:                                               ; preds = %32
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @T_FINISHED, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %76

45:                                               ; preds = %38
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 2
  store %struct.transaction_chp_stats_s* %47, %struct.transaction_chp_stats_s** %3, align 8
  %48 = load %struct.transaction_chp_stats_s*, %struct.transaction_chp_stats_s** %3, align 8
  %49 = getelementptr inbounds %struct.transaction_chp_stats_s, %struct.transaction_chp_stats_s* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %45
  %53 = load %struct.transaction_chp_stats_s*, %struct.transaction_chp_stats_s** %3, align 8
  %54 = getelementptr inbounds %struct.transaction_chp_stats_s, %struct.transaction_chp_stats_s* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* @jiffies, align 4
  %57 = call i64 @jbd2_time_diff(i64 %55, i32 %56)
  %58 = load %struct.transaction_chp_stats_s*, %struct.transaction_chp_stats_s** %3, align 8
  %59 = getelementptr inbounds %struct.transaction_chp_stats_s, %struct.transaction_chp_stats_s* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  br label %60

60:                                               ; preds = %52, %45
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.transaction_chp_stats_s*, %struct.transaction_chp_stats_s** %3, align 8
  %70 = call i32 @trace_jbd2_checkpoint_stats(i32 %65, i32 %68, %struct.transaction_chp_stats_s* %69)
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %73 = call i32 @__jbd2_journal_drop_transaction(%struct.TYPE_9__* %71, %struct.TYPE_8__* %72)
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %75 = call i32 @jbd2_journal_free_transaction(%struct.TYPE_8__* %74)
  store i32 1, i32* %6, align 4
  br label %76

76:                                               ; preds = %60, %44, %37, %13
  %77 = load i32, i32* %6, align 4
  ret i32 %77
}

declare dso_local i32 @JBUFFER_TRACE(%struct.journal_head*, i8*) #1

declare dso_local i32 @__buffer_unlink(%struct.journal_head*) #1

declare dso_local i32 @jbd2_journal_put_journal_head(%struct.journal_head*) #1

declare dso_local i64 @jbd2_time_diff(i64, i32) #1

declare dso_local i32 @trace_jbd2_checkpoint_stats(i32, i32, %struct.transaction_chp_stats_s*) #1

declare dso_local i32 @__jbd2_journal_drop_transaction(%struct.TYPE_9__*, %struct.TYPE_8__*) #1

declare dso_local i32 @jbd2_journal_free_transaction(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
