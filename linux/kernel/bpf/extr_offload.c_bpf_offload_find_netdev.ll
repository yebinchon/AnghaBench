; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_offload.c_bpf_offload_find_netdev.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_offload.c_bpf_offload_find_netdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_offload_netdev = type { i32 }
%struct.net_device = type { i32 }

@bpf_devs_lock = common dso_local global i32 0, align 4
@offdevs_inited = common dso_local global i32 0, align 4
@offdevs = common dso_local global i32 0, align 4
@offdevs_params = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bpf_offload_netdev* (%struct.net_device*)* @bpf_offload_find_netdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bpf_offload_netdev* @bpf_offload_find_netdev(%struct.net_device* %0) #0 {
  %2 = alloca %struct.bpf_offload_netdev*, align 8
  %3 = alloca %struct.net_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %4 = call i32 @lockdep_assert_held(i32* @bpf_devs_lock)
  %5 = load i32, i32* @offdevs_inited, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store %struct.bpf_offload_netdev* null, %struct.bpf_offload_netdev** %2, align 8
  br label %11

8:                                                ; preds = %1
  %9 = load i32, i32* @offdevs_params, align 4
  %10 = call %struct.bpf_offload_netdev* @rhashtable_lookup_fast(i32* @offdevs, %struct.net_device** %3, i32 %9)
  store %struct.bpf_offload_netdev* %10, %struct.bpf_offload_netdev** %2, align 8
  br label %11

11:                                               ; preds = %8, %7
  %12 = load %struct.bpf_offload_netdev*, %struct.bpf_offload_netdev** %2, align 8
  ret %struct.bpf_offload_netdev* %12
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local %struct.bpf_offload_netdev* @rhashtable_lookup_fast(i32*, %struct.net_device**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
