; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_skbuff.c___skb_checksum_complete.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_skbuff.c___skb_checksum_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32, i32, i32, i32, i32 }

@CHECKSUM_COMPLETE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__skb_checksum_complete(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %5 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %7 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %6, i32 0, i32 5
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @skb_checksum(%struct.sk_buff* %5, i32 0, i32 %8, i32 0)
  store i32 %9, i32* %3, align 4
  %10 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @csum_add(i32 %12, i32 %13)
  %15 = call i32 @csum_fold(i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @likely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %43

22:                                               ; preds = %1
  %23 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @CHECKSUM_COMPLETE, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %22
  %32 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %31
  %37 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %41 = call i32 @netdev_rx_csum_fault(i32 %39, %struct.sk_buff* %40)
  br label %42

42:                                               ; preds = %36, %31, %22
  br label %43

43:                                               ; preds = %42, %1
  %44 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %45 = call i32 @skb_shared(%struct.sk_buff* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %62, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* %3, align 4
  %49 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %50 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 8
  %51 = load i64, i64* @CHECKSUM_COMPLETE, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 1
  store i32 1, i32* %55, align 8
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %61 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  br label %62

62:                                               ; preds = %47, %43
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @skb_checksum(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @csum_fold(i32) #1

declare dso_local i32 @csum_add(i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netdev_rx_csum_fault(i32, %struct.sk_buff*) #1

declare dso_local i32 @skb_shared(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
