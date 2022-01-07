; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/pmu-events/extr_jsmn.c_jsmn_parse_primitive.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/pmu-events/extr_jsmn.c_jsmn_parse_primitive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@JSMN_ERROR_INVAL = common dso_local global i32 0, align 4
@JSMN_ERROR_NOMEM = common dso_local global i32 0, align 4
@JSMN_PRIMITIVE = common dso_local global i32 0, align 4
@JSMN_SUCCESS = common dso_local global i32 0, align 4
@JSMN_ERROR_PART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i8*, i64, i32*, i64)* @jsmn_parse_primitive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jsmn_parse_primitive(%struct.TYPE_4__* %0, i8* %1, i64 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %13, align 4
  br label %17

17:                                               ; preds = %61, %5
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = load i64, i64* %9, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %66

24:                                               ; preds = %17
  %25 = load i8*, i8** %8, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %25, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  switch i32 %32, label %34 [
    i32 58, label %33
    i32 9, label %33
    i32 13, label %33
    i32 10, label %33
    i32 32, label %33
    i32 44, label %33
    i32 93, label %33
    i32 125, label %33
  ]

33:                                               ; preds = %24, %24, %24, %24, %24, %24, %24, %24
  br label %67

34:                                               ; preds = %24
  br label %35

35:                                               ; preds = %34
  %36 = load i8*, i8** %8, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %36, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp slt i32 %43, 32
  br i1 %44, label %55, label %45

45:                                               ; preds = %35
  %46 = load i8*, i8** %8, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %46, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp sge i32 %53, 127
  br i1 %54, label %55, label %60

55:                                               ; preds = %45, %35
  %56 = load i32, i32* %13, align 4
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* @JSMN_ERROR_INVAL, align 4
  store i32 %59, i32* %6, align 4
  br label %92

60:                                               ; preds = %45
  br label %61

61:                                               ; preds = %60
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 4
  br label %17

66:                                               ; preds = %17
  br label %67

67:                                               ; preds = %66, %33
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %69 = load i32*, i32** %10, align 8
  %70 = load i64, i64* %11, align 8
  %71 = call i32* @jsmn_alloc_token(%struct.TYPE_4__* %68, i32* %69, i64 %70)
  store i32* %71, i32** %12, align 8
  %72 = load i32*, i32** %12, align 8
  %73 = icmp eq i32* %72, null
  br i1 %73, label %74, label %79

74:                                               ; preds = %67
  %75 = load i32, i32* %13, align 4
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* @JSMN_ERROR_NOMEM, align 4
  store i32 %78, i32* %6, align 4
  br label %92

79:                                               ; preds = %67
  %80 = load i32*, i32** %12, align 8
  %81 = load i32, i32* @JSMN_PRIMITIVE, align 4
  %82 = load i32, i32* %13, align 4
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @jsmn_fill_token(i32* %80, i32 %81, i32 %82, i32 %85)
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* %88, align 4
  %91 = load i32, i32* @JSMN_SUCCESS, align 4
  store i32 %91, i32* %6, align 4
  br label %92

92:                                               ; preds = %79, %74, %55
  %93 = load i32, i32* %6, align 4
  ret i32 %93
}

declare dso_local i32* @jsmn_alloc_token(%struct.TYPE_4__*, i32*, i64) #1

declare dso_local i32 @jsmn_fill_token(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
