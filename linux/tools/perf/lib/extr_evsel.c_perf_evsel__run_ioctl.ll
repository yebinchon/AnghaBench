; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/lib/extr_evsel.c_perf_evsel__run_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/lib/extr_evsel.c_perf_evsel__run_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_evsel = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_evsel*, i32, i8*)* @perf_evsel__run_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_evsel__run_ioctl(%struct.perf_evsel* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.perf_evsel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.perf_evsel* %0, %struct.perf_evsel** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %45, %3
  %13 = load i32, i32* %8, align 4
  %14 = load %struct.perf_evsel*, %struct.perf_evsel** %5, align 8
  %15 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @xyarray__max_x(i32 %16)
  %18 = icmp slt i32 %13, %17
  br i1 %18, label %19, label %48

19:                                               ; preds = %12
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %41, %19
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.perf_evsel*, %struct.perf_evsel** %5, align 8
  %23 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @xyarray__max_y(i32 %24)
  %26 = icmp slt i32 %21, %25
  br i1 %26, label %27, label %44

27:                                               ; preds = %20
  %28 = load %struct.perf_evsel*, %struct.perf_evsel** %5, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @FD(%struct.perf_evsel* %28, i32 %29, i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 @ioctl(i32 %32, i32 %33, i8* %34)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %27
  %39 = load i32, i32* %11, align 4
  store i32 %39, i32* %4, align 4
  br label %49

40:                                               ; preds = %27
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %9, align 4
  br label %20

44:                                               ; preds = %20
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  br label %12

48:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %48, %38
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @xyarray__max_x(i32) #1

declare dso_local i32 @xyarray__max_y(i32) #1

declare dso_local i32 @FD(%struct.perf_evsel*, i32, i32) #1

declare dso_local i32 @ioctl(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
