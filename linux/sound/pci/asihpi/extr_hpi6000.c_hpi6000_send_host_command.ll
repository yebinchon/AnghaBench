; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpi6000.c_hpi6000_send_host_command.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpi6000.c_hpi6000_send_host_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpi_adapter_obj = type { %struct.hpi_hw_obj* }
%struct.hpi_hw_obj = type { %struct.dsp_obj* }
%struct.dsp_obj = type { i32 }

@TIMEOUT = common dso_local global i64 0, align 8
@H6WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.hpi_adapter_obj*, i64, i64)* @hpi6000_send_host_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i16 @hpi6000_send_host_command(%struct.hpi_adapter_obj* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i16, align 2
  %5 = alloca %struct.hpi_adapter_obj*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.hpi_hw_obj*, align 8
  %9 = alloca %struct.dsp_obj*, align 8
  %10 = alloca i64, align 8
  store %struct.hpi_adapter_obj* %0, %struct.hpi_adapter_obj** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %5, align 8
  %12 = getelementptr inbounds %struct.hpi_adapter_obj, %struct.hpi_adapter_obj* %11, i32 0, i32 0
  %13 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %12, align 8
  store %struct.hpi_hw_obj* %13, %struct.hpi_hw_obj** %8, align 8
  %14 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %8, align 8
  %15 = getelementptr inbounds %struct.hpi_hw_obj, %struct.hpi_hw_obj* %14, i32 0, i32 0
  %16 = load %struct.dsp_obj*, %struct.dsp_obj** %15, align 8
  %17 = load i64, i64* %6, align 8
  %18 = getelementptr inbounds %struct.dsp_obj, %struct.dsp_obj* %16, i64 %17
  store %struct.dsp_obj* %18, %struct.dsp_obj** %9, align 8
  %19 = load i64, i64* @TIMEOUT, align 8
  store i64 %19, i64* %10, align 8
  br label %20

20:                                               ; preds = %39, %3
  %21 = load %struct.dsp_obj*, %struct.dsp_obj** %9, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @HPI_HIF_ADDR(i64 %22)
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @hpi_write_word(%struct.dsp_obj* %21, i32 %23, i64 %24)
  %26 = load %struct.dsp_obj*, %struct.dsp_obj** %9, align 8
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @HPI_HIF_ADDR(i64 %27)
  %29 = call i32 @hpi_set_address(%struct.dsp_obj* %26, i32 %28)
  br label %30

30:                                               ; preds = %20
  %31 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %5, align 8
  %32 = load i32, i32* @H6WRITE, align 4
  %33 = call i64 @hpi6000_check_PCI2040_error_flag(%struct.hpi_adapter_obj* %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i64, i64* %10, align 8
  %37 = add nsw i64 %36, -1
  store i64 %37, i64* %10, align 8
  %38 = icmp ne i64 %37, 0
  br label %39

39:                                               ; preds = %35, %30
  %40 = phi i1 [ false, %30 ], [ %38, %35 ]
  br i1 %40, label %20, label %41

41:                                               ; preds = %39
  %42 = load %struct.dsp_obj*, %struct.dsp_obj** %9, align 8
  %43 = getelementptr inbounds %struct.dsp_obj, %struct.dsp_obj* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @iowrite32(i32 262148, i32 %44)
  %46 = load i64, i64* %10, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  store i16 0, i16* %4, align 2
  br label %50

49:                                               ; preds = %41
  store i16 1, i16* %4, align 2
  br label %50

50:                                               ; preds = %49, %48
  %51 = load i16, i16* %4, align 2
  ret i16 %51
}

declare dso_local i32 @hpi_write_word(%struct.dsp_obj*, i32, i64) #1

declare dso_local i32 @HPI_HIF_ADDR(i64) #1

declare dso_local i32 @hpi_set_address(%struct.dsp_obj*, i32) #1

declare dso_local i64 @hpi6000_check_PCI2040_error_flag(%struct.hpi_adapter_obj*, i32) #1

declare dso_local i32 @iowrite32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
