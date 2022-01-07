; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_ubsan.c_handle_overflow.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_ubsan.c_handle_overflow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.overflow_data = type { i32, %struct.type_descriptor* }
%struct.type_descriptor = type { i32 }

@VALUE_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"%s integer overflow:\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"signed\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"unsigned\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"%s %c %s cannot be represented in type %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.overflow_data*, i8*, i8*, i8)* @handle_overflow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_overflow(%struct.overflow_data* %0, i8* %1, i8* %2, i8 signext %3) #0 {
  %5 = alloca %struct.overflow_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca %struct.type_descriptor*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.overflow_data* %0, %struct.overflow_data** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8 %3, i8* %8, align 1
  %15 = load %struct.overflow_data*, %struct.overflow_data** %5, align 8
  %16 = getelementptr inbounds %struct.overflow_data, %struct.overflow_data* %15, i32 0, i32 1
  %17 = load %struct.type_descriptor*, %struct.type_descriptor** %16, align 8
  store %struct.type_descriptor* %17, %struct.type_descriptor** %9, align 8
  %18 = load i32, i32* @VALUE_LENGTH, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %11, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %12, align 8
  %22 = load i32, i32* @VALUE_LENGTH, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %13, align 8
  %25 = load %struct.overflow_data*, %struct.overflow_data** %5, align 8
  %26 = getelementptr inbounds %struct.overflow_data, %struct.overflow_data* %25, i32 0, i32 0
  %27 = call i64 @suppress_report(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %4
  store i32 1, i32* %14, align 4
  br label %55

30:                                               ; preds = %4
  %31 = load %struct.overflow_data*, %struct.overflow_data** %5, align 8
  %32 = getelementptr inbounds %struct.overflow_data, %struct.overflow_data* %31, i32 0, i32 0
  %33 = call i32 @ubsan_prologue(i32* %32, i64* %10)
  %34 = trunc i64 %19 to i32
  %35 = load %struct.type_descriptor*, %struct.type_descriptor** %9, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = call i32 @val_to_string(i8* %21, i32 %34, %struct.type_descriptor* %35, i8* %36)
  %38 = trunc i64 %23 to i32
  %39 = load %struct.type_descriptor*, %struct.type_descriptor** %9, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 @val_to_string(i8* %24, i32 %38, %struct.type_descriptor* %39, i8* %40)
  %42 = load %struct.type_descriptor*, %struct.type_descriptor** %9, align 8
  %43 = call i64 @type_is_signed(%struct.type_descriptor* %42)
  %44 = icmp ne i64 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %47 = call i32 (i8*, i8*, ...) @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %46)
  %48 = load i8, i8* %8, align 1
  %49 = sext i8 %48 to i32
  %50 = load %struct.type_descriptor*, %struct.type_descriptor** %9, align 8
  %51 = getelementptr inbounds %struct.type_descriptor, %struct.type_descriptor* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i8*, i8*, ...) @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i8* %21, i32 %49, i8* %24, i32 %52)
  %54 = call i32 @ubsan_epilogue(i64* %10)
  store i32 0, i32* %14, align 4
  br label %55

55:                                               ; preds = %30, %29
  %56 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %56)
  %57 = load i32, i32* %14, align 4
  switch i32 %57, label %59 [
    i32 0, label %58
    i32 1, label %58
  ]

58:                                               ; preds = %55, %55
  ret void

59:                                               ; preds = %55
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @suppress_report(i32*) #2

declare dso_local i32 @ubsan_prologue(i32*, i64*) #2

declare dso_local i32 @val_to_string(i8*, i32, %struct.type_descriptor*, i8*) #2

declare dso_local i32 @pr_err(i8*, i8*, ...) #2

declare dso_local i64 @type_is_signed(%struct.type_descriptor*) #2

declare dso_local i32 @ubsan_epilogue(i64*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
