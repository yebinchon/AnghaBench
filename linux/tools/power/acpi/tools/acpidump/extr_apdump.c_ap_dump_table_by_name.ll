; ModuleID = '/home/carl/AnghaBench/linux/tools/power/acpi/tools/acpidump/extr_apdump.c_ap_dump_table_by_name.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/acpi/tools/acpidump/extr_apdump.c_ap_dump_table_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_table_header = type { i32 }

@ACPI_NAMESEG_SIZE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"Invalid table signature [%s]: must be exactly 4 characters\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"FADT\00", align 1
@ACPI_SIG_FADT = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"MADT\00", align 1
@ACPI_SIG_MADT = common dso_local global i8* null, align 8
@AP_MAX_ACPI_FILES = common dso_local global i64 0, align 8
@AE_LIMIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [50 x i8] c"Could not get ACPI table with signature [%s], %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ap_dump_table_by_name(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.acpi_table_header*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %12 = load i32, i32* @ACPI_NAMESEG_SIZE, align 4
  %13 = add nsw i32 %12, 1
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %4, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %5, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @strlen(i8* %17)
  %19 = load i32, i32* @ACPI_NAMESEG_SIZE, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load i32, i32* @stderr, align 4
  %23 = load i8*, i8** %3, align 8
  %24 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %22, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i8* %23)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %77

25:                                               ; preds = %1
  %26 = load i8*, i8** %3, align 8
  %27 = call i32 @strcpy(i8* %16, i8* %26)
  %28 = call i32 @acpi_ut_strupr(i8* %16)
  %29 = call i64 @ACPI_COMPARE_NAMESEG(i8* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i8*, i8** @ACPI_SIG_FADT, align 8
  %33 = call i32 @strcpy(i8* %16, i8* %32)
  br label %41

34:                                               ; preds = %25
  %35 = call i64 @ACPI_COMPARE_NAMESEG(i8* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i8*, i8** @ACPI_SIG_MADT, align 8
  %39 = call i32 @strcpy(i8* %16, i8* %38)
  br label %40

40:                                               ; preds = %37, %34
  br label %41

41:                                               ; preds = %40, %31
  store i64 0, i64* %6, align 8
  br label %42

42:                                               ; preds = %73, %41
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* @AP_MAX_ACPI_FILES, align 8
  %45 = icmp slt i64 %43, %44
  br i1 %45, label %46, label %76

46:                                               ; preds = %42
  %47 = load i64, i64* %6, align 8
  %48 = call i32 @acpi_os_get_table_by_name(i8* %16, i64 %47, %struct.acpi_table_header** %7, i32* %8)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call i64 @ACPI_FAILURE(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %46
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @AE_LIMIT, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %77

57:                                               ; preds = %52
  %58 = load i32, i32* @stderr, align 4
  %59 = load i32, i32* %9, align 4
  %60 = call i8* @acpi_format_exception(i32 %59)
  %61 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %58, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i8* %16, i8* %60)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %77

62:                                               ; preds = %46
  %63 = load %struct.acpi_table_header*, %struct.acpi_table_header** %7, align 8
  %64 = load i64, i64* %6, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @ap_dump_table_buffer(%struct.acpi_table_header* %63, i64 %64, i32 %65)
  store i32 %66, i32* %10, align 4
  %67 = load %struct.acpi_table_header*, %struct.acpi_table_header** %7, align 8
  %68 = call i32 @ACPI_FREE(%struct.acpi_table_header* %67)
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %62
  br label %76

72:                                               ; preds = %62
  br label %73

73:                                               ; preds = %72
  %74 = load i64, i64* %6, align 8
  %75 = add nsw i64 %74, 1
  store i64 %75, i64* %6, align 8
  br label %42

76:                                               ; preds = %71, %42
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %77

77:                                               ; preds = %76, %57, %56, %21
  %78 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %78)
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @acpi_ut_strupr(i8*) #2

declare dso_local i64 @ACPI_COMPARE_NAMESEG(i8*, i8*) #2

declare dso_local i32 @acpi_os_get_table_by_name(i8*, i64, %struct.acpi_table_header**, i32*) #2

declare dso_local i64 @ACPI_FAILURE(i32) #2

declare dso_local i8* @acpi_format_exception(i32) #2

declare dso_local i32 @ap_dump_table_buffer(%struct.acpi_table_header*, i64, i32) #2

declare dso_local i32 @ACPI_FREE(%struct.acpi_table_header*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
