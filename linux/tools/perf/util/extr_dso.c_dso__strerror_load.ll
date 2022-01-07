; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_dso.c_dso__strerror_load.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_dso.c_dso__strerror_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dso = type { i32 }

@dso__strerror_load.dso_load__error_str = internal global [5 x i8*] [i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [35 x i8] c"Internal tools/perf/ library error\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Invalid ELF file\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Can not read build id\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Mismatching build id\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Decompression failure\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@__DSO_LOAD_ERRNO__START = common dso_local global i32 0, align 4
@__DSO_LOAD_ERRNO__END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dso__strerror_load(%struct.dso* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dso*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.dso* %0, %struct.dso** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.dso*, %struct.dso** %5, align 8
  %12 = getelementptr inbounds %struct.dso, %struct.dso* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %9, align 4
  %14 = load i64, i64* %7, align 8
  %15 = icmp eq i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load i32, i32* %9, align 4
  %19 = icmp sge i32 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %3
  %21 = load i32, i32* %9, align 4
  %22 = load i8*, i8** %6, align 8
  %23 = load i64, i64* %7, align 8
  %24 = call i8* @str_error_r(i32 %21, i8* %22, i64 %23)
  store i8* %24, i8** %10, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = icmp ne i8* %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %20
  %29 = load i8*, i8** %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = call i32 @scnprintf(i8* %29, i64 %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %31)
  br label %33

33:                                               ; preds = %28, %20
  store i32 0, i32* %4, align 4
  br label %54

34:                                               ; preds = %3
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @__DSO_LOAD_ERRNO__START, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @__DSO_LOAD_ERRNO__END, align 4
  %41 = icmp sge i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38, %34
  store i32 -1, i32* %4, align 4
  br label %54

43:                                               ; preds = %38
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @__DSO_LOAD_ERRNO__START, align 4
  %46 = sub nsw i32 %44, %45
  store i32 %46, i32* %8, align 4
  %47 = load i8*, i8** %6, align 8
  %48 = load i64, i64* %7, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [5 x i8*], [5 x i8*]* @dso__strerror_load.dso_load__error_str, i64 0, i64 %50
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @scnprintf(i8* %47, i64 %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %52)
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %43, %42, %33
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i8* @str_error_r(i32, i8*, i64) #1

declare dso_local i32 @scnprintf(i8*, i64, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
