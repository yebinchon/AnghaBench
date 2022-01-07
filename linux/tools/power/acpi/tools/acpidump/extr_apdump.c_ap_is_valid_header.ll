; ModuleID = '/home/carl/AnghaBench/linux/tools/power/acpi/tools/acpidump/extr_apdump.c_ap_is_valid_header.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/acpi/tools/acpidump/extr_apdump.c_ap_is_valid_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_table_header = type { i32, i64 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Table signature (0x%8.8X) is invalid\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Table length (0x%8.8X) is invalid\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ap_is_valid_header(%struct.acpi_table_header* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_table_header*, align 8
  store %struct.acpi_table_header* %0, %struct.acpi_table_header** %3, align 8
  %4 = load %struct.acpi_table_header*, %struct.acpi_table_header** %3, align 8
  %5 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = call i32 @ACPI_VALIDATE_RSDP_SIG(i64 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %38, label %9

9:                                                ; preds = %1
  %10 = load %struct.acpi_table_header*, %struct.acpi_table_header** %3, align 8
  %11 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @acpi_ut_valid_nameseg(i64 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %9
  %16 = load i32, i32* @stderr, align 4
  %17 = load %struct.acpi_table_header*, %struct.acpi_table_header** %3, align 8
  %18 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i32*
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @fprintf(i32 %16, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @FALSE, align 4
  store i32 %23, i32* %2, align 4
  br label %40

24:                                               ; preds = %9
  %25 = load %struct.acpi_table_header*, %struct.acpi_table_header** %3, align 8
  %26 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = icmp ult i64 %28, 16
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = load i32, i32* @stderr, align 4
  %32 = load %struct.acpi_table_header*, %struct.acpi_table_header** %3, align 8
  %33 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @fprintf(i32 %31, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @FALSE, align 4
  store i32 %36, i32* %2, align 4
  br label %40

37:                                               ; preds = %24
  br label %38

38:                                               ; preds = %37, %1
  %39 = load i32, i32* @TRUE, align 4
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %38, %30, %15
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @ACPI_VALIDATE_RSDP_SIG(i64) #1

declare dso_local i32 @acpi_ut_valid_nameseg(i64) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
