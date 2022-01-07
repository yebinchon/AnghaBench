; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/nci/extr_spi.c_send_acknowledge.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/nci/extr_spi.c_send_acknowledge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nci_spi = type { i32 }
%struct.sk_buff = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@NCI_SPI_HDR_LEN = common dso_local global i32 0, align 4
@NCI_SPI_DIRECT_WRITE = common dso_local global i8 0, align 1
@NCI_SPI_CRC_ENABLED = common dso_local global i8 0, align 1
@NCI_SPI_ACK_SHIFT = common dso_local global i8 0, align 1
@CRC_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nci_spi*, i8)* @send_acknowledge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_acknowledge(%struct.nci_spi* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.nci_spi*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nci_spi* %0, %struct.nci_spi** %3, align 8
  store i8 %1, i8* %4, align 1
  %9 = load %struct.nci_spi*, %struct.nci_spi** %3, align 8
  %10 = getelementptr inbounds %struct.nci_spi, %struct.nci_spi* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.sk_buff* @nci_skb_alloc(i32 %11, i32 0, i32 %12)
  store %struct.sk_buff* %13, %struct.sk_buff** %5, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = load i32, i32* @NCI_SPI_HDR_LEN, align 4
  %16 = call i8* @skb_push(%struct.sk_buff* %14, i32 %15)
  store i8* %16, i8** %6, align 8
  %17 = load i8, i8* @NCI_SPI_DIRECT_WRITE, align 1
  %18 = load i8*, i8** %6, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  store i8 %17, i8* %19, align 1
  %20 = load i8, i8* @NCI_SPI_CRC_ENABLED, align 1
  %21 = load i8*, i8** %6, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  store i8 %20, i8* %22, align 1
  %23 = load i8, i8* %4, align 1
  %24 = zext i8 %23 to i32
  %25 = load i8, i8* @NCI_SPI_ACK_SHIFT, align 1
  %26 = zext i8 %25 to i32
  %27 = shl i32 %24, %26
  %28 = trunc i32 %27 to i8
  %29 = load i8*, i8** %6, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 2
  store i8 %28, i8* %30, align 1
  %31 = load i8*, i8** %6, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 3
  store i8 0, i8* %32, align 1
  %33 = load i32, i32* @CRC_INIT, align 4
  %34 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @crc_ccitt(i32 %33, i32 %36, i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %42 = load i32, i32* %7, align 4
  %43 = ashr i32 %42, 8
  %44 = call i32 @skb_put_u8(%struct.sk_buff* %41, i32 %43)
  %45 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %46 = load i32, i32* %7, align 4
  %47 = and i32 %46, 255
  %48 = call i32 @skb_put_u8(%struct.sk_buff* %45, i32 %47)
  %49 = load %struct.nci_spi*, %struct.nci_spi** %3, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %51 = call i32 @__nci_spi_send(%struct.nci_spi* %49, %struct.sk_buff* %50, i32 0)
  store i32 %51, i32* %8, align 4
  %52 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %53 = call i32 @kfree_skb(%struct.sk_buff* %52)
  %54 = load i32, i32* %8, align 4
  ret i32 %54
}

declare dso_local %struct.sk_buff* @nci_skb_alloc(i32, i32, i32) #1

declare dso_local i8* @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @crc_ccitt(i32, i32, i32) #1

declare dso_local i32 @skb_put_u8(%struct.sk_buff*, i32) #1

declare dso_local i32 @__nci_spi_send(%struct.nci_spi*, %struct.sk_buff*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
