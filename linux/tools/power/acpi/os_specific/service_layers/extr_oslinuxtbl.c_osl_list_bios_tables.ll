; ModuleID = '/home/carl/AnghaBench/linux/tools/power/acpi/os_specific/service_layers/extr_oslinuxtbl.c_osl_list_bios_tables.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/acpi/os_specific/service_layers/extr_oslinuxtbl.c_osl_list_bios_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.acpi_table_header = type { i32 }

@AE_OK = common dso_local global i32 0, align 4
@gbl_xsdt = common dso_local global %struct.TYPE_6__* null, align 8
@gbl_rsdt = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @osl_list_bios_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @osl_list_bios_tables() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.acpi_table_header*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.acpi_table_header* null, %struct.acpi_table_header** %2, align 8
  store i64 0, i64* %6, align 8
  %9 = load i32, i32* @AE_OK, align 4
  store i32 %9, i32* %7, align 4
  %10 = call i64 (...) @osl_can_use_xsdt()
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %0
  store i32 4, i32* %5, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** @gbl_xsdt, align 8
  %14 = call i32* @ACPI_CAST8(%struct.TYPE_6__* %13)
  %15 = getelementptr inbounds i32, i32* %14, i64 4
  store i32* %15, i32** %3, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** @gbl_xsdt, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = sub i64 %20, 4
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = udiv i64 %21, %23
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %4, align 4
  br label %40

26:                                               ; preds = %0
  store i32 4, i32* %5, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** @gbl_rsdt, align 8
  %28 = call i32* @ACPI_CAST8(%struct.TYPE_6__* %27)
  %29 = getelementptr inbounds i32, i32* %28, i64 4
  store i32* %29, i32** %3, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** @gbl_rsdt, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = sub i64 %34, 4
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = udiv i64 %35, %37
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %26, %12
  store i32 0, i32* %8, align 4
  br label %41

41:                                               ; preds = %75, %40
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %82

45:                                               ; preds = %41
  %46 = call i64 (...) @osl_can_use_xsdt()
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i32*, i32** %3, align 8
  %50 = call i64* @ACPI_CAST64(i32* %49)
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %6, align 8
  br label %56

52:                                               ; preds = %45
  %53 = load i32*, i32** %3, align 8
  %54 = call i64* @ACPI_CAST32(i32* %53)
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %6, align 8
  br label %56

56:                                               ; preds = %52, %48
  %57 = load i64, i64* %6, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  br label %75

60:                                               ; preds = %56
  %61 = load i64, i64* %6, align 8
  %62 = call i32 @osl_map_table(i64 %61, i32* null, %struct.acpi_table_header** %2)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i64 @ACPI_FAILURE(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = load i32, i32* %7, align 4
  store i32 %67, i32* %1, align 4
  br label %84

68:                                               ; preds = %60
  %69 = load %struct.acpi_table_header*, %struct.acpi_table_header** %2, align 8
  %70 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @osl_add_table_to_list(i32 %71, i32 0)
  %73 = load %struct.acpi_table_header*, %struct.acpi_table_header** %2, align 8
  %74 = call i32 @osl_unmap_table(%struct.acpi_table_header* %73)
  br label %75

75:                                               ; preds = %68, %59
  %76 = load i32, i32* %8, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %5, align 4
  %79 = load i32*, i32** %3, align 8
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  store i32* %81, i32** %3, align 8
  br label %41

82:                                               ; preds = %41
  %83 = load i32, i32* @AE_OK, align 4
  store i32 %83, i32* %1, align 4
  br label %84

84:                                               ; preds = %82, %66
  %85 = load i32, i32* %1, align 4
  ret i32 %85
}

declare dso_local i64 @osl_can_use_xsdt(...) #1

declare dso_local i32* @ACPI_CAST8(%struct.TYPE_6__*) #1

declare dso_local i64* @ACPI_CAST64(i32*) #1

declare dso_local i64* @ACPI_CAST32(i32*) #1

declare dso_local i32 @osl_map_table(i64, i32*, %struct.acpi_table_header**) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @osl_add_table_to_list(i32, i32) #1

declare dso_local i32 @osl_unmap_table(%struct.acpi_table_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
