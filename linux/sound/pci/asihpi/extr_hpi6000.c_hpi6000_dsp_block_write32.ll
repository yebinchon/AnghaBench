; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpi6000.c_hpi6000_dsp_block_write32.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpi6000.c_hpi6000_dsp_block_write32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpi_adapter_obj = type { %struct.hpi_hw_obj* }
%struct.hpi_hw_obj = type { %struct.dsp_obj* }
%struct.dsp_obj = type { i32 }

@PCI_TIMEOUT = common dso_local global i32 0, align 4
@H6WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.hpi_adapter_obj*, i64, i32, i32*, i32)* @hpi6000_dsp_block_write32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @hpi6000_dsp_block_write32(%struct.hpi_adapter_obj* %0, i64 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.hpi_adapter_obj*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.hpi_hw_obj*, align 8
  %13 = alloca %struct.dsp_obj*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  store %struct.hpi_adapter_obj* %0, %struct.hpi_adapter_obj** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %20 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %7, align 8
  %21 = getelementptr inbounds %struct.hpi_adapter_obj, %struct.hpi_adapter_obj* %20, i32 0, i32 0
  %22 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %21, align 8
  store %struct.hpi_hw_obj* %22, %struct.hpi_hw_obj** %12, align 8
  %23 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %12, align 8
  %24 = getelementptr inbounds %struct.hpi_hw_obj, %struct.hpi_hw_obj* %23, i32 0, i32 0
  %25 = load %struct.dsp_obj*, %struct.dsp_obj** %24, align 8
  %26 = load i64, i64* %8, align 8
  %27 = getelementptr inbounds %struct.dsp_obj, %struct.dsp_obj* %25, i64 %26
  store %struct.dsp_obj* %27, %struct.dsp_obj** %13, align 8
  %28 = load i32, i32* @PCI_TIMEOUT, align 4
  store i32 %28, i32* %14, align 4
  store i32 128, i32* %15, align 4
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %16, align 4
  %30 = load i32, i32* %11, align 4
  store i32 %30, i32* %17, align 4
  %31 = load i32*, i32** %10, align 8
  store i32* %31, i32** %19, align 8
  br label %32

32:                                               ; preds = %66, %5
  %33 = load i32, i32* %17, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %81

35:                                               ; preds = %32
  %36 = load i32, i32* %17, align 4
  %37 = load i32, i32* %15, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, i32* %15, align 4
  store i32 %40, i32* %18, align 4
  br label %43

41:                                               ; preds = %35
  %42 = load i32, i32* %17, align 4
  store i32 %42, i32* %18, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = load i32, i32* @PCI_TIMEOUT, align 4
  store i32 %44, i32* %14, align 4
  br label %45

45:                                               ; preds = %60, %43
  %46 = load %struct.dsp_obj*, %struct.dsp_obj** %13, align 8
  %47 = load i32, i32* %16, align 4
  %48 = load i32*, i32** %19, align 8
  %49 = load i32, i32* %18, align 4
  %50 = call i32 @hpi_write_block(%struct.dsp_obj* %46, i32 %47, i32* %48, i32 %49)
  br label %51

51:                                               ; preds = %45
  %52 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %7, align 8
  %53 = load i32, i32* @H6WRITE, align 4
  %54 = call i64 @hpi6000_check_PCI2040_error_flag(%struct.hpi_adapter_obj* %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load i32, i32* %14, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %14, align 4
  %59 = icmp ne i32 %58, 0
  br label %60

60:                                               ; preds = %56, %51
  %61 = phi i1 [ false, %51 ], [ %59, %56 ]
  br i1 %61, label %45, label %62

62:                                               ; preds = %60
  %63 = load i32, i32* %14, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %62
  br label %81

66:                                               ; preds = %62
  %67 = load i32, i32* %18, align 4
  %68 = load i32*, i32** %19, align 8
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  store i32* %70, i32** %19, align 8
  %71 = load i32, i32* %18, align 4
  %72 = sext i32 %71 to i64
  %73 = mul i64 4, %72
  %74 = load i32, i32* %16, align 4
  %75 = sext i32 %74 to i64
  %76 = add i64 %75, %73
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %16, align 4
  %78 = load i32, i32* %18, align 4
  %79 = load i32, i32* %17, align 4
  %80 = sub nsw i32 %79, %78
  store i32 %80, i32* %17, align 4
  br label %32

81:                                               ; preds = %65, %32
  %82 = load i32, i32* %14, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  store i64 0, i64* %6, align 8
  br label %86

85:                                               ; preds = %81
  store i64 1, i64* %6, align 8
  br label %86

86:                                               ; preds = %85, %84
  %87 = load i64, i64* %6, align 8
  ret i64 %87
}

declare dso_local i32 @hpi_write_block(%struct.dsp_obj*, i32, i32*, i32) #1

declare dso_local i64 @hpi6000_check_PCI2040_error_flag(%struct.hpi_adapter_obj*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
