; ModuleID = '/home/carl/AnghaBench/linux/security/tomoyo/extr_util.c_tomoyo_print_ulong.c'
source_filename = "/home/carl/AnghaBench/linux/security/tomoyo/extr_util.c_tomoyo_print_ulong.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TOMOYO_VALUE_TYPE_DECIMAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@TOMOYO_VALUE_TYPE_OCTAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"0%lo\00", align 1
@TOMOYO_VALUE_TYPE_HEXADECIMAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"0x%lX\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"type(%u)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tomoyo_print_ulong(i8* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @TOMOYO_VALUE_TYPE_DECIMAL, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %4
  %13 = load i8*, i8** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i64, i64* %7, align 8
  %16 = trunc i64 %15 to i32
  %17 = call i32 @snprintf(i8* %13, i32 %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %45

18:                                               ; preds = %4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @TOMOYO_VALUE_TYPE_OCTAL, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = load i8*, i8** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load i64, i64* %7, align 8
  %26 = trunc i64 %25 to i32
  %27 = call i32 @snprintf(i8* %23, i32 %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  br label %44

28:                                               ; preds = %18
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @TOMOYO_VALUE_TYPE_HEXADECIMAL, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load i8*, i8** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i64, i64* %7, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i32 @snprintf(i8* %33, i32 %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  br label %43

38:                                               ; preds = %28
  %39 = load i8*, i8** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @snprintf(i8* %39, i32 %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %38, %32
  br label %44

44:                                               ; preds = %43, %22
  br label %45

45:                                               ; preds = %44, %12
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
