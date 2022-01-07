; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_wext-core.c_iw_handler_get_iwstats.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_wext-core.c_iw_handler_get_iwstats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }
%struct.iw_statistics = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@IW_QUAL_ALL_UPDATED = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @iw_handler_get_iwstats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iw_handler_get_iwstats(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %union.iwreq_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.iw_statistics*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load %struct.net_device*, %struct.net_device** %6, align 8
  %12 = call %struct.iw_statistics* @get_wireless_stats(%struct.net_device* %11)
  store %struct.iw_statistics* %12, %struct.iw_statistics** %10, align 8
  %13 = load %struct.iw_statistics*, %struct.iw_statistics** %10, align 8
  %14 = icmp ne %struct.iw_statistics* %13, null
  br i1 %14, label %15, label %36

15:                                               ; preds = %4
  %16 = load i8*, i8** %9, align 8
  %17 = load %struct.iw_statistics*, %struct.iw_statistics** %10, align 8
  %18 = call i32 @memcpy(i8* %16, %struct.iw_statistics* %17, i32 4)
  %19 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %20 = bitcast %union.iwreq_data* %19 to %struct.TYPE_3__*
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i32 4, i32* %21, align 8
  %22 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %23 = bitcast %union.iwreq_data* %22 to %struct.TYPE_3__*
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %15
  %28 = load i32, i32* @IW_QUAL_ALL_UPDATED, align 4
  %29 = xor i32 %28, -1
  %30 = load %struct.iw_statistics*, %struct.iw_statistics** %10, align 8
  %31 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, %29
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %27, %15
  store i32 0, i32* %5, align 4
  br label %39

36:                                               ; preds = %4
  %37 = load i32, i32* @EOPNOTSUPP, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %36, %35
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local %struct.iw_statistics* @get_wireless_stats(%struct.net_device*) #1

declare dso_local i32 @memcpy(i8*, %struct.iw_statistics*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
