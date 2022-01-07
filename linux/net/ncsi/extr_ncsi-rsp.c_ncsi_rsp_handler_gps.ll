; ModuleID = '/home/carl/AnghaBench/linux/net/ncsi/extr_ncsi-rsp.c_ncsi_rsp_handler_gps.c'
source_filename = "/home/carl/AnghaBench/linux/net/ncsi/extr_ncsi-rsp.c_ncsi_rsp_handler_gps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncsi_request = type { i32, %struct.ncsi_dev_priv* }
%struct.ncsi_dev_priv = type { i32 }
%struct.ncsi_rsp_gps_pkt = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ncsi_package = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ncsi_request*)* @ncsi_rsp_handler_gps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ncsi_rsp_handler_gps(%struct.ncsi_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ncsi_request*, align 8
  %4 = alloca %struct.ncsi_rsp_gps_pkt*, align 8
  %5 = alloca %struct.ncsi_dev_priv*, align 8
  %6 = alloca %struct.ncsi_package*, align 8
  store %struct.ncsi_request* %0, %struct.ncsi_request** %3, align 8
  %7 = load %struct.ncsi_request*, %struct.ncsi_request** %3, align 8
  %8 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %7, i32 0, i32 1
  %9 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %8, align 8
  store %struct.ncsi_dev_priv* %9, %struct.ncsi_dev_priv** %5, align 8
  %10 = load %struct.ncsi_request*, %struct.ncsi_request** %3, align 8
  %11 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @skb_network_header(i32 %12)
  %14 = inttoptr i64 %13 to %struct.ncsi_rsp_gps_pkt*
  store %struct.ncsi_rsp_gps_pkt* %14, %struct.ncsi_rsp_gps_pkt** %4, align 8
  %15 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %5, align 8
  %16 = load %struct.ncsi_rsp_gps_pkt*, %struct.ncsi_rsp_gps_pkt** %4, align 8
  %17 = getelementptr inbounds %struct.ncsi_rsp_gps_pkt, %struct.ncsi_rsp_gps_pkt* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ncsi_find_package_and_channel(%struct.ncsi_dev_priv* %15, i32 %20, %struct.ncsi_package** %6, i32* null)
  %22 = load %struct.ncsi_package*, %struct.ncsi_package** %6, align 8
  %23 = icmp ne %struct.ncsi_package* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %28

27:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %27, %24
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i64 @skb_network_header(i32) #1

declare dso_local i32 @ncsi_find_package_and_channel(%struct.ncsi_dev_priv*, i32, %struct.ncsi_package**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
