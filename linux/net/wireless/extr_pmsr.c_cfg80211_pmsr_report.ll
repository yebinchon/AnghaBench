; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_pmsr.c_cfg80211_pmsr_report.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_pmsr.c_cfg80211_pmsr_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wireless_dev = type { i32 }
%struct.cfg80211_pmsr_request = type { i32, i32 }
%struct.cfg80211_pmsr_result = type { i32 }
%struct.cfg80211_registered_device = type { i32 }
%struct.sk_buff = type { i32 }

@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@NL80211_CMD_PEER_MEASUREMENT_RESULT = common dso_local global i32 0, align 4
@NL80211_ATTR_WIPHY = common dso_local global i32 0, align 4
@NL80211_ATTR_WDEV = common dso_local global i32 0, align 4
@NL80211_ATTR_PAD = common dso_local global i32 0, align 4
@NL80211_ATTR_COOKIE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"peer measurement result: message didn't fit!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfg80211_pmsr_report(%struct.wireless_dev* %0, %struct.cfg80211_pmsr_request* %1, %struct.cfg80211_pmsr_result* %2, i32 %3) #0 {
  %5 = alloca %struct.wireless_dev*, align 8
  %6 = alloca %struct.cfg80211_pmsr_request*, align 8
  %7 = alloca %struct.cfg80211_pmsr_result*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.cfg80211_registered_device*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.wireless_dev* %0, %struct.wireless_dev** %5, align 8
  store %struct.cfg80211_pmsr_request* %1, %struct.cfg80211_pmsr_request** %6, align 8
  store %struct.cfg80211_pmsr_result* %2, %struct.cfg80211_pmsr_result** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %14 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.cfg80211_registered_device* @wiphy_to_rdev(i32 %15)
  store %struct.cfg80211_registered_device* %16, %struct.cfg80211_registered_device** %9, align 8
  %17 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %18 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %21 = load %struct.cfg80211_pmsr_request*, %struct.cfg80211_pmsr_request** %6, align 8
  %22 = getelementptr inbounds %struct.cfg80211_pmsr_request, %struct.cfg80211_pmsr_request* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.cfg80211_pmsr_result*, %struct.cfg80211_pmsr_result** %7, align 8
  %25 = getelementptr inbounds %struct.cfg80211_pmsr_result, %struct.cfg80211_pmsr_result* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @trace_cfg80211_pmsr_report(i32 %19, %struct.wireless_dev* %20, i32 %23, i32 %26)
  %28 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call %struct.sk_buff* @nlmsg_new(i32 %28, i32 %29)
  store %struct.sk_buff* %30, %struct.sk_buff** %10, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %32 = icmp ne %struct.sk_buff* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %4
  br label %92

34:                                               ; preds = %4
  %35 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %36 = load i32, i32* @NL80211_CMD_PEER_MEASUREMENT_RESULT, align 4
  %37 = call i8* @nl80211hdr_put(%struct.sk_buff* %35, i32 0, i32 0, i32 0, i32 %36)
  store i8* %37, i8** %11, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %34
  br label %89

41:                                               ; preds = %34
  %42 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %43 = load i32, i32* @NL80211_ATTR_WIPHY, align 4
  %44 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %45 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @nla_put_u32(%struct.sk_buff* %42, i32 %43, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %41
  %50 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %51 = load i32, i32* @NL80211_ATTR_WDEV, align 4
  %52 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %53 = call i32 @wdev_id(%struct.wireless_dev* %52)
  %54 = load i32, i32* @NL80211_ATTR_PAD, align 4
  %55 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %50, i32 %51, i32 %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %49, %41
  br label %89

58:                                               ; preds = %49
  %59 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %60 = load i32, i32* @NL80211_ATTR_COOKIE, align 4
  %61 = load %struct.cfg80211_pmsr_request*, %struct.cfg80211_pmsr_request** %6, align 8
  %62 = getelementptr inbounds %struct.cfg80211_pmsr_request, %struct.cfg80211_pmsr_request* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @NL80211_ATTR_PAD, align 4
  %65 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %59, i32 %60, i32 %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %58
  br label %89

68:                                               ; preds = %58
  %69 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %70 = load %struct.cfg80211_pmsr_result*, %struct.cfg80211_pmsr_result** %7, align 8
  %71 = call i32 @nl80211_pmsr_send_result(%struct.sk_buff* %69, %struct.cfg80211_pmsr_result* %70)
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %12, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = call i32 @pr_err_ratelimited(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %89

76:                                               ; preds = %68
  %77 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %78 = load i8*, i8** %11, align 8
  %79 = call i32 @genlmsg_end(%struct.sk_buff* %77, i8* %78)
  %80 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %81 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @wiphy_net(i32 %82)
  %84 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %85 = load %struct.cfg80211_pmsr_request*, %struct.cfg80211_pmsr_request** %6, align 8
  %86 = getelementptr inbounds %struct.cfg80211_pmsr_request, %struct.cfg80211_pmsr_request* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @genlmsg_unicast(i32 %83, %struct.sk_buff* %84, i32 %87)
  br label %92

89:                                               ; preds = %74, %67, %57, %40
  %90 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %91 = call i32 @nlmsg_free(%struct.sk_buff* %90)
  br label %92

92:                                               ; preds = %89, %76, %33
  ret void
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_rdev(i32) #1

declare dso_local i32 @trace_cfg80211_pmsr_report(i32, %struct.wireless_dev*, i32, i32) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i8* @nl80211hdr_put(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u64_64bit(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @wdev_id(%struct.wireless_dev*) #1

declare dso_local i32 @nl80211_pmsr_send_result(%struct.sk_buff*, %struct.cfg80211_pmsr_result*) #1

declare dso_local i32 @pr_err_ratelimited(i8*) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_unicast(i32, %struct.sk_buff*, i32) #1

declare dso_local i32 @wiphy_net(i32) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
