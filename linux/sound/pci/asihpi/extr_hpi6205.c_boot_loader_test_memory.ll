; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpi6205.c_boot_loader_test_memory.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpi6205.c_boot_loader_test_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpi_adapter_obj = type { i32 }

@VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Memtest error details  %08x %08x %08x %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hpi_adapter_obj*, i32, i32, i32)* @boot_loader_test_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @boot_loader_test_memory(%struct.hpi_adapter_obj* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hpi_adapter_obj*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.hpi_adapter_obj* %0, %struct.hpi_adapter_obj** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 1000, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %10, align 4
  %17 = mul nsw i32 %16, 4
  %18 = add nsw i32 %15, %17
  store i32 %18, i32* %12, align 4
  store i32 1, i32* %13, align 4
  store i32 0, i32* %11, align 4
  br label %19

19:                                               ; preds = %45, %4
  %20 = load i32, i32* %11, align 4
  %21 = icmp slt i32 %20, 32
  br i1 %21, label %22, label %48

22:                                               ; preds = %19
  %23 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* %13, align 4
  %27 = call i32 @boot_loader_write_mem32(%struct.hpi_adapter_obj* %23, i32 %24, i32 %25, i32 %26)
  %28 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %12, align 4
  %31 = call i32 @boot_loader_read_mem32(%struct.hpi_adapter_obj* %28, i32 %29, i32 %30)
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %14, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %22
  %36 = load i32, i32* @VERBOSE, align 4
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @HPI_DEBUG_LOG(i32 %36, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %38, i32 %39, i32 %40)
  store i32 1, i32* %5, align 4
  br label %107

42:                                               ; preds = %22
  %43 = load i32, i32* %13, align 4
  %44 = shl i32 %43, 1
  store i32 %44, i32* %13, align 4
  br label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %11, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %11, align 4
  br label %19

48:                                               ; preds = %19
  store i32 0, i32* %10, align 4
  br label %49

49:                                               ; preds = %86, %48
  %50 = load i32, i32* %10, align 4
  %51 = icmp slt i32 %50, 100
  br i1 %51, label %52, label %89

52:                                               ; preds = %49
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %10, align 4
  %55 = mul nsw i32 %54, 4
  %56 = add nsw i32 %53, %55
  store i32 %56, i32* %12, align 4
  store i32 -1515890086, i32* %13, align 4
  %57 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %6, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %13, align 4
  %61 = call i32 @boot_loader_write_mem32(%struct.hpi_adapter_obj* %57, i32 %58, i32 %59, i32 %60)
  %62 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %6, align 8
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %12, align 4
  %65 = add nsw i32 %64, 4
  %66 = call i32 @boot_loader_write_mem32(%struct.hpi_adapter_obj* %62, i32 %63, i32 %65, i32 0)
  %67 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %6, align 8
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @boot_loader_read_mem32(%struct.hpi_adapter_obj* %67, i32 %68, i32 %69)
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %14, align 4
  %72 = load i32, i32* %13, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %52
  %75 = load i32, i32* @VERBOSE, align 4
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @HPI_DEBUG_LOG(i32 %75, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %76, i32 %77, i32 %78, i32 %79)
  store i32 1, i32* %5, align 4
  br label %107

81:                                               ; preds = %52
  %82 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %6, align 8
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %12, align 4
  %85 = call i32 @boot_loader_write_mem32(%struct.hpi_adapter_obj* %82, i32 %83, i32 %84, i32 0)
  br label %86

86:                                               ; preds = %81
  %87 = load i32, i32* %10, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %10, align 4
  br label %49

89:                                               ; preds = %49
  store i32 0, i32* %10, align 4
  br label %90

90:                                               ; preds = %103, %89
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %106

94:                                               ; preds = %90
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* %10, align 4
  %97 = mul nsw i32 %96, 4
  %98 = add nsw i32 %95, %97
  store i32 %98, i32* %12, align 4
  %99 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %6, align 8
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* %12, align 4
  %102 = call i32 @boot_loader_write_mem32(%struct.hpi_adapter_obj* %99, i32 %100, i32 %101, i32 0)
  br label %103

103:                                              ; preds = %94
  %104 = load i32, i32* %10, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %10, align 4
  br label %90

106:                                              ; preds = %90
  store i32 0, i32* %5, align 4
  br label %107

107:                                              ; preds = %106, %74, %35
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local i32 @boot_loader_write_mem32(%struct.hpi_adapter_obj*, i32, i32, i32) #1

declare dso_local i32 @boot_loader_read_mem32(%struct.hpi_adapter_obj*, i32, i32) #1

declare dso_local i32 @HPI_DEBUG_LOG(i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
