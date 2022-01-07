; ModuleID = '/home/carl/AnghaBench/linux/tools/power/acpi/os_specific/service_layers/extr_oslinuxtbl.c_osl_map_table.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/acpi/os_specific/service_layers/extr_oslinuxtbl.c_osl_map_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_table_header = type { i8* }

@AE_BAD_ADDRESS = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Could not map table header at 0x%8.8X%8.8X\0A\00", align 1
@AE_BAD_SIGNATURE = common dso_local global i32 0, align 4
@AE_BAD_HEADER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Could not map table at 0x%8.8X%8.8X length %8.8X\0A\00", align 1
@AE_INVALID_TABLE_LENGTH = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, %struct.acpi_table_header**)* @osl_map_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @osl_map_table(i32 %0, i8* %1, %struct.acpi_table_header** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.acpi_table_header**, align 8
  %8 = alloca %struct.acpi_table_header*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store %struct.acpi_table_header** %2, %struct.acpi_table_header*** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* @AE_BAD_ADDRESS, align 4
  store i32 %13, i32* %4, align 4
  br label %86

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = call %struct.acpi_table_header* @acpi_os_map_memory(i32 %15, i32 8)
  store %struct.acpi_table_header* %16, %struct.acpi_table_header** %8, align 8
  %17 = load %struct.acpi_table_header*, %struct.acpi_table_header** %8, align 8
  %18 = icmp ne %struct.acpi_table_header* %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* @stderr, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @ACPI_FORMAT_UINT64(i32 %21)
  %23 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %20, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @AE_BAD_ADDRESS, align 4
  %25 = call i32 @osl_get_last_status(i32 %24)
  store i32 %25, i32* %4, align 4
  br label %86

26:                                               ; preds = %14
  %27 = load i8*, i8** %6, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %57

29:                                               ; preds = %26
  %30 = load i8*, i8** %6, align 8
  %31 = call i64 @ACPI_VALIDATE_RSDP_SIG(i8* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %29
  %34 = load %struct.acpi_table_header*, %struct.acpi_table_header** %8, align 8
  %35 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i64 @ACPI_VALIDATE_RSDP_SIG(i8* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %33
  %40 = load %struct.acpi_table_header*, %struct.acpi_table_header** %8, align 8
  %41 = call i32 @acpi_os_unmap_memory(%struct.acpi_table_header* %40, i32 8)
  %42 = load i32, i32* @AE_BAD_SIGNATURE, align 4
  store i32 %42, i32* %4, align 4
  br label %86

43:                                               ; preds = %33
  br label %56

44:                                               ; preds = %29
  %45 = load i8*, i8** %6, align 8
  %46 = load %struct.acpi_table_header*, %struct.acpi_table_header** %8, align 8
  %47 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @ACPI_COMPARE_NAMESEG(i8* %45, i8* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %44
  %52 = load %struct.acpi_table_header*, %struct.acpi_table_header** %8, align 8
  %53 = call i32 @acpi_os_unmap_memory(%struct.acpi_table_header* %52, i32 8)
  %54 = load i32, i32* @AE_BAD_SIGNATURE, align 4
  store i32 %54, i32* %4, align 4
  br label %86

55:                                               ; preds = %44
  br label %56

56:                                               ; preds = %55, %43
  br label %57

57:                                               ; preds = %56, %26
  %58 = load %struct.acpi_table_header*, %struct.acpi_table_header** %8, align 8
  %59 = call i32 @ap_get_table_length(%struct.acpi_table_header* %58)
  store i32 %59, i32* %9, align 4
  %60 = load %struct.acpi_table_header*, %struct.acpi_table_header** %8, align 8
  %61 = call i32 @acpi_os_unmap_memory(%struct.acpi_table_header* %60, i32 8)
  %62 = load i32, i32* %9, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = load i32, i32* @AE_BAD_HEADER, align 4
  store i32 %65, i32* %4, align 4
  br label %86

66:                                               ; preds = %57
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* %9, align 4
  %69 = call %struct.acpi_table_header* @acpi_os_map_memory(i32 %67, i32 %68)
  store %struct.acpi_table_header* %69, %struct.acpi_table_header** %8, align 8
  %70 = load %struct.acpi_table_header*, %struct.acpi_table_header** %8, align 8
  %71 = icmp ne %struct.acpi_table_header* %70, null
  br i1 %71, label %80, label %72

72:                                               ; preds = %66
  %73 = load i32, i32* @stderr, align 4
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @ACPI_FORMAT_UINT64(i32 %74)
  %76 = load i32, i32* %9, align 4
  %77 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %73, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %75, i32 %76)
  %78 = load i32, i32* @AE_INVALID_TABLE_LENGTH, align 4
  %79 = call i32 @osl_get_last_status(i32 %78)
  store i32 %79, i32* %4, align 4
  br label %86

80:                                               ; preds = %66
  %81 = load %struct.acpi_table_header*, %struct.acpi_table_header** %8, align 8
  %82 = call i32 @ap_is_valid_checksum(%struct.acpi_table_header* %81)
  %83 = load %struct.acpi_table_header*, %struct.acpi_table_header** %8, align 8
  %84 = load %struct.acpi_table_header**, %struct.acpi_table_header*** %7, align 8
  store %struct.acpi_table_header* %83, %struct.acpi_table_header** %84, align 8
  %85 = load i32, i32* @AE_OK, align 4
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %80, %72, %64, %51, %39, %19, %12
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local %struct.acpi_table_header* @acpi_os_map_memory(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, ...) #1

declare dso_local i32 @ACPI_FORMAT_UINT64(i32) #1

declare dso_local i32 @osl_get_last_status(i32) #1

declare dso_local i64 @ACPI_VALIDATE_RSDP_SIG(i8*) #1

declare dso_local i32 @acpi_os_unmap_memory(%struct.acpi_table_header*, i32) #1

declare dso_local i32 @ACPI_COMPARE_NAMESEG(i8*, i8*) #1

declare dso_local i32 @ap_get_table_length(%struct.acpi_table_header*) #1

declare dso_local i32 @ap_is_valid_checksum(%struct.acpi_table_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
