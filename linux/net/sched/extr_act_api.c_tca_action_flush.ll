; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_api.c_tca_action_flush.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_api.c_tca_action_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.nlattr = type { i32 }
%struct.nlmsghdr = type { i32, i32, i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tcamsg = type { i64, i64, i32 }
%struct.netlink_callback = type { i32 }
%struct.tc_action_ops = type { i32 (%struct.net.0*, %struct.sk_buff.1*, %struct.netlink_callback.2*, i32, %struct.tc_action_ops*, %struct.netlink_ext_ack.3*)*, i32 }
%struct.net.0 = type opaque
%struct.sk_buff.1 = type opaque
%struct.netlink_callback.2 = type opaque
%struct.netlink_ext_ack.3 = type opaque

@TCA_ACT_MAX = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NLMSG_GOODSIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@tcf_action_policy = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TCA_ACT_KIND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Cannot flush unknown TC action\00", align 1
@RTM_DELACTION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Failed to create TC action flush notification\00", align 1
@AF_UNSPEC = common dso_local global i32 0, align 4
@TCA_ACT_TAB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Failed to add new netlink message\00", align 1
@NLM_F_ROOT = common dso_local global i32 0, align 4
@RTNLGRP_TC = common dso_local global i32 0, align 4
@NLM_F_ECHO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"Failed to send TC action flush notification\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.nlattr*, %struct.nlmsghdr*, i32, %struct.netlink_ext_ack*)* @tca_action_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tca_action_flush(%struct.net* %0, %struct.nlattr* %1, %struct.nlmsghdr* %2, i32 %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.nlattr*, align 8
  %9 = alloca %struct.nlmsghdr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.netlink_ext_ack*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.nlmsghdr*, align 8
  %15 = alloca %struct.tcamsg*, align 8
  %16 = alloca %struct.netlink_callback, align 4
  %17 = alloca %struct.nlattr*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.tc_action_ops*, align 8
  %21 = alloca %struct.nlattr*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %7, align 8
  store %struct.nlattr* %1, %struct.nlattr** %8, align 8
  store %struct.nlmsghdr* %2, %struct.nlmsghdr** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %11, align 8
  %24 = load i32, i32* @TCA_ACT_MAX, align 4
  %25 = add nsw i32 %24, 1
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %18, align 8
  %28 = alloca %struct.nlattr*, i64 %26, align 16
  store i64 %26, i64* %19, align 8
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %22, align 4
  %31 = load i32, i32* @NLMSG_GOODSIZE, align 4
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.sk_buff* @alloc_skb(i32 %31, i32 %32)
  store %struct.sk_buff* %33, %struct.sk_buff** %12, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %35 = icmp ne %struct.sk_buff* %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %5
  %37 = load i32, i32* %22, align 4
  store i32 %37, i32* %6, align 4
  store i32 1, i32* %23, align 4
  br label %165

38:                                               ; preds = %5
  %39 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %40 = call i8* @skb_tail_pointer(%struct.sk_buff* %39)
  store i8* %40, i8** %13, align 8
  %41 = load i32, i32* @TCA_ACT_MAX, align 4
  %42 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %43 = load i32, i32* @tcf_action_policy, align 4
  %44 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %45 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %28, i32 %41, %struct.nlattr* %42, i32 %43, %struct.netlink_ext_ack* %44)
  store i32 %45, i32* %22, align 4
  %46 = load i32, i32* %22, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  br label %161

49:                                               ; preds = %38
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %22, align 4
  %52 = load i64, i64* @TCA_ACT_KIND, align 8
  %53 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %52
  %54 = load %struct.nlattr*, %struct.nlattr** %53, align 8
  store %struct.nlattr* %54, %struct.nlattr** %21, align 8
  %55 = load %struct.nlattr*, %struct.nlattr** %21, align 8
  %56 = call %struct.tc_action_ops* @tc_lookup_action(%struct.nlattr* %55)
  store %struct.tc_action_ops* %56, %struct.tc_action_ops** %20, align 8
  %57 = load %struct.tc_action_ops*, %struct.tc_action_ops** %20, align 8
  %58 = icmp ne %struct.tc_action_ops* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %49
  %60 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %61 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %60, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %161

