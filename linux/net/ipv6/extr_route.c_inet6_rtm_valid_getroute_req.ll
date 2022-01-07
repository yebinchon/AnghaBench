; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_inet6_rtm_valid_getroute_req.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_inet6_rtm_valid_getroute_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i64 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.rtmsg = type { i32, i32, i32, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [37 x i8] c"Invalid header for get route request\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@RTA_MAX = common dso_local global i32 0, align 4
@rtm_ipv6_policy = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Invalid values in header for get route request\00", align 1
@RTM_F_FIB_MATCH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Invalid flags for get route request\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"rtm_src_len and rtm_dst_len must be 128 for IPv6\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"Unsupported attribute in get route request\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**, %struct.netlink_ext_ack*)* @inet6_rtm_valid_getroute_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet6_rtm_valid_getroute_req(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.nlattr** %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.nlmsghdr*, align 8
  %8 = alloca %struct.nlattr**, align 8
  %9 = alloca %struct.netlink_ext_ack*, align 8
  %10 = alloca %struct.rtmsg*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %7, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %8, align 8
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %9, align 8
  %13 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %14 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i64 @nlmsg_msg_size(i32 48)
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %4
  %19 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %20 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %19, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %156

23:                                               ; preds = %4
  %24 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %25 = call i32 @netlink_strict_get_check(%struct.sk_buff* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %23
  %28 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %29 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %30 = load i32, i32* @RTA_MAX, align 4
  %31 = load i32, i32* @rtm_ipv6_policy, align 4
  %32 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %33 = call i32 @nlmsg_parse_deprecated(%struct.nlmsghdr* %28, i32 48, %struct.nlattr** %29, i32 %30, i32 %31, %struct.netlink_ext_ack* %32)
  store i32 %33, i32* %5, align 4
  br label %156

34:                                               ; preds = %23
  %35 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %36 = call %struct.rtmsg* @nlmsg_data(%struct.nlmsghdr* %35)
  store %struct.rtmsg* %36, %struct.rtmsg** %10, align 8
  %37 = load %struct.rtmsg*, %struct.rtmsg** %10, align 8
  %38 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %34
  %42 = load %struct.rtmsg*, %struct.rtmsg** %10, align 8
  %43 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 128
  br i1 %45, label %76, label %46

46:                                               ; preds = %41, %34
  %47 = load %struct.rtmsg*, %struct.rtmsg** %10, align 8
  %48 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load %struct.rtmsg*, %struct.rtmsg** %10, align 8
  %53 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 128
  br i1 %55, label %76, label %56

56:                                               ; preds = %51, %46
  %57 = load %struct.rtmsg*, %struct.rtmsg** %10, align 8
  %58 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %57, i32 0, i32 6
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %76, label %61

61:                                               ; preds = %56
  %62 = load %struct.rtmsg*, %struct.rtmsg** %10, align 8
  %63 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %62, i32 0, i32 5
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %76, label %66

66:                                               ; preds = %61
  %67 = load %struct.rtmsg*, %struct.rtmsg** %10, align 8
  %68 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %67, i32 0, i32 4
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %66
  %72 = load %struct.rtmsg*, %struct.rtmsg** %10, align 8
  %73 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %71, %66, %61, %56, %51, %41
  %77 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %78 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %77, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %5, align 4
  br label %156

81:                                               ; preds = %71
  %82 = load %struct.rtmsg*, %struct.rtmsg** %10, align 8
  %83 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @RTM_F_FIB_MATCH, align 4
  %86 = xor i32 %85, -1
  %87 = and i32 %84, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %81
  %90 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %91 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %90, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %5, align 4
  br label %156

94:                                               ; preds = %81
  %95 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %96 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %97 = load i32, i32* @RTA_MAX, align 4
  %98 = load i32, i32* @rtm_ipv6_policy, align 4
  %99 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %100 = call i32 @nlmsg_parse_deprecated_strict(%struct.nlmsghdr* %95, i32 48, %struct.nlattr** %96, i32 %97, i32 %98, %struct.netlink_ext_ack* %99)
  store i32 %100, i32* %12, align 4
  %101 = load i32, i32* %12, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %94
  %104 = load i32, i32* %12, align 4
  store i32 %104, i32* %5, align 4
  br label %156

105:                                              ; preds = %94
  %106 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %107 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %106, i64 129
  %108 = load %struct.nlattr*, %struct.nlattr** %107, align 8
  %109 = icmp ne %struct.nlattr* %108, null
  br i1 %109, label %110, label %115

110:                                              ; preds = %105
  %111 = load %struct.rtmsg*, %struct.rtmsg** %10, align 8
  %112 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %125

115:                                              ; preds = %110, %105
  %116 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %117 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %116, i64 135
  %118 = load %struct.nlattr*, %struct.nlattr** %117, align 8
  %119 = icmp ne %struct.nlattr* %118, null
  br i1 %119, label %120, label %130

120:                                              ; preds = %115
  %121 = load %struct.rtmsg*, %struct.rtmsg** %10, align 8
  %122 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %130, label %125

125:                                              ; preds = %120, %110
  %126 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %127 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %126, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  %128 = load i32, i32* @EINVAL, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %5, align 4
  br label %156

130:                                              ; preds = %120, %115
  store i32 0, i32* %11, align 4
  br label %131

131:                                              ; preds = %152, %130
  %132 = load i32, i32* %11, align 4
  %133 = load i32, i32* @RTA_MAX, align 4
  %134 = icmp sle i32 %132, %133
  br i1 %134, label %135, label %155

135:                                              ; preds = %131
  %136 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %137 = load i32, i32* %11, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %136, i64 %138
  %140 = load %struct.nlattr*, %struct.nlattr** %139, align 8
  %141 = icmp ne %struct.nlattr* %140, null
  br i1 %141, label %143, label %142

142:                                              ; preds = %135
  br label %152

143:                                              ; preds = %135
  %144 = load i32, i32* %11, align 4
  switch i32 %144, label %146 [
    i32 129, label %145
    i32 135, label %145
    i32 134, label %145
    i32 131, label %145
    i32 132, label %145
    i32 128, label %145
    i32 130, label %145
    i32 136, label %145
    i32 133, label %145
  ]

145:                                              ; preds = %143, %143, %143, %143, %143, %143, %143, %143, %143
  br label %151

146:                                              ; preds = %143
  %147 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %148 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %147, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  %149 = load i32, i32* @EINVAL, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %5, align 4
  br label %156

151:                                              ; preds = %145
  br label %152

152:                                              ; preds = %151, %142
  %153 = load i32, i32* %11, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %11, align 4
  br label %131

155:                                              ; preds = %131
  store i32 0, i32* %5, align 4
  br label %156

156:                                              ; preds = %155, %146, %125, %103, %89, %76, %27, %18
  %157 = load i32, i32* %5, align 4
  ret i32 %157
}

declare dso_local i64 @nlmsg_msg_size(i32) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @netlink_strict_get_check(%struct.sk_buff*) #1

declare dso_local i32 @nlmsg_parse_deprecated(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32, %struct.netlink_ext_ack*) #1

declare dso_local %struct.rtmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @nlmsg_parse_deprecated_strict(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32, %struct.netlink_ext_ack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
