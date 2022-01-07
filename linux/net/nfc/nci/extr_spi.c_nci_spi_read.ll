; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/nci/extr_spi.c_nci_spi_read.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/nci/extr_spi.c_nci_spi_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nci_spi = type { i64, i32, i32 }

@NCI_SPI_CRC_ENABLED = common dso_local global i64 0, align 8
@ACKNOWLEDGE_NACK = common dso_local global i32 0, align 4
@ACKNOWLEDGE_ACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @nci_spi_read(%struct.nci_spi* %0) #0 {
  %2 = alloca %struct.nci_spi*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  store %struct.nci_spi* %0, %struct.nci_spi** %2, align 8
  %4 = load %struct.nci_spi*, %struct.nci_spi** %2, align 8
  %5 = call %struct.sk_buff* @__nci_spi_read(%struct.nci_spi* %4)
  store %struct.sk_buff* %5, %struct.sk_buff** %3, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %7 = icmp ne %struct.sk_buff* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %56

9:                                                ; preds = %1
  %10 = load %struct.nci_spi*, %struct.nci_spi** %2, align 8
  %11 = getelementptr inbounds %struct.nci_spi, %struct.nci_spi* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @NCI_SPI_CRC_ENABLED, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %37

15:                                               ; preds = %9
  %16 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %17 = call i32 @nci_spi_check_crc(%struct.sk_buff* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load %struct.nci_spi*, %struct.nci_spi** %2, align 8
  %21 = load i32, i32* @ACKNOWLEDGE_NACK, align 4
  %22 = call i32 @send_acknowledge(%struct.nci_spi* %20, i32 %21)
  br label %56

23:                                               ; preds = %15
  %24 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %25 = call i32 @nci_spi_get_ack(%struct.sk_buff* %24)
  %26 = load %struct.nci_spi*, %struct.nci_spi** %2, align 8
  %27 = getelementptr inbounds %struct.nci_spi, %struct.nci_spi* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load %struct.nci_spi*, %struct.nci_spi** %2, align 8
  %29 = getelementptr inbounds %struct.nci_spi, %struct.nci_spi* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %23
  %33 = load %struct.nci_spi*, %struct.nci_spi** %2, align 8
  %34 = getelementptr inbounds %struct.nci_spi, %struct.nci_spi* %33, i32 0, i32 1
  %35 = call i32 @complete(i32* %34)
  br label %36

36:                                               ; preds = %32, %23
  br label %37

37:                                               ; preds = %36, %9
  %38 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %44 = call i32 @kfree_skb(%struct.sk_buff* %43)
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %56

45:                                               ; preds = %37
  %46 = load %struct.nci_spi*, %struct.nci_spi** %2, align 8
  %47 = getelementptr inbounds %struct.nci_spi, %struct.nci_spi* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @NCI_SPI_CRC_ENABLED, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load %struct.nci_spi*, %struct.nci_spi** %2, align 8
  %53 = load i32, i32* @ACKNOWLEDGE_ACK, align 4
  %54 = call i32 @send_acknowledge(%struct.nci_spi* %52, i32 %53)
  br label %55

55:                                               ; preds = %51, %45
  br label %56

56:                                               ; preds = %55, %42, %19, %8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %57
}

declare dso_local %struct.sk_buff* @__nci_spi_read(%struct.nci_spi*) #1

declare dso_local i32 @nci_spi_check_crc(%struct.sk_buff*) #1

declare dso_local i32 @send_acknowledge(%struct.nci_spi*, i32) #1

declare dso_local i32 @nci_spi_get_ack(%struct.sk_buff*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
