; ModuleID = '/home/carl/AnghaBench/linux/net/mpls/extr_af_mpls.c_mpls_valid_fib_dump_req.c'
source_filename = "/home/carl/AnghaBench/linux/net/mpls/extr_af_mpls.c_mpls_valid_fib_dump_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.nlmsghdr = type { i64 }
%struct.fib_dump_filter = type { i32, i32, i64 }
%struct.netlink_callback = type { i32, %struct.netlink_ext_ack* }
%struct.netlink_ext_ack = type { i32 }
%struct.rtmsg = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.nlattr = type { i32 }

@RTA_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Invalid header for FIB dump request\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Invalid values in header for FIB dump request\00", align 1
@NLM_F_DUMP_FILTERED = common dso_local global i32 0, align 4
@rtm_mpls_policy = common dso_local global i32 0, align 4
@RTA_OIF = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Unsupported attribute in dump request\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.nlmsghdr*, %struct.fib_dump_filter*, %struct.netlink_callback*)* @mpls_valid_fib_dump_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpls_valid_fib_dump_req(%struct.net* %0, %struct.nlmsghdr* %1, %struct.fib_dump_filter* %2, %struct.netlink_callback* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.nlmsghdr*, align 8
  %8 = alloca %struct.fib_dump_filter*, align 8
  %9 = alloca %struct.netlink_callback*, align 8
  %10 = alloca %struct.netlink_ext_ack*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.rtmsg*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %7, align 8
  store %struct.fib_dump_filter* %2, %struct.fib_dump_filter** %8, align 8
  store %struct.netlink_callback* %3, %struct.netlink_callback** %9, align 8
  %18 = load %struct.netlink_callback*, %struct.netlink_callback** %9, align 8
  %19 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %18, i32 0, i32 1
  %20 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %19, align 8
  store %struct.netlink_ext_ack* %20, %struct.netlink_ext_ack** %10, align 8
  %21 = load i32, i32* @RTA_MAX, align 4
  %22 = add nsw i32 %21, 1
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %11, align 8
  %25 = alloca %struct.nlattr*, i64 %23, align 16
  store i64 %23, i64* %12, align 8
  %26 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %27 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @nlmsg_msg_size(i32 64)
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %4
  %32 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %10, align 8
  %33 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %32, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %151

36:                                               ; preds = %4
  %37 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %38 = call %struct.rtmsg* @nlmsg_data(%struct.nlmsghdr* %37)
  store %struct.rtmsg* %38, %struct.rtmsg** %13, align 8
  %39 = load %struct.rtmsg*, %struct.rtmsg** %13, align 8
  %40 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %39, i32 0, i32 7
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %73, label %43

43:                                               ; preds = %36
  %44 = load %struct.rtmsg*, %struct.rtmsg** %13, align 8
  %45 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %44, i32 0, i32 6
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %73, label %48

48:                                               ; preds = %43
  %49 = load %struct.rtmsg*, %struct.rtmsg** %13, align 8
  %50 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %49, i32 0, i32 5
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %73, label %53

53:                                               ; preds = %48
  %54 = load %struct.rtmsg*, %struct.rtmsg** %13, align 8
  %55 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %73, label %58

58:                                               ; preds = %53
  %59 = load %struct.rtmsg*, %struct.rtmsg** %13, align 8
  %60 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %73, label %63

63:                                               ; preds = %58
  %64 = load %struct.rtmsg*, %struct.rtmsg** %13, align 8
  %65 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %63
  %69 = load %struct.rtmsg*, %struct.rtmsg** %13, align 8
  %70 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %68, %63, %58, %53, %48, %43, %36
  %74 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %10, align 8
  %75 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %74, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %151

78:                                               ; preds = %68
  %79 = load %struct.rtmsg*, %struct.rtmsg** %13, align 8
  %80 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %94

83:                                               ; preds = %78
  %84 = load %struct.rtmsg*, %struct.rtmsg** %13, align 8
  %85 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.fib_dump_filter*, %struct.fib_dump_filter** %8, align 8
  %88 = getelementptr inbounds %struct.fib_dump_filter, %struct.fib_dump_filter* %87, i32 0, i32 2
  store i64 %86, i64* %88, align 8
  %89 = load %struct.fib_dump_filter*, %struct.fib_dump_filter** %8, align 8
  %90 = getelementptr inbounds %struct.fib_dump_filter, %struct.fib_dump_filter* %89, i32 0, i32 0
  store i32 1, i32* %90, align 8
  %91 = load i32, i32* @NLM_F_DUMP_FILTERED, align 4
  %92 = load %struct.netlink_callback*, %struct.netlink_callback** %9, align 8
  %93 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  br label %94

94:                                               ; preds = %83, %78
  %95 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %96 = load i32, i32* @RTA_MAX, align 4
  %97 = load i32, i32* @rtm_mpls_policy, align 4
  %98 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %10, align 8
  %99 = call i32 @nlmsg_parse_deprecated_strict(%struct.nlmsghdr* %95, i32 64, %struct.nlattr** %25, i32 %96, i32 %97, %struct.netlink_ext_ack* %98)
  store i32 %99, i32* %14, align 4
  %100 = load i32, i32* %14, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %94
  %103 = load i32, i32* %14, align 4
  store i32 %103, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %151

104:                                              ; preds = %94
  store i32 0, i32* %15, align 4
  br label %105

105:                                              ; preds = %147, %104
  %106 = load i32, i32* %15, align 4
  %107 = load i32, i32* @RTA_MAX, align 4
  %108 = icmp sle i32 %106, %107
  br i1 %108, label %109, label %150

109:                                              ; preds = %105
  %110 = load i32, i32* %15, align 4
  %111 = load i32, i32* @RTA_OIF, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %134

113:                                              ; preds = %109
  %114 = load i32, i32* %15, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %115
  %117 = load %struct.nlattr*, %struct.nlattr** %116, align 8
  %118 = call i32 @nla_get_u32(%struct.nlattr* %117)
  store i32 %118, i32* %17, align 4
  %119 = load %struct.net*, %struct.net** %6, align 8
  %120 = load i32, i32* %17, align 4
  %121 = call i32 @__dev_get_by_index(%struct.net* %119, i32 %120)
  %122 = load %struct.fib_dump_filter*, %struct.fib_dump_filter** %8, align 8
  %123 = getelementptr inbounds %struct.fib_dump_filter, %struct.fib_dump_filter* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 4
  %124 = load %struct.fib_dump_filter*, %struct.fib_dump_filter** %8, align 8
  %125 = getelementptr inbounds %struct.fib_dump_filter, %struct.fib_dump_filter* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %113
  %129 = load i32, i32* @ENODEV, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %151

131:                                              ; preds = %113
  %132 = load %struct.fib_dump_filter*, %struct.fib_dump_filter** %8, align 8
  %133 = getelementptr inbounds %struct.fib_dump_filter, %struct.fib_dump_filter* %132, i32 0, i32 0
  store i32 1, i32* %133, align 8
  br label %146

134:                                              ; preds = %109
  %135 = load i32, i32* %15, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %136
  %138 = load %struct.nlattr*, %struct.nlattr** %137, align 8
  %139 = icmp ne %struct.nlattr* %138, null
  br i1 %139, label %140, label %145

140:                                              ; preds = %134
  %141 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %10, align 8
  %142 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %141, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %143 = load i32, i32* @EINVAL, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %151

145:                                              ; preds = %134
  br label %146

146:                                              ; preds = %145, %131
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %15, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %15, align 4
  br label %105

150:                                              ; preds = %105
  store i32 0, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %151

151:                                              ; preds = %150, %140, %128, %102, %73, %31
  %152 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %152)
  %153 = load i32, i32* %5, align 4
  ret i32 %153
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @nlmsg_msg_size(i32) #2

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #2

declare dso_local %struct.rtmsg* @nlmsg_data(%struct.nlmsghdr*) #2

declare dso_local i32 @nlmsg_parse_deprecated_strict(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32, %struct.netlink_ext_ack*) #2

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #2

declare dso_local i32 @__dev_get_by_index(%struct.net*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
