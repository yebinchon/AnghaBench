; ModuleID = '/home/carl/AnghaBench/linux/tools/power/acpi/tools/acpidump/extr_apdump.c_ap_dump_table_from_file.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/acpi/tools/acpidump/extr_apdump.c_ap_dump_table_from_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_table_header = type { i8*, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"No valid ACPI signature was found in input file %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"Table length (0x%X) is too large for input file (0x%X) %s\0A\00", align 1
@gbl_verbose_mode = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [57 x i8] c"Input file:  %s contains table [%4.4s], 0x%X (%u) bytes\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ap_dump_table_from_file(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.acpi_table_header*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 -1, i32* %6, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = call %struct.acpi_table_header* @ap_get_table_from_file(i8* %7, i32* %5)
  store %struct.acpi_table_header* %8, %struct.acpi_table_header** %4, align 8
  %9 = load %struct.acpi_table_header*, %struct.acpi_table_header** %4, align 8
  %10 = icmp ne %struct.acpi_table_header* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %55

12:                                               ; preds = %1
  %13 = load %struct.acpi_table_header*, %struct.acpi_table_header** %4, align 8
  %14 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @acpi_ut_valid_nameseg(i8* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %12
  %19 = load i32, i32* @stderr, align 4
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 (i32, i8*, ...) @fprintf(i32 %19, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i8* %20)
  br label %22

22:                                               ; preds = %18, %12
  %23 = load %struct.acpi_table_header*, %struct.acpi_table_header** %4, align 8
  %24 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %22
  %29 = load i32, i32* @stderr, align 4
  %30 = load %struct.acpi_table_header*, %struct.acpi_table_header** %4, align 8
  %31 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load i8*, i8** %3, align 8
  %35 = call i32 (i32, i8*, ...) @fprintf(i32 %29, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %33, i8* %34)
  br label %51

36:                                               ; preds = %22
  %37 = load i64, i64* @gbl_verbose_mode, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %36
  %40 = load i32, i32* @stderr, align 4
  %41 = load i8*, i8** %3, align 8
  %42 = load %struct.acpi_table_header*, %struct.acpi_table_header** %4, align 8
  %43 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 (i32, i8*, ...) @fprintf(i32 %40, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i8* %41, i8* %44, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %39, %36
  %49 = load %struct.acpi_table_header*, %struct.acpi_table_header** %4, align 8
  %50 = call i32 @ap_dump_table_buffer(%struct.acpi_table_header* %49, i32 0, i32 0)
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %48, %28
  %52 = load %struct.acpi_table_header*, %struct.acpi_table_header** %4, align 8
  %53 = call i32 @ACPI_FREE(%struct.acpi_table_header* %52)
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %51, %11
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local %struct.acpi_table_header* @ap_get_table_from_file(i8*, i32*) #1

declare dso_local i32 @acpi_ut_valid_nameseg(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @ap_dump_table_buffer(%struct.acpi_table_header*, i32, i32) #1

declare dso_local i32 @ACPI_FREE(%struct.acpi_table_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
