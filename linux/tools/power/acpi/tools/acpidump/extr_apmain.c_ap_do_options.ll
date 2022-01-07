; ModuleID = '/home/carl/AnghaBench/linux/tools/power/acpi/tools/acpidump/extr_apmain.c_ap_do_options.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/acpi/tools/acpidump/extr_apmain.c_ap_do_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AP_SUPPORTED_OPTIONS = common dso_local global i32 0, align 4
@ACPI_OPT_END = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@gbl_binary_mode = common dso_local global i8* null, align 8
@acpi_gbl_optarg = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"on\00", align 1
@gbl_dump_customized_tables = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@FALSE = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"%s: Cannot handle this switch, please use on|off\0A\00", align 1
@gbl_rsdp_base = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"%s: Could not convert to a physical address\0A\00", align 1
@gbl_summary_mode = common dso_local global i8* null, align 8
@acpi_gbl_do_not_use_xsdt = common dso_local global i8* null, align 8
@gbl_do_not_dump_xsdt = common dso_local global i8* null, align 8
@AP_UTILITY_NAME = common dso_local global i32 0, align 4
@ACPI_COMMON_BUILD_TIME = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [22 x i8] c"Unknown option: -v%s\0A\00", align 1
@gbl_verbose_mode = common dso_local global i8* null, align 8
@AP_DUMP_TABLE_BY_ADDRESS = common dso_local global i32 0, align 4
@AP_DUMP_TABLE_BY_FILE = common dso_local global i32 0, align 4
@AP_DUMP_TABLE_BY_NAME = common dso_local global i32 0, align 4
@current_action = common dso_local global i64 0, align 8
@AP_DUMP_ALL_TABLES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @ap_do_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ap_do_options(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  br label %8

8:                                                ; preds = %115, %86, %65, %56, %55, %44, %36, %17, %2
  %9 = load i32, i32* %4, align 4
  %10 = load i8**, i8*** %5, align 8
  %11 = load i32, i32* @AP_SUPPORTED_OPTIONS, align 4
  %12 = call i32 @acpi_getopt(i32 %9, i8** %10, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* @ACPI_OPT_END, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %116

15:                                               ; preds = %8
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %113 [
    i32 98, label %17
    i32 99, label %19
    i32 104, label %37
    i32 63, label %37
    i32 111, label %39
    i32 114, label %45
    i32 115, label %56
    i32 120, label %58
    i32 118, label %66
    i32 122, label %86
    i32 97, label %92
    i32 102, label %99
    i32 110, label %106
  ]

17:                                               ; preds = %15
  %18 = load i8*, i8** @TRUE, align 8
  store i8* %18, i8** @gbl_binary_mode, align 8
  br label %8

19:                                               ; preds = %15
  %20 = load i8*, i8** @acpi_gbl_optarg, align 8
  %21 = call i32 @strcmp(i8* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = load i8*, i8** @TRUE, align 8
  store i8* %24, i8** @gbl_dump_customized_tables, align 8
  br label %36

25:                                               ; preds = %19
  %26 = load i8*, i8** @acpi_gbl_optarg, align 8
  %27 = call i32 @strcmp(i8* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = load i8*, i8** @FALSE, align 8
  store i8* %30, i8** @gbl_dump_customized_tables, align 8
  br label %35

31:                                               ; preds = %25
  %32 = load i32, i32* @stderr, align 4
  %33 = load i8*, i8** @acpi_gbl_optarg, align 8
  %34 = call i32 (i32, i8*, ...) @fprintf(i32 %32, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i8* %33)
  store i32 -1, i32* %3, align 4
  br label %126

35:                                               ; preds = %29
  br label %36

36:                                               ; preds = %35, %23
  br label %8

37:                                               ; preds = %15, %15
  %38 = call i32 (...) @ap_display_usage()
  store i32 1, i32* %3, align 4
  br label %126

39:                                               ; preds = %15
  %40 = load i8*, i8** @acpi_gbl_optarg, align 8
  %41 = call i32 @ap_open_output_file(i8* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 -1, i32* %3, align 4
  br label %126

44:                                               ; preds = %39
  br label %8

45:                                               ; preds = %15
  %46 = load i8*, i8** @acpi_gbl_optarg, align 8
  %47 = call i32 @acpi_ut_strtoul64(i8* %46, i32* @gbl_rsdp_base)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @ACPI_FAILURE(i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load i32, i32* @stderr, align 4
  %53 = load i8*, i8** @acpi_gbl_optarg, align 8
  %54 = call i32 (i32, i8*, ...) @fprintf(i32 %52, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i8* %53)
  store i32 -1, i32* %3, align 4
  br label %126

55:                                               ; preds = %45
  br label %8

56:                                               ; preds = %15
  %57 = load i8*, i8** @TRUE, align 8
  store i8* %57, i8** @gbl_summary_mode, align 8
  br label %8

58:                                               ; preds = %15
  %59 = load i8*, i8** @acpi_gbl_do_not_use_xsdt, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %58
  %62 = load i8*, i8** @TRUE, align 8
  store i8* %62, i8** @acpi_gbl_do_not_use_xsdt, align 8
  br label %65

63:                                               ; preds = %58
  %64 = load i8*, i8** @TRUE, align 8
  store i8* %64, i8** @gbl_do_not_dump_xsdt, align 8
  br label %65

65:                                               ; preds = %63, %61
  br label %8

66:                                               ; preds = %15
  %67 = load i8*, i8** @acpi_gbl_optarg, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 0
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  switch i32 %70, label %83 [
    i32 94, label %71
    i32 100, label %76
  ]

71:                                               ; preds = %66
  %72 = load i32, i32* @stderr, align 4
  %73 = load i32, i32* @AP_UTILITY_NAME, align 4
  %74 = call i8* @ACPI_COMMON_SIGNON(i32 %73)
  %75 = call i32 (i32, i8*, ...) @fprintf(i32 %72, i8* %74)
  store i32 1, i32* %3, align 4
  br label %126

76:                                               ; preds = %66
  %77 = load i32, i32* @stderr, align 4
  %78 = load i32, i32* @AP_UTILITY_NAME, align 4
  %79 = call i8* @ACPI_COMMON_SIGNON(i32 %78)
  %80 = call i32 (i32, i8*, ...) @fprintf(i32 %77, i8* %79)
  %81 = load i8*, i8** @ACPI_COMMON_BUILD_TIME, align 8
  %82 = call i32 (i8*, ...) @printf(i8* %81)
  store i32 1, i32* %3, align 4
  br label %126

83:                                               ; preds = %66
  %84 = load i8*, i8** @acpi_gbl_optarg, align 8
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* %84)
  store i32 -1, i32* %3, align 4
  br label %126

86:                                               ; preds = %15
  %87 = load i8*, i8** @TRUE, align 8
  store i8* %87, i8** @gbl_verbose_mode, align 8
  %88 = load i32, i32* @stderr, align 4
  %89 = load i32, i32* @AP_UTILITY_NAME, align 4
  %90 = call i8* @ACPI_COMMON_SIGNON(i32 %89)
  %91 = call i32 (i32, i8*, ...) @fprintf(i32 %88, i8* %90)
  br label %8

92:                                               ; preds = %15
  %93 = load i8*, i8** @acpi_gbl_optarg, align 8
  %94 = load i32, i32* @AP_DUMP_TABLE_BY_ADDRESS, align 4
  %95 = call i64 @ap_insert_action(i8* %93, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  store i32 -1, i32* %3, align 4
  br label %126

98:                                               ; preds = %92
  br label %115

99:                                               ; preds = %15
  %100 = load i8*, i8** @acpi_gbl_optarg, align 8
  %101 = load i32, i32* @AP_DUMP_TABLE_BY_FILE, align 4
  %102 = call i64 @ap_insert_action(i8* %100, i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  store i32 -1, i32* %3, align 4
  br label %126

105:                                              ; preds = %99
  br label %115

106:                                              ; preds = %15
  %107 = load i8*, i8** @acpi_gbl_optarg, align 8
  %108 = load i32, i32* @AP_DUMP_TABLE_BY_NAME, align 4
  %109 = call i64 @ap_insert_action(i8* %107, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %106
  store i32 -1, i32* %3, align 4
  br label %126

112:                                              ; preds = %106
  br label %115

113:                                              ; preds = %15
  %114 = call i32 (...) @ap_display_usage()
  store i32 -1, i32* %3, align 4
  br label %126

115:                                              ; preds = %112, %105, %98
  br label %8

116:                                              ; preds = %8
  %117 = load i64, i64* @current_action, align 8
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %116
  %120 = load i32, i32* @AP_DUMP_ALL_TABLES, align 4
  %121 = call i64 @ap_insert_action(i8* null, i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %119
  store i32 -1, i32* %3, align 4
  br label %126

124:                                              ; preds = %119
  br label %125

125:                                              ; preds = %124, %116
  store i32 0, i32* %3, align 4
  br label %126

126:                                              ; preds = %125, %123, %113, %111, %104, %97, %83, %76, %71, %51, %43, %37, %31
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local i32 @acpi_getopt(i32, i8**, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @ap_display_usage(...) #1

declare dso_local i32 @ap_open_output_file(i8*) #1

declare dso_local i32 @acpi_ut_strtoul64(i8*, i32*) #1

declare dso_local i32 @ACPI_FAILURE(i32) #1

declare dso_local i8* @ACPI_COMMON_SIGNON(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @ap_insert_action(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
