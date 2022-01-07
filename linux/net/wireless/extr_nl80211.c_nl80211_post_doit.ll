; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_post_doit.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_post_doit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genl_ops = type { i32 }
%struct.sk_buff = type { i32 }
%struct.genl_info = type { %struct.wireless_dev** }
%struct.wireless_dev = type { %struct.wireless_dev* }
%struct.nlmsghdr = type { i32 }

@NL80211_FLAG_NEED_WDEV = common dso_local global i32 0, align 4
@NL80211_FLAG_NEED_RTNL = common dso_local global i32 0, align 4
@NL80211_FLAG_CLEAR_SKB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.genl_ops*, %struct.sk_buff*, %struct.genl_info*)* @nl80211_post_doit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nl80211_post_doit(%struct.genl_ops* %0, %struct.sk_buff* %1, %struct.genl_info* %2) #0 {
  %4 = alloca %struct.genl_ops*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.genl_info*, align 8
  %7 = alloca %struct.wireless_dev*, align 8
  %8 = alloca %struct.nlmsghdr*, align 8
  store %struct.genl_ops* %0, %struct.genl_ops** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.genl_info* %2, %struct.genl_info** %6, align 8
  %9 = load %struct.genl_info*, %struct.genl_info** %6, align 8
  %10 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %9, i32 0, i32 0
  %11 = load %struct.wireless_dev**, %struct.wireless_dev*** %10, align 8
  %12 = getelementptr inbounds %struct.wireless_dev*, %struct.wireless_dev** %11, i64 1
  %13 = load %struct.wireless_dev*, %struct.wireless_dev** %12, align 8
  %14 = icmp ne %struct.wireless_dev* %13, null
  br i1 %14, label %15, label %46

15:                                               ; preds = %3
  %16 = load %struct.genl_ops*, %struct.genl_ops** %4, align 8
  %17 = getelementptr inbounds %struct.genl_ops, %struct.genl_ops* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @NL80211_FLAG_NEED_WDEV, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %15
  %23 = load %struct.genl_info*, %struct.genl_info** %6, align 8
  %24 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %23, i32 0, i32 0
  %25 = load %struct.wireless_dev**, %struct.wireless_dev*** %24, align 8
  %26 = getelementptr inbounds %struct.wireless_dev*, %struct.wireless_dev** %25, i64 1
  %27 = load %struct.wireless_dev*, %struct.wireless_dev** %26, align 8
  store %struct.wireless_dev* %27, %struct.wireless_dev** %7, align 8
  %28 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %29 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %28, i32 0, i32 0
  %30 = load %struct.wireless_dev*, %struct.wireless_dev** %29, align 8
  %31 = icmp ne %struct.wireless_dev* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %22
  %33 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %34 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %33, i32 0, i32 0
  %35 = load %struct.wireless_dev*, %struct.wireless_dev** %34, align 8
  %36 = call i32 @dev_put(%struct.wireless_dev* %35)
  br label %37

37:                                               ; preds = %32, %22
  br label %45

38:                                               ; preds = %15
  %39 = load %struct.genl_info*, %struct.genl_info** %6, align 8
  %40 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %39, i32 0, i32 0
  %41 = load %struct.wireless_dev**, %struct.wireless_dev*** %40, align 8
  %42 = getelementptr inbounds %struct.wireless_dev*, %struct.wireless_dev** %41, i64 1
  %43 = load %struct.wireless_dev*, %struct.wireless_dev** %42, align 8
  %44 = call i32 @dev_put(%struct.wireless_dev* %43)
  br label %45

45:                                               ; preds = %38, %37
  br label %46

46:                                               ; preds = %45, %3
  %47 = load %struct.genl_ops*, %struct.genl_ops** %4, align 8
  %48 = getelementptr inbounds %struct.genl_ops, %struct.genl_ops* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @NL80211_FLAG_NEED_RTNL, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = call i32 (...) @rtnl_unlock()
  br label %55

55:                                               ; preds = %53, %46
  %56 = load %struct.genl_ops*, %struct.genl_ops** %4, align 8
  %57 = getelementptr inbounds %struct.genl_ops, %struct.genl_ops* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @NL80211_FLAG_CLEAR_SKB, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %55
  %63 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %64 = call %struct.nlmsghdr* @nlmsg_hdr(%struct.sk_buff* %63)
  store %struct.nlmsghdr* %64, %struct.nlmsghdr** %8, align 8
  %65 = load %struct.nlmsghdr*, %struct.nlmsghdr** %8, align 8
  %66 = call i32 @nlmsg_data(%struct.nlmsghdr* %65)
  %67 = load %struct.nlmsghdr*, %struct.nlmsghdr** %8, align 8
  %68 = call i32 @nlmsg_len(%struct.nlmsghdr* %67)
  %69 = call i32 @memset(i32 %66, i32 0, i32 %68)
  br label %70

70:                                               ; preds = %62, %55
  ret void
}

declare dso_local i32 @dev_put(%struct.wireless_dev*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local %struct.nlmsghdr* @nlmsg_hdr(%struct.sk_buff*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @nlmsg_len(%struct.nlmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
