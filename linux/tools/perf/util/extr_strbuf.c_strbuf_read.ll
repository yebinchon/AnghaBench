; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_strbuf.c_strbuf_read.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_strbuf.c_strbuf_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i64, i64, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @strbuf_read(%struct.strbuf* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.strbuf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.strbuf* %0, %struct.strbuf** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %13 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %8, align 8
  %15 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %16 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %9, align 8
  %18 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  br label %24

23:                                               ; preds = %3
  br label %24

24:                                               ; preds = %23, %21
  %25 = phi i32 [ %22, %21 ], [ 8192, %23 ]
  %26 = call i32 @strbuf_grow(%struct.strbuf* %18, i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* %10, align 4
  store i32 %30, i32* %4, align 4
  br label %96

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %81, %31
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %35 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %34, i32 0, i32 2
  %36 = load i8*, i8** %35, align 8
  %37 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %38 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds i8, i8* %36, i64 %39
  %41 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %42 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %45 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = sub i64 %43, %46
  %48 = sub i64 %47, 1
  %49 = call i32 @read(i32 %33, i8* %40, i64 %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %32
  %53 = load i64, i64* %9, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %57 = call i32 @strbuf_release(%struct.strbuf* %56)
  br label %62

58:                                               ; preds = %52
  %59 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %60 = load i64, i64* %8, align 8
  %61 = call i32 @strbuf_setlen(%struct.strbuf* %59, i64 %60)
  br label %62

62:                                               ; preds = %58, %55
  %63 = load i32, i32* %11, align 4
  store i32 %63, i32* %4, align 4
  br label %96

64:                                               ; preds = %32
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %64
  br label %82

68:                                               ; preds = %64
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %72 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = add i64 %73, %70
  store i64 %74, i64* %72, align 8
  %75 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %76 = call i32 @strbuf_grow(%struct.strbuf* %75, i32 8192)
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %68
  %80 = load i32, i32* %10, align 4
  store i32 %80, i32* %4, align 4
  br label %96

81:                                               ; preds = %68
  br label %32

82:                                               ; preds = %67
  %83 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %84 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %83, i32 0, i32 2
  %85 = load i8*, i8** %84, align 8
  %86 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %87 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds i8, i8* %85, i64 %88
  store i8 0, i8* %89, align 1
  %90 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %91 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* %8, align 8
  %94 = sub i64 %92, %93
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %4, align 4
  br label %96

96:                                               ; preds = %82, %79, %62, %29
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i32 @strbuf_grow(%struct.strbuf*, i32) #1

declare dso_local i32 @read(i32, i8*, i64) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
