; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_offload.c_bpf_map_offload_ndo.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_offload.c_bpf_map_offload_ndo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_offloaded_map = type { %struct.net_device* }
%struct.net_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.net_device*, %struct.netdev_bpf*)* }
%struct.netdev_bpf = type { i32, %struct.bpf_offloaded_map* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_offloaded_map*, i32)* @bpf_map_offload_ndo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_map_offload_ndo(%struct.bpf_offloaded_map* %0, i32 %1) #0 {
  %3 = alloca %struct.bpf_offloaded_map*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.netdev_bpf, align 8
  %6 = alloca %struct.net_device*, align 8
  store %struct.bpf_offloaded_map* %0, %struct.bpf_offloaded_map** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = bitcast %struct.netdev_bpf* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 16, i1 false)
  %8 = call i32 (...) @ASSERT_RTNL()
  %9 = load i32, i32* %4, align 4
  %10 = getelementptr inbounds %struct.netdev_bpf, %struct.netdev_bpf* %5, i32 0, i32 0
  store i32 %9, i32* %10, align 8
  %11 = load %struct.bpf_offloaded_map*, %struct.bpf_offloaded_map** %3, align 8
  %12 = getelementptr inbounds %struct.netdev_bpf, %struct.netdev_bpf* %5, i32 0, i32 1
  store %struct.bpf_offloaded_map* %11, %struct.bpf_offloaded_map** %12, align 8
  %13 = load %struct.bpf_offloaded_map*, %struct.bpf_offloaded_map** %3, align 8
  %14 = getelementptr inbounds %struct.bpf_offloaded_map, %struct.bpf_offloaded_map* %13, i32 0, i32 0
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  store %struct.net_device* %15, %struct.net_device** %6, align 8
  %16 = load %struct.net_device*, %struct.net_device** %6, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (%struct.net_device*, %struct.netdev_bpf*)*, i32 (%struct.net_device*, %struct.netdev_bpf*)** %19, align 8
  %21 = load %struct.net_device*, %struct.net_device** %6, align 8
  %22 = call i32 %20(%struct.net_device* %21, %struct.netdev_bpf* %5)
  ret i32 %22
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ASSERT_RTNL(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
