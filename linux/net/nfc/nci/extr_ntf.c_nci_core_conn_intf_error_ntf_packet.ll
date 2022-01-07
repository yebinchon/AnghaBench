; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/nci/extr_ntf.c_nci_core_conn_intf_error_ntf_packet.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/nci/extr_ntf.c_nci_core_conn_intf_error_ntf_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nci_dev = type { i32 }
%struct.sk_buff = type { i64 }
%struct.nci_core_intf_error_ntf = type { i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"status 0x%x, conn_id %d\0A\00", align 1
@NCI_DATA_EXCHANGE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nci_dev*, %struct.sk_buff*)* @nci_core_conn_intf_error_ntf_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nci_core_conn_intf_error_ntf_packet(%struct.nci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.nci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nci_core_intf_error_ntf*, align 8
  store %struct.nci_dev* %0, %struct.nci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %7 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to i8*
  %10 = bitcast i8* %9 to %struct.nci_core_intf_error_ntf*
  store %struct.nci_core_intf_error_ntf* %10, %struct.nci_core_intf_error_ntf** %5, align 8
  %11 = load %struct.nci_core_intf_error_ntf*, %struct.nci_core_intf_error_ntf** %5, align 8
  %12 = getelementptr inbounds %struct.nci_core_intf_error_ntf, %struct.nci_core_intf_error_ntf* %11, i32 0, i32 0
  %13 = call i32 @nci_conn_id(i32* %12)
  %14 = load %struct.nci_core_intf_error_ntf*, %struct.nci_core_intf_error_ntf** %5, align 8
  %15 = getelementptr inbounds %struct.nci_core_intf_error_ntf, %struct.nci_core_intf_error_ntf* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.nci_core_intf_error_ntf*, %struct.nci_core_intf_error_ntf** %5, align 8
  %17 = getelementptr inbounds %struct.nci_core_intf_error_ntf, %struct.nci_core_intf_error_ntf* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.nci_core_intf_error_ntf*, %struct.nci_core_intf_error_ntf** %5, align 8
  %20 = getelementptr inbounds %struct.nci_core_intf_error_ntf, %struct.nci_core_intf_error_ntf* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %21)
  %23 = load i32, i32* @NCI_DATA_EXCHANGE, align 4
  %24 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %25 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %24, i32 0, i32 0
  %26 = call i64 @test_bit(i32 %23, i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %2
  %29 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %30 = load %struct.nci_core_intf_error_ntf*, %struct.nci_core_intf_error_ntf** %5, align 8
  %31 = getelementptr inbounds %struct.nci_core_intf_error_ntf, %struct.nci_core_intf_error_ntf* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @EIO, align 4
  %34 = sub nsw i32 0, %33
  %35 = call i32 @nci_data_exchange_complete(%struct.nci_dev* %29, i32* null, i32 %32, i32 %34)
  br label %36

36:                                               ; preds = %28, %2
  ret void
}

declare dso_local i32 @nci_conn_id(i32*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @nci_data_exchange_complete(%struct.nci_dev*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
