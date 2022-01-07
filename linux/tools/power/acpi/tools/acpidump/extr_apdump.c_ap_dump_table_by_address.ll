; ModuleID = '/home/carl/AnghaBench/linux/tools/power/acpi/tools/acpidump/extr_apdump.c_ap_dump_table_by_address.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/acpi/tools/acpidump/extr_apdump.c_ap_dump_table_by_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_table_header = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"%s: Could not convert to a physical address\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Could not get table at 0x%8.8X%8.8X, %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ap_dump_table_by_address(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.acpi_table_header*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call i32 @acpi_ut_strtoul64(i8* %9, i64* %8)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i64 @ACPI_FAILURE(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i32, i32* @stderr, align 4
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 (i32, i8*, ...) @fprintf(i32 %15, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %16)
  store i32 -1, i32* %2, align 4
  br label %39

18:                                               ; preds = %1
  %19 = load i64, i64* %8, align 8
  store i64 %19, i64* %4, align 8
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @acpi_os_get_table_by_address(i64 %20, %struct.acpi_table_header** %5)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i64 @ACPI_FAILURE(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %18
  %26 = load i32, i32* @stderr, align 4
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @ACPI_FORMAT_UINT64(i64 %27)
  %29 = load i32, i32* %6, align 4
  %30 = call i8* @acpi_format_exception(i32 %29)
  %31 = call i32 (i32, i8*, ...) @fprintf(i32 %26, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %28, i8* %30)
  store i32 -1, i32* %2, align 4
  br label %39

32:                                               ; preds = %18
  %33 = load %struct.acpi_table_header*, %struct.acpi_table_header** %5, align 8
  %34 = load i64, i64* %4, align 8
  %35 = call i32 @ap_dump_table_buffer(%struct.acpi_table_header* %33, i32 0, i64 %34)
  store i32 %35, i32* %7, align 4
  %36 = load %struct.acpi_table_header*, %struct.acpi_table_header** %5, align 8
  %37 = call i32 @ACPI_FREE(%struct.acpi_table_header* %36)
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %32, %25, %14
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @acpi_ut_strtoul64(i8*, i64*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @acpi_os_get_table_by_address(i64, %struct.acpi_table_header**) #1

declare dso_local i32 @ACPI_FORMAT_UINT64(i64) #1

declare dso_local i8* @acpi_format_exception(i32) #1

declare dso_local i32 @ap_dump_table_buffer(%struct.acpi_table_header*, i32, i64) #1

declare dso_local i32 @ACPI_FREE(%struct.acpi_table_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
