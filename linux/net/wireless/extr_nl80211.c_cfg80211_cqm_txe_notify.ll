; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_cfg80211_cqm_txe_notify.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_cfg80211_cqm_txe_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sk_buff = type { i32 }

@NL80211_ATTR_CQM_TXE_PKTS = common dso_local global i32 0, align 4
@NL80211_ATTR_CQM_TXE_RATE = common dso_local global i32 0, align 4
@NL80211_ATTR_CQM_TXE_INTVL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfg80211_cqm_txe_notify(%struct.net_device* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load %struct.net_device*, %struct.net_device** %7, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = load i32, i32* %12, align 4
  %17 = call %struct.sk_buff* @cfg80211_prepare_cqm(%struct.net_device* %14, i32* %15, i32 %16)
  store %struct.sk_buff* %17, %struct.sk_buff** %13, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %19 = icmp ne %struct.sk_buff* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %6
  br label %49

21:                                               ; preds = %6
  %22 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %23 = load i32, i32* @NL80211_ATTR_CQM_TXE_PKTS, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i64 @nla_put_u32(%struct.sk_buff* %22, i32 %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %46

28:                                               ; preds = %21
  %29 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %30 = load i32, i32* @NL80211_ATTR_CQM_TXE_RATE, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call i64 @nla_put_u32(%struct.sk_buff* %29, i32 %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %46

35:                                               ; preds = %28
  %36 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %37 = load i32, i32* @NL80211_ATTR_CQM_TXE_INTVL, align 4
  %38 = load i32, i32* %11, align 4
  %39 = call i64 @nla_put_u32(%struct.sk_buff* %36, i32 %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %46

42:                                               ; preds = %35
  %43 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @cfg80211_send_cqm(%struct.sk_buff* %43, i32 %44)
  br label %49

46:                                               ; preds = %41, %34, %27
  %47 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %48 = call i32 @nlmsg_free(%struct.sk_buff* %47)
  br label %49

49:                                               ; preds = %46, %42, %20
  ret void
}

declare dso_local %struct.sk_buff* @cfg80211_prepare_cqm(%struct.net_device*, i32*, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @cfg80211_send_cqm(%struct.sk_buff*, i32) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
