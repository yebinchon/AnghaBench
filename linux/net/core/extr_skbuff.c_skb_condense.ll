; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_skbuff.c_skb_condense.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_skbuff.c_skb_condense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i64, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @skb_condense(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %3 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %4 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %30

7:                                                ; preds = %1
  %8 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = sub nsw i64 %13, %16
  %18 = icmp sgt i64 %10, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %7
  %20 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %21 = call i64 @skb_cloned(%struct.sk_buff* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19, %7
  br label %36

24:                                               ; preds = %19
  %25 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @__pskb_pull_tail(%struct.sk_buff* %25, i64 %28)
  br label %30

30:                                               ; preds = %24, %1
  %31 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %32 = call i32 @skb_end_offset(%struct.sk_buff* %31)
  %33 = call i32 @SKB_TRUESIZE(i32 %32)
  %34 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 8
  br label %36

36:                                               ; preds = %30, %23
  ret void
}

declare dso_local i64 @skb_cloned(%struct.sk_buff*) #1

declare dso_local i32 @__pskb_pull_tail(%struct.sk_buff*, i64) #1

declare dso_local i32 @SKB_TRUESIZE(i32) #1

declare dso_local i32 @skb_end_offset(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
