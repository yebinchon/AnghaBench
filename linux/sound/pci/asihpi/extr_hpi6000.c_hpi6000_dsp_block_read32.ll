; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpi6000.c_hpi6000_dsp_block_read32.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpi6000.c_hpi6000_dsp_block_read32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpi_adapter_obj = type { %struct.hpi_hw_obj* }
%struct.hpi_hw_obj = type { %struct.dsp_obj* }
%struct.dsp_obj = type { i32 }

@PCI_TIMEOUT = common dso_local global i32 0, align 4
@H6READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.hpi_adapter_obj*, i64, i32, i32*, i32)* @hpi6000_dsp_block_read32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @hpi6000_dsp_block_read32(%struct.hpi_adapter_obj* %0, i64 %1, i32 %2, i32* %3, i32 %4) #0 {
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
  %20 = alloca i32, align 4
  store %struct.hpi_adapter_obj* %0, %struct.hpi_adapter_obj** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %21 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %7, align 8
  %22 = getelementptr inbounds %struct.hpi_adapter_obj, %struct.hpi_adapter_obj* %21, i32 0, i32 0
  %23 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %22, align 8
  store %struct.hpi_hw_obj* %23, %struct.hpi_hw_obj** %12, align 8
  %24 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %12, align 8
  %25 = getelementptr inbounds %struct.hpi_hw_obj, %struct.hpi_hw_obj* %24, i32 0, i32 0
  %26 = load %struct.dsp_obj*, %struct.dsp_obj** %25, align 8
  %27 = load i64, i64* %8, align 8
  %28 = getelementptr inbounds %struct.dsp_obj, %struct.dsp_obj* %26, i64 %27
  store %struct.dsp_obj* %28, %struct.dsp_obj** %13, align 8
  %29 = load i32, i32* @PCI_TIMEOUT, align 4
  store i32 %29, i32* %14, align 4
  store i32 16, i32* %15, align 4
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %16, align 4
  %31 = load i32, i32* %11, align 4
  store i32 %31, i32* %17, align 4
  %32 = load i32*, i32** %10, align 8
  store i32* %32, i32** %19, align 8
  store i32 0, i32* %20, align 4
  br label %33

33:                                               ; preds = %67, %5
  %34 = load i32, i32* %17, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %84

36:                                               ; preds = %33
  %37 = load i32, i32* %17, align 4
  %38 = load i32, i32* %15, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* %15, align 4
  store i32 %41, i32* %18, align 4
  br label %44

42:                                               ; preds = %36
  %43 = load i32, i32* %17, align 4
  store i32 %43, i32* %18, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = load i32, i32* @PCI_TIMEOUT, align 4
  store i32 %45, i32* %14, align 4
  br label %46

46:                                               ; preds = %61, %44
  %47 = load %struct.dsp_obj*, %struct.dsp_obj** %13, align 8
  %48 = load i32, i32* %16, align 4
  %49 = load i32*, i32** %19, align 8
  %50 = load i32, i32* %18, align 4
  %51 = call i32 @hpi_read_block(%struct.dsp_obj* %47, i32 %48, i32* %49, i32 %50)
  br label %52

52:                                               ; preds = %46
  %53 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %7, align 8
  %54 = load i32, i32* @H6READ, align 4
  %55 = call i64 @hpi6000_check_PCI2040_error_flag(%struct.hpi_adapter_obj* %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load i32, i32* %14, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %14, align 4
  %60 = icmp ne i32 %59, 0
  br label %61

61:                                               ; preds = %57, %52
  %62 = phi i1 [ false, %52 ], [ %60, %57 ]
  br i1 %62, label %46, label %63

63:                                               ; preds = %61
  %64 = load i32, i32* %14, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %63
  br label %84

67:                                               ; preds = %63
  %68 = load i32, i32* %18, align 4
  %69 = load i32*, i32** %19, align 8
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  store i32* %71, i32** %19, align 8
  %72 = load i32, i32* %18, align 4
  %73 = sext i32 %72 to i64
  %74 = mul i64 4, %73
  %75 = load i32, i32* %16, align 4
  %76 = sext i32 %75 to i64
  %77 = add i64 %76, %74
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %16, align 4
  %79 = load i32, i32* %18, align 4
  %80 = load i32, i32* %17, align 4
  %81 = sub nsw i32 %80, %79
  store i32 %81, i32* %17, align 4
  %82 = load i32, i32* %20, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %20, align 4
  br label %33

84:                                               ; preds = %66, %33
  %85 = load i32, i32* %14, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  store i64 0, i64* %6, align 8
  br label %89

88:                                               ; preds = %84
  store i64 1, i64* %6, align 8
  br label %89

89:                                               ; preds = %88, %87
  %90 = load i64, i64* %6, align 8
  ret i64 %90
}

declare dso_local i32 @hpi_read_block(%struct.dsp_obj*, i32, i32*, i32) #1

declare dso_local i64 @hpi6000_check_PCI2040_error_flag(%struct.hpi_adapter_obj*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
