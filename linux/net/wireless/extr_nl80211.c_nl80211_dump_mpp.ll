; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_dump_mpp.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_dump_mpp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.netlink_callback = type { i32*, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.mpath_info = type { i32 }
%struct.cfg80211_registered_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.wireless_dev = type { i64, i32 }
%struct.TYPE_6__ = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NL80211_IFTYPE_MESH_POINT = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@NLM_F_MULTI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.netlink_callback*)* @nl80211_dump_mpp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_dump_mpp(%struct.sk_buff* %0, %struct.netlink_callback* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.netlink_callback*, align 8
  %5 = alloca %struct.mpath_info, align 4
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca %struct.wireless_dev*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_6__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.netlink_callback* %1, %struct.netlink_callback** %4, align 8
  %14 = load i32, i32* @ETH_ALEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  %18 = load i32, i32* @ETH_ALEN, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %10, align 8
  %21 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %22 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 2
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %11, align 4
  %26 = call i32 (...) @rtnl_lock()
  %27 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %28 = call i32 @nl80211_prepare_wdev_dump(%struct.netlink_callback* %27, %struct.cfg80211_registered_device** %6, %struct.wireless_dev** %7)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  br label %103

32:                                               ; preds = %2
  %33 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %34 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* @EOPNOTSUPP, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %12, align 4
  br label %103

42:                                               ; preds = %32
  %43 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %44 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @NL80211_IFTYPE_MESH_POINT, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i32, i32* @EOPNOTSUPP, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %12, align 4
  br label %103

51:                                               ; preds = %42
  br label %52

52:                                               ; preds = %90, %51
  br label %53

53:                                               ; preds = %52
  %54 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %55 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %56 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @rdev_dump_mpp(%struct.cfg80211_registered_device* %54, i32 %57, i32 %58, i32* %17, i32* %20, %struct.mpath_info* %5)
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* @ENOENT, align 4
  %62 = sub nsw i32 0, %61
  %63 = icmp eq i32 %60, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %53
  br label %93

65:                                               ; preds = %53
  %66 = load i32, i32* %12, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  br label %103

69:                                               ; preds = %65
  %70 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %71 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %72 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @NETLINK_CB(i32 %73)
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  store i32 %74, i32* %75, align 4
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %79 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %78, i32 0, i32 1
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @NLM_F_MULTI, align 4
  %84 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %85 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call i64 @nl80211_send_mpath(%struct.sk_buff* %70, i32 %77, i32 %82, i32 %83, i32 %86, i32* %17, i32* %20, %struct.mpath_info* %5)
  %88 = icmp slt i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %69
  br label %94

90:                                               ; preds = %69
  %91 = load i32, i32* %11, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %11, align 4
  br label %52

93:                                               ; preds = %64
  br label %94

94:                                               ; preds = %93, %89
  %95 = load i32, i32* %11, align 4
  %96 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %97 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 2
  store i32 %95, i32* %99, align 4
  %100 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %101 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %12, align 4
  br label %103

103:                                              ; preds = %94, %68, %48, %39, %31
  %104 = call i32 (...) @rtnl_unlock()
  %105 = load i32, i32* %12, align 4
  %106 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %106)
  ret i32 %105
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @rtnl_lock(...) #2

declare dso_local i32 @nl80211_prepare_wdev_dump(%struct.netlink_callback*, %struct.cfg80211_registered_device**, %struct.wireless_dev**) #2

declare dso_local i32 @rdev_dump_mpp(%struct.cfg80211_registered_device*, i32, i32, i32*, i32*, %struct.mpath_info*) #2

declare dso_local i64 @nl80211_send_mpath(%struct.sk_buff*, i32, i32, i32, i32, i32*, i32*, %struct.mpath_info*) #2

declare dso_local i32 @NETLINK_CB(i32) #2

declare dso_local i32 @rtnl_unlock(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
