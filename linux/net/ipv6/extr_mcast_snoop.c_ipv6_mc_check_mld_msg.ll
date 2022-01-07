; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_mcast_snoop.c_ipv6_mc_check_mld_msg.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_mcast_snoop.c_ipv6_mc_check_mld_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.mld_msg = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @ipv6_mc_check_mld_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipv6_mc_check_mld_msg(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mld_msg*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %7 = call i32 @skb_transport_offset(%struct.sk_buff* %6)
  %8 = sext i32 %7 to i64
  %9 = add i64 %8, 4
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %4, align 4
  %11 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @ipv6_mc_may_pull(%struct.sk_buff* %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %35

18:                                               ; preds = %1
  %19 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %20 = call i64 @skb_transport_header(%struct.sk_buff* %19)
  %21 = inttoptr i64 %20 to %struct.mld_msg*
  store %struct.mld_msg* %21, %struct.mld_msg** %5, align 8
  %22 = load %struct.mld_msg*, %struct.mld_msg** %5, align 8
  %23 = getelementptr inbounds %struct.mld_msg, %struct.mld_msg* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %32 [
    i32 130, label %25
    i32 129, label %25
    i32 128, label %26
    i32 131, label %29
  ]

25:                                               ; preds = %18, %18
  store i32 0, i32* %2, align 4
  br label %35

26:                                               ; preds = %18
  %27 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %28 = call i32 @ipv6_mc_check_mld_reportv2(%struct.sk_buff* %27)
  store i32 %28, i32* %2, align 4
  br label %35

29:                                               ; preds = %18
  %30 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %31 = call i32 @ipv6_mc_check_mld_query(%struct.sk_buff* %30)
  store i32 %31, i32* %2, align 4
  br label %35

32:                                               ; preds = %18
  %33 = load i32, i32* @ENOMSG, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %32, %29, %26, %25, %15
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @skb_transport_offset(%struct.sk_buff*) #1

declare dso_local i32 @ipv6_mc_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i64 @skb_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @ipv6_mc_check_mld_reportv2(%struct.sk_buff*) #1

declare dso_local i32 @ipv6_mc_check_mld_query(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
