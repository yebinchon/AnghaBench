; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_auxtrace.c_auxtrace_copy_data.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_auxtrace.c_auxtrace_copy_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_session = type { i32 }

@SSIZE_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64, %struct.perf_session*)* @auxtrace_copy_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @auxtrace_copy_data(i64 %0, %struct.perf_session* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.perf_session*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store %struct.perf_session* %1, %struct.perf_session** %5, align 8
  %9 = load %struct.perf_session*, %struct.perf_session** %5, align 8
  %10 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @perf_data__fd(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* @SSIZE_MAX, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %36

17:                                               ; preds = %2
  %18 = load i64, i64* %4, align 8
  %19 = call i8* @malloc(i64 %18)
  store i8* %19, i8** %7, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  store i8* null, i8** %3, align 8
  br label %36

23:                                               ; preds = %17
  %24 = load i32, i32* %6, align 4
  %25 = load i8*, i8** %7, align 8
  %26 = load i64, i64* %4, align 8
  %27 = call i64 @readn(i32 %24, i8* %25, i64 %26)
  store i64 %27, i64* %8, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* %4, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = load i8*, i8** %7, align 8
  %33 = call i32 @free(i8* %32)
  store i8* null, i8** %3, align 8
  br label %36

34:                                               ; preds = %23
  %35 = load i8*, i8** %7, align 8
  store i8* %35, i8** %3, align 8
  br label %36

36:                                               ; preds = %34, %31, %22, %16
  %37 = load i8*, i8** %3, align 8
  ret i8* %37
}

declare dso_local i32 @perf_data__fd(i32) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @readn(i32, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
