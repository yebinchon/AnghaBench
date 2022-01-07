; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_route.c_inet_rtm_valid_getroute_req.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_route.c_inet_rtm_valid_getroute_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i64 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.rtmsg = type { i32, i32, i32, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [43 x i8] c"ipv4: Invalid header for route get request\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@RTA_MAX = common dso_local global i32 0, align 4
@rtm_ipv4_policy = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"ipv4: Invalid values in header for route get request\00", align 1
@RTM_F_NOTIFY = common dso_local global i32 0, align 4
@RTM_F_LOOKUP_TABLE = common dso_local global i32 0, align 4
@RTM_F_FIB_MATCH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"ipv4: Unsupported rtm_flags for route get request\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"ipv4: rtm_src_len and rtm_dst_len must be 32 for IPv4\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"ipv4: Unsupported attribute in route get request\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**, %struct.netlink_ext_ack*)* @inet_rtm_valid_getroute_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet_rtm_valid_getroute_req(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.nlattr** %2, %struct.netlink_ext_ack* %3) #0 {
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
  %20 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %19, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %160

23:                                               ; preds = %4
  %24 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %25 = call i32 @netlink_strict_get_check(%struct.sk_buff* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %23
  %28 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %29 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %30 = load i32, i32* @RTA_MAX, align 4
  %31 = load i32, i32* @rtm_ipv4_policy, align 4
  %32 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %33 = call i32 @nlmsg_parse_deprecated(%struct.nlmsghdr* %28, i32 48, %struct.nlattr** %29, i32 %30, i32 %31, %struct.netlink_ext_ack* %32)
  store i32 %33, i32* %5, align 4
  br label %160

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
  %45 = icmp ne i32 %44, 32
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
  %55 = icmp ne i32 %54, 32
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
  %78 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %77, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %5, align 4
  br label %160

81:                                               ; preds = %71
  %82 = load %struct.rtmsg*, %struct.rtmsg** %10, align 8
  %83 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @RTM_F_NOTIFY, align 4
  %86 = load i32, i32* @RTM_F_LOOKUP_TABLE, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @RTM_F_FIB_MATCH, align 4
  %89 = or i32 %87, %88
  %90 = xor i32 %89, -1
  %91 = and i32 %84, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %81
  %94 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %95 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %94, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %5, align 4
  br label %160

98:                                               ; preds = %81
  %99 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %100 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %101 = load i32, i32* @RTA_MAX, align 4
  %102 = load i32, i32* @rtm_ipv4_policy, align 4
  %103 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %104 = call i32 @nlmsg_parse_deprecated_strict(%struct.nlmsghdr* %99, i32 48, %struct.nlattr** %100, i32 %101, i32 %102, %struct.netlink_ext_ack* %103)
  store i32 %104, i32* %12, align 4
  %105 = load i32, i32* %12, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %98
  %108 = load i32, i32* %12, align 4
  store i32 %108, i32* %5, align 4
  br label %160

109:                                              ; preds = %98
  %110 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %111 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %110, i64 129
  %112 = load %struct.nlattr*, %struct.nlattr** %111, align 8
  %113 = icmp ne %struct.nlattr* %112, null
  br i1 %113, label %114, label %119

114:                                              ; preds = %109
  %115 = load %struct.rtmsg*, %struct.rtmsg** %10, align 8
  %116 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %129

119:                                              ; preds = %114, %109
  %120 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %121 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %120, i64 135
  %122 = load %struct.nlattr*, %struct.nlattr** %121, align 8
  %123 = icmp ne %struct.nlattr* %122, null
  br i1 %123, label %124, label %134

124:                                              ; preds = %119
  %125 = load %struct.rtmsg*, %struct.rtmsg** %10, align 8
  %126 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %134, label %129

129:                                              ; preds = %124, %114
  %130 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %131 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %130, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0))
  %132 = load i32, i32* @EINVAL, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %5, align 4
  br label %160

134:                                              ; preds = %124, %119
  store i32 0, i32* %11, align 4
  br label %135

135:                                              ; preds = %156, %134
  %136 = load i32, i32* %11, align 4
  %137 = load i32, i32* @RTA_MAX, align 4
  %138 = icmp sle i32 %136, %137
  br i1 %138, label %139, label %159

139:                                              ; preds = %135
  %140 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %141 = load i32, i32* %11, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %140, i64 %142
  %144 = load %struct.nlattr*, %struct.nlattr** %143, align 8
  %145 = icmp ne %struct.nlattr* %144, null
  br i1 %145, label %147, label %146

146:                                              ; preds = %139
  br label %156

147:                                              ; preds = %139
  %148 = load i32, i32* %11, align 4
  switch i32 %148, label %150 [
    i32 134, label %149
    i32 131, label %149
    i32 129, label %149
    i32 135, label %149
    i32 133, label %149
    i32 130, label %149
    i32 136, label %149
    i32 132, label %149
    i32 128, label %149
  ]

149:                                              ; preds = %147, %147, %147, %147, %147, %147, %147, %147, %147
  br label %155

150:                                              ; preds = %147
  %151 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %152 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %151, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0))
  %153 = load i32, i32* @EINVAL, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %5, align 4
  br label %160

155:                                              ; preds = %149
  br label %156

156:                                              ; preds = %155, %146
  %157 = load i32, i32* %11, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %11, align 4
  br label %135

159:                                              ; preds = %135
  store i32 0, i32* %5, align 4
  br label %160

160:                                              ; preds = %159, %150, %129, %107, %93, %76, %27, %18
  %161 = load i32, i32* %5, align 4
  ret i32 %161
}

declare dso_local i64 @nlmsg_msg_size(i32) #1

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

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
