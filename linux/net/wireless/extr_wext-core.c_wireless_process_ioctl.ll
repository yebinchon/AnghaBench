; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_wext-core.c_wireless_process_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_wext-core.c_wireless_process_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.iwreq = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.net_device = type opaque
%struct.iwreq.0 = type opaque
%struct.iw_request_info.1 = type opaque
%struct.net_device.2 = type { i64 }

@ENODEV = common dso_local global i32 0, align 4
@SIOCGIWSTATS = common dso_local global i32 0, align 4
@iw_handler_get_iwstats = common dso_local global i32 0, align 4
@SIOCIWFIRSTPRIV = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@SIOCGIWPRIV = common dso_local global i32 0, align 4
@iw_handler_get_private = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.iwreq*, i32, %struct.iw_request_info*, i32 (%struct.net_device*, %struct.iwreq.0*, i32, %struct.iw_request_info.1*, i32*)*, i32 (%struct.net_device*, %struct.iwreq.0*, i32, %struct.iw_request_info.1*, i32*)*)* @wireless_process_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wireless_process_ioctl(%struct.net* %0, %struct.iwreq* %1, i32 %2, %struct.iw_request_info* %3, i32 (%struct.net_device*, %struct.iwreq.0*, i32, %struct.iw_request_info.1*, i32*)* %4, i32 (%struct.net_device*, %struct.iwreq.0*, i32, %struct.iw_request_info.1*, i32*)* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.iwreq*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.iw_request_info*, align 8
  %12 = alloca i32 (%struct.net_device*, %struct.iwreq.0*, i32, %struct.iw_request_info.1*, i32*)*, align 8
  %13 = alloca i32 (%struct.net_device*, %struct.iwreq.0*, i32, %struct.iw_request_info.1*, i32*)*, align 8
  %14 = alloca %struct.net_device.2*, align 8
  %15 = alloca i32*, align 8
  store %struct.net* %0, %struct.net** %8, align 8
  store %struct.iwreq* %1, %struct.iwreq** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.iw_request_info* %3, %struct.iw_request_info** %11, align 8
  store i32 (%struct.net_device*, %struct.iwreq.0*, i32, %struct.iw_request_info.1*, i32*)* %4, i32 (%struct.net_device*, %struct.iwreq.0*, i32, %struct.iw_request_info.1*, i32*)** %12, align 8
  store i32 (%struct.net_device*, %struct.iwreq.0*, i32, %struct.iw_request_info.1*, i32*)* %5, i32 (%struct.net_device*, %struct.iwreq.0*, i32, %struct.iw_request_info.1*, i32*)** %13, align 8
  %16 = load %struct.net*, %struct.net** %8, align 8
  %17 = load %struct.iwreq*, %struct.iwreq** %9, align 8
  %18 = getelementptr inbounds %struct.iwreq, %struct.iwreq* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.net_device.2* @__dev_get_by_name(%struct.net* %16, i32 %19)
  store %struct.net_device.2* %20, %struct.net_device.2** %14, align 8
  %21 = icmp eq %struct.net_device.2* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %6
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %7, align 4
  br label %86

25:                                               ; preds = %6
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @SIOCGIWSTATS, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %25
  %30 = load i32 (%struct.net_device*, %struct.iwreq.0*, i32, %struct.iw_request_info.1*, i32*)*, i32 (%struct.net_device*, %struct.iwreq.0*, i32, %struct.iw_request_info.1*, i32*)** %12, align 8
  %31 = load %struct.net_device.2*, %struct.net_device.2** %14, align 8
  %32 = bitcast %struct.net_device.2* %31 to %struct.net_device*
  %33 = load %struct.iwreq*, %struct.iwreq** %9, align 8
  %34 = bitcast %struct.iwreq* %33 to %struct.iwreq.0*
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.iw_request_info*, %struct.iw_request_info** %11, align 8
  %37 = bitcast %struct.iw_request_info* %36 to %struct.iw_request_info.1*
  %38 = call i32 %30(%struct.net_device* %32, %struct.iwreq.0* %34, i32 %35, %struct.iw_request_info.1* %37, i32* @iw_handler_get_iwstats)
  store i32 %38, i32* %7, align 4
  br label %86

39:                                               ; preds = %25
  %40 = load %struct.net_device.2*, %struct.net_device.2** %14, align 8
  %41 = call i32 @netif_device_present(%struct.net_device.2* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* @ENODEV, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %7, align 4
  br label %86

46:                                               ; preds = %39
  %47 = load %struct.net_device.2*, %struct.net_device.2** %14, align 8
  %48 = load i32, i32* %10, align 4
  %49 = call i32* @get_handler(%struct.net_device.2* %47, i32 %48)
  store i32* %49, i32** %15, align 8
  %50 = load i32*, i32** %15, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %83

52:                                               ; preds = %46
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @SIOCIWFIRSTPRIV, align 4
  %55 = icmp ult i32 %53, %54
  br i1 %55, label %56, label %67

56:                                               ; preds = %52
  %57 = load i32 (%struct.net_device*, %struct.iwreq.0*, i32, %struct.iw_request_info.1*, i32*)*, i32 (%struct.net_device*, %struct.iwreq.0*, i32, %struct.iw_request_info.1*, i32*)** %12, align 8
  %58 = load %struct.net_device.2*, %struct.net_device.2** %14, align 8
  %59 = bitcast %struct.net_device.2* %58 to %struct.net_device*
  %60 = load %struct.iwreq*, %struct.iwreq** %9, align 8
  %61 = bitcast %struct.iwreq* %60 to %struct.iwreq.0*
  %62 = load i32, i32* %10, align 4
  %63 = load %struct.iw_request_info*, %struct.iw_request_info** %11, align 8
  %64 = bitcast %struct.iw_request_info* %63 to %struct.iw_request_info.1*
  %65 = load i32*, i32** %15, align 8
  %66 = call i32 %57(%struct.net_device* %59, %struct.iwreq.0* %61, i32 %62, %struct.iw_request_info.1* %64, i32* %65)
  store i32 %66, i32* %7, align 4
  br label %86

67:                                               ; preds = %52
  %68 = load i32 (%struct.net_device*, %struct.iwreq.0*, i32, %struct.iw_request_info.1*, i32*)*, i32 (%struct.net_device*, %struct.iwreq.0*, i32, %struct.iw_request_info.1*, i32*)** %13, align 8
  %69 = icmp ne i32 (%struct.net_device*, %struct.iwreq.0*, i32, %struct.iw_request_info.1*, i32*)* %68, null
  br i1 %69, label %70, label %81

70:                                               ; preds = %67
  %71 = load i32 (%struct.net_device*, %struct.iwreq.0*, i32, %struct.iw_request_info.1*, i32*)*, i32 (%struct.net_device*, %struct.iwreq.0*, i32, %struct.iw_request_info.1*, i32*)** %13, align 8
  %72 = load %struct.net_device.2*, %struct.net_device.2** %14, align 8
  %73 = bitcast %struct.net_device.2* %72 to %struct.net_device*
  %74 = load %struct.iwreq*, %struct.iwreq** %9, align 8
  %75 = bitcast %struct.iwreq* %74 to %struct.iwreq.0*
  %76 = load i32, i32* %10, align 4
  %77 = load %struct.iw_request_info*, %struct.iw_request_info** %11, align 8
  %78 = bitcast %struct.iw_request_info* %77 to %struct.iw_request_info.1*
  %79 = load i32*, i32** %15, align 8
  %80 = call i32 %71(%struct.net_device* %73, %struct.iwreq.0* %75, i32 %76, %struct.iw_request_info.1* %78, i32* %79)
  store i32 %80, i32* %7, align 4
  br label %86

81:                                               ; preds = %67
  br label %82

82:                                               ; preds = %81
  br label %83

83:                                               ; preds = %82, %46
  %84 = load i32, i32* @EOPNOTSUPP, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %7, align 4
  br label %86

86:                                               ; preds = %83, %70, %56, %43, %29, %22
  %87 = load i32, i32* %7, align 4
  ret i32 %87
}

declare dso_local %struct.net_device.2* @__dev_get_by_name(%struct.net*, i32) #1

declare dso_local i32 @netif_device_present(%struct.net_device.2*) #1

declare dso_local i32* @get_handler(%struct.net_device.2*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
