; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c__sort__sym_cmp.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c__sort__sym_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i64, i64, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.symbol*, %struct.symbol*)* @_sort__sym_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_sort__sym_cmp(%struct.symbol* %0, %struct.symbol* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.symbol*, align 8
  %5 = alloca %struct.symbol*, align 8
  %6 = alloca i32, align 4
  store %struct.symbol* %0, %struct.symbol** %4, align 8
  store %struct.symbol* %1, %struct.symbol** %5, align 8
  %7 = load %struct.symbol*, %struct.symbol** %4, align 8
  %8 = icmp ne %struct.symbol* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.symbol*, %struct.symbol** %5, align 8
  %11 = icmp ne %struct.symbol* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %9, %2
  %13 = load %struct.symbol*, %struct.symbol** %4, align 8
  %14 = load %struct.symbol*, %struct.symbol** %5, align 8
  %15 = call i32 @cmp_null(%struct.symbol* %13, %struct.symbol* %14)
  store i32 %15, i32* %3, align 4
  br label %87

16:                                               ; preds = %9
  %17 = load %struct.symbol*, %struct.symbol** %4, align 8
  %18 = load %struct.symbol*, %struct.symbol** %5, align 8
  %19 = icmp eq %struct.symbol* %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %87

21:                                               ; preds = %16
  %22 = load %struct.symbol*, %struct.symbol** %4, align 8
  %23 = getelementptr inbounds %struct.symbol, %struct.symbol* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load %struct.symbol*, %struct.symbol** %5, align 8
  %28 = getelementptr inbounds %struct.symbol, %struct.symbol* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %61

31:                                               ; preds = %26, %21
  %32 = load %struct.symbol*, %struct.symbol** %4, align 8
  %33 = getelementptr inbounds %struct.symbol, %struct.symbol* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.symbol*, %struct.symbol** %5, align 8
  %36 = getelementptr inbounds %struct.symbol, %struct.symbol* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @strcmp(i32 %34, i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %31
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %3, align 4
  br label %87

43:                                               ; preds = %31
  %44 = load %struct.symbol*, %struct.symbol** %4, align 8
  %45 = getelementptr inbounds %struct.symbol, %struct.symbol* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.symbol*, %struct.symbol** %5, align 8
  %48 = getelementptr inbounds %struct.symbol, %struct.symbol* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp sle i64 %46, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %43
  %52 = load %struct.symbol*, %struct.symbol** %4, align 8
  %53 = getelementptr inbounds %struct.symbol, %struct.symbol* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.symbol*, %struct.symbol** %5, align 8
  %56 = getelementptr inbounds %struct.symbol, %struct.symbol* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp sge i64 %54, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %87

60:                                               ; preds = %51, %43
  br label %61

61:                                               ; preds = %60, %26
  %62 = load %struct.symbol*, %struct.symbol** %4, align 8
  %63 = getelementptr inbounds %struct.symbol, %struct.symbol* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.symbol*, %struct.symbol** %5, align 8
  %66 = getelementptr inbounds %struct.symbol, %struct.symbol* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %64, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %61
  %70 = load %struct.symbol*, %struct.symbol** %5, align 8
  %71 = getelementptr inbounds %struct.symbol, %struct.symbol* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.symbol*, %struct.symbol** %4, align 8
  %74 = getelementptr inbounds %struct.symbol, %struct.symbol* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = sub nsw i64 %72, %75
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %3, align 4
  br label %87

78:                                               ; preds = %61
  %79 = load %struct.symbol*, %struct.symbol** %5, align 8
  %80 = getelementptr inbounds %struct.symbol, %struct.symbol* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.symbol*, %struct.symbol** %4, align 8
  %83 = getelementptr inbounds %struct.symbol, %struct.symbol* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = sub nsw i64 %81, %84
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %78, %69, %59, %41, %20, %12
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @cmp_null(%struct.symbol*, %struct.symbol*) #1

declare dso_local i32 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
