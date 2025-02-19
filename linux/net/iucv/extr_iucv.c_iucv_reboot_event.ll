; ModuleID = '/home/carl/AnghaBench/linux/net/iucv/extr_iucv.c_iucv_reboot_event.c'
source_filename = "/home/carl/AnghaBench/linux/net/iucv/extr_iucv.c_iucv_reboot_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }

@iucv_irq_cpumask = common dso_local global i32 0, align 4
@NOTIFY_DONE = common dso_local global i32 0, align 4
@iucv_block_cpu = common dso_local global i32 0, align 4
@iucv_max_pathid = common dso_local global i32 0, align 4
@iucv_path_table = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @iucv_reboot_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iucv_reboot_event(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = call i64 @cpumask_empty(i32* @iucv_irq_cpumask)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %12, i32* %4, align 4
  br label %41

13:                                               ; preds = %3
  %14 = call i32 (...) @get_online_cpus()
  %15 = load i32, i32* @iucv_block_cpu, align 4
  %16 = call i32 @on_each_cpu_mask(i32* @iucv_irq_cpumask, i32 %15, i32* null, i32 1)
  %17 = call i32 (...) @preempt_disable()
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %33, %13
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @iucv_max_pathid, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %18
  %23 = load i64*, i64** @iucv_path_table, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @iucv_sever_pathid(i32 %30, i32* null)
  br label %32

32:                                               ; preds = %29, %22
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %8, align 4
  br label %18

36:                                               ; preds = %18
  %37 = call i32 (...) @preempt_enable()
  %38 = call i32 (...) @put_online_cpus()
  %39 = call i32 (...) @iucv_disable()
  %40 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %36, %11
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i64 @cpumask_empty(i32*) #1

declare dso_local i32 @get_online_cpus(...) #1

declare dso_local i32 @on_each_cpu_mask(i32*, i32, i32*, i32) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @iucv_sever_pathid(i32, i32*) #1

declare dso_local i32 @preempt_enable(...) #1

declare dso_local i32 @put_online_cpus(...) #1

declare dso_local i32 @iucv_disable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
