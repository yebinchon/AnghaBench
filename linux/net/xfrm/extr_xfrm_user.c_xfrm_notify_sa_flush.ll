; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_xfrm_notify_sa_flush.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_xfrm_notify_sa_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.km_event = type { %struct.TYPE_2__, i32, i32, %struct.net* }
%struct.TYPE_2__ = type { i32 }
%struct.net = type { i32 }
%struct.xfrm_usersa_flush = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.sk_buff = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@XFRM_MSG_FLUSHSA = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@XFRMNLGRP_SA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.km_event*)* @xfrm_notify_sa_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm_notify_sa_flush(%struct.km_event* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.km_event*, align 8
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.xfrm_usersa_flush*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  store %struct.km_event* %0, %struct.km_event** %3, align 8
  %9 = load %struct.km_event*, %struct.km_event** %3, align 8
  %10 = getelementptr inbounds %struct.km_event, %struct.km_event* %9, i32 0, i32 3
  %11 = load %struct.net*, %struct.net** %10, align 8
  store %struct.net* %11, %struct.net** %4, align 8
  %12 = call i32 @NLMSG_ALIGN(i32 4)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @GFP_ATOMIC, align 4
  %15 = call %struct.sk_buff* @nlmsg_new(i32 %13, i32 %14)
  store %struct.sk_buff* %15, %struct.sk_buff** %7, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %17 = icmp eq %struct.sk_buff* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %54

21:                                               ; preds = %1
  %22 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %23 = load %struct.km_event*, %struct.km_event** %3, align 8
  %24 = getelementptr inbounds %struct.km_event, %struct.km_event* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.km_event*, %struct.km_event** %3, align 8
  %27 = getelementptr inbounds %struct.km_event, %struct.km_event* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @XFRM_MSG_FLUSHSA, align 4
  %30 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %22, i32 %25, i32 %28, i32 %29, i32 4, i32 0)
  store %struct.nlmsghdr* %30, %struct.nlmsghdr** %6, align 8
  %31 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %32 = icmp eq %struct.nlmsghdr* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %21
  %34 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %35 = call i32 @kfree_skb(%struct.sk_buff* %34)
  %36 = load i32, i32* @EMSGSIZE, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %54

38:                                               ; preds = %21
  %39 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %40 = call %struct.xfrm_usersa_flush* @nlmsg_data(%struct.nlmsghdr* %39)
  store %struct.xfrm_usersa_flush* %40, %struct.xfrm_usersa_flush** %5, align 8
  %41 = load %struct.km_event*, %struct.km_event** %3, align 8
  %42 = getelementptr inbounds %struct.km_event, %struct.km_event* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.xfrm_usersa_flush*, %struct.xfrm_usersa_flush** %5, align 8
  %46 = getelementptr inbounds %struct.xfrm_usersa_flush, %struct.xfrm_usersa_flush* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %48 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %49 = call i32 @nlmsg_end(%struct.sk_buff* %47, %struct.nlmsghdr* %48)
  %50 = load %struct.net*, %struct.net** %4, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %52 = load i32, i32* @XFRMNLGRP_SA, align 4
  %53 = call i32 @xfrm_nlmsg_multicast(%struct.net* %50, %struct.sk_buff* %51, i32 0, i32 %52)
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %38, %33, %18
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @NLMSG_ALIGN(i32) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.xfrm_usersa_flush* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @xfrm_nlmsg_multicast(%struct.net*, %struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
