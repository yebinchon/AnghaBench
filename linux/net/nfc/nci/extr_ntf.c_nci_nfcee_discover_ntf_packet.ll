; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/nci/extr_ntf.c_nci_nfcee_discover_ntf_packet.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/nci/extr_ntf.c_nci_nfcee_discover_ntf_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nci_dev = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i64 }
%struct.nci_nfcee_discover_ntf = type { i32 }

@NCI_STATUS_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nci_dev*, %struct.sk_buff*)* @nci_nfcee_discover_ntf_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nci_nfcee_discover_ntf_packet(%struct.nci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.nci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nci_nfcee_discover_ntf*, align 8
  store %struct.nci_dev* %0, %struct.nci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load i32, i32* @NCI_STATUS_OK, align 4
  store i32 %7, i32* %5, align 4
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.nci_nfcee_discover_ntf*
  store %struct.nci_nfcee_discover_ntf* %11, %struct.nci_nfcee_discover_ntf** %6, align 8
  %12 = call i32 @pr_debug(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.nci_nfcee_discover_ntf*, %struct.nci_nfcee_discover_ntf** %6, align 8
  %14 = getelementptr inbounds %struct.nci_nfcee_discover_ntf, %struct.nci_nfcee_discover_ntf* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %17 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i32 %15, i32* %19, align 4
  %20 = load %struct.nci_nfcee_discover_ntf*, %struct.nci_nfcee_discover_ntf** %6, align 8
  %21 = getelementptr inbounds %struct.nci_nfcee_discover_ntf, %struct.nci_nfcee_discover_ntf* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %24 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 8
  %26 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @nci_req_complete(%struct.nci_dev* %26, i32 %27)
  ret void
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @nci_req_complete(%struct.nci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
