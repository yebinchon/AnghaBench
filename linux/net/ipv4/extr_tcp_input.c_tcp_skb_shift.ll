; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_skb_shift.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_skb_shift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }

@TCP_MIN_GSO_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcp_skb_shift(%struct.sk_buff* %0, %struct.sk_buff* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %9, align 4
  %14 = add nsw i32 %12, %13
  %15 = load i32, i32* @TCP_MIN_GSO_SIZE, align 4
  %16 = mul nsw i32 65535, %15
  %17 = icmp sge i32 %14, %16
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %37

22:                                               ; preds = %4
  %23 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %24 = call i32 @tcp_skb_pcount(%struct.sk_buff* %23)
  %25 = load i32, i32* %8, align 4
  %26 = add nsw i32 %24, %25
  %27 = icmp sgt i32 %26, 65535
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %37

32:                                               ; preds = %22
  %33 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @skb_shift(%struct.sk_buff* %33, %struct.sk_buff* %34, i32 %35)
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %32, %31, %21
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @tcp_skb_pcount(%struct.sk_buff*) #1

declare dso_local i32 @skb_shift(%struct.sk_buff*, %struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
