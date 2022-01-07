; ModuleID = '/home/carl/AnghaBench/linux/tools/power/acpi/tools/ec/extr_ec_access.c_usage.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/acpi/tools/ec/extr_ec_access.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"Usage:\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"1) %s -r [-s sleep]\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"2) %s -b byte_offset\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"3) %s -w byte_offset -v value\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"\09-r [-s sleep]      : Dump EC registers\00", align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"\09                     If sleep is given, sleep x seconds,\00", align 1
@.str.6 = private unnamed_addr constant [60 x i8] c"\09                     re-read EC registers and show changes\00", align 1
@.str.7 = private unnamed_addr constant [57 x i8] c"\09-b offset          : Read value at byte_offset (in hex)\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"\09-w offset -v value : Write value at byte_offset\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"\09-h                 : Print this help\0A\0A\00", align 1
@.str.10 = private unnamed_addr constant [53 x i8] c"Offsets and values are in hexadecimal number system.\00", align 1
@.str.11 = private unnamed_addr constant [49 x i8] c"The offset and value must be between 0 and 0xff.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usage(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %6 = load i8*, i8** %3, align 8
  %7 = call i8* @basename(i8* %6)
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %7)
  %9 = load i8*, i8** %3, align 8
  %10 = call i8* @basename(i8* %9)
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %10)
  %12 = load i8*, i8** %3, align 8
  %13 = call i8* @basename(i8* %12)
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8* %13)
  %15 = call i32 @puts(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  %16 = call i32 @puts(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0))
  %17 = call i32 @puts(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.6, i64 0, i64 0))
  %18 = call i32 @puts(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.7, i64 0, i64 0))
  %19 = call i32 @puts(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i64 0, i64 0))
  %20 = call i32 @puts(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0))
  %21 = call i32 @puts(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.10, i64 0, i64 0))
  %22 = call i32 @puts(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i64 0, i64 0))
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @exit(i32 %23) #3
  unreachable
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @basename(i8*) #1

declare dso_local i32 @puts(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
