; ModuleID = '/home/carl/AnghaBench/linux/net/ncsi/extr_ncsi-rsp.c_ncsi_rsp_handler_netlink.c'
source_filename = "/home/carl/AnghaBench/linux/net/ncsi/extr_ncsi-rsp.c_ncsi_rsp_handler_netlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncsi_request = type { i32, %struct.ncsi_dev_priv* }
%struct.ncsi_dev_priv = type { i32 }
%struct.ncsi_rsp_pkt = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ncsi_package = type { i32 }
%struct.ncsi_channel = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ncsi_request*)* @ncsi_rsp_handler_netlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ncsi_rsp_handler_netlink(%struct.ncsi_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ncsi_request*, align 8
  %4 = alloca %struct.ncsi_dev_priv*, align 8
  %5 = alloca %struct.ncsi_rsp_pkt*, align 8
  %6 = alloca %struct.ncsi_package*, align 8
  %7 = alloca %struct.ncsi_channel*, align 8
  %8 = alloca i32, align 4
  store %struct.ncsi_request* %0, %struct.ncsi_request** %3, align 8
  %9 = load %struct.ncsi_request*, %struct.ncsi_request** %3, align 8
  %10 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %9, i32 0, i32 1
  %11 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %10, align 8
  store %struct.ncsi_dev_priv* %11, %struct.ncsi_dev_priv** %4, align 8
  %12 = load %struct.ncsi_request*, %struct.ncsi_request** %3, align 8
  %13 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @skb_network_header(i32 %14)
  %16 = inttoptr i64 %15 to %struct.ncsi_rsp_pkt*
  store %struct.ncsi_rsp_pkt* %16, %struct.ncsi_rsp_pkt** %5, align 8
  %17 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %4, align 8
  %18 = load %struct.ncsi_rsp_pkt*, %struct.ncsi_rsp_pkt** %5, align 8
  %19 = getelementptr inbounds %struct.ncsi_rsp_pkt, %struct.ncsi_rsp_pkt* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ncsi_find_package_and_channel(%struct.ncsi_dev_priv* %17, i32 %22, %struct.ncsi_package** %6, %struct.ncsi_channel** %7)
  %24 = load %struct.ncsi_package*, %struct.ncsi_package** %6, align 8
  %25 = icmp ne %struct.ncsi_package* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %1
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %35

29:                                               ; preds = %1
  %30 = load %struct.ncsi_request*, %struct.ncsi_request** %3, align 8
  %31 = load %struct.ncsi_package*, %struct.ncsi_package** %6, align 8
  %32 = load %struct.ncsi_channel*, %struct.ncsi_channel** %7, align 8
  %33 = call i32 @ncsi_send_netlink_rsp(%struct.ncsi_request* %30, %struct.ncsi_package* %31, %struct.ncsi_channel* %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %29, %26
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i64 @skb_network_header(i32) #1

declare dso_local i32 @ncsi_find_package_and_channel(%struct.ncsi_dev_priv*, i32, %struct.ncsi_package**, %struct.ncsi_channel**) #1

declare dso_local i32 @ncsi_send_netlink_rsp(%struct.ncsi_request*, %struct.ncsi_package*, %struct.ncsi_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
