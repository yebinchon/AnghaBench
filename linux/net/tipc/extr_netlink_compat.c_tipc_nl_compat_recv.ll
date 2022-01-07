; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_netlink_compat.c_tipc_nl_compat_recv.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_netlink_compat.c_tipc_nl_compat_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64 }
%struct.genl_info = type { i32, %struct.tipc_genlmsghdr* }
%struct.tipc_genlmsghdr = type { i32 }
%struct.tipc_nl_compat_msg = type { i32, %struct.TYPE_5__*, i32, i64, i64, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.TYPE_6__ = type { i32 }

@GENL_HDRLEN = common dso_local global i64 0, align 8
@TIPC_GENL_HDRLEN = common dso_local global i64 0, align 8
@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@TIPC_CFG_NOT_NET_ADMIN = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@TIPC_CFG_NOT_SUPPORTED = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TIPC_CFG_TLV_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @tipc_nl_compat_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tipc_nl_compat_recv(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tipc_nl_compat_msg, align 8
  %9 = alloca %struct.nlmsghdr*, align 8
  %10 = alloca %struct.nlmsghdr*, align 8
  %11 = alloca %struct.tipc_genlmsghdr*, align 8
  %12 = alloca %struct.TYPE_6__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %13 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %14 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %13, i32 0, i32 1
  %15 = load %struct.tipc_genlmsghdr*, %struct.tipc_genlmsghdr** %14, align 8
  store %struct.tipc_genlmsghdr* %15, %struct.tipc_genlmsghdr** %11, align 8
  %16 = call i32 @memset(%struct.tipc_nl_compat_msg* %8, i32 0, i32 48)
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.nlmsghdr*
  store %struct.nlmsghdr* %20, %struct.nlmsghdr** %9, align 8
  %21 = load %struct.nlmsghdr*, %struct.nlmsghdr** %9, align 8
  %22 = call i64 @nlmsg_data(%struct.nlmsghdr* %21)
  %23 = load i64, i64* @GENL_HDRLEN, align 8
  %24 = add nsw i64 %22, %23
  %25 = load i64, i64* @TIPC_GENL_HDRLEN, align 8
  %26 = add nsw i64 %24, %25
  %27 = getelementptr inbounds %struct.tipc_nl_compat_msg, %struct.tipc_nl_compat_msg* %8, i32 0, i32 4
  store i64 %26, i64* %27, align 8
  %28 = load %struct.tipc_genlmsghdr*, %struct.tipc_genlmsghdr** %11, align 8
  %29 = getelementptr inbounds %struct.tipc_genlmsghdr, %struct.tipc_genlmsghdr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.tipc_nl_compat_msg, %struct.tipc_nl_compat_msg* %8, i32 0, i32 0
  store i32 %30, i32* %31, align 8
  %32 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %33 = call i32 @genl_info_net(%struct.genl_info* %32)
  %34 = getelementptr inbounds %struct.tipc_nl_compat_msg, %struct.tipc_nl_compat_msg* %8, i32 0, i32 2
  store i32 %33, i32* %34, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = getelementptr inbounds %struct.tipc_nl_compat_msg, %struct.tipc_nl_compat_msg* %8, i32 0, i32 5
  store i32 %37, i32* %38, align 8
  %39 = getelementptr inbounds %struct.tipc_nl_compat_msg, %struct.tipc_nl_compat_msg* %8, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = and i32 %40, 49152
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %2
  %44 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %45 = load i32, i32* @CAP_NET_ADMIN, align 4
  %46 = call i32 @netlink_net_capable(%struct.sk_buff* %44, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* @TIPC_CFG_NOT_NET_ADMIN, align 4
  %50 = call i8* @tipc_get_err_tlv(i32 %49)
  %51 = bitcast i8* %50 to %struct.TYPE_5__*
  %52 = getelementptr inbounds %struct.tipc_nl_compat_msg, %struct.tipc_nl_compat_msg* %8, i32 0, i32 1
  store %struct.TYPE_5__* %51, %struct.TYPE_5__** %52, align 8
  %53 = load i32, i32* @EACCES, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %6, align 4
  br label %107

55:                                               ; preds = %43, %2
  %56 = load %struct.nlmsghdr*, %struct.nlmsghdr** %9, align 8
  %57 = load i64, i64* @GENL_HDRLEN, align 8
  %58 = load i64, i64* @TIPC_GENL_HDRLEN, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i64 @nlmsg_attrlen(%struct.nlmsghdr* %56, i64 %59)
  %61 = getelementptr inbounds %struct.tipc_nl_compat_msg, %struct.tipc_nl_compat_msg* %8, i32 0, i32 3
  store i64 %60, i64* %61, align 8
  %62 = getelementptr inbounds %struct.tipc_nl_compat_msg, %struct.tipc_nl_compat_msg* %8, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %79

65:                                               ; preds = %55
  %66 = getelementptr inbounds %struct.tipc_nl_compat_msg, %struct.tipc_nl_compat_msg* %8, i32 0, i32 4
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.tipc_nl_compat_msg, %struct.tipc_nl_compat_msg* %8, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @TLV_OK(i64 %67, i64 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %79, label %72

72:                                               ; preds = %65
  %73 = load i32, i32* @TIPC_CFG_NOT_SUPPORTED, align 4
  %74 = call i8* @tipc_get_err_tlv(i32 %73)
  %75 = bitcast i8* %74 to %struct.TYPE_5__*
  %76 = getelementptr inbounds %struct.tipc_nl_compat_msg, %struct.tipc_nl_compat_msg* %8, i32 0, i32 1
  store %struct.TYPE_5__* %75, %struct.TYPE_5__** %76, align 8
  %77 = load i32, i32* @EOPNOTSUPP, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %6, align 4
  br label %107

79:                                               ; preds = %65, %55
  %80 = call i32 @tipc_nl_compat_handle(%struct.tipc_nl_compat_msg* %8)
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* @EOPNOTSUPP, align 4
  %83 = sub nsw i32 0, %82
  %84 = icmp eq i32 %81, %83
  br i1 %84, label %90, label %85

85:                                               ; preds = %79
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @EPERM, align 4
  %88 = sub nsw i32 0, %87
  %89 = icmp eq i32 %86, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %85, %79
  %91 = load i32, i32* @TIPC_CFG_NOT_SUPPORTED, align 4
  %92 = call i8* @tipc_get_err_tlv(i32 %91)
  %93 = bitcast i8* %92 to %struct.TYPE_5__*
  %94 = getelementptr inbounds %struct.tipc_nl_compat_msg, %struct.tipc_nl_compat_msg* %8, i32 0, i32 1
  store %struct.TYPE_5__* %93, %struct.TYPE_5__** %94, align 8
  br label %106

95:                                               ; preds = %85
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  %99 = icmp eq i32 %96, %98
  br i1 %99, label %100, label %105

100:                                              ; preds = %95
  %101 = load i32, i32* @TIPC_CFG_TLV_ERROR, align 4
  %102 = call i8* @tipc_get_err_tlv(i32 %101)
  %103 = bitcast i8* %102 to %struct.TYPE_5__*
  %104 = getelementptr inbounds %struct.tipc_nl_compat_msg, %struct.tipc_nl_compat_msg* %8, i32 0, i32 1
  store %struct.TYPE_5__* %103, %struct.TYPE_5__** %104, align 8
  br label %105

105:                                              ; preds = %100, %95
  br label %106

106:                                              ; preds = %105, %90
  br label %107

107:                                              ; preds = %106, %72, %48
  %108 = getelementptr inbounds %struct.tipc_nl_compat_msg, %struct.tipc_nl_compat_msg* %8, i32 0, i32 1
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %108, align 8
  %110 = icmp ne %struct.TYPE_5__* %109, null
  br i1 %110, label %113, label %111

111:                                              ; preds = %107
  %112 = load i32, i32* %6, align 4
  store i32 %112, i32* %3, align 4
  br label %148

113:                                              ; preds = %107
  %114 = load i64, i64* @GENL_HDRLEN, align 8
  %115 = load i64, i64* @TIPC_GENL_HDRLEN, align 8
  %116 = add nsw i64 %114, %115
  %117 = call i32 @nlmsg_total_size(i64 %116)
  store i32 %117, i32* %7, align 4
  %118 = getelementptr inbounds %struct.tipc_nl_compat_msg, %struct.tipc_nl_compat_msg* %8, i32 0, i32 1
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %118, align 8
  %120 = load i32, i32* %7, align 4
  %121 = call i32 @skb_push(%struct.TYPE_5__* %119, i32 %120)
  %122 = getelementptr inbounds %struct.tipc_nl_compat_msg, %struct.tipc_nl_compat_msg* %8, i32 0, i32 1
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %122, align 8
  %124 = call %struct.nlmsghdr* @nlmsg_hdr(%struct.TYPE_5__* %123)
  store %struct.nlmsghdr* %124, %struct.nlmsghdr** %10, align 8
  %125 = load %struct.nlmsghdr*, %struct.nlmsghdr** %10, align 8
  %126 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %127 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* %7, align 4
  %130 = call i32 @memcpy(%struct.nlmsghdr* %125, i32 %128, i32 %129)
  %131 = getelementptr inbounds %struct.tipc_nl_compat_msg, %struct.tipc_nl_compat_msg* %8, i32 0, i32 1
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.nlmsghdr*, %struct.nlmsghdr** %10, align 8
  %136 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 4
  %137 = getelementptr inbounds %struct.tipc_nl_compat_msg, %struct.tipc_nl_compat_msg* %8, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = getelementptr inbounds %struct.tipc_nl_compat_msg, %struct.tipc_nl_compat_msg* %8, i32 0, i32 1
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %139, align 8
  %141 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %142 = call i32 @NETLINK_CB(%struct.sk_buff* %141)
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  store i32 %142, i32* %143, align 4
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @genlmsg_unicast(i32 %138, %struct.TYPE_5__* %140, i32 %145)
  %147 = load i32, i32* %6, align 4
  store i32 %147, i32* %3, align 4
  br label %148

148:                                              ; preds = %113, %111
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local i32 @memset(%struct.tipc_nl_compat_msg*, i32, i32) #1

declare dso_local i64 @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @genl_info_net(%struct.genl_info*) #1

declare dso_local i32 @netlink_net_capable(%struct.sk_buff*, i32) #1

declare dso_local i8* @tipc_get_err_tlv(i32) #1

declare dso_local i64 @nlmsg_attrlen(%struct.nlmsghdr*, i64) #1

declare dso_local i32 @TLV_OK(i64, i64) #1

declare dso_local i32 @tipc_nl_compat_handle(%struct.tipc_nl_compat_msg*) #1

declare dso_local i32 @nlmsg_total_size(i64) #1

declare dso_local i32 @skb_push(%struct.TYPE_5__*, i32) #1

declare dso_local %struct.nlmsghdr* @nlmsg_hdr(%struct.TYPE_5__*) #1

declare dso_local i32 @memcpy(%struct.nlmsghdr*, i32, i32) #1

declare dso_local i32 @genlmsg_unicast(i32, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
