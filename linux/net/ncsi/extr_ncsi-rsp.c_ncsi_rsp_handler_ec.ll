; ModuleID = '/home/carl/AnghaBench/linux/net/ncsi/extr_ncsi-rsp.c_ncsi_rsp_handler_ec.c'
source_filename = "/home/carl/AnghaBench/linux/net/ncsi/extr_ncsi-rsp.c_ncsi_rsp_handler_ec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncsi_request = type { i32, %struct.ncsi_dev_priv* }
%struct.ncsi_dev_priv = type { i32 }
%struct.ncsi_rsp_pkt = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ncsi_channel = type { %struct.ncsi_channel_mode* }
%struct.ncsi_channel_mode = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@NCSI_MODE_ENABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ncsi_request*)* @ncsi_rsp_handler_ec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ncsi_rsp_handler_ec(%struct.ncsi_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ncsi_request*, align 8
  %4 = alloca %struct.ncsi_rsp_pkt*, align 8
  %5 = alloca %struct.ncsi_dev_priv*, align 8
  %6 = alloca %struct.ncsi_channel*, align 8
  %7 = alloca %struct.ncsi_channel_mode*, align 8
  store %struct.ncsi_request* %0, %struct.ncsi_request** %3, align 8
  %8 = load %struct.ncsi_request*, %struct.ncsi_request** %3, align 8
  %9 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %8, i32 0, i32 1
  %10 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %9, align 8
  store %struct.ncsi_dev_priv* %10, %struct.ncsi_dev_priv** %5, align 8
  %11 = load %struct.ncsi_request*, %struct.ncsi_request** %3, align 8
  %12 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @skb_network_header(i32 %13)
  %15 = inttoptr i64 %14 to %struct.ncsi_rsp_pkt*
  store %struct.ncsi_rsp_pkt* %15, %struct.ncsi_rsp_pkt** %4, align 8
  %16 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %5, align 8
  %17 = load %struct.ncsi_rsp_pkt*, %struct.ncsi_rsp_pkt** %4, align 8
  %18 = getelementptr inbounds %struct.ncsi_rsp_pkt, %struct.ncsi_rsp_pkt* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ncsi_find_package_and_channel(%struct.ncsi_dev_priv* %16, i32 %21, i32* null, %struct.ncsi_channel** %6)
  %23 = load %struct.ncsi_channel*, %struct.ncsi_channel** %6, align 8
  %24 = icmp ne %struct.ncsi_channel* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %42

28:                                               ; preds = %1
  %29 = load %struct.ncsi_channel*, %struct.ncsi_channel** %6, align 8
  %30 = getelementptr inbounds %struct.ncsi_channel, %struct.ncsi_channel* %29, i32 0, i32 0
  %31 = load %struct.ncsi_channel_mode*, %struct.ncsi_channel_mode** %30, align 8
  %32 = load i64, i64* @NCSI_MODE_ENABLE, align 8
  %33 = getelementptr inbounds %struct.ncsi_channel_mode, %struct.ncsi_channel_mode* %31, i64 %32
  store %struct.ncsi_channel_mode* %33, %struct.ncsi_channel_mode** %7, align 8
  %34 = load %struct.ncsi_channel_mode*, %struct.ncsi_channel_mode** %7, align 8
  %35 = getelementptr inbounds %struct.ncsi_channel_mode, %struct.ncsi_channel_mode* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %42

39:                                               ; preds = %28
  %40 = load %struct.ncsi_channel_mode*, %struct.ncsi_channel_mode** %7, align 8
  %41 = getelementptr inbounds %struct.ncsi_channel_mode, %struct.ncsi_channel_mode* %40, i32 0, i32 0
  store i32 1, i32* %41, align 4
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %39, %38, %25
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i64 @skb_network_header(i32) #1

declare dso_local i32 @ncsi_find_package_and_channel(%struct.ncsi_dev_priv*, i32, i32*, %struct.ncsi_channel**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
