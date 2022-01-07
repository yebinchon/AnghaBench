; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_xfrm_notify_sa.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_xfrm_notify_sa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.km_event = type { i32, i32, i32 }
%struct.net = type { i32 }
%struct.xfrm_usersa_info = type { i32 }
%struct.xfrm_usersa_id = type { i32, i32, i32, i32 }
%struct.nlmsghdr = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlattr = type { i32 }

@XFRM_MSG_DELSA = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@XFRMA_SA = common dso_local global i32 0, align 4
@XFRMNLGRP_SA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_state*, %struct.km_event*)* @xfrm_notify_sa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm_notify_sa(%struct.xfrm_state* %0, %struct.km_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfrm_state*, align 8
  %5 = alloca %struct.km_event*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.xfrm_usersa_info*, align 8
  %8 = alloca %struct.xfrm_usersa_id*, align 8
  %9 = alloca %struct.nlmsghdr*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.nlattr*, align 8
  store %struct.xfrm_state* %0, %struct.xfrm_state** %4, align 8
  store %struct.km_event* %1, %struct.km_event** %5, align 8
  %15 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %16 = call %struct.net* @xs_net(%struct.xfrm_state* %15)
  store %struct.net* %16, %struct.net** %6, align 8
  %17 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %18 = call i32 @xfrm_sa_len(%struct.xfrm_state* %17)
  store i32 %18, i32* %11, align 4
  store i32 4, i32* %12, align 4
  %19 = load %struct.km_event*, %struct.km_event** %5, align 8
  %20 = getelementptr inbounds %struct.km_event, %struct.km_event* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @XFRM_MSG_DELSA, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %2
  %25 = load i32, i32* %12, align 4
  %26 = call i64 @nla_total_size(i32 %25)
  %27 = load i32, i32* %11, align 4
  %28 = zext i32 %27 to i64
  %29 = add nsw i64 %28, %26
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %11, align 4
  store i32 16, i32* %12, align 4
  %31 = call i64 @nla_total_size(i32 4)
  %32 = load i32, i32* %11, align 4
  %33 = zext i32 %32 to i64
  %34 = add nsw i64 %33, %31
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %11, align 4
  br label %36

36:                                               ; preds = %24, %2
  %37 = load i32, i32* %12, align 4
  %38 = call i64 @NLMSG_ALIGN(i32 %37)
  %39 = load i32, i32* %11, align 4
  %40 = zext i32 %39 to i64
  %41 = add nsw i64 %40, %38
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* @GFP_ATOMIC, align 4
  %45 = call %struct.sk_buff* @nlmsg_new(i32 %43, i32 %44)
  store %struct.sk_buff* %45, %struct.sk_buff** %10, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %47 = icmp eq %struct.sk_buff* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %36
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %139

51:                                               ; preds = %36
  %52 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %53 = load %struct.km_event*, %struct.km_event** %5, align 8
  %54 = getelementptr inbounds %struct.km_event, %struct.km_event* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.km_event*, %struct.km_event** %5, align 8
  %57 = getelementptr inbounds %struct.km_event, %struct.km_event* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.km_event*, %struct.km_event** %5, align 8
  %60 = getelementptr inbounds %struct.km_event, %struct.km_event* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %12, align 4
  %63 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %52, i32 %55, i32 %58, i32 %61, i32 %62, i32 0)
  store %struct.nlmsghdr* %63, %struct.nlmsghdr** %9, align 8
  %64 = load i32, i32* @EMSGSIZE, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %13, align 4
  %66 = load %struct.nlmsghdr*, %struct.nlmsghdr** %9, align 8
  %67 = icmp eq %struct.nlmsghdr* %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %51
  br label %135

69:                                               ; preds = %51
  %70 = load %struct.nlmsghdr*, %struct.nlmsghdr** %9, align 8
  %71 = call i8* @nlmsg_data(%struct.nlmsghdr* %70)
  %72 = bitcast i8* %71 to %struct.xfrm_usersa_info*
  store %struct.xfrm_usersa_info* %72, %struct.xfrm_usersa_info** %7, align 8
  %73 = load %struct.km_event*, %struct.km_event** %5, align 8
  %74 = getelementptr inbounds %struct.km_event, %struct.km_event* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @XFRM_MSG_DELSA, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %119

