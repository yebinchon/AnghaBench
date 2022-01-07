; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/nci/extr_spi.c_nci_spi_send.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/nci/extr_spi.c_nci_spi_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nci_spi = type { i8, i64, i32 }
%struct.completion = type { i32 }
%struct.sk_buff = type { i32, i32 }

@NCI_SPI_HDR_LEN = common dso_local global i32 0, align 4
@NCI_SPI_DIRECT_WRITE = common dso_local global i8 0, align 1
@NCI_SPI_CRC_ENABLED = common dso_local global i8 0, align 1
@CRC_INIT = common dso_local global i32 0, align 4
@ETIME = common dso_local global i32 0, align 4
@NCI_SPI_CRC_DISABLED = common dso_local global i8 0, align 1
@NCI_SPI_SEND_TIMEOUT = common dso_local global i32 0, align 4
@ACKNOWLEDGE_NACK = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nci_spi_send(%struct.nci_spi* %0, %struct.completion* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.nci_spi*, align 8
  %5 = alloca %struct.completion*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.nci_spi* %0, %struct.nci_spi** %4, align 8
  store %struct.completion* %1, %struct.completion** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = load i32, i32* @NCI_SPI_HDR_LEN, align 4
  %17 = call i8* @skb_push(%struct.sk_buff* %15, i32 %16)
  store i8* %17, i8** %8, align 8
  %18 = load i8, i8* @NCI_SPI_DIRECT_WRITE, align 1
  %19 = load i8*, i8** %8, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  store i8 %18, i8* %20, align 1
  %21 = load %struct.nci_spi*, %struct.nci_spi** %4, align 8
  %22 = getelementptr inbounds %struct.nci_spi, %struct.nci_spi* %21, i32 0, i32 0
  %23 = load i8, i8* %22, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  store i8 %23, i8* %25, align 1
  %26 = load i32, i32* %7, align 4
  %27 = lshr i32 %26, 8
  %28 = trunc i32 %27 to i8
  %29 = load i8*, i8** %8, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 2
  store i8 %28, i8* %30, align 1
  %31 = load i32, i32* %7, align 4
  %32 = and i32 %31, 255
  %33 = trunc i32 %32 to i8
  %34 = load i8*, i8** %8, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 3
  store i8 %33, i8* %35, align 1
  %36 = load %struct.nci_spi*, %struct.nci_spi** %4, align 8
  %37 = getelementptr inbounds %struct.nci_spi, %struct.nci_spi* %36, i32 0, i32 0
  %38 = load i8, i8* %37, align 8
  %39 = zext i8 %38 to i32
  %40 = load i8, i8* @NCI_SPI_CRC_ENABLED, align 1
  %41 = zext i8 %40 to i32
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %43, label %60

43:                                               ; preds = %3
  %44 = load i32, i32* @CRC_INIT, align 4
  %45 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @crc_ccitt(i32 %44, i32 %47, i32 %50)
  store i32 %51, i32* %11, align 4
  %52 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %53 = load i32, i32* %11, align 4
  %54 = ashr i32 %53, 8
  %55 = call i32 @skb_put_u8(%struct.sk_buff* %52, i32 %54)
  %56 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %57 = load i32, i32* %11, align 4
  %58 = and i32 %57, 255
  %59 = call i32 @skb_put_u8(%struct.sk_buff* %56, i32 %58)
  br label %60

60:                                               ; preds = %43, %3
  %61 = load %struct.completion*, %struct.completion** %5, align 8
  %62 = icmp ne %struct.completion* %61, null
  br i1 %62, label %63, label %78

63:                                               ; preds = %60
  %64 = load %struct.nci_spi*, %struct.nci_spi** %4, align 8
  %65 = call i32 @__nci_spi_send(%struct.nci_spi* %64, %struct.sk_buff* null, i32 1)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  br label %113

69:                                               ; preds = %63
  %70 = load %struct.completion*, %struct.completion** %5, align 8
  %71 = call i32 @msecs_to_jiffies(i32 1000)
  %72 = call i64 @wait_for_completion_timeout(%struct.completion* %70, i32 %71)
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i32, i32* @ETIME, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %9, align 4
  br label %113

77:                                               ; preds = %69
  br label %78

78:                                               ; preds = %77, %60
  %79 = load %struct.nci_spi*, %struct.nci_spi** %4, align 8
  %80 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %81 = call i32 @__nci_spi_send(%struct.nci_spi* %79, %struct.sk_buff* %80, i32 0)
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %92, label %84

84:                                               ; preds = %78
  %85 = load %struct.nci_spi*, %struct.nci_spi** %4, align 8
  %86 = getelementptr inbounds %struct.nci_spi, %struct.nci_spi* %85, i32 0, i32 0
  %87 = load i8, i8* %86, align 8
  %88 = zext i8 %87 to i32
  %89 = load i8, i8* @NCI_SPI_CRC_DISABLED, align 1
  %90 = zext i8 %89 to i32
  %91 = icmp eq i32 %88, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %84, %78
  br label %113

93:                                               ; preds = %84
  %94 = load %struct.nci_spi*, %struct.nci_spi** %4, align 8
  %95 = getelementptr inbounds %struct.nci_spi, %struct.nci_spi* %94, i32 0, i32 2
  %96 = call i32 @reinit_completion(i32* %95)
  %97 = load %struct.nci_spi*, %struct.nci_spi** %4, align 8
  %98 = getelementptr inbounds %struct.nci_spi, %struct.nci_spi* %97, i32 0, i32 2
  %99 = load i32, i32* @NCI_SPI_SEND_TIMEOUT, align 4
  %100 = call i64 @wait_for_completion_interruptible_timeout(i32* %98, i32 %99)
  store i64 %100, i64* %10, align 8
  %101 = load i64, i64* %10, align 8
  %102 = icmp sle i64 %101, 0
  br i1 %102, label %109, label %103

103:                                              ; preds = %93
  %104 = load %struct.nci_spi*, %struct.nci_spi** %4, align 8
  %105 = getelementptr inbounds %struct.nci_spi, %struct.nci_spi* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @ACKNOWLEDGE_NACK, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %103, %93
  %110 = load i32, i32* @EIO, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %9, align 4
  br label %112

112:                                              ; preds = %109, %103
  br label %113

113:                                              ; preds = %112, %92, %74, %68
  %114 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %115 = call i32 @kfree_skb(%struct.sk_buff* %114)
  %116 = load i32, i32* %9, align 4
  ret i32 %116
}

declare dso_local i8* @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @crc_ccitt(i32, i32, i32) #1

declare dso_local i32 @skb_put_u8(%struct.sk_buff*, i32) #1

declare dso_local i32 @__nci_spi_send(%struct.nci_spi*, %struct.sk_buff*, i32) #1

declare dso_local i64 @wait_for_completion_timeout(%struct.completion*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i64 @wait_for_completion_interruptible_timeout(i32*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
