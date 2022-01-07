; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ipmr.c_ipmr_rtm_valid_getroute_req.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ipmr.c_ipmr_rtm_valid_getroute_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i64 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.rtmsg = type { i32, i32, i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [53 x i8] c"ipv4: Invalid header for multicast route get request\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@RTA_MAX = common dso_local global i32 0, align 4
@rtm_ipv4_policy = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"ipv4: Invalid values in header for multicast route get request\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"ipv4: rtm_src_len and rtm_dst_len must be 32 for IPv4\00", align 1
@.str.3 = private unnamed_addr constant [59 x i8] c"ipv4: Unsupported attribute in multicast route get request\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**, %struct.netlink_ext_ack*)* @ipmr_rtm_valid_getroute_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipmr_rtm_valid_getroute_req(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.nlattr** %2, %struct.netlink_ext_ack* %3) #0 {
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
  %16 = call i64 @nlmsg_msg_size(i32 56)
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %4
  %19 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %20 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %19, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %153

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
  %33 = call i32 @nlmsg_parse_deprecated(%struct.nlmsghdr* %28, i32 56, %struct.nlattr** %29, i32 %30, i32 %31, %struct.netlink_ext_ack* %32)
  store i32 %33, i32* %5, align 4
  br label %153

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
  br i1 %45, label %86, label %46

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
  br i1 %55, label %86, label %56

56:                                               ; preds = %51, %46
  %57 = load %struct.rtmsg*, %struct.rtmsg** %10, align 8
  %58 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %57, i32 0, i32 7
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %86, label %61

61:                                               ; preds = %56
  %62 = load %struct.rtmsg*, %struct.rtmsg** %10, align 8
  %63 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %62, i32 0, i32 6
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %86, label %66

66:                                               ; preds = %61
  %67 = load %struct.rtmsg*, %struct.rtmsg** %10, align 8
  %68 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %67, i32 0, i32 5
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %86, label %71

71:                                               ; preds = %66
  %72 = load %struct.rtmsg*, %struct.rtmsg** %10, align 8
  %73 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %72, i32 0, i32 4
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %86, label %76

76:                                               ; preds = %71
  %77 = load %struct.rtmsg*, %struct.rtmsg** %10, align 8
  %78 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %76
  %82 = load %struct.rtmsg*, %struct.rtmsg** %10, align 8
  %83 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %81, %76, %71, %66, %61, %56, %51, %41
  %87 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %88 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %87, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0))
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %5, align 4
  br label %153

91:                                               ; preds = %81
  %92 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %93 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %94 = load i32, i32* @RTA_MAX, align 4
  %95 = load i32, i32* @rtm_ipv4_policy, align 4
  %96 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %97 = call i32 @nlmsg_parse_deprecated_strict(%struct.nlmsghdr* %92, i32 56, %struct.nlattr** %93, i32 %94, i32 %95, %struct.netlink_ext_ack* %96)
  store i32 %97, i32* %12, align 4
  %98 = load i32, i32* %12, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %91
  %101 = load i32, i32* %12, align 4
  store i32 %101, i32* %5, align 4
  br label %153

102:                                              ; preds = %91
  %103 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %104 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %103, i64 129
  %105 = load %struct.nlattr*, %struct.nlattr** %104, align 8
  %106 = icmp ne %struct.nlattr* %105, null
  br i1 %106, label %107, label %112

107:                                              ; preds = %102
  %108 = load %struct.rtmsg*, %struct.rtmsg** %10, align 8
  %109 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %122

112:                                              ; preds = %107, %102
  %113 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %114 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %113, i64 130
  %115 = load %struct.nlattr*, %struct.nlattr** %114, align 8
  %116 = icmp ne %struct.nlattr* %115, null
  br i1 %116, label %117, label %127

117:                                              ; preds = %112
  %118 = load %struct.rtmsg*, %struct.rtmsg** %10, align 8
  %119 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %127, label %122

122:                                              ; preds = %117, %107
  %123 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %124 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %123, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  %125 = load i32, i32* @EINVAL, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %5, align 4
  br label %153

127:                                              ; preds = %117, %112
  store i32 0, i32* %11, align 4
  br label %128

128:                                              ; preds = %149, %127
  %129 = load i32, i32* %11, align 4
  %130 = load i32, i32* @RTA_MAX, align 4
  %131 = icmp sle i32 %129, %130
  br i1 %131, label %132, label %152

132:                                              ; preds = %128
  %133 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %134 = load i32, i32* %11, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %133, i64 %135
  %137 = load %struct.nlattr*, %struct.nlattr** %136, align 8
  %138 = icmp ne %struct.nlattr* %137, null
  br i1 %138, label %140, label %139

139:                                              ; preds = %132
  br label %149

140:                                              ; preds = %132
  %141 = load i32, i32* %11, align 4
  switch i32 %141, label %143 [
    i32 129, label %142
    i32 130, label %142
    i32 128, label %142
  ]

142:                                              ; preds = %140, %140, %140
  br label %148

143:                                              ; preds = %140
  %144 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %145 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %144, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0))
  %146 = load i32, i32* @EINVAL, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %5, align 4
  br label %153

148:                                              ; preds = %142
  br label %149

149:                                              ; preds = %148, %139
  %150 = load i32, i32* %11, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %11, align 4
  br label %128

152:                                              ; preds = %128
  store i32 0, i32* %5, align 4
  br label %153

153:                                              ; preds = %152, %143, %122, %100, %86, %27, %18
  %154 = load i32, i32* %5, align 4
  ret i32 %154
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
