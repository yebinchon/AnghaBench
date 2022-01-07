; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_seg6_local.c_seg6_local_input.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_seg6_local.c_seg6_local_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.dst_entry = type { i32 }
%struct.seg6_action_desc = type { i32 (%struct.sk_buff*, %struct.seg6_local_lwt*)* }
%struct.seg6_local_lwt = type { %struct.seg6_action_desc* }

@ETH_P_IPV6 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @seg6_local_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seg6_local_input(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.dst_entry*, align 8
  %5 = alloca %struct.seg6_action_desc*, align 8
  %6 = alloca %struct.seg6_local_lwt*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %8 = call %struct.dst_entry* @skb_dst(%struct.sk_buff* %7)
  store %struct.dst_entry* %8, %struct.dst_entry** %4, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i32, i32* @ETH_P_IPV6, align 4
  %13 = call i64 @htons(i32 %12)
  %14 = icmp ne i64 %11, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %17 = call i32 @kfree_skb(%struct.sk_buff* %16)
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %34

20:                                               ; preds = %1
  %21 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %22 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.seg6_local_lwt* @seg6_local_lwtunnel(i32 %23)
  store %struct.seg6_local_lwt* %24, %struct.seg6_local_lwt** %6, align 8
  %25 = load %struct.seg6_local_lwt*, %struct.seg6_local_lwt** %6, align 8
  %26 = getelementptr inbounds %struct.seg6_local_lwt, %struct.seg6_local_lwt* %25, i32 0, i32 0
  %27 = load %struct.seg6_action_desc*, %struct.seg6_action_desc** %26, align 8
  store %struct.seg6_action_desc* %27, %struct.seg6_action_desc** %5, align 8
  %28 = load %struct.seg6_action_desc*, %struct.seg6_action_desc** %5, align 8
  %29 = getelementptr inbounds %struct.seg6_action_desc, %struct.seg6_action_desc* %28, i32 0, i32 0
  %30 = load i32 (%struct.sk_buff*, %struct.seg6_local_lwt*)*, i32 (%struct.sk_buff*, %struct.seg6_local_lwt*)** %29, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %32 = load %struct.seg6_local_lwt*, %struct.seg6_local_lwt** %6, align 8
  %33 = call i32 %30(%struct.sk_buff* %31, %struct.seg6_local_lwt* %32)
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %20, %15
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local %struct.dst_entry* @skb_dst(%struct.sk_buff*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.seg6_local_lwt* @seg6_local_lwtunnel(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
