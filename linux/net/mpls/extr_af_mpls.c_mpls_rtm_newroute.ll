; ModuleID = '/home/carl/AnghaBench/linux/net/mpls/extr_af_mpls.c_mpls_rtm_newroute.c'
source_filename = "/home/carl/AnghaBench/linux/net/mpls/extr_af_mpls.c_mpls_rtm_newroute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.mpls_route_config = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.netlink_ext_ack*)* @mpls_rtm_newroute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpls_rtm_newroute(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.mpls_route_config*, align 8
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.mpls_route_config* @kzalloc(i32 4, i32 %10)
  store %struct.mpls_route_config* %11, %struct.mpls_route_config** %8, align 8
  %12 = load %struct.mpls_route_config*, %struct.mpls_route_config** %8, align 8
  %13 = icmp ne %struct.mpls_route_config* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %34

17:                                               ; preds = %3
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %20 = load %struct.mpls_route_config*, %struct.mpls_route_config** %8, align 8
  %21 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %22 = call i32 @rtm_to_route_config(%struct.sk_buff* %18, %struct.nlmsghdr* %19, %struct.mpls_route_config* %20, %struct.netlink_ext_ack* %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %30

26:                                               ; preds = %17
  %27 = load %struct.mpls_route_config*, %struct.mpls_route_config** %8, align 8
  %28 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %29 = call i32 @mpls_route_add(%struct.mpls_route_config* %27, %struct.netlink_ext_ack* %28)
  store i32 %29, i32* %9, align 4
  br label %30

30:                                               ; preds = %26, %25
  %31 = load %struct.mpls_route_config*, %struct.mpls_route_config** %8, align 8
  %32 = call i32 @kfree(%struct.mpls_route_config* %31)
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %30, %14
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local %struct.mpls_route_config* @kzalloc(i32, i32) #1

declare dso_local i32 @rtm_to_route_config(%struct.sk_buff*, %struct.nlmsghdr*, %struct.mpls_route_config*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @mpls_route_add(%struct.mpls_route_config*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @kfree(%struct.mpls_route_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