62:                                               ; preds = %49
  %63 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %64 = load i32, i32* %10, align 4
  %65 = load %struct.nlmsghdr*, %struct.nlmsghdr** %9, align 8
  %66 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @RTM_DELACTION, align 4
  %69 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %63, i32 %64, i32 %67, i32 %68, i32 24, i32 0)
  store %struct.nlmsghdr* %69, %struct.nlmsghdr** %14, align 8
  %70 = load %struct.nlmsghdr*, %struct.nlmsghdr** %14, align 8
  %71 = icmp ne %struct.nlmsghdr* %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %62
  %73 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %74 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %73, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %156

75:                                               ; preds = %62
  %76 = load %struct.nlmsghdr*, %struct.nlmsghdr** %14, align 8
  %77 = call %struct.tcamsg* @nlmsg_data(%struct.nlmsghdr* %76)
  store %struct.tcamsg* %77, %struct.tcamsg** %15, align 8
  %78 = load i32, i32* @AF_UNSPEC, align 4
  %79 = load %struct.tcamsg*, %struct.tcamsg** %15, align 8
  %80 = getelementptr inbounds %struct.tcamsg, %struct.tcamsg* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  %81 = load %struct.tcamsg*, %struct.tcamsg** %15, align 8
  %82 = getelementptr inbounds %struct.tcamsg, %struct.tcamsg* %81, i32 0, i32 1
  store i64 0, i64* %82, align 8
  %83 = load %struct.tcamsg*, %struct.tcamsg** %15, align 8
  %84 = getelementptr inbounds %struct.tcamsg, %struct.tcamsg* %83, i32 0, i32 0
  store i64 0, i64* %84, align 8
  %85 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %86 = load i32, i32* @TCA_ACT_TAB, align 4
  %87 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %85, i32 %86)
  store %struct.nlattr* %87, %struct.nlattr** %17, align 8
  %88 = load %struct.nlattr*, %struct.nlattr** %17, align 8
  %89 = icmp ne %struct.nlattr* %88, null
  br i1 %89, label %93, label %90

90:                                               ; preds = %75
  %91 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %92 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %91, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %156

93:                                               ; preds = %75
  %94 = load %struct.tc_action_ops*, %struct.tc_action_ops** %20, align 8
  %95 = getelementptr inbounds %struct.tc_action_ops, %struct.tc_action_ops* %94, i32 0, i32 0
  %96 = load i32 (%struct.net.0*, %struct.sk_buff.1*, %struct.netlink_callback.2*, i32, %struct.tc_action_ops*, %struct.netlink_ext_ack.3*)*, i32 (%struct.net.0*, %struct.sk_buff.1*, %struct.netlink_callback.2*, i32, %struct.tc_action_ops*, %struct.netlink_ext_ack.3*)** %95, align 8
  %97 = load %struct.net*, %struct.net** %7, align 8
  %98 = bitcast %struct.net* %97 to %struct.net.0*
  %99 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %100 = bitcast %struct.sk_buff* %99 to %struct.sk_buff.1*
  %101 = bitcast %struct.netlink_callback* %16 to %struct.netlink_callback.2*
  %102 = load i32, i32* @RTM_DELACTION, align 4
  %103 = load %struct.tc_action_ops*, %struct.tc_action_ops** %20, align 8
  %104 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %105 = bitcast %struct.netlink_ext_ack* %104 to %struct.netlink_ext_ack.3*
  %106 = call i32 %96(%struct.net.0* %98, %struct.sk_buff.1* %100, %struct.netlink_callback.2* %101, i32 %102, %struct.tc_action_ops* %103, %struct.netlink_ext_ack.3* %105)
  store i32 %106, i32* %22, align 4
  %107 = load i32, i32* %22, align 4
  %108 = icmp sle i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %93
  %110 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %111 = load %struct.nlattr*, %struct.nlattr** %17, align 8
  %112 = call i32 @nla_nest_cancel(%struct.sk_buff* %110, %struct.nlattr* %111)
  br label %156

