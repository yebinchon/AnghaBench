; ModuleID = '/home/carl/AnghaBench/linux/tools/power/acpi/tools/acpidump/extr_apdump.c_ap_dump_all_tables.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/acpi/tools/acpidump/extr_apdump.c_ap_dump_all_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_table_header = type { i32 }

@AP_MAX_ACPI_FILES = common dso_local global i64 0, align 8
@AE_LIMIT = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Could not get ACPI tables, %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Could not get ACPI table at index %u, %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ap_dump_all_tables() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.acpi_table_header*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i64 0, i64* %3, align 8
  store i64 0, i64* %7, align 8
  br label %8

8:                                                ; preds = %49, %0
  %9 = load i64, i64* %7, align 8
  %10 = load i64, i64* @AP_MAX_ACPI_FILES, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %52

12:                                               ; preds = %8
  %13 = load i64, i64* %7, align 8
  %14 = call i32 @acpi_os_get_table_by_index(i64 %13, %struct.acpi_table_header** %2, i64* %3, i32* %4)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i64 @ACPI_FAILURE(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %38

18:                                               ; preds = %12
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @AE_LIMIT, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 0, i32* %1, align 4
  br label %53

23:                                               ; preds = %18
  %24 = load i64, i64* %7, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load i32, i32* @stderr, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i8* @acpi_format_exception(i32 %28)
  %30 = ptrtoint i8* %29 to i64
  %31 = call i32 (i32, i8*, i64, ...) @fprintf(i32 %27, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %30)
  store i32 -1, i32* %1, align 4
  br label %53

32:                                               ; preds = %23
  %33 = load i32, i32* @stderr, align 4
  %34 = load i64, i64* %7, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i8* @acpi_format_exception(i32 %35)
  %37 = call i32 (i32, i8*, i64, ...) @fprintf(i32 %33, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %34, i8* %36)
  br label %49

38:                                               ; preds = %12
  %39 = load %struct.acpi_table_header*, %struct.acpi_table_header** %2, align 8
  %40 = load i64, i64* %3, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @ap_dump_table_buffer(%struct.acpi_table_header* %39, i64 %40, i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load %struct.acpi_table_header*, %struct.acpi_table_header** %2, align 8
  %44 = call i32 @ACPI_FREE(%struct.acpi_table_header* %43)
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  br label %52

48:                                               ; preds = %38
  br label %49

49:                                               ; preds = %48, %32
  %50 = load i64, i64* %7, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %7, align 8
  br label %8

52:                                               ; preds = %47, %8
  store i32 -1, i32* %1, align 4
  br label %53

53:                                               ; preds = %52, %26, %22
  %54 = load i32, i32* %1, align 4
  ret i32 %54
}

declare dso_local i32 @acpi_os_get_table_by_index(i64, %struct.acpi_table_header**, i64*, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i64, ...) #1

declare dso_local i8* @acpi_format_exception(i32) #1

declare dso_local i32 @ap_dump_table_buffer(%struct.acpi_table_header*, i64, i32) #1

declare dso_local i32 @ACPI_FREE(%struct.acpi_table_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
