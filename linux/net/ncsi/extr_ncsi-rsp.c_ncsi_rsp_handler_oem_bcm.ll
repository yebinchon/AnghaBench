; ModuleID = '/home/carl/AnghaBench/linux/net/ncsi/extr_ncsi-rsp.c_ncsi_rsp_handler_oem_bcm.c'
source_filename = "/home/carl/AnghaBench/linux/net/ncsi/extr_ncsi-rsp.c_ncsi_rsp_handler_oem_bcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncsi_request = type { i32 }
%struct.ncsi_rsp_oem_bcm_pkt = type { i64 }
%struct.ncsi_rsp_oem_pkt = type { i64 }

@NCSI_OEM_BCM_CMD_GMA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ncsi_request*)* @ncsi_rsp_handler_oem_bcm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ncsi_rsp_handler_oem_bcm(%struct.ncsi_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ncsi_request*, align 8
  %4 = alloca %struct.ncsi_rsp_oem_bcm_pkt*, align 8
  %5 = alloca %struct.ncsi_rsp_oem_pkt*, align 8
  store %struct.ncsi_request* %0, %struct.ncsi_request** %3, align 8
  %6 = load %struct.ncsi_request*, %struct.ncsi_request** %3, align 8
  %7 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @skb_network_header(i32 %8)
  %10 = inttoptr i64 %9 to %struct.ncsi_rsp_oem_pkt*
  store %struct.ncsi_rsp_oem_pkt* %10, %struct.ncsi_rsp_oem_pkt** %5, align 8
  %11 = load %struct.ncsi_rsp_oem_pkt*, %struct.ncsi_rsp_oem_pkt** %5, align 8
  %12 = getelementptr inbounds %struct.ncsi_rsp_oem_pkt, %struct.ncsi_rsp_oem_pkt* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.ncsi_rsp_oem_bcm_pkt*
  store %struct.ncsi_rsp_oem_bcm_pkt* %14, %struct.ncsi_rsp_oem_bcm_pkt** %4, align 8
  %15 = load %struct.ncsi_rsp_oem_bcm_pkt*, %struct.ncsi_rsp_oem_bcm_pkt** %4, align 8
  %16 = getelementptr inbounds %struct.ncsi_rsp_oem_bcm_pkt, %struct.ncsi_rsp_oem_bcm_pkt* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @NCSI_OEM_BCM_CMD_GMA, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.ncsi_request*, %struct.ncsi_request** %3, align 8
  %22 = call i32 @ncsi_rsp_handler_oem_bcm_gma(%struct.ncsi_request* %21)
  store i32 %22, i32* %2, align 4
  br label %24

23:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %23, %20
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i64 @skb_network_header(i32) #1

declare dso_local i32 @ncsi_rsp_handler_oem_bcm_gma(%struct.ncsi_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
