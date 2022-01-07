; ModuleID = '/home/carl/AnghaBench/linux/tools/power/acpi/os_specific/service_layers/extr_oslinuxtbl.c_osl_read_table_from_file.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/acpi/os_specific/service_layers/extr_oslinuxtbl.c_osl_read_table_from_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_table_header = type { i8* }

@AE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Could not open table file: %s\0A\00", align 1
@AE_NOT_FOUND = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Could not read table header: %s\0A\00", align 1
@AE_BAD_HEADER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"Incorrect RSDP signature: found %8.8s\0A\00", align 1
@AE_BAD_SIGNATURE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [51 x i8] c"Incorrect signature: Expecting %4.4s, found %4.4s\0A\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"%4.4s: Could not allocate buffer for table of length %X\0A\00", align 1
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"%4.4s: Could not read table content\0A\00", align 1
@AE_INVALID_TABLE_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, %struct.acpi_table_header**)* @osl_read_table_from_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @osl_read_table_from_file(i8* %0, i32 %1, i8* %2, %struct.acpi_table_header** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.acpi_table_header**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.acpi_table_header, align 8
  %12 = alloca %struct.acpi_table_header*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store %struct.acpi_table_header** %3, %struct.acpi_table_header*** %9, align 8
  store %struct.acpi_table_header* null, %struct.acpi_table_header** %12, align 8
  %16 = load i32, i32* @AE_OK, align 4
  store i32 %16, i32* %15, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = call i32* @fopen(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %18, i32** %10, align 8
  %19 = load i32*, i32** %10, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %4
  %22 = load i32, i32* @stderr, align 4
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %22, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  %25 = load i32, i32* @AE_NOT_FOUND, align 4
  %26 = call i32 @osl_get_last_status(i32 %25)
  store i32 %26, i32* %5, align 4
  br label %121

27:                                               ; preds = %4
  %28 = load i32*, i32** %10, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @SEEK_SET, align 4
  %31 = call i32 @fseek(i32* %28, i32 %29, i32 %30)
  %32 = load i32*, i32** %10, align 8
  %33 = call i32 @fread(%struct.acpi_table_header* %11, i32 1, i32 8, i32* %32)
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* %14, align 4
  %35 = sext i32 %34 to i64
  %36 = icmp ne i64 %35, 8
  br i1 %36, label %37, label %42

37:                                               ; preds = %27
  %38 = load i32, i32* @stderr, align 4
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %38, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %39)
  %41 = load i32, i32* @AE_BAD_HEADER, align 4
  store i32 %41, i32* %15, align 4
  br label %115

42:                                               ; preds = %27
  %43 = load i8*, i8** %8, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %76

45:                                               ; preds = %42
  %46 = load i8*, i8** %8, align 8
  %47 = call i64 @ACPI_VALIDATE_RSDP_SIG(i8* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %11, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i64 @ACPI_VALIDATE_RSDP_SIG(i8* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* @stderr, align 4
  %56 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %11, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %55, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8* %57)
  %59 = load i32, i32* @AE_BAD_SIGNATURE, align 4
  store i32 %59, i32* %15, align 4
  br label %115

60:                                               ; preds = %49
  br label %75

61:                                               ; preds = %45
  %62 = load i8*, i8** %8, align 8
  %63 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %11, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @ACPI_COMPARE_NAMESEG(i8* %62, i8* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %74, label %67

67:                                               ; preds = %61
  %68 = load i32, i32* @stderr, align 4
  %69 = load i8*, i8** %8, align 8
  %70 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %11, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %68, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i8* %69, i8* %71)
  %73 = load i32, i32* @AE_BAD_SIGNATURE, align 4
  store i32 %73, i32* %15, align 4
  br label %115

74:                                               ; preds = %61
  br label %75

75:                                               ; preds = %74, %60
  br label %76

76:                                               ; preds = %75, %42
  %77 = call i32 @ap_get_table_length(%struct.acpi_table_header* %11)
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* %13, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load i32, i32* @AE_BAD_HEADER, align 4
  store i32 %81, i32* %15, align 4
  br label %115

82:                                               ; preds = %76
  %83 = load i32, i32* %13, align 4
  %84 = call %struct.acpi_table_header* @calloc(i32 1, i32 %83)
  store %struct.acpi_table_header* %84, %struct.acpi_table_header** %12, align 8
  %85 = load %struct.acpi_table_header*, %struct.acpi_table_header** %12, align 8
  %86 = icmp ne %struct.acpi_table_header* %85, null
  br i1 %86, label %94, label %87

87:                                               ; preds = %82
  %88 = load i32, i32* @stderr, align 4
  %89 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %11, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = load i32, i32* %13, align 4
  %92 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %88, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0), i8* %90, i32 %91)
  %93 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %93, i32* %15, align 4
  br label %115

94:                                               ; preds = %82
  %95 = load i32*, i32** %10, align 8
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* @SEEK_SET, align 4
  %98 = call i32 @fseek(i32* %95, i32 %96, i32 %97)
  %99 = load %struct.acpi_table_header*, %struct.acpi_table_header** %12, align 8
  %100 = load i32, i32* %13, align 4
  %101 = load i32*, i32** %10, align 8
  %102 = call i32 @fread(%struct.acpi_table_header* %99, i32 1, i32 %100, i32* %101)
  store i32 %102, i32* %14, align 4
  %103 = load i32, i32* %14, align 4
  %104 = load i32, i32* %13, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %94
  %107 = load i32, i32* @stderr, align 4
  %108 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %11, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %107, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i8* %109)
  %111 = load i32, i32* @AE_INVALID_TABLE_LENGTH, align 4
  store i32 %111, i32* %15, align 4
  br label %115

112:                                              ; preds = %94
  %113 = load %struct.acpi_table_header*, %struct.acpi_table_header** %12, align 8
  %114 = call i32 @ap_is_valid_checksum(%struct.acpi_table_header* %113)
  br label %115

115:                                              ; preds = %112, %106, %87, %80, %67, %54, %37
  %116 = load i32*, i32** %10, align 8
  %117 = call i32 @fclose(i32* %116)
  %118 = load %struct.acpi_table_header*, %struct.acpi_table_header** %12, align 8
  %119 = load %struct.acpi_table_header**, %struct.acpi_table_header*** %9, align 8
  store %struct.acpi_table_header* %118, %struct.acpi_table_header** %119, align 8
  %120 = load i32, i32* %15, align 4
  store i32 %120, i32* %5, align 4
  br label %121

121:                                              ; preds = %115, %21
  %122 = load i32, i32* %5, align 4
  ret i32 %122
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i32 @osl_get_last_status(i32) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i32 @fread(%struct.acpi_table_header*, i32, i32, i32*) #1

declare dso_local i64 @ACPI_VALIDATE_RSDP_SIG(i8*) #1

declare dso_local i32 @ACPI_COMPARE_NAMESEG(i8*, i8*) #1

declare dso_local i32 @ap_get_table_length(%struct.acpi_table_header*) #1

declare dso_local %struct.acpi_table_header* @calloc(i32, i32) #1

declare dso_local i32 @ap_is_valid_checksum(%struct.acpi_table_header*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
