; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/nci/extr_rsp.c_nci_nfcee_discover_rsp_packet.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/nci/extr_rsp.c_nci_nfcee_discover_rsp_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nci_dev = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.nci_nfcee_discover_rsp = type { i64, i64 }

@NCI_STATUS_NFCEE_PROTOCOL_ERROR = common dso_local global i64 0, align 8
@NCI_STATUS_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nci_dev*, %struct.sk_buff*)* @nci_nfcee_discover_rsp_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nci_nfcee_discover_rsp_packet(%struct.nci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.nci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nci_nfcee_discover_rsp*, align 8
  store %struct.nci_dev* %0, %struct.nci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %7 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 2
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %12 = load i64, i64* @NCI_STATUS_NFCEE_PROTOCOL_ERROR, align 8
  %13 = call i32 @nci_req_complete(%struct.nci_dev* %11, i64 %12)
  br label %35

14:                                               ; preds = %2
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.nci_nfcee_discover_rsp*
  store %struct.nci_nfcee_discover_rsp* %18, %struct.nci_nfcee_discover_rsp** %5, align 8
  %19 = load %struct.nci_nfcee_discover_rsp*, %struct.nci_nfcee_discover_rsp** %5, align 8
  %20 = getelementptr inbounds %struct.nci_nfcee_discover_rsp, %struct.nci_nfcee_discover_rsp* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @NCI_STATUS_OK, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %29, label %24

24:                                               ; preds = %14
  %25 = load %struct.nci_nfcee_discover_rsp*, %struct.nci_nfcee_discover_rsp** %5, align 8
  %26 = getelementptr inbounds %struct.nci_nfcee_discover_rsp, %struct.nci_nfcee_discover_rsp* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24, %14
  %30 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %31 = load %struct.nci_nfcee_discover_rsp*, %struct.nci_nfcee_discover_rsp** %5, align 8
  %32 = getelementptr inbounds %struct.nci_nfcee_discover_rsp, %struct.nci_nfcee_discover_rsp* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @nci_req_complete(%struct.nci_dev* %30, i64 %33)
  br label %35

35:                                               ; preds = %10, %29, %24
  ret void
}

declare dso_local i32 @nci_req_complete(%struct.nci_dev*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
