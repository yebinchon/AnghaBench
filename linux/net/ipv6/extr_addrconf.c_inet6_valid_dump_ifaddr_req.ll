; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_inet6_valid_dump_ifaddr_req.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_inet6_valid_dump_ifaddr_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlmsghdr = type { i64 }
%struct.inet6_fill_args = type { i32, i32, i32 }
%struct.net = type { i32 }
%struct.sock = type { i32 }
%struct.netlink_callback = type { i32, %struct.netlink_ext_ack* }
%struct.netlink_ext_ack = type { i32 }
%struct.ifaddrmsg = type { i32, i64, i64, i64 }
%struct.nlattr = type { i32 }

@IFA_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Invalid header for address dump request\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Invalid values in header for address dump request\00", align 1
@NLM_F_DUMP_FILTERED = common dso_local global i32 0, align 4
@ifa_ipv6_policy = common dso_local global i32 0, align 4
@IFA_TARGET_NETNSID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Invalid target network namespace id\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Unsupported attribute in dump request\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlmsghdr*, %struct.inet6_fill_args*, %struct.net**, %struct.sock*, %struct.netlink_callback*)* @inet6_valid_dump_ifaddr_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet6_valid_dump_ifaddr_req(%struct.nlmsghdr* %0, %struct.inet6_fill_args* %1, %struct.net** %2, %struct.sock* %3, %struct.netlink_callback* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nlmsghdr*, align 8
  %8 = alloca %struct.inet6_fill_args*, align 8
  %9 = alloca %struct.net**, align 8
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.netlink_callback*, align 8
  %12 = alloca %struct.netlink_ext_ack*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.ifaddrmsg*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.net*, align 8
  store %struct.nlmsghdr* %0, %struct.nlmsghdr** %7, align 8
  store %struct.inet6_fill_args* %1, %struct.inet6_fill_args** %8, align 8
  store %struct.net** %2, %struct.net*** %9, align 8
  store %struct.sock* %3, %struct.sock** %10, align 8
  store %struct.netlink_callback* %4, %struct.netlink_callback** %11, align 8
  %20 = load %struct.netlink_callback*, %struct.netlink_callback** %11, align 8
  %21 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %20, i32 0, i32 1
  %22 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %21, align 8
  store %struct.netlink_ext_ack* %22, %struct.netlink_ext_ack** %12, align 8
  %23 = load i32, i32* @IFA_MAX, align 4
  %24 = add nsw i32 %23, 1
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %13, align 8
  %27 = alloca %struct.nlattr*, i64 %25, align 16
  store i64 %25, i64* %14, align 8
  %28 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %29 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i64 @nlmsg_msg_size(i32 32)
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %5
  %34 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %12, align 8
  %35 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %34, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %143

38:                                               ; preds = %5
  %39 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %40 = call %struct.ifaddrmsg* @nlmsg_data(%struct.nlmsghdr* %39)
  store %struct.ifaddrmsg* %40, %struct.ifaddrmsg** %15, align 8
  %41 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %15, align 8
  %42 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %55, label %45

45:                                               ; preds = %38
  %46 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %15, align 8
  %47 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %45
  %51 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %15, align 8
  %52 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %50, %45, %38
  %56 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %12, align 8
  %57 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %56, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %143

60:                                               ; preds = %50
  %61 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %15, align 8
  %62 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.inet6_fill_args*, %struct.inet6_fill_args** %8, align 8
  %65 = getelementptr inbounds %struct.inet6_fill_args, %struct.inet6_fill_args* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 4
  %66 = load %struct.inet6_fill_args*, %struct.inet6_fill_args** %8, align 8
  %67 = getelementptr inbounds %struct.inet6_fill_args, %struct.inet6_fill_args* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %60
  %71 = load i32, i32* @NLM_F_DUMP_FILTERED, align 4
  %72 = load %struct.netlink_callback*, %struct.netlink_callback** %11, align 8
  %73 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 8
  %76 = load i32, i32* @NLM_F_DUMP_FILTERED, align 4
  %77 = load %struct.inet6_fill_args*, %struct.inet6_fill_args** %8, align 8
  %78 = getelementptr inbounds %struct.inet6_fill_args, %struct.inet6_fill_args* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %70, %60
  %82 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %83 = load i32, i32* @IFA_MAX, align 4
  %84 = load i32, i32* @ifa_ipv6_policy, align 4
  %85 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %12, align 8
  %86 = call i32 @nlmsg_parse_deprecated_strict(%struct.nlmsghdr* %82, i32 32, %struct.nlattr** %27, i32 %83, i32 %84, %struct.netlink_ext_ack* %85)
  store i32 %86, i32* %16, align 4
  %87 = load i32, i32* %16, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %81
  %90 = load i32, i32* %16, align 4
  store i32 %90, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %143

91:                                               ; preds = %81
  store i32 0, i32* %17, align 4
  br label %92

92:                                               ; preds = %139, %91
  %93 = load i32, i32* %17, align 4
  %94 = load i32, i32* @IFA_MAX, align 4
  %95 = icmp sle i32 %93, %94
  br i1 %95, label %96, label %142

96:                                               ; preds = %92
  %97 = load i32, i32* %17, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %98
  %100 = load %struct.nlattr*, %struct.nlattr** %99, align 8
  %101 = icmp ne %struct.nlattr* %100, null
  br i1 %101, label %103, label %102

102:                                              ; preds = %96
  br label %139

103:                                              ; preds = %96
  %104 = load i32, i32* %17, align 4
  %105 = load i32, i32* @IFA_TARGET_NETNSID, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %133

107:                                              ; preds = %103
  %108 = load i32, i32* %17, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %109
  %111 = load %struct.nlattr*, %struct.nlattr** %110, align 8
  %112 = call i32 @nla_get_s32(%struct.nlattr* %111)
  %113 = load %struct.inet6_fill_args*, %struct.inet6_fill_args** %8, align 8
  %114 = getelementptr inbounds %struct.inet6_fill_args, %struct.inet6_fill_args* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 4
  %115 = load %struct.sock*, %struct.sock** %10, align 8
  %116 = load %struct.inet6_fill_args*, %struct.inet6_fill_args** %8, align 8
  %117 = getelementptr inbounds %struct.inet6_fill_args, %struct.inet6_fill_args* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call %struct.net* @rtnl_get_net_ns_capable(%struct.sock* %115, i32 %118)
  store %struct.net* %119, %struct.net** %19, align 8
  %120 = load %struct.net*, %struct.net** %19, align 8
  %121 = call i64 @IS_ERR(%struct.net* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %107
  %124 = load %struct.inet6_fill_args*, %struct.inet6_fill_args** %8, align 8
  %125 = getelementptr inbounds %struct.inet6_fill_args, %struct.inet6_fill_args* %124, i32 0, i32 0
  store i32 -1, i32* %125, align 4
  %126 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %12, align 8
  %127 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %126, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %128 = load %struct.net*, %struct.net** %19, align 8
  %129 = call i32 @PTR_ERR(%struct.net* %128)
  store i32 %129, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %143

130:                                              ; preds = %107
  %131 = load %struct.net*, %struct.net** %19, align 8
  %132 = load %struct.net**, %struct.net*** %9, align 8
  store %struct.net* %131, %struct.net** %132, align 8
  br label %138

133:                                              ; preds = %103
  %134 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %12, align 8
  %135 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %134, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %136 = load i32, i32* @EINVAL, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %143

138:                                              ; preds = %130
  br label %139

139:                                              ; preds = %138, %102
  %140 = load i32, i32* %17, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %17, align 4
  br label %92

142:                                              ; preds = %92
  store i32 0, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %143

143:                                              ; preds = %142, %133, %123, %89, %55, %33
  %144 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %144)
  %145 = load i32, i32* %6, align 4
  ret i32 %145
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @nlmsg_msg_size(i32) #2

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #2

declare dso_local %struct.ifaddrmsg* @nlmsg_data(%struct.nlmsghdr*) #2

declare dso_local i32 @nlmsg_parse_deprecated_strict(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32, %struct.netlink_ext_ack*) #2

declare dso_local i32 @nla_get_s32(%struct.nlattr*) #2

declare dso_local %struct.net* @rtnl_get_net_ns_capable(%struct.sock*, i32) #2

declare dso_local i64 @IS_ERR(%struct.net*) #2

declare dso_local i32 @PTR_ERR(%struct.net*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
