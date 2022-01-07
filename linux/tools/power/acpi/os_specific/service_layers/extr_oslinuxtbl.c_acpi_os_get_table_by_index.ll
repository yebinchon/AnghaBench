; ModuleID = '/home/carl/AnghaBench/linux/tools/power/acpi/os_specific/service_layers/extr_oslinuxtbl.c_acpi_os_get_table_by_index.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/acpi/os_specific/service_layers/extr_oslinuxtbl.c_acpi_os_get_table_by_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.osl_table_info = type { i64, i32, %struct.osl_table_info* }
%struct.acpi_table_header = type { i32 }

@gbl_table_count = common dso_local global i64 0, align 8
@AE_LIMIT = common dso_local global i32 0, align 4
@gbl_table_list_head = common dso_local global %struct.osl_table_info* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_os_get_table_by_index(i64 %0, %struct.acpi_table_header** %1, i64* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.acpi_table_header**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.osl_table_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store %struct.acpi_table_header** %1, %struct.acpi_table_header*** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = call i32 (...) @osl_table_initialize()
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %11, align 4
  %15 = call i64 @ACPI_FAILURE(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* %11, align 4
  store i32 %18, i32* %5, align 4
  br label %58

19:                                               ; preds = %4
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @gbl_table_count, align 8
  %22 = icmp sge i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* @AE_LIMIT, align 4
  store i32 %24, i32* %5, align 4
  br label %58

25:                                               ; preds = %19
  %26 = load %struct.osl_table_info*, %struct.osl_table_info** @gbl_table_list_head, align 8
  store %struct.osl_table_info* %26, %struct.osl_table_info** %10, align 8
  store i64 0, i64* %12, align 8
  br label %27

27:                                               ; preds = %35, %25
  %28 = load i64, i64* %12, align 8
  %29 = load i64, i64* %6, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = load %struct.osl_table_info*, %struct.osl_table_info** %10, align 8
  %33 = getelementptr inbounds %struct.osl_table_info, %struct.osl_table_info* %32, i32 0, i32 2
  %34 = load %struct.osl_table_info*, %struct.osl_table_info** %33, align 8
  store %struct.osl_table_info* %34, %struct.osl_table_info** %10, align 8
  br label %35

35:                                               ; preds = %31
  %36 = load i64, i64* %12, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %12, align 8
  br label %27

38:                                               ; preds = %27
  %39 = load %struct.osl_table_info*, %struct.osl_table_info** %10, align 8
  %40 = getelementptr inbounds %struct.osl_table_info, %struct.osl_table_info* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.osl_table_info*, %struct.osl_table_info** %10, align 8
  %43 = getelementptr inbounds %struct.osl_table_info, %struct.osl_table_info* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.acpi_table_header**, %struct.acpi_table_header*** %7, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = call i32 @acpi_os_get_table_by_name(i32 %41, i64 %44, %struct.acpi_table_header** %45, i32* %46)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = call i64 @ACPI_SUCCESS(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %38
  %52 = load %struct.osl_table_info*, %struct.osl_table_info** %10, align 8
  %53 = getelementptr inbounds %struct.osl_table_info, %struct.osl_table_info* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64*, i64** %8, align 8
  store i64 %54, i64* %55, align 8
  br label %56

56:                                               ; preds = %51, %38
  %57 = load i32, i32* %11, align 4
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %56, %23, %17
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32 @osl_table_initialize(...) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_os_get_table_by_name(i32, i64, %struct.acpi_table_header**, i32*) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
