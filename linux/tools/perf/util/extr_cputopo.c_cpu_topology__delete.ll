; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_cputopo.c_cpu_topology__delete.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_cputopo.c_cpu_topology__delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_topology = type { i64, i32, i64, i32*, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_topology__delete(%struct.cpu_topology* %0) #0 {
  %2 = alloca %struct.cpu_topology*, align 8
  %3 = alloca i64, align 8
  store %struct.cpu_topology* %0, %struct.cpu_topology** %2, align 8
  %4 = load %struct.cpu_topology*, %struct.cpu_topology** %2, align 8
  %5 = icmp ne %struct.cpu_topology* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %68

7:                                                ; preds = %1
  store i64 0, i64* %3, align 8
  br label %8

8:                                                ; preds = %21, %7
  %9 = load i64, i64* %3, align 8
  %10 = load %struct.cpu_topology*, %struct.cpu_topology** %2, align 8
  %11 = getelementptr inbounds %struct.cpu_topology, %struct.cpu_topology* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ult i64 %9, %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %8
  %15 = load %struct.cpu_topology*, %struct.cpu_topology** %2, align 8
  %16 = getelementptr inbounds %struct.cpu_topology, %struct.cpu_topology* %15, i32 0, i32 5
  %17 = load i32*, i32** %16, align 8
  %18 = load i64, i64* %3, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = call i32 @zfree(i32* %19)
  br label %21

21:                                               ; preds = %14
  %22 = load i64, i64* %3, align 8
  %23 = add i64 %22, 1
  store i64 %23, i64* %3, align 8
  br label %8

24:                                               ; preds = %8
  %25 = load %struct.cpu_topology*, %struct.cpu_topology** %2, align 8
  %26 = getelementptr inbounds %struct.cpu_topology, %struct.cpu_topology* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %48

29:                                               ; preds = %24
  store i64 0, i64* %3, align 8
  br label %30

30:                                               ; preds = %44, %29
  %31 = load i64, i64* %3, align 8
  %32 = load %struct.cpu_topology*, %struct.cpu_topology** %2, align 8
  %33 = getelementptr inbounds %struct.cpu_topology, %struct.cpu_topology* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = icmp ult i64 %31, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %30
  %38 = load %struct.cpu_topology*, %struct.cpu_topology** %2, align 8
  %39 = getelementptr inbounds %struct.cpu_topology, %struct.cpu_topology* %38, i32 0, i32 4
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* %3, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = call i32 @zfree(i32* %42)
  br label %44

44:                                               ; preds = %37
  %45 = load i64, i64* %3, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %3, align 8
  br label %30

47:                                               ; preds = %30
  br label %48

48:                                               ; preds = %47, %24
  store i64 0, i64* %3, align 8
  br label %49

49:                                               ; preds = %62, %48
  %50 = load i64, i64* %3, align 8
  %51 = load %struct.cpu_topology*, %struct.cpu_topology** %2, align 8
  %52 = getelementptr inbounds %struct.cpu_topology, %struct.cpu_topology* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ult i64 %50, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %49
  %56 = load %struct.cpu_topology*, %struct.cpu_topology** %2, align 8
  %57 = getelementptr inbounds %struct.cpu_topology, %struct.cpu_topology* %56, i32 0, i32 3
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* %3, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = call i32 @zfree(i32* %60)
  br label %62

62:                                               ; preds = %55
  %63 = load i64, i64* %3, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %3, align 8
  br label %49

65:                                               ; preds = %49
  %66 = load %struct.cpu_topology*, %struct.cpu_topology** %2, align 8
  %67 = call i32 @free(%struct.cpu_topology* %66)
  br label %68

68:                                               ; preds = %65, %6
  ret void
}

declare dso_local i32 @zfree(i32*) #1

declare dso_local i32 @free(%struct.cpu_topology*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
