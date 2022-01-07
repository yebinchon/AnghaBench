; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_req_set_reg.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_req_set_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i64*, i32 }

@cfg80211_regdomain = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@NL80211_ATTR_USER_REG_HINT_TYPE = common dso_local global i64 0, align 8
@NL80211_ATTR_REG_ALPHA2 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NL80211_ATTR_SOCKET_OWNER = common dso_local global i64 0, align 8
@NL80211_ATTR_REG_INDOOR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nl80211_req_set_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_req_set_reg(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  store i8* null, i8** %6, align 8
  %10 = load i32, i32* @cfg80211_regdomain, align 4
  %11 = call i32 @rcu_access_pointer(i32 %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EINPROGRESS, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %91

20:                                               ; preds = %2
  %21 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %22 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = load i64, i64* @NL80211_ATTR_USER_REG_HINT_TYPE, align 8
  %25 = getelementptr inbounds i64, i64* %23, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %20
  %29 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %30 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = load i64, i64* @NL80211_ATTR_USER_REG_HINT_TYPE, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @nla_get_u32(i64 %34)
  store i32 %35, i32* %8, align 4
  br label %37

36:                                               ; preds = %20
  store i32 128, i32* %8, align 4
  br label %37

37:                                               ; preds = %36, %28
  %38 = load i32, i32* %8, align 4
  switch i32 %38, label %88 [
    i32 128, label %39
    i32 130, label %39
    i32 129, label %61
  ]

39:                                               ; preds = %37, %37
  %40 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %41 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = load i64, i64* @NL80211_ATTR_REG_ALPHA2, align 8
  %44 = getelementptr inbounds i64, i64* %42, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %39
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %91

50:                                               ; preds = %39
  %51 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %52 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %51, i32 0, i32 0
  %53 = load i64*, i64** %52, align 8
  %54 = load i64, i64* @NL80211_ATTR_REG_ALPHA2, align 8
  %55 = getelementptr inbounds i64, i64* %53, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = call i8* @nla_data(i64 %56)
  store i8* %57, i8** %6, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @regulatory_hint_user(i8* %58, i32 %59)
  store i32 %60, i32* %3, align 4
  br label %91

61:                                               ; preds = %37
  %62 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %63 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %62, i32 0, i32 0
  %64 = load i64*, i64** %63, align 8
  %65 = load i64, i64* @NL80211_ATTR_SOCKET_OWNER, align 8
  %66 = getelementptr inbounds i64, i64* %64, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %83

69:                                               ; preds = %61
  %70 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %71 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  store i32 %72, i32* %9, align 4
  %73 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %74 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %73, i32 0, i32 0
  %75 = load i64*, i64** %74, align 8
  %76 = load i64, i64* @NL80211_ATTR_REG_INDOOR, align 8
  %77 = getelementptr inbounds i64, i64* %75, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  %80 = xor i1 %79, true
  %81 = xor i1 %80, true
  %82 = zext i1 %81 to i32
  store i32 %82, i32* %7, align 4
  br label %84

83:                                               ; preds = %61
  store i32 0, i32* %9, align 4
  store i32 1, i32* %7, align 4
  br label %84

84:                                               ; preds = %83, %69
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @regulatory_hint_indoor(i32 %85, i32 %86)
  store i32 %87, i32* %3, align 4
  br label %91

88:                                               ; preds = %37
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %88, %84, %50, %47, %17
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rcu_access_pointer(i32) #1

declare dso_local i32 @nla_get_u32(i64) #1

declare dso_local i8* @nla_data(i64) #1

declare dso_local i32 @regulatory_hint_user(i8*, i32) #1

declare dso_local i32 @regulatory_hint_indoor(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
