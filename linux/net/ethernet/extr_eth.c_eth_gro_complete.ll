; ModuleID = '/home/carl/AnghaBench/linux/net/ethernet/extr_eth.c_eth_gro_complete.c'
source_filename = "/home/carl/AnghaBench/linux/net/ethernet/extr_eth.c_eth_gro_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i64 }
%struct.ethhdr = type { i32 }
%struct.packet_offload = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.sk_buff*, i32)* }

@ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eth_gro_complete(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ethhdr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.packet_offload*, align 8
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = add nsw i64 %11, %13
  %15 = inttoptr i64 %14 to %struct.ethhdr*
  store %struct.ethhdr* %15, %struct.ethhdr** %5, align 8
  %16 = load %struct.ethhdr*, %struct.ethhdr** %5, align 8
  %17 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* @ENOSYS, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %8, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @skb_set_inner_mac_header(%struct.sk_buff* %26, i32 %27)
  br label %29

29:                                               ; preds = %25, %2
  %30 = call i32 (...) @rcu_read_lock()
  %31 = load i32, i32* %6, align 4
  %32 = call %struct.packet_offload* @gro_find_complete_by_type(i32 %31)
  store %struct.packet_offload* %32, %struct.packet_offload** %7, align 8
  %33 = load %struct.packet_offload*, %struct.packet_offload** %7, align 8
  %34 = icmp ne %struct.packet_offload* %33, null
  br i1 %34, label %35, label %46

35:                                               ; preds = %29
  %36 = load %struct.packet_offload*, %struct.packet_offload** %7, align 8
  %37 = getelementptr inbounds %struct.packet_offload, %struct.packet_offload* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32 (%struct.sk_buff*, i32)*, i32 (%struct.sk_buff*, i32)** %38, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = add i64 %42, 4
  %44 = trunc i64 %43 to i32
  %45 = call i32 %39(%struct.sk_buff* %40, i32 %44)
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %35, %29
  %47 = call i32 (...) @rcu_read_unlock()
  %48 = load i32, i32* %8, align 4
  ret i32 %48
}

declare dso_local i32 @skb_set_inner_mac_header(%struct.sk_buff*, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.packet_offload* @gro_find_complete_by_type(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
