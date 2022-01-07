; ModuleID = '/home/carl/AnghaBench/linux/net/ncsi/extr_ncsi-rsp.c_ncsi_rsp_handler_gls.c'
source_filename = "/home/carl/AnghaBench/linux/net/ncsi/extr_ncsi-rsp.c_ncsi_rsp_handler_gls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncsi_request = type { i32, i32, %struct.ncsi_dev_priv* }
%struct.ncsi_dev_priv = type { i32 }
%struct.ncsi_rsp_gls_pkt = type { i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ncsi_channel = type { i32, %struct.TYPE_6__, %struct.ncsi_channel_mode* }
%struct.TYPE_6__ = type { i32 }
%struct.ncsi_channel_mode = type { i8** }

@ENODEV = common dso_local global i32 0, align 4
@NCSI_MODE_LINK = common dso_local global i64 0, align 8
@NCSI_REQ_FLAG_EVENT_DRIVEN = common dso_local global i32 0, align 4
@NCSI_CHANNEL_MONITOR_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ncsi_request*)* @ncsi_rsp_handler_gls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ncsi_rsp_handler_gls(%struct.ncsi_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ncsi_request*, align 8
  %4 = alloca %struct.ncsi_rsp_gls_pkt*, align 8
  %5 = alloca %struct.ncsi_dev_priv*, align 8
  %6 = alloca %struct.ncsi_channel*, align 8
  %7 = alloca %struct.ncsi_channel_mode*, align 8
  %8 = alloca i64, align 8
  store %struct.ncsi_request* %0, %struct.ncsi_request** %3, align 8
  %9 = load %struct.ncsi_request*, %struct.ncsi_request** %3, align 8
  %10 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %9, i32 0, i32 2
  %11 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %10, align 8
  store %struct.ncsi_dev_priv* %11, %struct.ncsi_dev_priv** %5, align 8
  %12 = load %struct.ncsi_request*, %struct.ncsi_request** %3, align 8
  %13 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @skb_network_header(i32 %14)
  %16 = inttoptr i64 %15 to %struct.ncsi_rsp_gls_pkt*
  store %struct.ncsi_rsp_gls_pkt* %16, %struct.ncsi_rsp_gls_pkt** %4, align 8
  %17 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %5, align 8
  %18 = load %struct.ncsi_rsp_gls_pkt*, %struct.ncsi_rsp_gls_pkt** %4, align 8
  %19 = getelementptr inbounds %struct.ncsi_rsp_gls_pkt, %struct.ncsi_rsp_gls_pkt* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ncsi_find_package_and_channel(%struct.ncsi_dev_priv* %17, i32 %22, i32* null, %struct.ncsi_channel** %6)
  %24 = load %struct.ncsi_channel*, %struct.ncsi_channel** %6, align 8
  %25 = icmp ne %struct.ncsi_channel* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %1
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %79

29:                                               ; preds = %1
  %30 = load %struct.ncsi_channel*, %struct.ncsi_channel** %6, align 8
  %31 = getelementptr inbounds %struct.ncsi_channel, %struct.ncsi_channel* %30, i32 0, i32 2
  %32 = load %struct.ncsi_channel_mode*, %struct.ncsi_channel_mode** %31, align 8
  %33 = load i64, i64* @NCSI_MODE_LINK, align 8
  %34 = getelementptr inbounds %struct.ncsi_channel_mode, %struct.ncsi_channel_mode* %32, i64 %33
  store %struct.ncsi_channel_mode* %34, %struct.ncsi_channel_mode** %7, align 8
  %35 = load %struct.ncsi_rsp_gls_pkt*, %struct.ncsi_rsp_gls_pkt** %4, align 8
  %36 = getelementptr inbounds %struct.ncsi_rsp_gls_pkt, %struct.ncsi_rsp_gls_pkt* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @ntohl(i32 %37)
  %39 = load %struct.ncsi_channel_mode*, %struct.ncsi_channel_mode** %7, align 8
  %40 = getelementptr inbounds %struct.ncsi_channel_mode, %struct.ncsi_channel_mode* %39, i32 0, i32 0
  %41 = load i8**, i8*** %40, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 2
  store i8* %38, i8** %42, align 8
  %43 = load %struct.ncsi_rsp_gls_pkt*, %struct.ncsi_rsp_gls_pkt** %4, align 8
  %44 = getelementptr inbounds %struct.ncsi_rsp_gls_pkt, %struct.ncsi_rsp_gls_pkt* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @ntohl(i32 %45)
  %47 = load %struct.ncsi_channel_mode*, %struct.ncsi_channel_mode** %7, align 8
  %48 = getelementptr inbounds %struct.ncsi_channel_mode, %struct.ncsi_channel_mode* %47, i32 0, i32 0
  %49 = load i8**, i8*** %48, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 3
  store i8* %46, i8** %50, align 8
  %51 = load %struct.ncsi_rsp_gls_pkt*, %struct.ncsi_rsp_gls_pkt** %4, align 8
  %52 = getelementptr inbounds %struct.ncsi_rsp_gls_pkt, %struct.ncsi_rsp_gls_pkt* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i8* @ntohl(i32 %53)
  %55 = load %struct.ncsi_channel_mode*, %struct.ncsi_channel_mode** %7, align 8
  %56 = getelementptr inbounds %struct.ncsi_channel_mode, %struct.ncsi_channel_mode* %55, i32 0, i32 0
  %57 = load i8**, i8*** %56, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 4
  store i8* %54, i8** %58, align 8
  %59 = load %struct.ncsi_request*, %struct.ncsi_request** %3, align 8
  %60 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @NCSI_REQ_FLAG_EVENT_DRIVEN, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %79

66:                                               ; preds = %29
  %67 = load %struct.ncsi_channel*, %struct.ncsi_channel** %6, align 8
  %68 = getelementptr inbounds %struct.ncsi_channel, %struct.ncsi_channel* %67, i32 0, i32 0
  %69 = load i64, i64* %8, align 8
  %70 = call i32 @spin_lock_irqsave(i32* %68, i64 %69)
  %71 = load i32, i32* @NCSI_CHANNEL_MONITOR_START, align 4
  %72 = load %struct.ncsi_channel*, %struct.ncsi_channel** %6, align 8
  %73 = getelementptr inbounds %struct.ncsi_channel, %struct.ncsi_channel* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 4
  %75 = load %struct.ncsi_channel*, %struct.ncsi_channel** %6, align 8
  %76 = getelementptr inbounds %struct.ncsi_channel, %struct.ncsi_channel* %75, i32 0, i32 0
  %77 = load i64, i64* %8, align 8
  %78 = call i32 @spin_unlock_irqrestore(i32* %76, i64 %77)
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %66, %65, %26
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i64 @skb_network_header(i32) #1

declare dso_local i32 @ncsi_find_package_and_channel(%struct.ncsi_dev_priv*, i32, i32*, %struct.ncsi_channel**) #1

declare dso_local i8* @ntohl(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
