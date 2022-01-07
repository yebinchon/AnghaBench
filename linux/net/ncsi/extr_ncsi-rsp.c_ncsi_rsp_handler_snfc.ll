; ModuleID = '/home/carl/AnghaBench/linux/net/ncsi/extr_ncsi-rsp.c_ncsi_rsp_handler_snfc.c'
source_filename = "/home/carl/AnghaBench/linux/net/ncsi/extr_ncsi-rsp.c_ncsi_rsp_handler_snfc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncsi_request = type { i32, i32, %struct.ncsi_dev_priv* }
%struct.ncsi_dev_priv = type { i32 }
%struct.ncsi_cmd_snfc_pkt = type { i32 }
%struct.ncsi_rsp_pkt = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ncsi_channel = type { %struct.ncsi_channel_mode* }
%struct.ncsi_channel_mode = type { i32, i32* }

@ENODEV = common dso_local global i32 0, align 4
@NCSI_MODE_FC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ncsi_request*)* @ncsi_rsp_handler_snfc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ncsi_rsp_handler_snfc(%struct.ncsi_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ncsi_request*, align 8
  %4 = alloca %struct.ncsi_cmd_snfc_pkt*, align 8
  %5 = alloca %struct.ncsi_rsp_pkt*, align 8
  %6 = alloca %struct.ncsi_dev_priv*, align 8
  %7 = alloca %struct.ncsi_channel*, align 8
  %8 = alloca %struct.ncsi_channel_mode*, align 8
  store %struct.ncsi_request* %0, %struct.ncsi_request** %3, align 8
  %9 = load %struct.ncsi_request*, %struct.ncsi_request** %3, align 8
  %10 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %9, i32 0, i32 2
  %11 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %10, align 8
  store %struct.ncsi_dev_priv* %11, %struct.ncsi_dev_priv** %6, align 8
  %12 = load %struct.ncsi_request*, %struct.ncsi_request** %3, align 8
  %13 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @skb_network_header(i32 %14)
  %16 = inttoptr i64 %15 to %struct.ncsi_rsp_pkt*
  store %struct.ncsi_rsp_pkt* %16, %struct.ncsi_rsp_pkt** %5, align 8
  %17 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %6, align 8
  %18 = load %struct.ncsi_rsp_pkt*, %struct.ncsi_rsp_pkt** %5, align 8
  %19 = getelementptr inbounds %struct.ncsi_rsp_pkt, %struct.ncsi_rsp_pkt* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ncsi_find_package_and_channel(%struct.ncsi_dev_priv* %17, i32 %22, i32* null, %struct.ncsi_channel** %7)
  %24 = load %struct.ncsi_channel*, %struct.ncsi_channel** %7, align 8
  %25 = icmp ne %struct.ncsi_channel* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %1
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %55

29:                                               ; preds = %1
  %30 = load %struct.ncsi_channel*, %struct.ncsi_channel** %7, align 8
  %31 = getelementptr inbounds %struct.ncsi_channel, %struct.ncsi_channel* %30, i32 0, i32 0
  %32 = load %struct.ncsi_channel_mode*, %struct.ncsi_channel_mode** %31, align 8
  %33 = load i64, i64* @NCSI_MODE_FC, align 8
  %34 = getelementptr inbounds %struct.ncsi_channel_mode, %struct.ncsi_channel_mode* %32, i64 %33
  store %struct.ncsi_channel_mode* %34, %struct.ncsi_channel_mode** %8, align 8
  %35 = load %struct.ncsi_channel_mode*, %struct.ncsi_channel_mode** %8, align 8
  %36 = getelementptr inbounds %struct.ncsi_channel_mode, %struct.ncsi_channel_mode* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %55

40:                                               ; preds = %29
  %41 = load %struct.ncsi_request*, %struct.ncsi_request** %3, align 8
  %42 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @skb_network_header(i32 %43)
  %45 = inttoptr i64 %44 to %struct.ncsi_cmd_snfc_pkt*
  store %struct.ncsi_cmd_snfc_pkt* %45, %struct.ncsi_cmd_snfc_pkt** %4, align 8
  %46 = load %struct.ncsi_channel_mode*, %struct.ncsi_channel_mode** %8, align 8
  %47 = getelementptr inbounds %struct.ncsi_channel_mode, %struct.ncsi_channel_mode* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  %48 = load %struct.ncsi_cmd_snfc_pkt*, %struct.ncsi_cmd_snfc_pkt** %4, align 8
  %49 = getelementptr inbounds %struct.ncsi_cmd_snfc_pkt, %struct.ncsi_cmd_snfc_pkt* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ncsi_channel_mode*, %struct.ncsi_channel_mode** %8, align 8
  %52 = getelementptr inbounds %struct.ncsi_channel_mode, %struct.ncsi_channel_mode* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  store i32 %50, i32* %54, align 4
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %40, %39, %26
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i64 @skb_network_header(i32) #1

declare dso_local i32 @ncsi_find_package_and_channel(%struct.ncsi_dev_priv*, i32, i32*, %struct.ncsi_channel**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