113:                                              ; preds = %93
  %114 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %115 = load %struct.nlattr*, %struct.nlattr** %17, align 8
  %116 = call i32 @nla_nest_end(%struct.sk_buff* %114, %struct.nlattr* %115)
  %117 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %118 = call i8* @skb_tail_pointer(%struct.sk_buff* %117)
  %119 = load i8*, i8** %13, align 8
  %120 = ptrtoint i8* %118 to i64
  %121 = ptrtoint i8* %119 to i64
  %122 = sub i64 %120, %121
  %123 = trunc i64 %122 to i32
  %124 = load %struct.nlmsghdr*, %struct.nlmsghdr** %14, align 8
  %125 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 4
  %126 = load i32, i32* @NLM_F_ROOT, align 4
  %127 = load %struct.nlmsghdr*, %struct.nlmsghdr** %14, align 8
  %128 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = or i32 %129, %126
  store i32 %130, i32* %128, align 4
  %131 = load %struct.tc_action_ops*, %struct.tc_action_ops** %20, align 8
  %132 = getelementptr inbounds %struct.tc_action_ops, %struct.tc_action_ops* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @module_put(i32 %133)
  %135 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %136 = load %struct.net*, %struct.net** %7, align 8
  %137 = load i32, i32* %10, align 4
  %138 = load i32, i32* @RTNLGRP_TC, align 4
  %139 = load %struct.nlmsghdr*, %struct.nlmsghdr** %9, align 8
  %140 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @NLM_F_ECHO, align 4
  %143 = and i32 %141, %142
  %144 = call i32 @rtnetlink_send(%struct.sk_buff* %135, %struct.net* %136, i32 %137, i32 %138, i32 %143)
  store i32 %144, i32* %22, align 4
  %145 = load i32, i32* %22, align 4
  %146 = icmp sgt i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %113
  store i32 0, i32* %6, align 4
  store i32 1, i32* %23, align 4
  br label %165

148:                                              ; preds = %113
  %149 = load i32, i32* %22, align 4
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %148
  %152 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %153 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %152, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  br label %154

154:                                              ; preds = %151, %148
  %155 = load i32, i32* %22, align 4
  store i32 %155, i32* %6, align 4
  store i32 1, i32* %23, align 4
  br label %165

156:                                              ; preds = %109, %90, %72
  %157 = load %struct.tc_action_ops*, %struct.tc_action_ops** %20, align 8
  %158 = getelementptr inbounds %struct.tc_action_ops, %struct.tc_action_ops* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @module_put(i32 %159)
  br label %161

161:                                              ; preds = %156, %59, %48
  %162 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %163 = call i32 @kfree_skb(%struct.sk_buff* %162)
  %164 = load i32, i32* %22, align 4
  store i32 %164, i32* %6, align 4
  store i32 1, i32* %23, align 4
  br label %165

165:                                              ; preds = %161, %154, %147, %36
  %166 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %166)
  %167 = load i32, i32* %6, align 4
  ret i32 %167
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #2

declare dso_local i8* @skb_tail_pointer(%struct.sk_buff*) #2

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32, %struct.netlink_ext_ack*) #2

declare dso_local %struct.tc_action_ops* @tc_lookup_action(%struct.nlattr*) #2

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #2

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #2

declare dso_local %struct.tcamsg* @nlmsg_data(%struct.nlmsghdr*) #2

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #2

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #2

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #2

declare dso_local i32 @module_put(i32) #2

declare dso_local i32 @rtnetlink_send(%struct.sk_buff*, %struct.net*, i32, i32, i32) #2

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
