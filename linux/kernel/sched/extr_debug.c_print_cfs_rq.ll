; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_debug.c_print_cfs_rq.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_debug.c_print_cfs_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.cfs_rq = type { i32, i32, %struct.TYPE_14__*, i32, i32, i32, %struct.TYPE_13__, %struct.TYPE_12__, i32, %struct.TYPE_10__, i32, i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__, i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.rq = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.sched_entity = type { i32 }
%struct.TYPE_15__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"cfs_rq[%d]:\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"  .%-30s: %Ld.%06ld\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"exec_clock\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"MIN_vruntime\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"min_vruntime\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"max_vruntime\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"spread\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"spread0\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"  .%-30s: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"nr_spread_over\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"nr_running\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"  .%-30s: %ld\0A\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"load\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_cfs_rq(%struct.seq_file* %0, i32 %1, %struct.cfs_rq* %2) #0 {
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cfs_rq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.rq*, align 8
  %14 = alloca %struct.sched_entity*, align 8
  %15 = alloca i64, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.cfs_rq* %2, %struct.cfs_rq** %6, align 8
  store i32 -1, i32* %7, align 4
  store i32 -1, i32* %9, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call %struct.rq* @cpu_rq(i32 %16)
  store %struct.rq* %17, %struct.rq** %13, align 8
  %18 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %19 = call i32 (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* %20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %24 = load %struct.cfs_rq*, %struct.cfs_rq** %6, align 8
  %25 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @SPLIT_NS(i32 %26)
  %28 = call i32 (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* %23, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %27)
  %29 = load %struct.rq*, %struct.rq** %13, align 8
  %30 = getelementptr inbounds %struct.rq, %struct.rq* %29, i32 0, i32 0
  %31 = load i64, i64* %15, align 8
  %32 = call i32 @raw_spin_lock_irqsave(i32* %30, i64 %31)
  %33 = load %struct.cfs_rq*, %struct.cfs_rq** %6, align 8
  %34 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %33, i32 0, i32 12
  %35 = call i64 @rb_first_cached(i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %3
  %38 = load %struct.cfs_rq*, %struct.cfs_rq** %6, align 8
  %39 = call %struct.TYPE_15__* @__pick_first_entity(%struct.cfs_rq* %38)
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %37, %3
  %43 = load %struct.cfs_rq*, %struct.cfs_rq** %6, align 8
  %44 = call %struct.sched_entity* @__pick_last_entity(%struct.cfs_rq* %43)
  store %struct.sched_entity* %44, %struct.sched_entity** %14, align 8
  %45 = load %struct.sched_entity*, %struct.sched_entity** %14, align 8
  %46 = icmp ne %struct.sched_entity* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load %struct.sched_entity*, %struct.sched_entity** %14, align 8
  %49 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %47, %42
  %52 = load %struct.cfs_rq*, %struct.cfs_rq** %6, align 8
  %53 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %8, align 4
  %55 = call %struct.rq* @cpu_rq(i32 0)
  %56 = getelementptr inbounds %struct.rq, %struct.rq* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %11, align 4
  %59 = load %struct.rq*, %struct.rq** %13, align 8
  %60 = getelementptr inbounds %struct.rq, %struct.rq* %59, i32 0, i32 0
  %61 = load i64, i64* %15, align 8
  %62 = call i32 @raw_spin_unlock_irqrestore(i32* %60, i64 %61)
  %63 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @SPLIT_NS(i32 %64)
  %66 = call i32 (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* %63, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %65)
  %67 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @SPLIT_NS(i32 %68)
  %70 = call i32 (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* %67, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %69)
  %71 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @SPLIT_NS(i32 %72)
  %74 = call i32 (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* %71, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %7, align 4
  %77 = sub nsw i32 %75, %76
  store i32 %77, i32* %10, align 4
  %78 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @SPLIT_NS(i32 %79)
  %81 = call i32 (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* %78, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %11, align 4
  %84 = sub nsw i32 %82, %83
  store i32 %84, i32* %12, align 4
  %85 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %86 = load i32, i32* %12, align 4
  %87 = call i32 @SPLIT_NS(i32 %86)
  %88 = call i32 (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* %85, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 %87)
  %89 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %90 = load %struct.cfs_rq*, %struct.cfs_rq** %6, align 8
  %91 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %90, i32 0, i32 11
  %92 = load i32, i32* %91, align 4
  %93 = call i32 (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* %89, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32 %92)
  %94 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %95 = load %struct.cfs_rq*, %struct.cfs_rq** %6, align 8
  %96 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %95, i32 0, i32 10
  %97 = load i32, i32* %96, align 8
  %98 = call i32 (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* %94, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i32 %97)
  %99 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %100 = load %struct.cfs_rq*, %struct.cfs_rq** %6, align 8
  %101 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %100, i32 0, i32 9
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* %99, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i32 %103)
  ret void
}

declare dso_local %struct.rq* @cpu_rq(i32) #1

declare dso_local i32 @SEQ_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i32 @SPLIT_NS(i32) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @rb_first_cached(i32*) #1

declare dso_local %struct.TYPE_15__* @__pick_first_entity(%struct.cfs_rq*) #1

declare dso_local %struct.sched_entity* @__pick_last_entity(%struct.cfs_rq*) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
