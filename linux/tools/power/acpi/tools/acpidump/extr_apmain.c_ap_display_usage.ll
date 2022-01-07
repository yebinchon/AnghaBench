; ModuleID = '/home/carl/AnghaBench/linux/tools/power/acpi/tools/acpidump/extr_apmain.c_ap_display_usage.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/acpi/tools/acpidump/extr_apmain.c_ap_display_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"acpidump [options]\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-b\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Dump tables to binary files\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"-h -?\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"This help message\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"-o <File>\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Redirect output to file\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"-r <Address>\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"Dump tables from specified RSDP\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"-s\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"Print table summaries only\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"-v\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"Display version information\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"-vd\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"Display build date and time\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"-z\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"Verbose mode\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"\0ATable Options:\0A\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"-a <Address>\00", align 1
@.str.19 = private unnamed_addr constant [33 x i8] c"Get table via a physical address\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"-c <on|off>\00", align 1
@.str.21 = private unnamed_addr constant [40 x i8] c"Turning on/off customized table dumping\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"-f <BinaryFile>\00", align 1
@.str.23 = private unnamed_addr constant [28 x i8] c"Get table via a binary file\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"-n <Signature>\00", align 1
@.str.25 = private unnamed_addr constant [31 x i8] c"Get table via a name/signature\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"-x\00", align 1
@.str.27 = private unnamed_addr constant [25 x i8] c"Do not use but dump XSDT\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"-x -x\00", align 1
@.str.29 = private unnamed_addr constant [24 x i8] c"Do not use or dump XSDT\00", align 1
@.str.30 = private unnamed_addr constant [117 x i8] c"\0AInvocation without parameters dumps all available tables\0AMultiple mixed instances of -a, -f, and -n are supported\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ap_display_usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ap_display_usage() #0 {
  %1 = call i32 @ACPI_USAGE_HEADER(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %2 = call i32 @ACPI_OPTION(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %3 = call i32 @ACPI_OPTION(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %4 = call i32 @ACPI_OPTION(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %5 = call i32 @ACPI_OPTION(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  %6 = call i32 @ACPI_OPTION(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  %7 = call i32 @ACPI_OPTION(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0))
  %8 = call i32 @ACPI_OPTION(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0))
  %9 = call i32 @ACPI_OPTION(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0))
  %10 = call i32 @ACPI_USAGE_TEXT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0))
  %11 = call i32 @ACPI_OPTION(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.19, i64 0, i64 0))
  %12 = call i32 @ACPI_OPTION(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21, i64 0, i64 0))
  %13 = call i32 @ACPI_OPTION(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.23, i64 0, i64 0))
  %14 = call i32 @ACPI_OPTION(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.25, i64 0, i64 0))
  %15 = call i32 @ACPI_OPTION(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.27, i64 0, i64 0))
  %16 = call i32 @ACPI_OPTION(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.29, i64 0, i64 0))
  %17 = call i32 @ACPI_USAGE_TEXT(i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.30, i64 0, i64 0))
  ret void
}

declare dso_local i32 @ACPI_USAGE_HEADER(i8*) #1

declare dso_local i32 @ACPI_OPTION(i8*, i8*) #1

declare dso_local i32 @ACPI_USAGE_TEXT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
