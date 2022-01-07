; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_filter.c___bpf_tx_xdp_map.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_filter.c___bpf_tx_xdp_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.bpf_map = type { i32 }
%struct.xdp_buff = type { i32 }
%struct.bpf_dtab_netdev = type { i32 }
%struct.bpf_cpu_map_entry = type { i32 }
%struct.xdp_sock = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*, %struct.bpf_map*, %struct.xdp_buff*, i32)* @__bpf_tx_xdp_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__bpf_tx_xdp_map(%struct.net_device* %0, i8* %1, %struct.bpf_map* %2, %struct.xdp_buff* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.bpf_map*, align 8
  %10 = alloca %struct.xdp_buff*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.bpf_dtab_netdev*, align 8
  %14 = alloca %struct.bpf_cpu_map_entry*, align 8
  %15 = alloca %struct.xdp_sock*, align 8
  store %struct.net_device* %0, %struct.net_device** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.bpf_map* %2, %struct.bpf_map** %9, align 8
  store %struct.xdp_buff* %3, %struct.xdp_buff** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load %struct.bpf_map*, %struct.bpf_map** %9, align 8
  %17 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %53 [
    i32 130, label %19
    i32 129, label %19
    i32 131, label %32
    i32 128, label %45
  ]

19:                                               ; preds = %5, %5
  %20 = load i8*, i8** %8, align 8
  %21 = bitcast i8* %20 to %struct.bpf_dtab_netdev*
  store %struct.bpf_dtab_netdev* %21, %struct.bpf_dtab_netdev** %13, align 8
  %22 = load %struct.bpf_dtab_netdev*, %struct.bpf_dtab_netdev** %13, align 8
  %23 = load %struct.xdp_buff*, %struct.xdp_buff** %10, align 8
  %24 = load %struct.net_device*, %struct.net_device** %7, align 8
  %25 = call i32 @dev_map_enqueue(%struct.bpf_dtab_netdev* %22, %struct.xdp_buff* %23, %struct.net_device* %24)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = call i32 @unlikely(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %19
  %30 = load i32, i32* %12, align 4
  store i32 %30, i32* %6, align 4
  br label %55

31:                                               ; preds = %19
  br label %54

32:                                               ; preds = %5
  %33 = load i8*, i8** %8, align 8
  %34 = bitcast i8* %33 to %struct.bpf_cpu_map_entry*
  store %struct.bpf_cpu_map_entry* %34, %struct.bpf_cpu_map_entry** %14, align 8
  %35 = load %struct.bpf_cpu_map_entry*, %struct.bpf_cpu_map_entry** %14, align 8
  %36 = load %struct.xdp_buff*, %struct.xdp_buff** %10, align 8
  %37 = load %struct.net_device*, %struct.net_device** %7, align 8
  %38 = call i32 @cpu_map_enqueue(%struct.bpf_cpu_map_entry* %35, %struct.xdp_buff* %36, %struct.net_device* %37)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @unlikely(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %32
  %43 = load i32, i32* %12, align 4
  store i32 %43, i32* %6, align 4
  br label %55

44:                                               ; preds = %32
  br label %54

45:                                               ; preds = %5
  %46 = load i8*, i8** %8, align 8
  %47 = bitcast i8* %46 to %struct.xdp_sock*
  store %struct.xdp_sock* %47, %struct.xdp_sock** %15, align 8
  %48 = load %struct.bpf_map*, %struct.bpf_map** %9, align 8
  %49 = load %struct.xdp_buff*, %struct.xdp_buff** %10, align 8
  %50 = load %struct.xdp_sock*, %struct.xdp_sock** %15, align 8
  %51 = call i32 @__xsk_map_redirect(%struct.bpf_map* %48, %struct.xdp_buff* %49, %struct.xdp_sock* %50)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  store i32 %52, i32* %6, align 4
  br label %55

53:                                               ; preds = %5
  br label %54

54:                                               ; preds = %53, %44, %31
  store i32 0, i32* %6, align 4
  br label %55

55:                                               ; preds = %54, %45, %42, %29
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local i32 @dev_map_enqueue(%struct.bpf_dtab_netdev*, %struct.xdp_buff*, %struct.net_device*) #1

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @cpu_map_enqueue(%struct.bpf_cpu_map_entry*, %struct.xdp_buff*, %struct.net_device*) #1

declare dso_local i32 @__xsk_map_redirect(%struct.bpf_map*, %struct.xdp_buff*, %struct.xdp_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
