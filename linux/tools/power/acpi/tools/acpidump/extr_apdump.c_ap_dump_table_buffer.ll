; ModuleID = '/home/carl/AnghaBench/linux/tools/power/acpi/tools/acpidump/extr_apdump.c_ap_dump_table_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/acpi/tools/acpidump/extr_apdump.c_ap_dump_table_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_table_header = type { i8* }

@gbl_summary_mode = common dso_local global i64 0, align 8
@gbl_binary_mode = common dso_local global i64 0, align 8
@gbl_output_file = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"%4.4s @ 0x%8.8X%8.8X\0A\00", align 1
@u8 = common dso_local global i32 0, align 4
@DB_BYTE_DISPLAY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_table_header*, i32, i32)* @ap_dump_table_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ap_dump_table_buffer(%struct.acpi_table_header* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_table_header*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.acpi_table_header* %0, %struct.acpi_table_header** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.acpi_table_header*, %struct.acpi_table_header** %5, align 8
  %10 = call i32 @ap_get_table_length(%struct.acpi_table_header* %9)
  store i32 %10, i32* %8, align 4
  %11 = load i64, i64* @gbl_summary_mode, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.acpi_table_header*, %struct.acpi_table_header** %5, align 8
  %16 = call i32 @acpi_tb_print_table_header(i32 %14, %struct.acpi_table_header* %15)
  store i32 0, i32* %4, align 4
  br label %41

17:                                               ; preds = %3
  %18 = load i64, i64* @gbl_binary_mode, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load %struct.acpi_table_header*, %struct.acpi_table_header** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @ap_write_to_binary_file(%struct.acpi_table_header* %21, i32 %22)
  store i32 %23, i32* %4, align 4
  br label %41

24:                                               ; preds = %17
  %25 = load i32, i32* @gbl_output_file, align 4
  %26 = load %struct.acpi_table_header*, %struct.acpi_table_header** %5, align 8
  %27 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @ACPI_FORMAT_UINT64(i32 %29)
  %31 = call i32 (i32, i8*, ...) @fprintf(i32 %25, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %28, i32 %30)
  %32 = load i32, i32* @gbl_output_file, align 4
  %33 = load i32, i32* @u8, align 4
  %34 = load %struct.acpi_table_header*, %struct.acpi_table_header** %5, align 8
  %35 = call i32 @ACPI_CAST_PTR(i32 %33, %struct.acpi_table_header* %34)
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @DB_BYTE_DISPLAY, align 4
  %38 = call i32 @acpi_ut_dump_buffer_to_file(i32 %32, i32 %35, i32 %36, i32 %37, i32 0)
  %39 = load i32, i32* @gbl_output_file, align 4
  %40 = call i32 (i32, i8*, ...) @fprintf(i32 %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %24, %20, %13
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @ap_get_table_length(%struct.acpi_table_header*) #1

declare dso_local i32 @acpi_tb_print_table_header(i32, %struct.acpi_table_header*) #1

declare dso_local i32 @ap_write_to_binary_file(%struct.acpi_table_header*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @ACPI_FORMAT_UINT64(i32) #1

declare dso_local i32 @acpi_ut_dump_buffer_to_file(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ACPI_CAST_PTR(i32, %struct.acpi_table_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
