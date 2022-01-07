; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_flow_table_core.c_nf_flow_table_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_flow_table_core.c_nf_flow_table_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_flowtable = type { i32, i32, i32 }

@nf_flow_offload_work_gc = common dso_local global i32 0, align 4
@nf_flow_offload_rhash_params = common dso_local global i32 0, align 4
@system_power_efficient_wq = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@flowtable_lock = common dso_local global i32 0, align 4
@flowtables = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nf_flow_table_init(%struct.nf_flowtable* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nf_flowtable*, align 8
  %4 = alloca i32, align 4
  store %struct.nf_flowtable* %0, %struct.nf_flowtable** %3, align 8
  %5 = load %struct.nf_flowtable*, %struct.nf_flowtable** %3, align 8
  %6 = getelementptr inbounds %struct.nf_flowtable, %struct.nf_flowtable* %5, i32 0, i32 1
  %7 = load i32, i32* @nf_flow_offload_work_gc, align 4
  %8 = call i32 @INIT_DEFERRABLE_WORK(i32* %6, i32 %7)
  %9 = load %struct.nf_flowtable*, %struct.nf_flowtable** %3, align 8
  %10 = getelementptr inbounds %struct.nf_flowtable, %struct.nf_flowtable* %9, i32 0, i32 2
  %11 = call i32 @rhashtable_init(i32* %10, i32* @nf_flow_offload_rhash_params)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %2, align 4
  br label %27

16:                                               ; preds = %1
  %17 = load i32, i32* @system_power_efficient_wq, align 4
  %18 = load %struct.nf_flowtable*, %struct.nf_flowtable** %3, align 8
  %19 = getelementptr inbounds %struct.nf_flowtable, %struct.nf_flowtable* %18, i32 0, i32 1
  %20 = load i32, i32* @HZ, align 4
  %21 = call i32 @queue_delayed_work(i32 %17, i32* %19, i32 %20)
  %22 = call i32 @mutex_lock(i32* @flowtable_lock)
  %23 = load %struct.nf_flowtable*, %struct.nf_flowtable** %3, align 8
  %24 = getelementptr inbounds %struct.nf_flowtable, %struct.nf_flowtable* %23, i32 0, i32 0
  %25 = call i32 @list_add(i32* %24, i32* @flowtables)
  %26 = call i32 @mutex_unlock(i32* @flowtable_lock)
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %16, %14
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @INIT_DEFERRABLE_WORK(i32*, i32) #1

declare dso_local i32 @rhashtable_init(i32*, i32*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
