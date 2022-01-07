; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_start_sched_scan.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_start_sched_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32*, i32, %struct.net_device** }
%struct.net_device = type { %struct.TYPE_4__, %struct.TYPE_3__*, %struct.wireless_dev* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.wireless_dev = type { i32 }
%struct.cfg80211_registered_device = type { %struct.TYPE_4__, %struct.TYPE_3__*, %struct.wireless_dev* }
%struct.cfg80211_sched_scan_request = type { i32, %struct.TYPE_4__*, %struct.net_device*, i64 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@NL80211_ATTR_SCHED_SCAN_MULTI = common dso_local global i64 0, align 8
@NL80211_ATTR_SOCKET_OWNER = common dso_local global i64 0, align 8
@NL80211_CMD_START_SCHED_SCAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nl80211_start_sched_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_start_sched_scan(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.wireless_dev*, align 8
  %9 = alloca %struct.cfg80211_sched_scan_request*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %12 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %13 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %12, i32 0, i32 2
  %14 = load %struct.net_device**, %struct.net_device*** %13, align 8
  %15 = getelementptr inbounds %struct.net_device*, %struct.net_device** %14, i64 0
  %16 = load %struct.net_device*, %struct.net_device** %15, align 8
  %17 = bitcast %struct.net_device* %16 to %struct.cfg80211_registered_device*
  store %struct.cfg80211_registered_device* %17, %struct.cfg80211_registered_device** %6, align 8
  %18 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %19 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %18, i32 0, i32 2
  %20 = load %struct.net_device**, %struct.net_device*** %19, align 8
  %21 = getelementptr inbounds %struct.net_device*, %struct.net_device** %20, i64 1
  %22 = load %struct.net_device*, %struct.net_device** %21, align 8
  store %struct.net_device* %22, %struct.net_device** %7, align 8
  %23 = load %struct.net_device*, %struct.net_device** %7, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 2
  %25 = load %struct.wireless_dev*, %struct.wireless_dev** %24, align 8
  store %struct.wireless_dev* %25, %struct.wireless_dev** %8, align 8
  %26 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %27 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %2
  %32 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %33 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %32, i32 0, i32 1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %31, %2
  %39 = load i32, i32* @EOPNOTSUPP, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %139

41:                                               ; preds = %31
  %42 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %43 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* @NL80211_ATTR_SCHED_SCAN_MULTI, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %10, align 4
  %48 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %49 = bitcast %struct.cfg80211_registered_device* %48 to %struct.net_device*
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @cfg80211_sched_scan_req_possible(%struct.net_device* %49, i32 %50)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %41
  %55 = load i32, i32* %11, align 4
  store i32 %55, i32* %3, align 4
  br label %139

56:                                               ; preds = %41
  %57 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %58 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %57, i32 0, i32 0
  %59 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %60 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %61 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %64 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call %struct.cfg80211_sched_scan_request* @nl80211_parse_sched_scan(%struct.TYPE_4__* %58, %struct.wireless_dev* %59, i32* %62, i32 %66)
  store %struct.cfg80211_sched_scan_request* %67, %struct.cfg80211_sched_scan_request** %9, align 8
  %68 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %9, align 8
  %69 = call i32 @PTR_ERR_OR_ZERO(%struct.cfg80211_sched_scan_request* %68)
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %11, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %56
  br label %137

73:                                               ; preds = %56
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %96

76:                                               ; preds = %73
  %77 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %78 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp sgt i32 %80, 1
  br i1 %81, label %82, label %96

82:                                               ; preds = %76
  br label %83

83:                                               ; preds = %89, %82
  %84 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %9, align 8
  %85 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  %88 = xor i1 %87, true
  br i1 %88, label %89, label %95

89:                                               ; preds = %83
  %90 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %91 = bitcast %struct.cfg80211_registered_device* %90 to %struct.net_device*
  %92 = call i64 @cfg80211_assign_cookie(%struct.net_device* %91)
  %93 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %9, align 8
  %94 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %93, i32 0, i32 3
  store i64 %92, i64* %94, align 8
  br label %83

95:                                               ; preds = %83
  br label %96

96:                                               ; preds = %95, %76, %73
  %97 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %98 = bitcast %struct.cfg80211_registered_device* %97 to %struct.net_device*
  %99 = load %struct.net_device*, %struct.net_device** %7, align 8
  %100 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %9, align 8
  %101 = call i32 @rdev_sched_scan_start(%struct.net_device* %98, %struct.net_device* %99, %struct.cfg80211_sched_scan_request* %100)
  store i32 %101, i32* %11, align 4
  %102 = load i32, i32* %11, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %96
  br label %134

105:                                              ; preds = %96
  %106 = load %struct.net_device*, %struct.net_device** %7, align 8
  %107 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %9, align 8
  %108 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %107, i32 0, i32 2
  store %struct.net_device* %106, %struct.net_device** %108, align 8
  %109 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %110 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %109, i32 0, i32 0
  %111 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %9, align 8
  %112 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %111, i32 0, i32 1
  store %struct.TYPE_4__* %110, %struct.TYPE_4__** %112, align 8
  %113 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %114 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = load i64, i64* @NL80211_ATTR_SOCKET_OWNER, align 8
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %105
  %121 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %122 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %9, align 8
  %125 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 8
  br label %126

126:                                              ; preds = %120, %105
  %127 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %128 = bitcast %struct.cfg80211_registered_device* %127 to %struct.net_device*
  %129 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %9, align 8
  %130 = call i32 @cfg80211_add_sched_scan_req(%struct.net_device* %128, %struct.cfg80211_sched_scan_request* %129)
  %131 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %9, align 8
  %132 = load i32, i32* @NL80211_CMD_START_SCHED_SCAN, align 4
  %133 = call i32 @nl80211_send_sched_scan(%struct.cfg80211_sched_scan_request* %131, i32 %132)
  store i32 0, i32* %3, align 4
  br label %139

134:                                              ; preds = %104
  %135 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %9, align 8
  %136 = call i32 @kfree(%struct.cfg80211_sched_scan_request* %135)
  br label %137

137:                                              ; preds = %134, %72
  %138 = load i32, i32* %11, align 4
  store i32 %138, i32* %3, align 4
  br label %139

139:                                              ; preds = %137, %126, %54, %38
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local i32 @cfg80211_sched_scan_req_possible(%struct.net_device*, i32) #1

declare dso_local %struct.cfg80211_sched_scan_request* @nl80211_parse_sched_scan(%struct.TYPE_4__*, %struct.wireless_dev*, i32*, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.cfg80211_sched_scan_request*) #1

declare dso_local i64 @cfg80211_assign_cookie(%struct.net_device*) #1

declare dso_local i32 @rdev_sched_scan_start(%struct.net_device*, %struct.net_device*, %struct.cfg80211_sched_scan_request*) #1

declare dso_local i32 @cfg80211_add_sched_scan_req(%struct.net_device*, %struct.cfg80211_sched_scan_request*) #1

declare dso_local i32 @nl80211_send_sched_scan(%struct.cfg80211_sched_scan_request*, i32) #1

declare dso_local i32 @kfree(%struct.cfg80211_sched_scan_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
