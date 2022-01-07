; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_xfrm4_policy.c_xfrm4_update_pmtu.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_xfrm4_policy.c_xfrm4_update_pmtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_entry = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.dst_entry*, %struct.sock*, %struct.sk_buff*, i32)* }
%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.xfrm_dst = type { %struct.dst_entry* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dst_entry*, %struct.sock*, %struct.sk_buff*, i32)* @xfrm4_update_pmtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfrm4_update_pmtu(%struct.dst_entry* %0, %struct.sock* %1, %struct.sk_buff* %2, i32 %3) #0 {
  %5 = alloca %struct.dst_entry*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.xfrm_dst*, align 8
  %10 = alloca %struct.dst_entry*, align 8
  store %struct.dst_entry* %0, %struct.dst_entry** %5, align 8
  store %struct.sock* %1, %struct.sock** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %12 = bitcast %struct.dst_entry* %11 to %struct.xfrm_dst*
  store %struct.xfrm_dst* %12, %struct.xfrm_dst** %9, align 8
  %13 = load %struct.xfrm_dst*, %struct.xfrm_dst** %9, align 8
  %14 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %13, i32 0, i32 0
  %15 = load %struct.dst_entry*, %struct.dst_entry** %14, align 8
  store %struct.dst_entry* %15, %struct.dst_entry** %10, align 8
  %16 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  %17 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (%struct.dst_entry*, %struct.sock*, %struct.sk_buff*, i32)*, i32 (%struct.dst_entry*, %struct.sock*, %struct.sk_buff*, i32)** %19, align 8
  %21 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  %22 = load %struct.sock*, %struct.sock** %6, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 %20(%struct.dst_entry* %21, %struct.sock* %22, %struct.sk_buff* %23, i32 %24)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
