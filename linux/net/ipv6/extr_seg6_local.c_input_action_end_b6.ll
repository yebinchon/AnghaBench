; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_seg6_local.c_input_action_end_b6.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_seg6_local.c_input_action_end_b6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.seg6_local_lwt = type { i32 }
%struct.ipv6_sr_hdr = type { i32 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.seg6_local_lwt*)* @input_action_end_b6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @input_action_end_b6(%struct.sk_buff* %0, %struct.seg6_local_lwt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.seg6_local_lwt*, align 8
  %6 = alloca %struct.ipv6_sr_hdr*, align 8
  %7 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.seg6_local_lwt* %1, %struct.seg6_local_lwt** %5, align 8
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %7, align 4
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = call %struct.ipv6_sr_hdr* @get_and_validate_srh(%struct.sk_buff* %10)
  store %struct.ipv6_sr_hdr* %11, %struct.ipv6_sr_hdr** %6, align 8
  %12 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %6, align 8
  %13 = icmp ne %struct.ipv6_sr_hdr* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %39

15:                                               ; preds = %2
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = load %struct.seg6_local_lwt*, %struct.seg6_local_lwt** %5, align 8
  %18 = getelementptr inbounds %struct.seg6_local_lwt, %struct.seg6_local_lwt* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @seg6_do_srh_inline(%struct.sk_buff* %16, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  br label %39

24:                                               ; preds = %15
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = sub i64 %27, 4
  %29 = call i32 @htons(i64 %28)
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = call %struct.TYPE_2__* @ipv6_hdr(%struct.sk_buff* %30)
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 4
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = call i32 @skb_set_transport_header(%struct.sk_buff* %33, i32 4)
  %35 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %36 = call i32 @seg6_lookup_nexthop(%struct.sk_buff* %35, i32* null, i32 0)
  %37 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %38 = call i32 @dst_input(%struct.sk_buff* %37)
  store i32 %38, i32* %3, align 4
  br label %43

39:                                               ; preds = %23, %14
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %41 = call i32 @kfree_skb(%struct.sk_buff* %40)
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %39, %24
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local %struct.ipv6_sr_hdr* @get_and_validate_srh(%struct.sk_buff*) #1

declare dso_local i32 @seg6_do_srh_inline(%struct.sk_buff*, i32) #1

declare dso_local i32 @htons(i64) #1

declare dso_local %struct.TYPE_2__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @skb_set_transport_header(%struct.sk_buff*, i32) #1

declare dso_local i32 @seg6_lookup_nexthop(%struct.sk_buff*, i32*, i32) #1

declare dso_local i32 @dst_input(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
