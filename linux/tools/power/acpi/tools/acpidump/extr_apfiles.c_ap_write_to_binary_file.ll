; ModuleID = '/home/carl/AnghaBench/linux/tools/power/acpi/tools/acpidump/extr_apfiles.c_ap_write_to_binary_file.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/acpi/tools/acpidump/extr_apfiles.c_ap_write_to_binary_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_table_header = type { i8*, i32 }

@ACPI_NAMESEG_SIZE = common dso_local global i32 0, align 4
@ACPI_RSDP_NAME = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@FILE_SUFFIX_BINARY_TABLE = common dso_local global i8* null, align 8
@gbl_verbose_mode = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"Writing [%4.4s] to binary file: %s 0x%X (%u) bytes\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Could not open output file: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Error writing binary output file: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ap_write_to_binary_file(%struct.acpi_table_header* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_table_header*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca [16 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.acpi_table_header* %0, %struct.acpi_table_header** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load i32, i32* @ACPI_NAMESEG_SIZE, align 4
  %14 = add nsw i32 %13, 16
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %6, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  %18 = load %struct.acpi_table_header*, %struct.acpi_table_header** %4, align 8
  %19 = call i32 @ap_get_table_length(%struct.acpi_table_header* %18)
  store i32 %19, i32* %11, align 4
  %20 = load %struct.acpi_table_header*, %struct.acpi_table_header** %4, align 8
  %21 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i64 @ACPI_VALIDATE_RSDP_SIG(i8* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load i8*, i8** @ACPI_RSDP_NAME, align 8
  %27 = call i32 @ACPI_COPY_NAMESEG(i8* %17, i8* %26)
  br label %33

28:                                               ; preds = %2
  %29 = load %struct.acpi_table_header*, %struct.acpi_table_header** %4, align 8
  %30 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @ACPI_COPY_NAMESEG(i8* %17, i8* %31)
  br label %33

33:                                               ; preds = %28, %25
  %34 = getelementptr inbounds i8, i8* %17, i64 0
  %35 = load i8, i8* %34, align 16
  %36 = sext i8 %35 to i32
  %37 = call i64 @tolower(i32 %36)
  %38 = trunc i64 %37 to i8
  %39 = getelementptr inbounds i8, i8* %17, i64 0
  store i8 %38, i8* %39, align 16
  %40 = getelementptr inbounds i8, i8* %17, i64 1
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = call i64 @tolower(i32 %42)
  %44 = trunc i64 %43 to i8
  %45 = getelementptr inbounds i8, i8* %17, i64 1
  store i8 %44, i8* %45, align 1
  %46 = getelementptr inbounds i8, i8* %17, i64 2
  %47 = load i8, i8* %46, align 2
  %48 = sext i8 %47 to i32
  %49 = call i64 @tolower(i32 %48)
  %50 = trunc i64 %49 to i8
  %51 = getelementptr inbounds i8, i8* %17, i64 2
  store i8 %50, i8* %51, align 2
  %52 = getelementptr inbounds i8, i8* %17, i64 3
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = call i64 @tolower(i32 %54)
  %56 = trunc i64 %55 to i8
  %57 = getelementptr inbounds i8, i8* %17, i64 3
  store i8 %56, i8* %57, align 1
  %58 = load i32, i32* @ACPI_NAMESEG_SIZE, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %17, i64 %59
  store i8 0, i8* %60, align 1
  %61 = load i32, i32* %5, align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %33
  %64 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @snprintf(i8* %64, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %65)
  %67 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %68 = call i32 @strcat(i8* %17, i8* %67)
  br label %69

69:                                               ; preds = %63, %33
  %70 = load i8*, i8** @FILE_SUFFIX_BINARY_TABLE, align 8
  %71 = call i32 @strcat(i8* %17, i8* %70)
  %72 = load i64, i64* @gbl_verbose_mode, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %86

74:                                               ; preds = %69
  %75 = load i32, i32* @stderr, align 4
  %76 = load %struct.acpi_table_header*, %struct.acpi_table_header** %4, align 8
  %77 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = load %struct.acpi_table_header*, %struct.acpi_table_header** %4, align 8
  %80 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.acpi_table_header*, %struct.acpi_table_header** %4, align 8
  %83 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %75, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i8* %78, i8* %17, i32 %81, i32 %84)
  br label %86

86:                                               ; preds = %74, %69
  %87 = call i32 @fopen(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %86
  %91 = load i32, i32* @stderr, align 4
  %92 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %91, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8* %17)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %109

93:                                               ; preds = %86
  %94 = load %struct.acpi_table_header*, %struct.acpi_table_header** %4, align 8
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @fwrite(%struct.acpi_table_header* %94, i32 1, i32 %95, i32 %96)
  store i32 %97, i32* %10, align 4
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* %11, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %93
  %102 = load i32, i32* @stderr, align 4
  %103 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %102, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i8* %17)
  %104 = load i32, i32* %9, align 4
  %105 = call i32 @fclose(i32 %104)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %109

106:                                              ; preds = %93
  %107 = load i32, i32* %9, align 4
  %108 = call i32 @fclose(i32 %107)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %109

109:                                              ; preds = %106, %101, %90
  %110 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %110)
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ap_get_table_length(%struct.acpi_table_header*) #2

declare dso_local i64 @ACPI_VALIDATE_RSDP_SIG(i8*) #2

declare dso_local i32 @ACPI_COPY_NAMESEG(i8*, i8*) #2

declare dso_local i64 @tolower(i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @strcat(i8*, i8*) #2

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #2

declare dso_local i32 @fopen(i8*, i8*) #2

declare dso_local i32 @fwrite(%struct.acpi_table_header*, i32, i32, i32) #2

declare dso_local i32 @fclose(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
