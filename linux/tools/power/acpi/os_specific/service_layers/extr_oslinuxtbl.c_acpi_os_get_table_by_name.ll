; ModuleID = '/home/carl/AnghaBench/linux/tools/power/acpi/os_specific/service_layers/extr_oslinuxtbl.c_acpi_os_get_table_by_name.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/acpi/os_specific/service_layers/extr_oslinuxtbl.c_acpi_os_get_table_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_table_header = type { i32 }

@gbl_dump_customized_tables = common dso_local global i32 0, align 4
@STATIC_TABLE_DIR = common dso_local global i32 0, align 4
@AE_LIMIT = common dso_local global i64 0, align 8
@gbl_dump_dynamic_tables = common dso_local global i64 0, align 8
@DYNAMIC_TABLE_DIR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @acpi_os_get_table_by_name(i8* %0, i32 %1, %struct.acpi_table_header** %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.acpi_table_header**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.acpi_table_header** %2, %struct.acpi_table_header*** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = call i64 (...) @osl_table_initialize()
  store i64 %11, i64* %10, align 8
  %12 = load i64, i64* %10, align 8
  %13 = call i64 @ACPI_FAILURE(i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = load i64, i64* %10, align 8
  store i64 %16, i64* %5, align 8
  br label %54

17:                                               ; preds = %4
  %18 = load i32, i32* @gbl_dump_customized_tables, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %17
  %21 = load i8*, i8** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.acpi_table_header**, %struct.acpi_table_header*** %8, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = call i64 @osl_get_bios_table(i8* %21, i32 %22, %struct.acpi_table_header** %23, i32* %24)
  store i64 %25, i64* %10, align 8
  br label %33

26:                                               ; preds = %17
  %27 = load i32, i32* @STATIC_TABLE_DIR, align 4
  %28 = load i8*, i8** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.acpi_table_header**, %struct.acpi_table_header*** %8, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = call i64 @osl_get_customized_table(i32 %27, i8* %28, i32 %29, %struct.acpi_table_header** %30, i32* %31)
  store i64 %32, i64* %10, align 8
  br label %33

33:                                               ; preds = %26, %20
  %34 = load i64, i64* %10, align 8
  %35 = call i64 @ACPI_FAILURE(i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %33
  %38 = load i64, i64* %10, align 8
  %39 = load i64, i64* @AE_LIMIT, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %37
  %42 = load i64, i64* @gbl_dump_dynamic_tables, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %41
  %45 = load i32, i32* @DYNAMIC_TABLE_DIR, align 4
  %46 = load i8*, i8** %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.acpi_table_header**, %struct.acpi_table_header*** %8, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = call i64 @osl_get_customized_table(i32 %45, i8* %46, i32 %47, %struct.acpi_table_header** %48, i32* %49)
  store i64 %50, i64* %10, align 8
  br label %51

51:                                               ; preds = %44, %41
  br label %52

52:                                               ; preds = %51, %37, %33
  %53 = load i64, i64* %10, align 8
  store i64 %53, i64* %5, align 8
  br label %54

54:                                               ; preds = %52, %15
  %55 = load i64, i64* %5, align 8
  ret i64 %55
}

declare dso_local i64 @osl_table_initialize(...) #1

declare dso_local i64 @ACPI_FAILURE(i64) #1

declare dso_local i64 @osl_get_bios_table(i8*, i32, %struct.acpi_table_header**, i32*) #1

declare dso_local i64 @osl_get_customized_table(i32, i8*, i32, %struct.acpi_table_header**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
