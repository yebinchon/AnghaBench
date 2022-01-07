; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_namespaces.c_nsinfo__copy.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_namespaces.c_nsinfo__copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nsinfo = type { i32, i64, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nsinfo* @nsinfo__copy(%struct.nsinfo* %0) #0 {
  %2 = alloca %struct.nsinfo*, align 8
  %3 = alloca %struct.nsinfo*, align 8
  %4 = alloca %struct.nsinfo*, align 8
  store %struct.nsinfo* %0, %struct.nsinfo** %3, align 8
  %5 = load %struct.nsinfo*, %struct.nsinfo** %3, align 8
  %6 = icmp eq %struct.nsinfo* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store %struct.nsinfo* null, %struct.nsinfo** %2, align 8
  br label %58

8:                                                ; preds = %1
  %9 = call %struct.nsinfo* @calloc(i32 1, i32 32)
  store %struct.nsinfo* %9, %struct.nsinfo** %4, align 8
  %10 = load %struct.nsinfo*, %struct.nsinfo** %4, align 8
  %11 = icmp ne %struct.nsinfo* %10, null
  br i1 %11, label %12, label %56

12:                                               ; preds = %8
  %13 = load %struct.nsinfo*, %struct.nsinfo** %3, align 8
  %14 = getelementptr inbounds %struct.nsinfo, %struct.nsinfo* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.nsinfo*, %struct.nsinfo** %4, align 8
  %17 = getelementptr inbounds %struct.nsinfo, %struct.nsinfo* %16, i32 0, i32 5
  store i32 %15, i32* %17, align 4
  %18 = load %struct.nsinfo*, %struct.nsinfo** %3, align 8
  %19 = getelementptr inbounds %struct.nsinfo, %struct.nsinfo* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.nsinfo*, %struct.nsinfo** %4, align 8
  %22 = getelementptr inbounds %struct.nsinfo, %struct.nsinfo* %21, i32 0, i32 4
  store i32 %20, i32* %22, align 8
  %23 = load %struct.nsinfo*, %struct.nsinfo** %3, align 8
  %24 = getelementptr inbounds %struct.nsinfo, %struct.nsinfo* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.nsinfo*, %struct.nsinfo** %4, align 8
  %27 = getelementptr inbounds %struct.nsinfo, %struct.nsinfo* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 4
  %28 = load %struct.nsinfo*, %struct.nsinfo** %3, align 8
  %29 = getelementptr inbounds %struct.nsinfo, %struct.nsinfo* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.nsinfo*, %struct.nsinfo** %4, align 8
  %32 = getelementptr inbounds %struct.nsinfo, %struct.nsinfo* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load %struct.nsinfo*, %struct.nsinfo** %3, align 8
  %34 = getelementptr inbounds %struct.nsinfo, %struct.nsinfo* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %12
  %38 = load %struct.nsinfo*, %struct.nsinfo** %3, align 8
  %39 = getelementptr inbounds %struct.nsinfo, %struct.nsinfo* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i64 @strdup(i64 %40)
  %42 = load %struct.nsinfo*, %struct.nsinfo** %4, align 8
  %43 = getelementptr inbounds %struct.nsinfo, %struct.nsinfo* %42, i32 0, i32 1
  store i64 %41, i64* %43, align 8
  %44 = load %struct.nsinfo*, %struct.nsinfo** %4, align 8
  %45 = getelementptr inbounds %struct.nsinfo, %struct.nsinfo* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %37
  %49 = load %struct.nsinfo*, %struct.nsinfo** %4, align 8
  %50 = call i32 @free(%struct.nsinfo* %49)
  store %struct.nsinfo* null, %struct.nsinfo** %2, align 8
  br label %58

51:                                               ; preds = %37
  br label %52

52:                                               ; preds = %51, %12
  %53 = load %struct.nsinfo*, %struct.nsinfo** %4, align 8
  %54 = getelementptr inbounds %struct.nsinfo, %struct.nsinfo* %53, i32 0, i32 0
  %55 = call i32 @refcount_set(i32* %54, i32 1)
  br label %56

56:                                               ; preds = %52, %8
  %57 = load %struct.nsinfo*, %struct.nsinfo** %4, align 8
  store %struct.nsinfo* %57, %struct.nsinfo** %2, align 8
  br label %58

58:                                               ; preds = %56, %48, %7
  %59 = load %struct.nsinfo*, %struct.nsinfo** %2, align 8
  ret %struct.nsinfo* %59
}

declare dso_local %struct.nsinfo* @calloc(i32, i32) #1

declare dso_local i64 @strdup(i64) #1

declare dso_local i32 @free(%struct.nsinfo*) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
