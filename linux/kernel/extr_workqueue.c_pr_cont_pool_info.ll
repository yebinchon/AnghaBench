; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_workqueue.c_pr_cont_pool_info.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_workqueue.c_pr_cont_pool_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.worker_pool = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c" cpus=%*pbl\00", align 1
@nr_cpumask_bits = common dso_local global i32 0, align 4
@NUMA_NO_NODE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c" node=%d\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c" flags=0x%x nice=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.worker_pool*)* @pr_cont_pool_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pr_cont_pool_info(%struct.worker_pool* %0) #0 {
  %2 = alloca %struct.worker_pool*, align 8
  store %struct.worker_pool* %0, %struct.worker_pool** %2, align 8
  %3 = load i32, i32* @nr_cpumask_bits, align 4
  %4 = sext i32 %3 to i64
  %5 = load %struct.worker_pool*, %struct.worker_pool** %2, align 8
  %6 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 (i8*, i64, ...) @pr_cont(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %4, i32 %9)
  %11 = load %struct.worker_pool*, %struct.worker_pool** %2, align 8
  %12 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @NUMA_NO_NODE, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.worker_pool*, %struct.worker_pool** %2, align 8
  %18 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 (i8*, i64, ...) @pr_cont(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i64 %19)
  br label %21

21:                                               ; preds = %16, %1
  %22 = load %struct.worker_pool*, %struct.worker_pool** %2, align 8
  %23 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = load %struct.worker_pool*, %struct.worker_pool** %2, align 8
  %27 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (i8*, i64, ...) @pr_cont(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i64 %25, i32 %30)
  ret void
}

declare dso_local i32 @pr_cont(i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
