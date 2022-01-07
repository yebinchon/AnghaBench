; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_xfrm_notify_policy.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_xfrm_notify_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_policy = type { i32, i32, i32, i32, i32, i32 }
%struct.km_event = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.net = type { i32 }
%struct.xfrm_userpolicy_info = type { i32 }
%struct.xfrm_userpolicy_id = type { i32, i32, i32 }
%struct.nlmsghdr = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlattr = type { i32 }

@XFRM_MSG_DELPOLICY = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@XFRMA_POLICY = common dso_local global i32 0, align 4
@XFRMNLGRP_POLICY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_policy*, i32, %struct.km_event*)* @xfrm_notify_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm_notify_policy(%struct.xfrm_policy* %0, i32 %1, %struct.km_event* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfrm_policy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.km_event*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.net*, align 8
  %10 = alloca %struct.xfrm_userpolicy_info*, align 8
  %11 = alloca %struct.xfrm_userpolicy_id*, align 8
  %12 = alloca %struct.nlmsghdr*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.nlattr*, align 8
  store %struct.xfrm_policy* %0, %struct.xfrm_policy** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.km_event* %2, %struct.km_event** %7, align 8
  %17 = load %struct.xfrm_policy*, %struct.xfrm_policy** %5, align 8
  %18 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = mul i64 4, %20
  %22 = trunc i64 %21 to i32
  %23 = call i32 @nla_total_size(i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load %struct.xfrm_policy*, %struct.xfrm_policy** %5, align 8
  %25 = call %struct.net* @xp_net(%struct.xfrm_policy* %24)
  store %struct.net* %25, %struct.net** %9, align 8
  store i32 4, i32* %14, align 4
  %26 = load %struct.km_event*, %struct.km_event** %7, align 8
  %27 = getelementptr inbounds %struct.km_event, %struct.km_event* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @XFRM_MSG_DELPOLICY, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %3
  %32 = load i32, i32* %14, align 4
  %33 = call i32 @nla_total_size(i32 %32)
  %34 = load i32, i32* %8, align 4
  %35 = add i32 %34, %33
  store i32 %35, i32* %8, align 4
  store i32 12, i32* %14, align 4
  br label %36

36:                                               ; preds = %31, %3
  %37 = call i64 (...) @userpolicy_type_attrsize()
  %38 = load i32, i32* %8, align 4
  %39 = zext i32 %38 to i64
  %40 = add nsw i64 %39, %37
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %8, align 4
  %42 = call i32 @nla_total_size(i32 4)
  %43 = load i32, i32* %8, align 4
  %44 = add i32 %43, %42
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %14, align 4
  %46 = call i64 @NLMSG_ALIGN(i32 %45)
  %47 = load i32, i32* %8, align 4
  %48 = zext i32 %47 to i64
  %49 = add nsw i64 %48, %46
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @GFP_ATOMIC, align 4
  %53 = call %struct.sk_buff* @nlmsg_new(i32 %51, i32 %52)
  store %struct.sk_buff* %53, %struct.sk_buff** %13, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %55 = icmp eq %struct.sk_buff* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %36
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %173

59:                                               ; preds = %36
  %60 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %61 = load %struct.km_event*, %struct.km_event** %7, align 8
  %62 = getelementptr inbounds %struct.km_event, %struct.km_event* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.km_event*, %struct.km_event** %7, align 8
  %65 = getelementptr inbounds %struct.km_event, %struct.km_event* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.km_event*, %struct.km_event** %7, align 8
  %68 = getelementptr inbounds %struct.km_event, %struct.km_event* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %14, align 4
  %71 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %60, i32 %63, i32 %66, i32 %69, i32 %70, i32 0)
  store %struct.nlmsghdr* %71, %struct.nlmsghdr** %12, align 8
  %72 = load i32, i32* @EMSGSIZE, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %15, align 4
  %74 = load %struct.nlmsghdr*, %struct.nlmsghdr** %12, align 8
  %75 = icmp eq %struct.nlmsghdr* %74, null
  br i1 %75, label %76, label %77

76:                                               ; preds = %59
  br label %169

77:                                               ; preds = %59
  %78 = load %struct.nlmsghdr*, %struct.nlmsghdr** %12, align 8
  %79 = call i8* @nlmsg_data(%struct.nlmsghdr* %78)
  %80 = bitcast i8* %79 to %struct.xfrm_userpolicy_info*
  store %struct.xfrm_userpolicy_info* %80, %struct.xfrm_userpolicy_info** %10, align 8
  %81 = load %struct.km_event*, %struct.km_event** %7, align 8
  %82 = getelementptr inbounds %struct.km_event, %struct.km_event* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @XFRM_MSG_DELPOLICY, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %124

86:                                               ; preds = %77
  %87 = load %struct.nlmsghdr*, %struct.nlmsghdr** %12, align 8
  %88 = call i8* @nlmsg_data(%struct.nlmsghdr* %87)
  %89 = bitcast i8* %88 to %struct.xfrm_userpolicy_id*
  store %struct.xfrm_userpolicy_id* %89, %struct.xfrm_userpolicy_id** %11, align 8
  %90 = load %struct.xfrm_userpolicy_id*, %struct.xfrm_userpolicy_id** %11, align 8
  %91 = call i32 @memset(%struct.xfrm_userpolicy_id* %90, i32 0, i32 12)
  %92 = load i32, i32* %6, align 4
  %93 = load %struct.xfrm_userpolicy_id*, %struct.xfrm_userpolicy_id** %11, align 8
  %94 = getelementptr inbounds %struct.xfrm_userpolicy_id, %struct.xfrm_userpolicy_id* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 4
  %95 = load %struct.km_event*, %struct.km_event** %7, align 8
  %96 = getelementptr inbounds %struct.km_event, %struct.km_event* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %86
  %101 = load %struct.xfrm_policy*, %struct.xfrm_policy** %5, align 8
  %102 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.xfrm_userpolicy_id*, %struct.xfrm_userpolicy_id** %11, align 8
  %105 = getelementptr inbounds %struct.xfrm_userpolicy_id, %struct.xfrm_userpolicy_id* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 4
  br label %112

106:                                              ; preds = %86
  %107 = load %struct.xfrm_userpolicy_id*, %struct.xfrm_userpolicy_id** %11, align 8
  %108 = getelementptr inbounds %struct.xfrm_userpolicy_id, %struct.xfrm_userpolicy_id* %107, i32 0, i32 1
  %109 = load %struct.xfrm_policy*, %struct.xfrm_policy** %5, align 8
  %110 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %109, i32 0, i32 4
  %111 = call i32 @memcpy(i32* %108, i32* %110, i32 4)
  br label %112

112:                                              ; preds = %106, %100
  %113 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %114 = load i32, i32* @XFRMA_POLICY, align 4
  %115 = call %struct.nlattr* @nla_reserve(%struct.sk_buff* %113, i32 %114, i32 4)
  store %struct.nlattr* %115, %struct.nlattr** %16, align 8
  %116 = load i32, i32* @EMSGSIZE, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %15, align 4
  %118 = load %struct.nlattr*, %struct.nlattr** %16, align 8
  %119 = icmp eq %struct.nlattr* %118, null
  br i1 %119, label %120, label %121

120:                                              ; preds = %112
  br label %169

121:                                              ; preds = %112
  %122 = load %struct.nlattr*, %struct.nlattr** %16, align 8
  %123 = call %struct.xfrm_userpolicy_info* @nla_data(%struct.nlattr* %122)
  store %struct.xfrm_userpolicy_info* %123, %struct.xfrm_userpolicy_info** %10, align 8
  br label %124

124:                                              ; preds = %121, %77
  %125 = load %struct.xfrm_policy*, %struct.xfrm_policy** %5, align 8
  %126 = load %struct.xfrm_userpolicy_info*, %struct.xfrm_userpolicy_info** %10, align 8
  %127 = load i32, i32* %6, align 4
  %128 = call i32 @copy_to_user_policy(%struct.xfrm_policy* %125, %struct.xfrm_userpolicy_info* %126, i32 %127)
  %129 = load %struct.xfrm_policy*, %struct.xfrm_policy** %5, align 8
  %130 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %131 = call i32 @copy_to_user_tmpl(%struct.xfrm_policy* %129, %struct.sk_buff* %130)
  store i32 %131, i32* %15, align 4
  %132 = load i32, i32* %15, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %140, label %134

134:                                              ; preds = %124
  %135 = load %struct.xfrm_policy*, %struct.xfrm_policy** %5, align 8
  %136 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %139 = call i32 @copy_to_user_policy_type(i32 %137, %struct.sk_buff* %138)
  store i32 %139, i32* %15, align 4
  br label %140

140:                                              ; preds = %134, %124
  %141 = load i32, i32* %15, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %148, label %143

143:                                              ; preds = %140
  %144 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %145 = load %struct.xfrm_policy*, %struct.xfrm_policy** %5, align 8
  %146 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %145, i32 0, i32 2
  %147 = call i32 @xfrm_mark_put(%struct.sk_buff* %144, i32* %146)
  store i32 %147, i32* %15, align 4
  br label %148

148:                                              ; preds = %143, %140
  %149 = load i32, i32* %15, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %157, label %151

151:                                              ; preds = %148
  %152 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %153 = load %struct.xfrm_policy*, %struct.xfrm_policy** %5, align 8
  %154 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @xfrm_if_id_put(%struct.sk_buff* %152, i32 %155)
  store i32 %156, i32* %15, align 4
  br label %157

157:                                              ; preds = %151, %148
  %158 = load i32, i32* %15, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %157
  br label %169

161:                                              ; preds = %157
  %162 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %163 = load %struct.nlmsghdr*, %struct.nlmsghdr** %12, align 8
  %164 = call i32 @nlmsg_end(%struct.sk_buff* %162, %struct.nlmsghdr* %163)
  %165 = load %struct.net*, %struct.net** %9, align 8
  %166 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %167 = load i32, i32* @XFRMNLGRP_POLICY, align 4
  %168 = call i32 @xfrm_nlmsg_multicast(%struct.net* %165, %struct.sk_buff* %166, i32 0, i32 %167)
  store i32 %168, i32* %4, align 4
  br label %173

169:                                              ; preds = %160, %120, %76
  %170 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %171 = call i32 @kfree_skb(%struct.sk_buff* %170)
  %172 = load i32, i32* %15, align 4
  store i32 %172, i32* %4, align 4
  br label %173

173:                                              ; preds = %169, %161, %56
  %174 = load i32, i32* %4, align 4
  ret i32 %174
}

declare dso_local i32 @nla_total_size(i32) #1

declare dso_local %struct.net* @xp_net(%struct.xfrm_policy*) #1

declare dso_local i64 @userpolicy_type_attrsize(...) #1

declare dso_local i64 @NLMSG_ALIGN(i32) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local i8* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @memset(%struct.xfrm_userpolicy_id*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local %struct.nlattr* @nla_reserve(%struct.sk_buff*, i32, i32) #1

declare dso_local %struct.xfrm_userpolicy_info* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @copy_to_user_policy(%struct.xfrm_policy*, %struct.xfrm_userpolicy_info*, i32) #1

declare dso_local i32 @copy_to_user_tmpl(%struct.xfrm_policy*, %struct.sk_buff*) #1

declare dso_local i32 @copy_to_user_policy_type(i32, %struct.sk_buff*) #1

declare dso_local i32 @xfrm_mark_put(%struct.sk_buff*, i32*) #1

declare dso_local i32 @xfrm_if_id_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @xfrm_nlmsg_multicast(%struct.net*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
