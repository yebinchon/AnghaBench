; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/nci/extr_spi.c___nci_spi_read.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/nci/extr_spi.c___nci_spi_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nci_spi = type { i8, i32, i32, i32, i32 }
%struct.spi_message = type { i32 }
%struct.spi_transfer = type { i8*, i32, i32, i8*, i32, i32 }

@NCI_SPI_DIRECT_READ = common dso_local global i8 0, align 1
@NCI_SPI_CRC_ENABLED = common dso_local global i8 0, align 1
@NCI_SPI_MSB_PAYLOAD_MASK = common dso_local global i8 0, align 1
@NCI_SPI_CRC_LEN = common dso_local global i8 0, align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.nci_spi*)* @__nci_spi_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @__nci_spi_read(%struct.nci_spi* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.nci_spi*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.spi_message, align 4
  %6 = alloca [2 x i8], align 1
  %7 = alloca [2 x i8], align 1
  %8 = alloca %struct.spi_transfer, align 8
  %9 = alloca %struct.spi_transfer, align 8
  %10 = alloca i16, align 2
  %11 = alloca i32, align 4
  store %struct.nci_spi* %0, %struct.nci_spi** %3, align 8
  store i16 0, i16* %10, align 2
  %12 = call i32 @spi_message_init(%struct.spi_message* %5)
  %13 = call i32 @memset(%struct.spi_transfer* %8, i32 0, i32 32)
  %14 = load i8, i8* @NCI_SPI_DIRECT_READ, align 1
  %15 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  store i8 %14, i8* %15, align 1
  %16 = load %struct.nci_spi*, %struct.nci_spi** %3, align 8
  %17 = getelementptr inbounds %struct.nci_spi, %struct.nci_spi* %16, i32 0, i32 0
  %18 = load i8, i8* %17, align 4
  %19 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 1
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %21 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %8, i32 0, i32 0
  store i8* %20, i8** %21, align 8
  %22 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %8, i32 0, i32 1
  store i32 2, i32* %22, align 8
  %23 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %8, i32 0, i32 2
  store i32 0, i32* %23, align 4
  %24 = load %struct.nci_spi*, %struct.nci_spi** %3, align 8
  %25 = getelementptr inbounds %struct.nci_spi, %struct.nci_spi* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %8, i32 0, i32 4
  store i32 %26, i32* %27, align 8
  %28 = call i32 @spi_message_add_tail(%struct.spi_transfer* %8, %struct.spi_message* %5)
  %29 = call i32 @memset(%struct.spi_transfer* %9, i32 0, i32 32)
  %30 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %31 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %9, i32 0, i32 3
  store i8* %30, i8** %31, align 8
  %32 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %9, i32 0, i32 1
  store i32 2, i32* %32, align 8
  %33 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %9, i32 0, i32 2
  store i32 1, i32* %33, align 4
  %34 = load %struct.nci_spi*, %struct.nci_spi** %3, align 8
  %35 = getelementptr inbounds %struct.nci_spi, %struct.nci_spi* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %9, i32 0, i32 4
  store i32 %36, i32* %37, align 8
  %38 = call i32 @spi_message_add_tail(%struct.spi_transfer* %9, %struct.spi_message* %5)
  %39 = load %struct.nci_spi*, %struct.nci_spi** %3, align 8
  %40 = getelementptr inbounds %struct.nci_spi, %struct.nci_spi* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @spi_sync(i32 %41, %struct.spi_message* %5)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %1
  store %struct.sk_buff* null, %struct.sk_buff** %2, align 8
  br label %141

46:                                               ; preds = %1
  %47 = load %struct.nci_spi*, %struct.nci_spi** %3, align 8
  %48 = getelementptr inbounds %struct.nci_spi, %struct.nci_spi* %47, i32 0, i32 0
  %49 = load i8, i8* %48, align 4
  %50 = zext i8 %49 to i32
  %51 = load i8, i8* @NCI_SPI_CRC_ENABLED, align 1
  %52 = zext i8 %51 to i32
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %54, label %70

54:                                               ; preds = %46
  %55 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = load i8, i8* @NCI_SPI_MSB_PAYLOAD_MASK, align 1
  %59 = zext i8 %58 to i32
  %60 = and i32 %57, %59
  %61 = shl i32 %60, 8
  %62 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 1
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = add nsw i32 %61, %64
  %66 = load i8, i8* @NCI_SPI_CRC_LEN, align 1
  %67 = zext i8 %66 to i32
  %68 = add nsw i32 %65, %67
  %69 = trunc i32 %68 to i16
  store i16 %69, i16* %10, align 2
  br label %80

70:                                               ; preds = %46
  %71 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = shl i32 %73, 8
  %75 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 1
  %76 = load i8, i8* %75, align 1
  %77 = zext i8 %76 to i32
  %78 = or i32 %74, %77
  %79 = trunc i32 %78 to i16
  store i16 %79, i16* %10, align 2
  br label %80

80:                                               ; preds = %70, %54
  %81 = load %struct.nci_spi*, %struct.nci_spi** %3, align 8
  %82 = getelementptr inbounds %struct.nci_spi, %struct.nci_spi* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = load i16, i16* %10, align 2
  %85 = load i32, i32* @GFP_KERNEL, align 4
  %86 = call %struct.sk_buff* @nci_skb_alloc(i32 %83, i16 zeroext %84, i32 %85)
  store %struct.sk_buff* %86, %struct.sk_buff** %4, align 8
  %87 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %88 = icmp ne %struct.sk_buff* %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %80
  store %struct.sk_buff* null, %struct.sk_buff** %2, align 8
  br label %141

90:                                               ; preds = %80
  %91 = call i32 @spi_message_init(%struct.spi_message* %5)
  %92 = call i32 @memset(%struct.spi_transfer* %9, i32 0, i32 32)
  %93 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %94 = load i16, i16* %10, align 2
  %95 = call i8* @skb_put(%struct.sk_buff* %93, i16 zeroext %94)
  %96 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %9, i32 0, i32 3
  store i8* %95, i8** %96, align 8
  %97 = load i16, i16* %10, align 2
  %98 = zext i16 %97 to i32
  %99 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %9, i32 0, i32 1
  store i32 %98, i32* %99, align 8
  %100 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %9, i32 0, i32 2
  store i32 0, i32* %100, align 4
  %101 = load %struct.nci_spi*, %struct.nci_spi** %3, align 8
  %102 = getelementptr inbounds %struct.nci_spi, %struct.nci_spi* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %9, i32 0, i32 5
  store i32 %103, i32* %104, align 4
  %105 = load %struct.nci_spi*, %struct.nci_spi** %3, align 8
  %106 = getelementptr inbounds %struct.nci_spi, %struct.nci_spi* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %9, i32 0, i32 4
  store i32 %107, i32* %108, align 8
  %109 = call i32 @spi_message_add_tail(%struct.spi_transfer* %9, %struct.spi_message* %5)
  %110 = load %struct.nci_spi*, %struct.nci_spi** %3, align 8
  %111 = getelementptr inbounds %struct.nci_spi, %struct.nci_spi* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @spi_sync(i32 %112, %struct.spi_message* %5)
  store i32 %113, i32* %11, align 4
  %114 = load i32, i32* %11, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %90
  br label %138

117:                                              ; preds = %90
  %118 = load %struct.nci_spi*, %struct.nci_spi** %3, align 8
  %119 = getelementptr inbounds %struct.nci_spi, %struct.nci_spi* %118, i32 0, i32 0
  %120 = load i8, i8* %119, align 4
  %121 = zext i8 %120 to i32
  %122 = load i8, i8* @NCI_SPI_CRC_ENABLED, align 1
  %123 = zext i8 %122 to i32
  %124 = icmp eq i32 %121, %123
  br i1 %124, label %125, label %136

125:                                              ; preds = %117
  %126 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 1
  %127 = load i8, i8* %126, align 1
  %128 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %129 = call i64 @skb_push(%struct.sk_buff* %128, i32 1)
  %130 = inttoptr i64 %129 to i8*
  store i8 %127, i8* %130, align 1
  %131 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %132 = load i8, i8* %131, align 1
  %133 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %134 = call i64 @skb_push(%struct.sk_buff* %133, i32 1)
  %135 = inttoptr i64 %134 to i8*
  store i8 %132, i8* %135, align 1
  br label %136

136:                                              ; preds = %125, %117
  %137 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  store %struct.sk_buff* %137, %struct.sk_buff** %2, align 8
  br label %141

138:                                              ; preds = %116
  %139 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %140 = call i32 @kfree_skb(%struct.sk_buff* %139)
  store %struct.sk_buff* null, %struct.sk_buff** %2, align 8
  br label %141

141:                                              ; preds = %138, %136, %89, %45
  %142 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  ret %struct.sk_buff* %142
}

declare dso_local i32 @spi_message_init(%struct.spi_message*) #1

declare dso_local i32 @memset(%struct.spi_transfer*, i32, i32) #1

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #1

declare dso_local i32 @spi_sync(i32, %struct.spi_message*) #1

declare dso_local %struct.sk_buff* @nci_skb_alloc(i32, i16 zeroext, i32) #1

declare dso_local i8* @skb_put(%struct.sk_buff*, i16 zeroext) #1

declare dso_local i64 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
