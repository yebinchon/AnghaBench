; ModuleID = '/home/carl/AnghaBench/linux/net/ncsi/extr_ncsi-netlink.c_ncsi_send_netlink_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/net/ncsi/extr_ncsi-netlink.c_ncsi_send_netlink_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncsi_request = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.ncsi_package = type { i32 }
%struct.ncsi_channel = type { i32 }
%struct.sk_buff = type { i32 }
%struct.net = type { i32 }
%struct.ncsi_pkt_hdr = type { i32 }

@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ncsi_genl_family = common dso_local global i32 0, align 4
@NCSI_CMD_SEND_CMD = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@NCSI_ATTR_IFINDEX = common dso_local global i32 0, align 4
@NCSI_ATTR_PACKAGE_ID = common dso_local global i32 0, align 4
@NCSI_ATTR_CHANNEL_ID = common dso_local global i32 0, align 4
@NCSI_RESERVED_CHANNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ncsi_send_netlink_timeout(%struct.ncsi_request* %0, %struct.ncsi_package* %1, %struct.ncsi_channel* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ncsi_request*, align 8
  %6 = alloca %struct.ncsi_package*, align 8
  %7 = alloca %struct.ncsi_channel*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.net*, align 8
  %10 = alloca i8*, align 8
  store %struct.ncsi_request* %0, %struct.ncsi_request** %5, align 8
  store %struct.ncsi_package* %1, %struct.ncsi_package** %6, align 8
  store %struct.ncsi_channel* %2, %struct.ncsi_channel** %7, align 8
  %11 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %12 = load i32, i32* @GFP_ATOMIC, align 4
  %13 = call %struct.sk_buff* @genlmsg_new(i32 %11, i32 %12)
  store %struct.sk_buff* %13, %struct.sk_buff** %8, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %15 = icmp ne %struct.sk_buff* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %100

19:                                               ; preds = %3
  %20 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %21 = load %struct.ncsi_request*, %struct.ncsi_request** %5, align 8
  %22 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.ncsi_request*, %struct.ncsi_request** %5, align 8
  %25 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @NCSI_CMD_SEND_CMD, align 4
  %28 = call i8* @genlmsg_put(%struct.sk_buff* %20, i32 %23, i32 %26, i32* @ncsi_genl_family, i32 0, i32 %27)
  store i8* %28, i8** %10, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %19
  %32 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %33 = call i32 @kfree_skb(%struct.sk_buff* %32)
  %34 = load i32, i32* @EMSGSIZE, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %100

36:                                               ; preds = %19
  %37 = load %struct.ncsi_request*, %struct.ncsi_request** %5, align 8
  %38 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %37, i32 0, i32 1
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = call %struct.net* @dev_net(%struct.TYPE_4__* %41)
  store %struct.net* %42, %struct.net** %9, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %44 = load i32, i32* @NCSI_ATTR_IFINDEX, align 4
  %45 = load %struct.ncsi_request*, %struct.ncsi_request** %5, align 8
  %46 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %45, i32 0, i32 1
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @nla_put_u32(%struct.sk_buff* %43, i32 %44, i32 %51)
  %53 = load %struct.ncsi_package*, %struct.ncsi_package** %6, align 8
  %54 = icmp ne %struct.ncsi_package* %53, null
  br i1 %54, label %55, label %62

55:                                               ; preds = %36
  %56 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %57 = load i32, i32* @NCSI_ATTR_PACKAGE_ID, align 4
  %58 = load %struct.ncsi_package*, %struct.ncsi_package** %6, align 8
  %59 = getelementptr inbounds %struct.ncsi_package, %struct.ncsi_package* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @nla_put_u32(%struct.sk_buff* %56, i32 %57, i32 %60)
  br label %75

62:                                               ; preds = %36
  %63 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %64 = load i32, i32* @NCSI_ATTR_PACKAGE_ID, align 4
  %65 = load %struct.ncsi_request*, %struct.ncsi_request** %5, align 8
  %66 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %65, i32 0, i32 1
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = inttoptr i64 %69 to %struct.ncsi_pkt_hdr*
  %71 = getelementptr inbounds %struct.ncsi_pkt_hdr, %struct.ncsi_pkt_hdr* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @NCSI_PACKAGE_INDEX(i32 %72)
  %74 = call i32 @nla_put_u32(%struct.sk_buff* %63, i32 %64, i32 %73)
  br label %75

75:                                               ; preds = %62, %55
  %76 = load %struct.ncsi_channel*, %struct.ncsi_channel** %7, align 8
  %77 = icmp ne %struct.ncsi_channel* %76, null
  br i1 %77, label %78, label %85

78:                                               ; preds = %75
  %79 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %80 = load i32, i32* @NCSI_ATTR_CHANNEL_ID, align 4
  %81 = load %struct.ncsi_channel*, %struct.ncsi_channel** %7, align 8
  %82 = getelementptr inbounds %struct.ncsi_channel, %struct.ncsi_channel* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @nla_put_u32(%struct.sk_buff* %79, i32 %80, i32 %83)
  br label %90

85:                                               ; preds = %75
  %86 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %87 = load i32, i32* @NCSI_ATTR_CHANNEL_ID, align 4
  %88 = load i32, i32* @NCSI_RESERVED_CHANNEL, align 4
  %89 = call i32 @nla_put_u32(%struct.sk_buff* %86, i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %85, %78
  %91 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %92 = load i8*, i8** %10, align 8
  %93 = call i32 @genlmsg_end(%struct.sk_buff* %91, i8* %92)
  %94 = load %struct.net*, %struct.net** %9, align 8
  %95 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %96 = load %struct.ncsi_request*, %struct.ncsi_request** %5, align 8
  %97 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @genlmsg_unicast(%struct.net* %94, %struct.sk_buff* %95, i32 %98)
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %90, %31, %16
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local %struct.sk_buff* @genlmsg_new(i32, i32) #1

declare dso_local i8* @genlmsg_put(%struct.sk_buff*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.net* @dev_net(%struct.TYPE_4__*) #1

declare dso_local i32 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @NCSI_PACKAGE_INDEX(i32) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_unicast(%struct.net*, %struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
