; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_thread.c___thread__set_namespaces.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_thread.c___thread__set_namespaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.perf_record_namespaces = type { i32 }
%struct.namespaces = type { i64, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, i64, %struct.perf_record_namespaces*)* @__thread__set_namespaces to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__thread__set_namespaces(%struct.thread* %0, i64 %1, %struct.perf_record_namespaces* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.thread*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.perf_record_namespaces*, align 8
  %8 = alloca %struct.namespaces*, align 8
  %9 = alloca %struct.namespaces*, align 8
  store %struct.thread* %0, %struct.thread** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.perf_record_namespaces* %2, %struct.perf_record_namespaces** %7, align 8
  %10 = load %struct.thread*, %struct.thread** %5, align 8
  %11 = call %struct.namespaces* @__thread__namespaces(%struct.thread* %10)
  store %struct.namespaces* %11, %struct.namespaces** %9, align 8
  %12 = load %struct.perf_record_namespaces*, %struct.perf_record_namespaces** %7, align 8
  %13 = call %struct.namespaces* @namespaces__new(%struct.perf_record_namespaces* %12)
  store %struct.namespaces* %13, %struct.namespaces** %8, align 8
  %14 = load %struct.namespaces*, %struct.namespaces** %8, align 8
  %15 = icmp ne %struct.namespaces* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %38

19:                                               ; preds = %3
  %20 = load %struct.namespaces*, %struct.namespaces** %8, align 8
  %21 = getelementptr inbounds %struct.namespaces, %struct.namespaces* %20, i32 0, i32 1
  %22 = load %struct.thread*, %struct.thread** %5, align 8
  %23 = getelementptr inbounds %struct.thread, %struct.thread* %22, i32 0, i32 0
  %24 = call i32 @list_add(i32* %21, i32* %23)
  %25 = load i64, i64* %6, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %19
  %28 = load %struct.namespaces*, %struct.namespaces** %9, align 8
  %29 = icmp ne %struct.namespaces* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = load %struct.namespaces*, %struct.namespaces** %8, align 8
  %32 = load i32, i32* @list, align 4
  %33 = call %struct.namespaces* @list_next_entry(%struct.namespaces* %31, i32 %32)
  store %struct.namespaces* %33, %struct.namespaces** %9, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load %struct.namespaces*, %struct.namespaces** %9, align 8
  %36 = getelementptr inbounds %struct.namespaces, %struct.namespaces* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  br label %37

37:                                               ; preds = %30, %27, %19
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %37, %16
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local %struct.namespaces* @__thread__namespaces(%struct.thread*) #1

declare dso_local %struct.namespaces* @namespaces__new(%struct.perf_record_namespaces*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local %struct.namespaces* @list_next_entry(%struct.namespaces*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
