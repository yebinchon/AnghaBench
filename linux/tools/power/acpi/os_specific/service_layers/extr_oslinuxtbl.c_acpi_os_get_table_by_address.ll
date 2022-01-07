; ModuleID = '/home/carl/AnghaBench/linux/tools/power/acpi/os_specific/service_layers/extr_oslinuxtbl.c_acpi_os_get_table_by_address.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/acpi/os_specific/service_layers/extr_oslinuxtbl.c_acpi_os_get_table_by_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_table_header = type { i32 }

@AE_OK = common dso_local global i32 0, align 4
@AE_BAD_HEADER = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_os_get_table_by_address(i32 %0, %struct.acpi_table_header** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_table_header**, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.acpi_table_header*, align 8
  %8 = alloca %struct.acpi_table_header*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.acpi_table_header** %1, %struct.acpi_table_header*** %5, align 8
  store %struct.acpi_table_header* null, %struct.acpi_table_header** %8, align 8
  %10 = load i32, i32* @AE_OK, align 4
  store i32 %10, i32* %9, align 4
  %11 = call i32 (...) @osl_table_initialize()
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = call i64 @ACPI_FAILURE(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %9, align 4
  store i32 %16, i32* %3, align 4
  br label %50

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @osl_map_table(i32 %18, i32* null, %struct.acpi_table_header** %7)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call i64 @ACPI_FAILURE(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %3, align 4
  br label %50

25:                                               ; preds = %17
  %26 = load %struct.acpi_table_header*, %struct.acpi_table_header** %7, align 8
  %27 = call i64 @ap_get_table_length(%struct.acpi_table_header* %26)
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* %6, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @AE_BAD_HEADER, align 4
  store i32 %31, i32* %9, align 4
  br label %44

32:                                               ; preds = %25
  %33 = load i64, i64* %6, align 8
  %34 = call %struct.acpi_table_header* @calloc(i32 1, i64 %33)
  store %struct.acpi_table_header* %34, %struct.acpi_table_header** %8, align 8
  %35 = load %struct.acpi_table_header*, %struct.acpi_table_header** %8, align 8
  %36 = icmp ne %struct.acpi_table_header* %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %38, i32* %9, align 4
  br label %44

39:                                               ; preds = %32
  %40 = load %struct.acpi_table_header*, %struct.acpi_table_header** %8, align 8
  %41 = load %struct.acpi_table_header*, %struct.acpi_table_header** %7, align 8
  %42 = load i64, i64* %6, align 8
  %43 = call i32 @memcpy(%struct.acpi_table_header* %40, %struct.acpi_table_header* %41, i64 %42)
  br label %44

44:                                               ; preds = %39, %37, %30
  %45 = load %struct.acpi_table_header*, %struct.acpi_table_header** %7, align 8
  %46 = call i32 @osl_unmap_table(%struct.acpi_table_header* %45)
  %47 = load %struct.acpi_table_header*, %struct.acpi_table_header** %8, align 8
  %48 = load %struct.acpi_table_header**, %struct.acpi_table_header*** %5, align 8
  store %struct.acpi_table_header* %47, %struct.acpi_table_header** %48, align 8
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %44, %23, %15
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @osl_table_initialize(...) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @osl_map_table(i32, i32*, %struct.acpi_table_header**) #1

declare dso_local i64 @ap_get_table_length(%struct.acpi_table_header*) #1

declare dso_local %struct.acpi_table_header* @calloc(i32, i64) #1

declare dso_local i32 @memcpy(%struct.acpi_table_header*, %struct.acpi_table_header*, i64) #1

declare dso_local i32 @osl_unmap_table(%struct.acpi_table_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
