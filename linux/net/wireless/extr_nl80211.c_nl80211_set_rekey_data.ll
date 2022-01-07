; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_set_rekey_data.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_set_rekey_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32, i32*, %struct.net_device** }
%struct.net_device = type { %struct.TYPE_2__*, %struct.wireless_dev* }
%struct.TYPE_2__ = type { i32 }
%struct.wireless_dev = type { i32 }
%struct.cfg80211_registered_device = type { %struct.TYPE_2__*, %struct.wireless_dev* }
%struct.cfg80211_gtk_rekey_data = type { i8*, i8*, i8* }
%struct.nlattr = type { i32 }

@NUM_NL80211_REKEY_DATA = common dso_local global i32 0, align 4
@NL80211_ATTR_REKEY_DATA = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@MAX_NL80211_REKEY_DATA = common dso_local global i32 0, align 4
@nl80211_rekey_policy = common dso_local global i32 0, align 4
@NL80211_REKEY_DATA_REPLAY_CTR = common dso_local global i64 0, align 8
@NL80211_REKEY_DATA_KEK = common dso_local global i64 0, align 8
@NL80211_REKEY_DATA_KCK = common dso_local global i64 0, align 8
@NL80211_REPLAY_CTR_LEN = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@NL80211_KEK_LEN = common dso_local global i64 0, align 8
@NL80211_KCK_LEN = common dso_local global i64 0, align 8
@ENOTCONN = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nl80211_set_rekey_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_set_rekey_data(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.wireless_dev*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.cfg80211_gtk_rekey_data, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %14 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %15 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %14, i32 0, i32 2
  %16 = load %struct.net_device**, %struct.net_device*** %15, align 8
  %17 = getelementptr inbounds %struct.net_device*, %struct.net_device** %16, i64 0
  %18 = load %struct.net_device*, %struct.net_device** %17, align 8
  %19 = bitcast %struct.net_device* %18 to %struct.cfg80211_registered_device*
  store %struct.cfg80211_registered_device* %19, %struct.cfg80211_registered_device** %6, align 8
  %20 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %21 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %20, i32 0, i32 2
  %22 = load %struct.net_device**, %struct.net_device*** %21, align 8
  %23 = getelementptr inbounds %struct.net_device*, %struct.net_device** %22, i64 1
  %24 = load %struct.net_device*, %struct.net_device** %23, align 8
  store %struct.net_device* %24, %struct.net_device** %7, align 8
  %25 = load %struct.net_device*, %struct.net_device** %7, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 1
  %27 = load %struct.wireless_dev*, %struct.wireless_dev** %26, align 8
  store %struct.wireless_dev* %27, %struct.wireless_dev** %8, align 8
  %28 = load i32, i32* @NUM_NL80211_REKEY_DATA, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %9, align 8
  %31 = alloca %struct.nlattr*, i64 %29, align 16
  store i64 %29, i64* %10, align 8
  %32 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %33 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* @NL80211_ATTR_REKEY_DATA, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %2
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %151

42:                                               ; preds = %2
  %43 = load i32, i32* @MAX_NL80211_REKEY_DATA, align 4
  %44 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %45 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* @NL80211_ATTR_REKEY_DATA, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @nl80211_rekey_policy, align 4
  %51 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %52 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %31, i32 %43, i32 %49, i32 %50, i32 %53)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %42
  %58 = load i32, i32* %12, align 4
  store i32 %58, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %151

59:                                               ; preds = %42
  %60 = load i64, i64* @NL80211_REKEY_DATA_REPLAY_CTR, align 8
  %61 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %31, i64 %60
  %62 = load %struct.nlattr*, %struct.nlattr** %61, align 8
  %63 = icmp ne %struct.nlattr* %62, null
  br i1 %63, label %64, label %74

64:                                               ; preds = %59
  %65 = load i64, i64* @NL80211_REKEY_DATA_KEK, align 8
  %66 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %31, i64 %65
  %67 = load %struct.nlattr*, %struct.nlattr** %66, align 8
  %68 = icmp ne %struct.nlattr* %67, null
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = load i64, i64* @NL80211_REKEY_DATA_KCK, align 8
  %71 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %31, i64 %70
  %72 = load %struct.nlattr*, %struct.nlattr** %71, align 8
  %73 = icmp ne %struct.nlattr* %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %69, %64, %59
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %151

