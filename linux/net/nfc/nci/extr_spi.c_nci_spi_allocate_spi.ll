; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/nci/extr_spi.c_nci_spi_allocate_spi.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/nci/extr_spi.c_nci_spi_allocate_spi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nci_spi = type { i32, i32, %struct.nci_dev*, %struct.spi_device*, i64, i32 }
%struct.spi_device = type { i32 }
%struct.nci_dev = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nci_spi* @nci_spi_allocate_spi(%struct.spi_device* %0, i32 %1, i32 %2, %struct.nci_dev* %3) #0 {
  %5 = alloca %struct.nci_spi*, align 8
  %6 = alloca %struct.spi_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nci_dev*, align 8
  %10 = alloca %struct.nci_spi*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.nci_dev* %3, %struct.nci_dev** %9, align 8
  %11 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %12 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %11, i32 0, i32 0
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.nci_spi* @devm_kzalloc(i32* %12, i32 40, i32 %13)
  store %struct.nci_spi* %14, %struct.nci_spi** %10, align 8
  %15 = load %struct.nci_spi*, %struct.nci_spi** %10, align 8
  %16 = icmp ne %struct.nci_spi* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  store %struct.nci_spi* null, %struct.nci_spi** %5, align 8
  br label %37

18:                                               ; preds = %4
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.nci_spi*, %struct.nci_spi** %10, align 8
  %21 = getelementptr inbounds %struct.nci_spi, %struct.nci_spi* %20, i32 0, i32 5
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.nci_spi*, %struct.nci_spi** %10, align 8
  %24 = getelementptr inbounds %struct.nci_spi, %struct.nci_spi* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.nci_spi*, %struct.nci_spi** %10, align 8
  %26 = getelementptr inbounds %struct.nci_spi, %struct.nci_spi* %25, i32 0, i32 4
  store i64 0, i64* %26, align 8
  %27 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %28 = load %struct.nci_spi*, %struct.nci_spi** %10, align 8
  %29 = getelementptr inbounds %struct.nci_spi, %struct.nci_spi* %28, i32 0, i32 3
  store %struct.spi_device* %27, %struct.spi_device** %29, align 8
  %30 = load %struct.nci_dev*, %struct.nci_dev** %9, align 8
  %31 = load %struct.nci_spi*, %struct.nci_spi** %10, align 8
  %32 = getelementptr inbounds %struct.nci_spi, %struct.nci_spi* %31, i32 0, i32 2
  store %struct.nci_dev* %30, %struct.nci_dev** %32, align 8
  %33 = load %struct.nci_spi*, %struct.nci_spi** %10, align 8
  %34 = getelementptr inbounds %struct.nci_spi, %struct.nci_spi* %33, i32 0, i32 1
  %35 = call i32 @init_completion(i32* %34)
  %36 = load %struct.nci_spi*, %struct.nci_spi** %10, align 8
  store %struct.nci_spi* %36, %struct.nci_spi** %5, align 8
  br label %37

37:                                               ; preds = %18, %17
  %38 = load %struct.nci_spi*, %struct.nci_spi** %5, align 8
  ret %struct.nci_spi* %38
}

declare dso_local %struct.nci_spi* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
