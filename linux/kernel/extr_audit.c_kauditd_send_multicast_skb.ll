; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_audit.c_kauditd_send_multicast_skb.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_audit.c_kauditd_send_multicast_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.sock = type { i32 }
%struct.nlmsghdr = type { i32 }

@init_net = common dso_local global i32 0, align 4
@AUDIT_NLGRP_READLOG = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*)* @kauditd_send_multicast_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kauditd_send_multicast_skb(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.nlmsghdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %6 = call %struct.sock* @audit_get_sk(i32* @init_net)
  store %struct.sock* %6, %struct.sock** %4, align 8
  %7 = load %struct.sock*, %struct.sock** %4, align 8
  %8 = load i32, i32* @AUDIT_NLGRP_READLOG, align 4
  %9 = call i32 @netlink_has_listeners(%struct.sock* %7, i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %32

12:                                               ; preds = %1
  %13 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.sk_buff* @skb_copy(%struct.sk_buff* %13, i32 %14)
  store %struct.sk_buff* %15, %struct.sk_buff** %3, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %17 = icmp ne %struct.sk_buff* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  br label %32

19:                                               ; preds = %12
  %20 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %21 = call %struct.nlmsghdr* @nlmsg_hdr(%struct.sk_buff* %20)
  store %struct.nlmsghdr* %21, %struct.nlmsghdr** %5, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %26 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.sock*, %struct.sock** %4, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %29 = load i32, i32* @AUDIT_NLGRP_READLOG, align 4
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i32 @nlmsg_multicast(%struct.sock* %27, %struct.sk_buff* %28, i32 0, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %19, %18, %11
  ret void
}

declare dso_local %struct.sock* @audit_get_sk(i32*) #1

declare dso_local i32 @netlink_has_listeners(%struct.sock*, i32) #1

declare dso_local %struct.sk_buff* @skb_copy(%struct.sk_buff*, i32) #1

declare dso_local %struct.nlmsghdr* @nlmsg_hdr(%struct.sk_buff*) #1

declare dso_local i32 @nlmsg_multicast(%struct.sock*, %struct.sk_buff*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
