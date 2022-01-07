; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_xsk.h_xsk_ring_prod__tx_desc.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_xsk.h_xsk_ring_prod__tx_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdp_desc = type { i32 }
%struct.xsk_ring_prod = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xdp_desc* (%struct.xsk_ring_prod*, i64)* @xsk_ring_prod__tx_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xdp_desc* @xsk_ring_prod__tx_desc(%struct.xsk_ring_prod* %0, i64 %1) #0 {
  %3 = alloca %struct.xsk_ring_prod*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.xdp_desc*, align 8
  store %struct.xsk_ring_prod* %0, %struct.xsk_ring_prod** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.xsk_ring_prod*, %struct.xsk_ring_prod** %3, align 8
  %7 = getelementptr inbounds %struct.xsk_ring_prod, %struct.xsk_ring_prod* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.xdp_desc*
  store %struct.xdp_desc* %9, %struct.xdp_desc** %5, align 8
  %10 = load %struct.xdp_desc*, %struct.xdp_desc** %5, align 8
  %11 = load i64, i64* %4, align 8
  %12 = load %struct.xsk_ring_prod*, %struct.xsk_ring_prod** %3, align 8
  %13 = getelementptr inbounds %struct.xsk_ring_prod, %struct.xsk_ring_prod* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = and i64 %11, %14
  %16 = getelementptr inbounds %struct.xdp_desc, %struct.xdp_desc* %10, i64 %15
  ret %struct.xdp_desc* %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
