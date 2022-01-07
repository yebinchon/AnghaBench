; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_cfg80211_vendor_cmd_reply.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_cfg80211_vendor_cmd_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.cfg80211_registered_device = type { i32 }
%struct.nlattr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfg80211_vendor_cmd_reply(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.cfg80211_registered_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.nlattr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to i8**
  %11 = getelementptr inbounds i8*, i8** %10, i64 0
  %12 = load i8*, i8** %11, align 8
  %13 = bitcast i8* %12 to %struct.cfg80211_registered_device*
  store %struct.cfg80211_registered_device* %13, %struct.cfg80211_registered_device** %4, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i8**
  %18 = getelementptr inbounds i8*, i8** %17, i64 1
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %5, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i8**
  %24 = getelementptr inbounds i8*, i8** %23, i64 2
  %25 = load i8*, i8** %24, align 8
  %26 = bitcast i8* %25 to %struct.nlattr*
  store %struct.nlattr* %26, %struct.nlattr** %6, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @memset(i64 %29, i32 0, i32 8)
  %31 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %32 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i64 @WARN_ON(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %1
  %40 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %41 = call i32 @kfree_skb(%struct.sk_buff* %40)
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %56

44:                                               ; preds = %1
  %45 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %46 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %47 = call i32 @nla_nest_end(%struct.sk_buff* %45, %struct.nlattr* %46)
  %48 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = call i32 @genlmsg_end(%struct.sk_buff* %48, i8* %49)
  %51 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %52 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %53 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @genlmsg_reply(%struct.sk_buff* %51, i32 %54)
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %44, %39
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_reply(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
