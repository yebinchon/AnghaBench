; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_wext-compat.c_cfg80211_wext_giwretry.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_wext-compat.c_cfg80211_wext_giwretry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.iw_request_info = type { i32 }
%struct.iw_param = type { i32, i64, i64 }

@IW_RETRY_SHORT = common dso_local global i32 0, align 4
@IW_RETRY_LIMIT = common dso_local global i32 0, align 4
@IW_RETRY_LONG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfg80211_wext_giwretry(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_param* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_param*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.wireless_dev*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_param* %2, %struct.iw_param** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load %struct.net_device*, %struct.net_device** %6, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = load %struct.wireless_dev*, %struct.wireless_dev** %12, align 8
  store %struct.wireless_dev* %13, %struct.wireless_dev** %10, align 8
  %14 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %15 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %14, i32 0, i32 2
  store i64 0, i64* %15, align 8
  %16 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %17 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %4
  %21 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %22 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @IW_RETRY_SHORT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %60

27:                                               ; preds = %20, %4
  %28 = load i32, i32* @IW_RETRY_LIMIT, align 4
  %29 = load i32, i32* @IW_RETRY_SHORT, align 4
  %30 = or i32 %28, %29
  %31 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %32 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 8
  %35 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %36 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %41 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %40, i32 0, i32 1
  store i64 %39, i64* %41, align 8
  %42 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %43 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %48 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %46, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %27
  %54 = load i32, i32* @IW_RETRY_LONG, align 4
  %55 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %56 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 8
  br label %59

59:                                               ; preds = %53, %27
  store i32 0, i32* %5, align 4
  br label %81

60:                                               ; preds = %20
  %61 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %62 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @IW_RETRY_LONG, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %60
  %68 = load i32, i32* @IW_RETRY_LIMIT, align 4
  %69 = load i32, i32* @IW_RETRY_LONG, align 4
  %70 = or i32 %68, %69
  %71 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %72 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %74 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %79 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %78, i32 0, i32 1
  store i64 %77, i64* %79, align 8
  br label %80

80:                                               ; preds = %67, %60
  store i32 0, i32* %5, align 4
  br label %81

81:                                               ; preds = %80, %59
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
