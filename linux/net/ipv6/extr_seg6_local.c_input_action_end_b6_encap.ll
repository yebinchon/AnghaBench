; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_seg6_local.c_input_action_end_b6_encap.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_seg6_local.c_input_action_end_b6_encap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64 }
%struct.seg6_local_lwt = type { i32 }
%struct.ipv6_sr_hdr = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@IPPROTO_IPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.seg6_local_lwt*)* @input_action_end_b6_encap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @input_action_end_b6_encap(%struct.sk_buff* %0, %struct.seg6_local_lwt* %1) #0 {
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
  br label %49

15:                                               ; preds = %2
  %16 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %6, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = call %struct.TYPE_2__* @ipv6_hdr(%struct.sk_buff* %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = call i32 @advance_nextseg(%struct.ipv6_sr_hdr* %16, i32* %19)
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = call i32 @skb_reset_inner_headers(%struct.sk_buff* %21)
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = load %struct.seg6_local_lwt*, %struct.seg6_local_lwt** %5, align 8
  %27 = getelementptr inbounds %struct.seg6_local_lwt, %struct.seg6_local_lwt* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @IPPROTO_IPV6, align 4
  %30 = call i32 @seg6_do_srh_encap(%struct.sk_buff* %25, i32 %28, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %15
  br label %49

34:                                               ; preds = %15
  %35 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = sub i64 %37, 4
  %39 = call i32 @htons(i64 %38)
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %41 = call %struct.TYPE_2__* @ipv6_hdr(%struct.sk_buff* %40)
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 4
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = call i32 @skb_set_transport_header(%struct.sk_buff* %43, i32 4)
  %45 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %46 = call i32 @seg6_lookup_nexthop(%struct.sk_buff* %45, i32* null, i32 0)
  %47 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %48 = call i32 @dst_input(%struct.sk_buff* %47)
  store i32 %48, i32* %3, align 4
  br label %53

49:                                               ; preds = %33, %14
  %50 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %51 = call i32 @kfree_skb(%struct.sk_buff* %50)
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %49, %34
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.ipv6_sr_hdr* @get_and_validate_srh(%struct.sk_buff*) #1

declare dso_local i32 @advance_nextseg(%struct.ipv6_sr_hdr*, i32*) #1

declare dso_local %struct.TYPE_2__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @skb_reset_inner_headers(%struct.sk_buff*) #1

declare dso_local i32 @seg6_do_srh_encap(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htons(i64) #1

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
