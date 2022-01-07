; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ipmr.c_igmpmsg_netlink_event.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ipmr.c_igmpmsg_netlink_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mr_table = type { i32 }
%struct.sk_buff = type { i32 }
%struct.net = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.rtgenmsg = type { i32 }
%struct.igmpmsg = type { %struct.TYPE_4__, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.nlattr = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@RTM_NEWCACHEREPORT = common dso_local global i32 0, align 4
@RTNL_FAMILY_IPMR = common dso_local global i32 0, align 4
@IPMRA_CREPORT_MSGTYPE = common dso_local global i32 0, align 4
@IPMRA_CREPORT_VIF_ID = common dso_local global i32 0, align 4
@IPMRA_CREPORT_SRC_ADDR = common dso_local global i32 0, align 4
@IPMRA_CREPORT_DST_ADDR = common dso_local global i32 0, align 4
@IPMRA_CREPORT_PKT = common dso_local global i32 0, align 4
@RTNLGRP_IPV4_MROUTE_R = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mr_table*, %struct.sk_buff*)* @igmpmsg_netlink_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igmpmsg_netlink_event(%struct.mr_table* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.mr_table*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca %struct.rtgenmsg*, align 8
  %8 = alloca %struct.igmpmsg*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.nlattr*, align 8
  %11 = alloca i32, align 4
  store %struct.mr_table* %0, %struct.mr_table** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %12 = load %struct.mr_table*, %struct.mr_table** %3, align 8
  %13 = getelementptr inbounds %struct.mr_table, %struct.mr_table* %12, i32 0, i32 0
  %14 = call %struct.net* @read_pnet(i32* %13)
  store %struct.net* %14, %struct.net** %5, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = sub i64 %18, 16
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %11, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = call i64 @skb_network_header(%struct.sk_buff* %21)
  %23 = inttoptr i64 %22 to %struct.igmpmsg*
  store %struct.igmpmsg* %23, %struct.igmpmsg** %8, align 8
  %24 = load i32, i32* %11, align 4
  %25 = call i32 @igmpmsg_netlink_msgsize(i32 %24)
  %26 = load i32, i32* @GFP_ATOMIC, align 4
  %27 = call %struct.sk_buff* @nlmsg_new(i32 %25, i32 %26)
  store %struct.sk_buff* %27, %struct.sk_buff** %9, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %29 = icmp ne %struct.sk_buff* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %2
  br label %106

31:                                               ; preds = %2
  %32 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %33 = load i32, i32* @RTM_NEWCACHEREPORT, align 4
  %34 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %32, i32 0, i32 0, i32 %33, i32 4, i32 0)
  store %struct.nlmsghdr* %34, %struct.nlmsghdr** %6, align 8
  %35 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %36 = icmp ne %struct.nlmsghdr* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %31
  br label %106

38:                                               ; preds = %31
  %39 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %40 = call %struct.rtgenmsg* @nlmsg_data(%struct.nlmsghdr* %39)
  store %struct.rtgenmsg* %40, %struct.rtgenmsg** %7, align 8
  %41 = load i32, i32* @RTNL_FAMILY_IPMR, align 4
  %42 = load %struct.rtgenmsg*, %struct.rtgenmsg** %7, align 8
  %43 = getelementptr inbounds %struct.rtgenmsg, %struct.rtgenmsg* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %45 = load i32, i32* @IPMRA_CREPORT_MSGTYPE, align 4
  %46 = load %struct.igmpmsg*, %struct.igmpmsg** %8, align 8
  %47 = getelementptr inbounds %struct.igmpmsg, %struct.igmpmsg* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @nla_put_u8(%struct.sk_buff* %44, i32 %45, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %77, label %51

51:                                               ; preds = %38
  %52 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %53 = load i32, i32* @IPMRA_CREPORT_VIF_ID, align 4
  %54 = load %struct.igmpmsg*, %struct.igmpmsg** %8, align 8
  %55 = getelementptr inbounds %struct.igmpmsg, %struct.igmpmsg* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @nla_put_u32(%struct.sk_buff* %52, i32 %53, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %77, label %59

59:                                               ; preds = %51
  %60 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %61 = load i32, i32* @IPMRA_CREPORT_SRC_ADDR, align 4
  %62 = load %struct.igmpmsg*, %struct.igmpmsg** %8, align 8
  %63 = getelementptr inbounds %struct.igmpmsg, %struct.igmpmsg* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @nla_put_in_addr(%struct.sk_buff* %60, i32 %61, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %77, label %68

68:                                               ; preds = %59
  %69 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %70 = load i32, i32* @IPMRA_CREPORT_DST_ADDR, align 4
  %71 = load %struct.igmpmsg*, %struct.igmpmsg** %8, align 8
  %72 = getelementptr inbounds %struct.igmpmsg, %struct.igmpmsg* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @nla_put_in_addr(%struct.sk_buff* %69, i32 %70, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %68, %59, %51, %38
  br label %102

78:                                               ; preds = %68
  %79 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %80 = load i32, i32* @IPMRA_CREPORT_PKT, align 4
  %81 = load i32, i32* %11, align 4
  %82 = call %struct.nlattr* @nla_reserve(%struct.sk_buff* %79, i32 %80, i32 %81)
  store %struct.nlattr* %82, %struct.nlattr** %10, align 8
  %83 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %84 = icmp ne %struct.nlattr* %83, null
  br i1 %84, label %85, label %92

85:                                               ; preds = %78
  %86 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %87 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %88 = call i32 @nla_data(%struct.nlattr* %87)
  %89 = load i32, i32* %11, align 4
  %90 = call i64 @skb_copy_bits(%struct.sk_buff* %86, i32 16, i32 %88, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %85, %78
  br label %102

93:                                               ; preds = %85
  %94 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %95 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %96 = call i32 @nlmsg_end(%struct.sk_buff* %94, %struct.nlmsghdr* %95)
  %97 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %98 = load %struct.net*, %struct.net** %5, align 8
  %99 = load i32, i32* @RTNLGRP_IPV4_MROUTE_R, align 4
  %100 = load i32, i32* @GFP_ATOMIC, align 4
  %101 = call i32 @rtnl_notify(%struct.sk_buff* %97, %struct.net* %98, i32 0, i32 %99, i32* null, i32 %100)
  br label %114

102:                                              ; preds = %92, %77
  %103 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %104 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %105 = call i32 @nlmsg_cancel(%struct.sk_buff* %103, %struct.nlmsghdr* %104)
  br label %106

106:                                              ; preds = %102, %37, %30
  %107 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %108 = call i32 @kfree_skb(%struct.sk_buff* %107)
  %109 = load %struct.net*, %struct.net** %5, align 8
  %110 = load i32, i32* @RTNLGRP_IPV4_MROUTE_R, align 4
  %111 = load i32, i32* @ENOBUFS, align 4
  %112 = sub nsw i32 0, %111
  %113 = call i32 @rtnl_set_sk_err(%struct.net* %109, i32 %110, i32 %112)
  br label %114

114:                                              ; preds = %106, %93
  ret void
}

declare dso_local %struct.net* @read_pnet(i32*) #1

declare dso_local i64 @skb_network_header(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @igmpmsg_netlink_msgsize(i32) #1

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.rtgenmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_in_addr(%struct.sk_buff*, i32, i32) #1

declare dso_local %struct.nlattr* @nla_reserve(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @skb_copy_bits(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @nla_data(%struct.nlattr*) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @rtnl_notify(%struct.sk_buff*, %struct.net*, i32, i32, i32*, i32) #1

declare dso_local i32 @nlmsg_cancel(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @rtnl_set_sk_err(%struct.net*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
