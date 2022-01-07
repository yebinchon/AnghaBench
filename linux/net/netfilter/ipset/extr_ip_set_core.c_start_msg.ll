; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_core.c_start_msg.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_core.c_start_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlmsghdr = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nfgenmsg = type { i64, i32, i32 }

@NFNL_SUBSYS_IPSET = common dso_local global i32 0, align 4
@NFPROTO_IPV4 = common dso_local global i32 0, align 4
@NFNETLINK_V0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nlmsghdr* (%struct.sk_buff*, i32, i32, i32, i32)* @start_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nlmsghdr* @start_msg(%struct.sk_buff* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.nlmsghdr*, align 8
  %13 = alloca %struct.nfgenmsg*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @NFNL_SUBSYS_IPSET, align 4
  %18 = load i32, i32* %11, align 4
  %19 = call i32 @nfnl_msg_type(i32 %17, i32 %18)
  %20 = load i32, i32* %10, align 4
  %21 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %14, i32 %15, i32 %16, i32 %19, i32 16, i32 %20)
  store %struct.nlmsghdr* %21, %struct.nlmsghdr** %12, align 8
  %22 = load %struct.nlmsghdr*, %struct.nlmsghdr** %12, align 8
  %23 = icmp ne %struct.nlmsghdr* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %5
  store %struct.nlmsghdr* null, %struct.nlmsghdr** %6, align 8
  br label %37

25:                                               ; preds = %5
  %26 = load %struct.nlmsghdr*, %struct.nlmsghdr** %12, align 8
  %27 = call %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr* %26)
  store %struct.nfgenmsg* %27, %struct.nfgenmsg** %13, align 8
  %28 = load i32, i32* @NFPROTO_IPV4, align 4
  %29 = load %struct.nfgenmsg*, %struct.nfgenmsg** %13, align 8
  %30 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @NFNETLINK_V0, align 4
  %32 = load %struct.nfgenmsg*, %struct.nfgenmsg** %13, align 8
  %33 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  %34 = load %struct.nfgenmsg*, %struct.nfgenmsg** %13, align 8
  %35 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  %36 = load %struct.nlmsghdr*, %struct.nlmsghdr** %12, align 8
  store %struct.nlmsghdr* %36, %struct.nlmsghdr** %6, align 8
  br label %37

37:                                               ; preds = %25, %24
  %38 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  ret %struct.nlmsghdr* %38
}

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @nfnl_msg_type(i32, i32) #1

declare dso_local %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
