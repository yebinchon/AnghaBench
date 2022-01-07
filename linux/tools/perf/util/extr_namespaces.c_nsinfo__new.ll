; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_namespaces.c_nsinfo__new.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_namespaces.c_nsinfo__new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nsinfo = type { i32, i32, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nsinfo* @nsinfo__new(i64 %0) #0 {
  %2 = alloca %struct.nsinfo*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.nsinfo*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store %struct.nsinfo* null, %struct.nsinfo** %2, align 8
  br label %36

8:                                                ; preds = %1
  %9 = call %struct.nsinfo* @calloc(i32 1, i32 32)
  store %struct.nsinfo* %9, %struct.nsinfo** %4, align 8
  %10 = load %struct.nsinfo*, %struct.nsinfo** %4, align 8
  %11 = icmp ne %struct.nsinfo* %10, null
  br i1 %11, label %12, label %34

12:                                               ; preds = %8
  %13 = load i64, i64* %3, align 8
  %14 = load %struct.nsinfo*, %struct.nsinfo** %4, align 8
  %15 = getelementptr inbounds %struct.nsinfo, %struct.nsinfo* %14, i32 0, i32 4
  store i64 %13, i64* %15, align 8
  %16 = load i64, i64* %3, align 8
  %17 = load %struct.nsinfo*, %struct.nsinfo** %4, align 8
  %18 = getelementptr inbounds %struct.nsinfo, %struct.nsinfo* %17, i32 0, i32 3
  store i64 %16, i64* %18, align 8
  %19 = load i64, i64* %3, align 8
  %20 = load %struct.nsinfo*, %struct.nsinfo** %4, align 8
  %21 = getelementptr inbounds %struct.nsinfo, %struct.nsinfo* %20, i32 0, i32 2
  store i64 %19, i64* %21, align 8
  %22 = load %struct.nsinfo*, %struct.nsinfo** %4, align 8
  %23 = getelementptr inbounds %struct.nsinfo, %struct.nsinfo* %22, i32 0, i32 0
  store i32 0, i32* %23, align 8
  %24 = load %struct.nsinfo*, %struct.nsinfo** %4, align 8
  %25 = call i32 @nsinfo__init(%struct.nsinfo* %24)
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %30

27:                                               ; preds = %12
  %28 = load %struct.nsinfo*, %struct.nsinfo** %4, align 8
  %29 = getelementptr inbounds %struct.nsinfo, %struct.nsinfo* %28, i32 0, i32 0
  store i32 0, i32* %29, align 8
  br label %30

30:                                               ; preds = %27, %12
  %31 = load %struct.nsinfo*, %struct.nsinfo** %4, align 8
  %32 = getelementptr inbounds %struct.nsinfo, %struct.nsinfo* %31, i32 0, i32 1
  %33 = call i32 @refcount_set(i32* %32, i32 1)
  br label %34

34:                                               ; preds = %30, %8
  %35 = load %struct.nsinfo*, %struct.nsinfo** %4, align 8
  store %struct.nsinfo* %35, %struct.nsinfo** %2, align 8
  br label %36

36:                                               ; preds = %34, %7
  %37 = load %struct.nsinfo*, %struct.nsinfo** %2, align 8
  ret %struct.nsinfo* %37
}

declare dso_local %struct.nsinfo* @calloc(i32, i32) #1

declare dso_local i32 @nsinfo__init(%struct.nsinfo*) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
