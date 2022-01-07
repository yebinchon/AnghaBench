; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_pedit.c_pedit_skb_hdr_offset.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_pedit.c_pedit_skb_hdr_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, i32*)* @pedit_skb_hdr_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pedit_skb_hdr_offset(%struct.sk_buff* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %33 [
    i32 133, label %11
    i32 130, label %20
    i32 132, label %20
    i32 131, label %20
    i32 129, label %24
    i32 128, label %24
  ]

11:                                               ; preds = %3
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = call i32 @skb_mac_header_was_set(%struct.sk_buff* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = call i32 @skb_mac_offset(%struct.sk_buff* %16)
  %18 = load i32*, i32** %6, align 8
  store i32 %17, i32* %18, align 4
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %15, %11
  br label %36

20:                                               ; preds = %3, %3, %3
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = call i32 @skb_network_offset(%struct.sk_buff* %21)
  %23 = load i32*, i32** %6, align 8
  store i32 %22, i32* %23, align 4
  store i32 0, i32* %7, align 4
  br label %36

24:                                               ; preds = %3, %3
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = call i32 @skb_transport_header_was_set(%struct.sk_buff* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = call i32 @skb_transport_offset(%struct.sk_buff* %29)
  %31 = load i32*, i32** %6, align 8
  store i32 %30, i32* %31, align 4
  store i32 0, i32* %7, align 4
  br label %32

32:                                               ; preds = %28, %24
  br label %36

33:                                               ; preds = %3
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %33, %32, %20, %19
  %37 = load i32, i32* %7, align 4
  ret i32 %37
}

declare dso_local i32 @skb_mac_header_was_set(%struct.sk_buff*) #1

declare dso_local i32 @skb_mac_offset(%struct.sk_buff*) #1

declare dso_local i32 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local i32 @skb_transport_header_was_set(%struct.sk_buff*) #1

declare dso_local i32 @skb_transport_offset(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