78:                                               ; preds = %69
  %79 = load %struct.nlmsghdr*, %struct.nlmsghdr** %9, align 8
  %80 = call i8* @nlmsg_data(%struct.nlmsghdr* %79)
  %81 = bitcast i8* %80 to %struct.xfrm_usersa_id*
  store %struct.xfrm_usersa_id* %81, %struct.xfrm_usersa_id** %8, align 8
  %82 = load %struct.xfrm_usersa_id*, %struct.xfrm_usersa_id** %8, align 8
  %83 = call i32 @memset(%struct.xfrm_usersa_id* %82, i32 0, i32 16)
  %84 = load %struct.xfrm_usersa_id*, %struct.xfrm_usersa_id** %8, align 8
  %85 = getelementptr inbounds %struct.xfrm_usersa_id, %struct.xfrm_usersa_id* %84, i32 0, i32 3
  %86 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %87 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 2
  %89 = call i32 @memcpy(i32* %85, i32* %88, i32 4)
  %90 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %91 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.xfrm_usersa_id*, %struct.xfrm_usersa_id** %8, align 8
  %95 = getelementptr inbounds %struct.xfrm_usersa_id, %struct.xfrm_usersa_id* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 4
  %96 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %97 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.xfrm_usersa_id*, %struct.xfrm_usersa_id** %8, align 8
  %101 = getelementptr inbounds %struct.xfrm_usersa_id, %struct.xfrm_usersa_id* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  %102 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %103 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.xfrm_usersa_id*, %struct.xfrm_usersa_id** %8, align 8
  %107 = getelementptr inbounds %struct.xfrm_usersa_id, %struct.xfrm_usersa_id* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 4
  %108 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %109 = load i32, i32* @XFRMA_SA, align 4
  %110 = call %struct.nlattr* @nla_reserve(%struct.sk_buff* %108, i32 %109, i32 4)
  store %struct.nlattr* %110, %struct.nlattr** %14, align 8
  %111 = load i32, i32* @EMSGSIZE, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %13, align 4
  %113 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %114 = icmp eq %struct.nlattr* %113, null
  br i1 %114, label %115, label %116

115:                                              ; preds = %78
  br label %135

116:                                              ; preds = %78
  %117 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %118 = call %struct.xfrm_usersa_info* @nla_data(%struct.nlattr* %117)
  store %struct.xfrm_usersa_info* %118, %struct.xfrm_usersa_info** %7, align 8
  br label %119

119:                                              ; preds = %116, %69
  %120 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %121 = load %struct.xfrm_usersa_info*, %struct.xfrm_usersa_info** %7, align 8
  %122 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %123 = call i32 @copy_to_user_state_extra(%struct.xfrm_state* %120, %struct.xfrm_usersa_info* %121, %struct.sk_buff* %122)
  store i32 %123, i32* %13, align 4
  %124 = load i32, i32* %13, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %119
  br label %135

127:                                              ; preds = %119
  %128 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %129 = load %struct.nlmsghdr*, %struct.nlmsghdr** %9, align 8
  %130 = call i32 @nlmsg_end(%struct.sk_buff* %128, %struct.nlmsghdr* %129)
  %131 = load %struct.net*, %struct.net** %6, align 8
  %132 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %133 = load i32, i32* @XFRMNLGRP_SA, align 4
  %134 = call i32 @xfrm_nlmsg_multicast(%struct.net* %131, %struct.sk_buff* %132, i32 0, i32 %133)
  store i32 %134, i32* %3, align 4
  br label %139

135:                                              ; preds = %126, %115, %68
  %136 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %137 = call i32 @kfree_skb(%struct.sk_buff* %136)
  %138 = load i32, i32* %13, align 4
  store i32 %138, i32* %3, align 4
  br label %139

139:                                              ; preds = %135, %127, %48
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local %struct.net* @xs_net(%struct.xfrm_state*) #1

declare dso_local i32 @xfrm_sa_len(%struct.xfrm_state*) #1

declare dso_local i64 @nla_total_size(i32) #1

declare dso_local i64 @NLMSG_ALIGN(i32) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local i8* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @memset(%struct.xfrm_usersa_id*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local %struct.nlattr* @nla_reserve(%struct.sk_buff*, i32, i32) #1

declare dso_local %struct.xfrm_usersa_info* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @copy_to_user_state_extra(%struct.xfrm_state*, %struct.xfrm_usersa_info*, %struct.sk_buff*) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @xfrm_nlmsg_multicast(%struct.net*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
