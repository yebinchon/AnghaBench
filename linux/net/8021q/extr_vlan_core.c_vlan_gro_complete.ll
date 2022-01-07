; ModuleID = '/home/carl/AnghaBench/linux/net/8021q/extr_vlan_core.c_vlan_gro_complete.c'
source_filename = "/home/carl/AnghaBench/linux/net/8021q/extr_vlan_core.c_vlan_gro_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.vlan_hdr = type { i32 }
%struct.packet_offload = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.sk_buff*, i32)* }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32)* @vlan_gro_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlan_gro_complete(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vlan_hdr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.packet_offload*, align 8
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = add nsw i64 %11, %13
  %15 = inttoptr i64 %14 to %struct.vlan_hdr*
  store %struct.vlan_hdr* %15, %struct.vlan_hdr** %5, align 8
  %16 = load %struct.vlan_hdr*, %struct.vlan_hdr** %5, align 8
  %17 = getelementptr inbounds %struct.vlan_hdr, %struct.vlan_hdr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* @ENOENT, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %8, align 4
  %21 = call i32 (...) @rcu_read_lock()
  %22 = load i32, i32* %6, align 4
  %23 = call %struct.packet_offload* @gro_find_complete_by_type(i32 %22)
  store %struct.packet_offload* %23, %struct.packet_offload** %7, align 8
  %24 = load %struct.packet_offload*, %struct.packet_offload** %7, align 8
  %25 = icmp ne %struct.packet_offload* %24, null
  br i1 %25, label %26, label %37

26:                                               ; preds = %2
  %27 = load %struct.packet_offload*, %struct.packet_offload** %7, align 8
  %28 = getelementptr inbounds %struct.packet_offload, %struct.packet_offload* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (%struct.sk_buff*, i32)*, i32 (%struct.sk_buff*, i32)** %29, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = add i64 %33, 4
  %35 = trunc i64 %34 to i32
  %36 = call i32 %30(%struct.sk_buff* %31, i32 %35)
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %26, %2
  %38 = call i32 (...) @rcu_read_unlock()
  %39 = load i32, i32* %8, align 4
  ret i32 %39
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.packet_offload* @gro_find_complete_by_type(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