77:                                               ; preds = %69
  %78 = load i64, i64* @NL80211_REKEY_DATA_REPLAY_CTR, align 8
  %79 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %31, i64 %78
  %80 = load %struct.nlattr*, %struct.nlattr** %79, align 8
  %81 = call i64 @nla_len(%struct.nlattr* %80)
  %82 = load i64, i64* @NL80211_REPLAY_CTR_LEN, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %77
  %85 = load i32, i32* @ERANGE, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %151

87:                                               ; preds = %77
  %88 = load i64, i64* @NL80211_REKEY_DATA_KEK, align 8
  %89 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %31, i64 %88
  %90 = load %struct.nlattr*, %struct.nlattr** %89, align 8
  %91 = call i64 @nla_len(%struct.nlattr* %90)
  %92 = load i64, i64* @NL80211_KEK_LEN, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %87
  %95 = load i32, i32* @ERANGE, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %151

97:                                               ; preds = %87
  %98 = load i64, i64* @NL80211_REKEY_DATA_KCK, align 8
  %99 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %31, i64 %98
  %100 = load %struct.nlattr*, %struct.nlattr** %99, align 8
  %101 = call i64 @nla_len(%struct.nlattr* %100)
  %102 = load i64, i64* @NL80211_KCK_LEN, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %97
  %105 = load i32, i32* @ERANGE, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %151

107:                                              ; preds = %97
  %108 = load i64, i64* @NL80211_REKEY_DATA_KEK, align 8
  %109 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %31, i64 %108
  %110 = load %struct.nlattr*, %struct.nlattr** %109, align 8
  %111 = call i8* @nla_data(%struct.nlattr* %110)
  %112 = getelementptr inbounds %struct.cfg80211_gtk_rekey_data, %struct.cfg80211_gtk_rekey_data* %11, i32 0, i32 2
  store i8* %111, i8** %112, align 8
  %113 = load i64, i64* @NL80211_REKEY_DATA_KCK, align 8
  %114 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %31, i64 %113
  %115 = load %struct.nlattr*, %struct.nlattr** %114, align 8
  %116 = call i8* @nla_data(%struct.nlattr* %115)
  %117 = getelementptr inbounds %struct.cfg80211_gtk_rekey_data, %struct.cfg80211_gtk_rekey_data* %11, i32 0, i32 1
  store i8* %116, i8** %117, align 8
  %118 = load i64, i64* @NL80211_REKEY_DATA_REPLAY_CTR, align 8
  %119 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %31, i64 %118
  %120 = load %struct.nlattr*, %struct.nlattr** %119, align 8
  %121 = call i8* @nla_data(%struct.nlattr* %120)
  %122 = getelementptr inbounds %struct.cfg80211_gtk_rekey_data, %struct.cfg80211_gtk_rekey_data* %11, i32 0, i32 0
  store i8* %121, i8** %122, align 8
  %123 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %124 = call i32 @wdev_lock(%struct.wireless_dev* %123)
  %125 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %126 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %107
  %130 = load i32, i32* @ENOTCONN, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %12, align 4
  br label %147

132:                                              ; preds = %107
  %133 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %134 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %133, i32 0, i32 0
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %142, label %139

139:                                              ; preds = %132
  %140 = load i32, i32* @EOPNOTSUPP, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %12, align 4
  br label %147

142:                                              ; preds = %132
  %143 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %144 = bitcast %struct.cfg80211_registered_device* %143 to %struct.net_device*
  %145 = load %struct.net_device*, %struct.net_device** %7, align 8
  %146 = call i32 @rdev_set_rekey_data(%struct.net_device* %144, %struct.net_device* %145, %struct.cfg80211_gtk_rekey_data* %11)
  store i32 %146, i32* %12, align 4
  br label %147

147:                                              ; preds = %142, %139, %129
  %148 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %149 = call i32 @wdev_unlock(%struct.wireless_dev* %148)
  %150 = load i32, i32* %12, align 4
  store i32 %150, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %151

151:                                              ; preds = %147, %104, %94, %84, %74, %57, %39
  %152 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %152)
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, i32, i32, i32) #2

declare dso_local i64 @nla_len(%struct.nlattr*) #2

declare dso_local i8* @nla_data(%struct.nlattr*) #2

declare dso_local i32 @wdev_lock(%struct.wireless_dev*) #2

declare dso_local i32 @rdev_set_rekey_data(%struct.net_device*, %struct.net_device*, %struct.cfg80211_gtk_rekey_data*) #2

declare dso_local i32 @wdev_unlock(%struct.wireless_dev*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
