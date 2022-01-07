; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpi6000.c_hpi6000_check_PCI2040_error_flag.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpi6000.c_hpi6000_check_PCI2040_error_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpi_adapter_obj = type { %struct.hpi_hw_obj* }
%struct.hpi_hw_obj = type { i32, i64 }

@HPI_ERROR_REPORT = common dso_local global i64 0, align 8
@gw_pci_read_asserts = common dso_local global i32 0, align 4
@gw_pci_write_asserts = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.hpi_adapter_obj*, i32)* @hpi6000_check_PCI2040_error_flag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i16 @hpi6000_check_PCI2040_error_flag(%struct.hpi_adapter_obj* %0, i32 %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca %struct.hpi_adapter_obj*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.hpi_hw_obj*, align 8
  store %struct.hpi_adapter_obj* %0, %struct.hpi_adapter_obj** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %9 = getelementptr inbounds %struct.hpi_adapter_obj, %struct.hpi_adapter_obj* %8, i32 0, i32 0
  %10 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %9, align 8
  store %struct.hpi_hw_obj* %10, %struct.hpi_hw_obj** %7, align 8
  %11 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %7, align 8
  %12 = getelementptr inbounds %struct.hpi_hw_obj, %struct.hpi_hw_obj* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @HPI_ERROR_REPORT, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i64 @ioread32(i64 %15)
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %6, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %39

19:                                               ; preds = %2
  %20 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %7, align 8
  %21 = getelementptr inbounds %struct.hpi_hw_obj, %struct.hpi_hw_obj* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @HPI_ERROR_REPORT, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @iowrite32(i64 0, i64 %24)
  %26 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %7, align 8
  %27 = getelementptr inbounds %struct.hpi_hw_obj, %struct.hpi_hw_obj* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 8
  %30 = load i32, i32* %5, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %35

32:                                               ; preds = %19
  %33 = load i32, i32* @gw_pci_read_asserts, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* @gw_pci_read_asserts, align 4
  br label %38

35:                                               ; preds = %19
  %36 = load i32, i32* @gw_pci_write_asserts, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* @gw_pci_write_asserts, align 4
  br label %38

38:                                               ; preds = %35, %32
  store i16 1, i16* %3, align 2
  br label %40

39:                                               ; preds = %2
  store i16 0, i16* %3, align 2
  br label %40

40:                                               ; preds = %39, %38
  %41 = load i16, i16* %3, align 2
  ret i16 %41
}

declare dso_local i64 @ioread32(i64) #1

declare dso_local i32 @iowrite32(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
