; ModuleID = '/home/carl/AnghaBench/linux/tools/power/acpi/os_specific/service_layers/extr_oslinuxtbl.c_osl_get_customized_table.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/acpi/os_specific/service_layers/extr_oslinuxtbl.c_osl_get_customized_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_table_header = type { i32 }

@ACPI_NAMESEG_SIZE = common dso_local global i32 0, align 4
@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@REQUEST_FILE_ONLY = common dso_local global i32 0, align 4
@AE_NOT_FOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"%s/%4.4s%d\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%s/%4.4s\00", align 1
@AE_LIMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64, %struct.acpi_table_header**, i64*)* @osl_get_customized_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @osl_get_customized_table(i8* %0, i8* %1, i64 %2, %struct.acpi_table_header** %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.acpi_table_header**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.acpi_table_header** %3, %struct.acpi_table_header*** %10, align 8
  store i64* %4, i64** %11, align 8
  store i64 0, i64* %13, align 8
  %20 = load i32, i32* @ACPI_NAMESEG_SIZE, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %14, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %15, align 8
  %24 = load i32, i32* @PATH_MAX, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %16, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = load i32, i32* @REQUEST_FILE_ONLY, align 4
  %29 = call i8* @acpi_os_open_directory(i8* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %28)
  store i8* %29, i8** %12, align 8
  %30 = load i8*, i8** %12, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %5
  %33 = load i32, i32* @AE_NOT_FOUND, align 4
  %34 = call i32 @osl_get_last_status(i32 %33)
  store i32 %34, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %80

35:                                               ; preds = %5
  br label %36

36:                                               ; preds = %56, %45, %35
  %37 = load i8*, i8** %12, align 8
  %38 = call i8* @acpi_os_get_next_filename(i8* %37)
  store i8* %38, i8** %17, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %68

40:                                               ; preds = %36
  %41 = load i8*, i8** %17, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = call i32 @ACPI_COMPARE_NAMESEG(i8* %41, i8* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  br label %36

46:                                               ; preds = %40
  %47 = load i8*, i8** %17, align 8
  %48 = call i32 @osl_table_name_from_file(i8* %47, i8* %23, i64* %13)
  store i32 %48, i32* %18, align 4
  %49 = load i32, i32* %18, align 4
  %50 = call i64 @ACPI_FAILURE(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %46
  %53 = load i64, i64* %13, align 8
  %54 = load i64, i64* %9, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %52, %46
  br label %36

57:                                               ; preds = %52
  %58 = load i64, i64* %9, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load i8*, i8** %7, align 8
  %62 = load i64, i64* %9, align 8
  %63 = call i32 (i8*, i8*, i8*, i8*, ...) @sprintf(i8* %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %61, i8* %23, i64 %62)
  br label %67

64:                                               ; preds = %57
  %65 = load i8*, i8** %7, align 8
  %66 = call i32 (i8*, i8*, i8*, i8*, ...) @sprintf(i8* %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %65, i8* %23)
  br label %67

67:                                               ; preds = %64, %60
  br label %68

68:                                               ; preds = %67, %36
  %69 = load i8*, i8** %12, align 8
  %70 = call i32 @acpi_os_close_directory(i8* %69)
  %71 = load i8*, i8** %17, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %68
  %74 = load i32, i32* @AE_LIMIT, align 4
  store i32 %74, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %80

75:                                               ; preds = %68
  %76 = load i64*, i64** %11, align 8
  store i64 0, i64* %76, align 8
  %77 = load %struct.acpi_table_header**, %struct.acpi_table_header*** %10, align 8
  %78 = call i32 @osl_read_table_from_file(i8* %26, i32 0, i32* null, %struct.acpi_table_header** %77)
  store i32 %78, i32* %18, align 4
  %79 = load i32, i32* %18, align 4
  store i32 %79, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %80

80:                                               ; preds = %75, %73, %32
  %81 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %81)
  %82 = load i32, i32* %6, align 4
  ret i32 %82
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @acpi_os_open_directory(i8*, i8*, i32) #2

declare dso_local i32 @osl_get_last_status(i32) #2

declare dso_local i8* @acpi_os_get_next_filename(i8*) #2

declare dso_local i32 @ACPI_COMPARE_NAMESEG(i8*, i8*) #2

declare dso_local i32 @osl_table_name_from_file(i8*, i8*, i64*) #2

declare dso_local i64 @ACPI_FAILURE(i32) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*, ...) #2

declare dso_local i32 @acpi_os_close_directory(i8*) #2

declare dso_local i32 @osl_read_table_from_file(i8*, i32, i32*, %struct.acpi_table_header**) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
