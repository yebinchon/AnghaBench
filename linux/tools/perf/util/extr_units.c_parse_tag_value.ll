; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_units.c_parse_tag_value.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_units.c_parse_tag_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse_tag = type { i64, i64 }

@ULONG_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @parse_tag_value(i8* %0, %struct.parse_tag* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.parse_tag*, align 8
  %6 = alloca %struct.parse_tag*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.parse_tag* %1, %struct.parse_tag** %5, align 8
  %10 = load %struct.parse_tag*, %struct.parse_tag** %5, align 8
  store %struct.parse_tag* %10, %struct.parse_tag** %6, align 8
  br label %11

11:                                               ; preds = %47, %2
  %12 = load %struct.parse_tag*, %struct.parse_tag** %6, align 8
  %13 = getelementptr inbounds %struct.parse_tag, %struct.parse_tag* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %50

16:                                               ; preds = %11
  %17 = load i8*, i8** %4, align 8
  %18 = load %struct.parse_tag*, %struct.parse_tag** %6, align 8
  %19 = getelementptr inbounds %struct.parse_tag, %struct.parse_tag* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = call i8* @strchr(i8* %17, i64 %20)
  store i8* %21, i8** %7, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %47

24:                                               ; preds = %16
  %25 = load i8*, i8** %4, align 8
  %26 = call i64 @strtoul(i8* %25, i8** %9, i32 10)
  store i64 %26, i64* %8, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = icmp ne i8* %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %50

31:                                               ; preds = %24
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* @ULONG_MAX, align 8
  %34 = load %struct.parse_tag*, %struct.parse_tag** %6, align 8
  %35 = getelementptr inbounds %struct.parse_tag, %struct.parse_tag* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = udiv i64 %33, %36
  %38 = icmp ugt i64 %32, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %50

40:                                               ; preds = %31
  %41 = load %struct.parse_tag*, %struct.parse_tag** %6, align 8
  %42 = getelementptr inbounds %struct.parse_tag, %struct.parse_tag* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %8, align 8
  %45 = mul i64 %44, %43
  store i64 %45, i64* %8, align 8
  %46 = load i64, i64* %8, align 8
  store i64 %46, i64* %3, align 8
  br label %51

47:                                               ; preds = %16
  %48 = load %struct.parse_tag*, %struct.parse_tag** %6, align 8
  %49 = getelementptr inbounds %struct.parse_tag, %struct.parse_tag* %48, i32 1
  store %struct.parse_tag* %49, %struct.parse_tag** %6, align 8
  br label %11

50:                                               ; preds = %39, %30, %11
  store i64 -1, i64* %3, align 8
  br label %51

51:                                               ; preds = %50, %40
  %52 = load i64, i64* %3, align 8
  ret i64 %52
}

declare dso_local i8* @strchr(i8*, i64) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
