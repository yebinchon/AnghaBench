; ModuleID = '/home/carl/AnghaBench/linux/tools/power/acpi/tools/acpidump/extr_apfiles.c_ap_get_table_from_file.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/acpi/tools/acpidump/extr_apfiles.c_ap_get_table_from_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_table_header = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Could not open input file: %s\0A\00", align 1
@ACPI_UINT32_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Could not get input file size: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"Could not allocate file buffer of size: %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Could not read input file: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.acpi_table_header* @ap_get_table_from_file(i8* %0, i32* %1) #0 {
  %3 = alloca %struct.acpi_table_header*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.acpi_table_header*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.acpi_table_header* null, %struct.acpi_table_header** %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @fopen(i8* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @stderr, align 4
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 (i32, i8*, ...) @fprintf(i32 %15, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %16)
  store %struct.acpi_table_header* null, %struct.acpi_table_header** %3, align 8
  br label %58

18:                                               ; preds = %2
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @cm_get_file_size(i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @ACPI_UINT32_MAX, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load i32, i32* @stderr, align 4
  %26 = load i8*, i8** %4, align 8
  %27 = call i32 (i32, i8*, ...) @fprintf(i32 %25, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %26)
  br label %54

28:                                               ; preds = %18
  %29 = load i32, i32* %8, align 4
  %30 = call %struct.acpi_table_header* @ACPI_ALLOCATE_ZEROED(i32 %29)
  store %struct.acpi_table_header* %30, %struct.acpi_table_header** %6, align 8
  %31 = load %struct.acpi_table_header*, %struct.acpi_table_header** %6, align 8
  %32 = icmp ne %struct.acpi_table_header* %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @stderr, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 (i32, i8*, ...) @fprintf(i32 %34, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %35)
  br label %54

37:                                               ; preds = %28
  %38 = load %struct.acpi_table_header*, %struct.acpi_table_header** %6, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @fread(%struct.acpi_table_header* %38, i32 1, i32 %39, i32 %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %37
  %46 = load i32, i32* @stderr, align 4
  %47 = load i8*, i8** %4, align 8
  %48 = call i32 (i32, i8*, ...) @fprintf(i32 %46, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* %47)
  %49 = load %struct.acpi_table_header*, %struct.acpi_table_header** %6, align 8
  %50 = call i32 @ACPI_FREE(%struct.acpi_table_header* %49)
  store %struct.acpi_table_header* null, %struct.acpi_table_header** %6, align 8
  br label %54

51:                                               ; preds = %37
  %52 = load i32, i32* %8, align 4
  %53 = load i32*, i32** %5, align 8
  store i32 %52, i32* %53, align 4
  br label %54

54:                                               ; preds = %51, %45, %33, %24
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @fclose(i32 %55)
  %57 = load %struct.acpi_table_header*, %struct.acpi_table_header** %6, align 8
  store %struct.acpi_table_header* %57, %struct.acpi_table_header** %3, align 8
  br label %58

58:                                               ; preds = %54, %14
  %59 = load %struct.acpi_table_header*, %struct.acpi_table_header** %3, align 8
  ret %struct.acpi_table_header* %59
}

declare dso_local i32 @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @cm_get_file_size(i32) #1

declare dso_local %struct.acpi_table_header* @ACPI_ALLOCATE_ZEROED(i32) #1

declare dso_local i32 @fread(%struct.acpi_table_header*, i32, i32, i32) #1

declare dso_local i32 @ACPI_FREE(%struct.acpi_table_header*) #1

declare dso_local i32 @fclose(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
