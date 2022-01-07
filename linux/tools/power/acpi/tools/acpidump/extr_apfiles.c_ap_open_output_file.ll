; ModuleID = '/home/carl/AnghaBench/linux/tools/power/acpi/tools/acpidump/extr_apfiles.c_ap_open_output_file.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/acpi/tools/acpidump/extr_apfiles.c_ap_open_output_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Could not open output file: %s\0A\00", align 1
@gbl_output_file = common dso_local global i64 0, align 8
@gbl_output_filename = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ap_open_output_file(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call i64 @ap_is_existing_file(i8* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %21

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = call i64 @fopen(i8* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i64 %11, i64* %4, align 8
  %12 = load i64, i64* %4, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %9
  %15 = load i32, i32* @stderr, align 4
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 @fprintf(i32 %15, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %16)
  store i32 -1, i32* %2, align 4
  br label %21

18:                                               ; preds = %9
  %19 = load i64, i64* %4, align 8
  store i64 %19, i64* @gbl_output_file, align 8
  %20 = load i8*, i8** %3, align 8
  store i8* %20, i8** @gbl_output_filename, align 8
  store i32 0, i32* %2, align 4
  br label %21

21:                                               ; preds = %18, %14, %8
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i64 @ap_is_existing_file(i8*) #1

declare dso_local i64 @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
