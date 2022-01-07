; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_dev.c___skb_gro_checksum_complete.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_dev.c___skb_gro_checksum_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@CHECKSUM_COMPLETE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__skb_gro_checksum_complete(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %5 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %7 = call i32 @skb_gro_offset(%struct.sk_buff* %6)
  %8 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %9 = call i32 @skb_gro_len(%struct.sk_buff* %8)
  %10 = call i32 @skb_checksum(%struct.sk_buff* %5, i32 %7, i32 %9, i32 0)
  store i32 %10, i32* %3, align 4
  %11 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %12 = call %struct.TYPE_2__* @NAPI_GRO_CB(%struct.sk_buff* %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @csum_add(i32 %14, i32 %15)
  %17 = call i32 @csum_fold(i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i64 @likely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %45

24:                                               ; preds = %1
  %25 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @CHECKSUM_COMPLETE, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %24
  %34 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %33
  %39 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %43 = call i32 @netdev_rx_csum_fault(i32 %41, %struct.sk_buff* %42)
  br label %44

44:                                               ; preds = %38, %33, %24
  br label %45

45:                                               ; preds = %44, %1
  %46 = load i32, i32* %3, align 4
  %47 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %48 = call %struct.TYPE_2__* @NAPI_GRO_CB(%struct.sk_buff* %47)
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  store i32 %46, i32* %49, align 4
  %50 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %51 = call %struct.TYPE_2__* @NAPI_GRO_CB(%struct.sk_buff* %50)
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i32 1, i32* %52, align 4
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @skb_checksum(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @skb_gro_offset(%struct.sk_buff*) #1

declare dso_local i32 @skb_gro_len(%struct.sk_buff*) #1

declare dso_local i32 @csum_fold(i32) #1

declare dso_local i32 @csum_add(i32, i32) #1

declare dso_local %struct.TYPE_2__* @NAPI_GRO_CB(%struct.sk_buff*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netdev_rx_csum_fault(i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
