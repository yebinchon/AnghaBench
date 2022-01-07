; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_get_mpp.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_get_mpp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32, i32, i32*, %struct.net_device** }
%struct.net_device = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }
%struct.cfg80211_registered_device = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.mpath_info = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@NL80211_ATTR_MAC = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NL80211_IFTYPE_MESH_POINT = common dso_local global i64 0, align 8
@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nl80211_get_mpp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_get_mpp(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.mpath_info, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %15 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %16 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %15, i32 0, i32 3
  %17 = load %struct.net_device**, %struct.net_device*** %16, align 8
  %18 = getelementptr inbounds %struct.net_device*, %struct.net_device** %17, i64 0
  %19 = load %struct.net_device*, %struct.net_device** %18, align 8
  %20 = bitcast %struct.net_device* %19 to %struct.cfg80211_registered_device*
  store %struct.cfg80211_registered_device* %20, %struct.cfg80211_registered_device** %6, align 8
  %21 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %22 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %21, i32 0, i32 3
  %23 = load %struct.net_device**, %struct.net_device*** %22, align 8
  %24 = getelementptr inbounds %struct.net_device*, %struct.net_device** %23, i64 1
  %25 = load %struct.net_device*, %struct.net_device** %24, align 8
  store %struct.net_device* %25, %struct.net_device** %8, align 8
  store i32* null, i32** %11, align 8
  %26 = load i32, i32* @ETH_ALEN, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %12, align 8
  %29 = alloca i32, i64 %27, align 16
  store i64 %27, i64* %13, align 8
  %30 = call i32 @memset(%struct.mpath_info* %9, i32 0, i32 4)
  %31 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %32 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* @NL80211_ATTR_MAC, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %2
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %109

41:                                               ; preds = %2
  %42 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %43 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* @NL80211_ATTR_MAC, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32* @nla_data(i32 %47)
  store i32* %48, i32** %11, align 8
  %49 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %50 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %49, i32 0, i32 1
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %41
  %56 = load i32, i32* @EOPNOTSUPP, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %109

58:                                               ; preds = %41
  %59 = load %struct.net_device*, %struct.net_device** %8, align 8
  %60 = getelementptr inbounds %struct.net_device, %struct.net_device* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @NL80211_IFTYPE_MESH_POINT, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %58
  %67 = load i32, i32* @EOPNOTSUPP, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %109

69:                                               ; preds = %58
  %70 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %71 = bitcast %struct.cfg80211_registered_device* %70 to %struct.net_device*
  %72 = load %struct.net_device*, %struct.net_device** %8, align 8
  %73 = load i32*, i32** %11, align 8
  %74 = call i32 @rdev_get_mpp(%struct.net_device* %71, %struct.net_device* %72, i32* %73, i32* %29, %struct.mpath_info* %9)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %69
  %78 = load i32, i32* %7, align 4
  store i32 %78, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %109

79:                                               ; preds = %69
  %80 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %81 = load i32, i32* @GFP_KERNEL, align 4
  %82 = call %struct.sk_buff* @nlmsg_new(i32 %80, i32 %81)
  store %struct.sk_buff* %82, %struct.sk_buff** %10, align 8
  %83 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %84 = icmp ne %struct.sk_buff* %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %79
  %86 = load i32, i32* @ENOMEM, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %109

88:                                               ; preds = %79
  %89 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %90 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %91 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %94 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.net_device*, %struct.net_device** %8, align 8
  %97 = load i32*, i32** %11, align 8
  %98 = call i64 @nl80211_send_mpath(%struct.sk_buff* %89, i32 %92, i32 %95, i32 0, %struct.net_device* %96, i32* %97, i32* %29, %struct.mpath_info* %9)
  %99 = icmp slt i64 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %88
  %101 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %102 = call i32 @nlmsg_free(%struct.sk_buff* %101)
  %103 = load i32, i32* @ENOBUFS, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %109

105:                                              ; preds = %88
  %106 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %107 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %108 = call i32 @genlmsg_reply(%struct.sk_buff* %106, %struct.genl_info* %107)
  store i32 %108, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %109

109:                                              ; preds = %105, %100, %85, %77, %66, %55, %38
  %110 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %110)
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%struct.mpath_info*, i32, i32) #2

declare dso_local i32* @nla_data(i32) #2

declare dso_local i32 @rdev_get_mpp(%struct.net_device*, %struct.net_device*, i32*, i32*, %struct.mpath_info*) #2

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #2

declare dso_local i64 @nl80211_send_mpath(%struct.sk_buff*, i32, i32, i32, %struct.net_device*, i32*, i32*, %struct.mpath_info*) #2

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #2

declare dso_local i32 @genlmsg_reply(%struct.sk_buff*, %struct.genl_info*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
