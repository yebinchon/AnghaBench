; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpi6000.c_hpi6000_wait_dsp_ack.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpi6000.c_hpi6000_wait_dsp_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpi_adapter_obj = type { %struct.hpi_hw_obj* }
%struct.hpi_hw_obj = type { %struct.dsp_obj* }
%struct.dsp_obj = type { i32 }

@TIMEOUT = common dso_local global i32 0, align 4
@HPI_HIF_ERROR_MASK = common dso_local global i16 0, align 2
@dsp_ack = common dso_local global i32 0, align 4
@H6READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.hpi_adapter_obj*, i64, i32)* @hpi6000_wait_dsp_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i16 @hpi6000_wait_dsp_ack(%struct.hpi_adapter_obj* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i16, align 2
  %5 = alloca %struct.hpi_adapter_obj*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hpi_hw_obj*, align 8
  %9 = alloca %struct.dsp_obj*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.hpi_adapter_obj* %0, %struct.hpi_adapter_obj** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %5, align 8
  %14 = getelementptr inbounds %struct.hpi_adapter_obj, %struct.hpi_adapter_obj* %13, i32 0, i32 0
  %15 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %14, align 8
  store %struct.hpi_hw_obj* %15, %struct.hpi_hw_obj** %8, align 8
  %16 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %8, align 8
  %17 = getelementptr inbounds %struct.hpi_hw_obj, %struct.hpi_hw_obj* %16, i32 0, i32 0
  %18 = load %struct.dsp_obj*, %struct.dsp_obj** %17, align 8
  %19 = load i64, i64* %6, align 8
  %20 = getelementptr inbounds %struct.dsp_obj, %struct.dsp_obj* %18, i64 %19
  store %struct.dsp_obj* %20, %struct.dsp_obj** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %21 = load i32, i32* @TIMEOUT, align 4
  store i32 %21, i32* %11, align 4
  br label %22

22:                                               ; preds = %35, %3
  %23 = load i32, i32* %11, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %22
  %27 = load %struct.dsp_obj*, %struct.dsp_obj** %9, align 8
  %28 = getelementptr inbounds %struct.dsp_obj, %struct.dsp_obj* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ioread32(i32 %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = and i32 %31, 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  br label %36

35:                                               ; preds = %26
  br label %22

36:                                               ; preds = %34, %22
  %37 = load i32, i32* %11, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i16, i16* @HPI_HIF_ERROR_MASK, align 2
  store i16 %40, i16* %4, align 2
  br label %87

41:                                               ; preds = %36
  %42 = load i32, i32* @TIMEOUT, align 4
  store i32 %42, i32* %11, align 4
  br label %43

43:                                               ; preds = %68, %41
  %44 = load i32, i32* %11, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %69

47:                                               ; preds = %43
  %48 = load %struct.dsp_obj*, %struct.dsp_obj** %9, align 8
  %49 = load i32, i32* @dsp_ack, align 4
  %50 = call i32 @HPI_HIF_ADDR(i32 %49)
  %51 = call i32 @hpi_read_word(%struct.dsp_obj* %48, i32 %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  br label %69

56:                                               ; preds = %47
  %57 = load i32, i32* %10, align 4
  %58 = load i16, i16* @HPI_HIF_ERROR_MASK, align 2
  %59 = sext i16 %58 to i32
  %60 = and i32 %57, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %56
  %63 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %5, align 8
  %64 = load i32, i32* @H6READ, align 4
  %65 = call i32 @hpi6000_check_PCI2040_error_flag(%struct.hpi_adapter_obj* %63, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %62
  br label %69

68:                                               ; preds = %62, %56
  br label %43

69:                                               ; preds = %67, %55, %43
  %70 = load i32, i32* %10, align 4
  %71 = load i16, i16* @HPI_HIF_ERROR_MASK, align 2
  %72 = sext i16 %71 to i32
  %73 = and i32 %70, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = load i16, i16* @HPI_HIF_ERROR_MASK, align 2
  %77 = sext i16 %76 to i32
  store i32 %77, i32* %10, align 4
  br label %78

78:                                               ; preds = %75, %69
  %79 = load i32, i32* %11, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i16, i16* @HPI_HIF_ERROR_MASK, align 2
  %83 = sext i16 %82 to i32
  store i32 %83, i32* %10, align 4
  br label %84

84:                                               ; preds = %81, %78
  %85 = load i32, i32* %10, align 4
  %86 = trunc i32 %85 to i16
  store i16 %86, i16* %4, align 2
  br label %87

87:                                               ; preds = %84, %39
  %88 = load i16, i16* %4, align 2
  ret i16 %88
}

declare dso_local i32 @ioread32(i32) #1

declare dso_local i32 @hpi_read_word(%struct.dsp_obj*, i32) #1

declare dso_local i32 @HPI_HIF_ADDR(i32) #1

declare dso_local i32 @hpi6000_check_PCI2040_error_flag(%struct.hpi_adapter_obj*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
