; ModuleID = '/home/carl/AnghaBench/linux/net/ncsi/extr_ncsi-rsp.c_ncsi_rsp_handler_dc.c'
source_filename = "/home/carl/AnghaBench/linux/net/ncsi/extr_ncsi-rsp.c_ncsi_rsp_handler_dc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncsi_request = type { i32, %struct.ncsi_dev_priv* }
%struct.ncsi_dev_priv = type { i32 }
%struct.ncsi_rsp_pkt = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ncsi_channel = type { %struct.ncsi_channel_mode* }
%struct.ncsi_channel_mode = type { i64 }

@ENODEV = common dso_local global i32 0, align 4
@NCSI_MODE_ENABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ncsi_request*)* @ncsi_rsp_handler_dc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ncsi_rsp_handler_dc(%struct.ncsi_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ncsi_request*, align 8
  %4 = alloca %struct.ncsi_rsp_pkt*, align 8
  %5 = alloca %struct.ncsi_dev_priv*, align 8
  %6 = alloca %struct.ncsi_channel*, align 8
  %7 = alloca %struct.ncsi_channel_mode*, align 8
  %8 = alloca i32, align 4
  store %struct.ncsi_request* %0, %struct.ncsi_request** %3, align 8
  %9 = load %struct.ncsi_request*, %struct.ncsi_request** %3, align 8
  %10 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %9, i32 0, i32 1
  %11 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %10, align 8
  store %struct.ncsi_dev_priv* %11, %struct.ncsi_dev_priv** %5, align 8
  %12 = load %struct.ncsi_request*, %struct.ncsi_request** %3, align 8
  %13 = call i32 @ncsi_validate_rsp_pkt(%struct.ncsi_request* %12, i32 4)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %2, align 4
  br label %50

18:                                               ; preds = %1
  %19 = load %struct.ncsi_request*, %struct.ncsi_request** %3, align 8
  %20 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @skb_network_header(i32 %21)
  %23 = inttoptr i64 %22 to %struct.ncsi_rsp_pkt*
  store %struct.ncsi_rsp_pkt* %23, %struct.ncsi_rsp_pkt** %4, align 8
  %24 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %5, align 8
  %25 = load %struct.ncsi_rsp_pkt*, %struct.ncsi_rsp_pkt** %4, align 8
  %26 = getelementptr inbounds %struct.ncsi_rsp_pkt, %struct.ncsi_rsp_pkt* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ncsi_find_package_and_channel(%struct.ncsi_dev_priv* %24, i32 %29, i32* null, %struct.ncsi_channel** %6)
  %31 = load %struct.ncsi_channel*, %struct.ncsi_channel** %6, align 8
  %32 = icmp ne %struct.ncsi_channel* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %18
  %34 = load i32, i32* @ENODEV, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %50

36:                                               ; preds = %18
  %37 = load %struct.ncsi_channel*, %struct.ncsi_channel** %6, align 8
  %38 = getelementptr inbounds %struct.ncsi_channel, %struct.ncsi_channel* %37, i32 0, i32 0
  %39 = load %struct.ncsi_channel_mode*, %struct.ncsi_channel_mode** %38, align 8
  %40 = load i64, i64* @NCSI_MODE_ENABLE, align 8
  %41 = getelementptr inbounds %struct.ncsi_channel_mode, %struct.ncsi_channel_mode* %39, i64 %40
  store %struct.ncsi_channel_mode* %41, %struct.ncsi_channel_mode** %7, align 8
  %42 = load %struct.ncsi_channel_mode*, %struct.ncsi_channel_mode** %7, align 8
  %43 = getelementptr inbounds %struct.ncsi_channel_mode, %struct.ncsi_channel_mode* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %50

47:                                               ; preds = %36
  %48 = load %struct.ncsi_channel_mode*, %struct.ncsi_channel_mode** %7, align 8
  %49 = getelementptr inbounds %struct.ncsi_channel_mode, %struct.ncsi_channel_mode* %48, i32 0, i32 0
  store i64 0, i64* %49, align 8
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %47, %46, %33, %16
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @ncsi_validate_rsp_pkt(%struct.ncsi_request*, i32) #1

declare dso_local i64 @skb_network_header(i32) #1

declare dso_local i32 @ncsi_find_package_and_channel(%struct.ncsi_dev_priv*, i32, i32*, %struct.ncsi_channel**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
