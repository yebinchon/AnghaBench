; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/jvmti/extr_libjvmti.c_print_error.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/jvmti/extr_libjvmti.c_print_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 (%struct.TYPE_5__**, i64, i8**)*, i32 (%struct.TYPE_5__**, i8*)* }

@JVMTI_ERROR_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"%s failed with %s\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"%s failed with an unknown error %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__**, i8*, i64)* @print_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_error(%struct.TYPE_5__** %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_5__**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_5__** %0, %struct.TYPE_5__*** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  store i8* null, i8** %7, align 8
  %9 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i64 (%struct.TYPE_5__**, i64, i8**)*, i64 (%struct.TYPE_5__**, i64, i8**)** %11, align 8
  %13 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  %14 = load i64, i64* %6, align 8
  %15 = call i64 %12(%struct.TYPE_5__** %13, i64 %14, i8** %7)
  store i64 %15, i64* %8, align 8
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* @JVMTI_ERROR_NONE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %3
  %20 = load i8*, i8** %5, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = ptrtoint i8* %21 to i64
  %23 = call i32 @warnx(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %20, i64 %22)
  %24 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i32 (%struct.TYPE_5__**, i8*)*, i32 (%struct.TYPE_5__**, i8*)** %26, align 8
  %28 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 %27(%struct.TYPE_5__** %28, i8* %29)
  br label %35

31:                                               ; preds = %3
  %32 = load i8*, i8** %5, align 8
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @warnx(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %32, i64 %33)
  br label %35

35:                                               ; preds = %31, %19
  ret void
}

declare dso_local i32 @warnx(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
