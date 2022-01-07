; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/nci/extr_data.c_nci_push_data_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/nci/extr_data.c_nci_push_data_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nci_dev = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nci_data_hdr = type { i32, i64, i32 }

@NCI_DATA_HDR_SIZE = common dso_local global i32 0, align 4
@NCI_MT_DATA_PKT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nci_dev*, i32, %struct.sk_buff*, i32)* @nci_push_data_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nci_push_data_hdr(%struct.nci_dev* %0, i32 %1, %struct.sk_buff* %2, i32 %3) #0 {
  %5 = alloca %struct.nci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nci_data_hdr*, align 8
  %10 = alloca i32, align 4
  store %struct.nci_dev* %0, %struct.nci_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %10, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %15 = load i32, i32* @NCI_DATA_HDR_SIZE, align 4
  %16 = call %struct.nci_data_hdr* @skb_push(%struct.sk_buff* %14, i32 %15)
  store %struct.nci_data_hdr* %16, %struct.nci_data_hdr** %9, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.nci_data_hdr*, %struct.nci_data_hdr** %9, align 8
  %19 = getelementptr inbounds %struct.nci_data_hdr, %struct.nci_data_hdr* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 8
  %20 = load %struct.nci_data_hdr*, %struct.nci_data_hdr** %9, align 8
  %21 = getelementptr inbounds %struct.nci_data_hdr, %struct.nci_data_hdr* %20, i32 0, i32 1
  store i64 0, i64* %21, align 8
  %22 = load i32, i32* %10, align 4
  %23 = load %struct.nci_data_hdr*, %struct.nci_data_hdr** %9, align 8
  %24 = getelementptr inbounds %struct.nci_data_hdr, %struct.nci_data_hdr* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.nci_data_hdr*, %struct.nci_data_hdr** %9, align 8
  %26 = bitcast %struct.nci_data_hdr* %25 to i32*
  %27 = load i32, i32* @NCI_MT_DATA_PKT, align 4
  %28 = call i32 @nci_mt_set(i32* %26, i32 %27)
  %29 = load %struct.nci_data_hdr*, %struct.nci_data_hdr** %9, align 8
  %30 = bitcast %struct.nci_data_hdr* %29 to i32*
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @nci_pbf_set(i32* %30, i32 %31)
  ret void
}

declare dso_local %struct.nci_data_hdr* @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @nci_mt_set(i32*, i32) #1

declare dso_local i32 @nci_pbf_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
