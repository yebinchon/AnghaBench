; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/jvmti/extr_libjvmti.c_fill_source_filenames.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/jvmti/extr_libjvmti.c_fill_source_filenames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@JVMTI_ERROR_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32, %struct.TYPE_3__*, i8**)* @fill_source_filenames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fill_source_filenames(i32* %0, i32 %1, %struct.TYPE_3__* %2, i8** %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %8, align 8
  store i8** %3, i8*** %9, align 8
  store i32 0, i32* %10, align 4
  br label %12

12:                                               ; preds = %35, %4
  %13 = load i32, i32* %10, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %38

16:                                               ; preds = %12
  %17 = load i32*, i32** %6, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %19 = load i32, i32* %10, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i8**, i8*** %9, align 8
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8*, i8** %24, i64 %26
  %28 = call i64 @get_source_filename(i32* %17, i32 %23, i8** %27)
  store i64 %28, i64* %11, align 8
  %29 = load i64, i64* %11, align 8
  %30 = load i64, i64* @JVMTI_ERROR_NONE, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %16
  %33 = load i64, i64* %11, align 8
  store i64 %33, i64* %5, align 8
  br label %40

34:                                               ; preds = %16
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %10, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %10, align 4
  br label %12

38:                                               ; preds = %12
  %39 = load i64, i64* @JVMTI_ERROR_NONE, align 8
  store i64 %39, i64* %5, align 8
  br label %40

40:                                               ; preds = %38, %32
  %41 = load i64, i64* %5, align 8
  ret i64 %41
}

declare dso_local i64 @get_source_filename(i32*, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
