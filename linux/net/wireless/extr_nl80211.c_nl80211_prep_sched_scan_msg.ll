; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_prep_sched_scan_msg.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_prep_sched_scan_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.cfg80211_sched_scan_request = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@NL80211_ATTR_WIPHY = common dso_local global i32 0, align 4
@NL80211_ATTR_IFINDEX = common dso_local global i32 0, align 4
@NL80211_ATTR_COOKIE = common dso_local global i32 0, align 4
@NL80211_ATTR_PAD = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.cfg80211_sched_scan_request*, i32)* @nl80211_prep_sched_scan_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_prep_sched_scan_msg(%struct.sk_buff* %0, %struct.cfg80211_sched_scan_request* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.cfg80211_sched_scan_request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.cfg80211_sched_scan_request* %1, %struct.cfg80211_sched_scan_request** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %10 = load i32, i32* %7, align 4
  %11 = call i8* @nl80211hdr_put(%struct.sk_buff* %9, i32 0, i32 0, i32 0, i32 %10)
  store i8* %11, i8** %8, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %56

15:                                               ; preds = %3
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = load i32, i32* @NL80211_ATTR_WIPHY, align 4
  %18 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %6, align 8
  %19 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.TYPE_4__* @wiphy_to_rdev(i32 %20)
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @nla_put_u32(%struct.sk_buff* %16, i32 %17, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %45, label %26

26:                                               ; preds = %15
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = load i32, i32* @NL80211_ATTR_IFINDEX, align 4
  %29 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %6, align 8
  %30 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @nla_put_u32(%struct.sk_buff* %27, i32 %28, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %26
  %37 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %38 = load i32, i32* @NL80211_ATTR_COOKIE, align 4
  %39 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %6, align 8
  %40 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @NL80211_ATTR_PAD, align 4
  %43 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %37, i32 %38, i32 %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %36, %26, %15
  br label %50

46:                                               ; preds = %36
  %47 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 @genlmsg_end(%struct.sk_buff* %47, i8* %48)
  store i32 0, i32* %4, align 4
  br label %56

50:                                               ; preds = %45
  %51 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = call i32 @genlmsg_cancel(%struct.sk_buff* %51, i8* %52)
  %54 = load i32, i32* @EMSGSIZE, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %50, %46, %14
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i8* @nl80211hdr_put(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local %struct.TYPE_4__* @wiphy_to_rdev(i32) #1

declare dso_local i64 @nla_put_u64_64bit(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_cancel(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
