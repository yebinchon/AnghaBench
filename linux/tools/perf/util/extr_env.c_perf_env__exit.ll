; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_env.c_perf_env__exit.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_env.c_perf_env__exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_env = type { i32, i32, i32, %struct.TYPE_3__*, %struct.TYPE_3__*, %struct.TYPE_3__*, %struct.TYPE_3__*, %struct.TYPE_3__*, %struct.TYPE_3__*, %struct.TYPE_3__*, %struct.TYPE_3__*, %struct.TYPE_3__*, %struct.TYPE_3__*, %struct.TYPE_3__*, %struct.TYPE_3__*, %struct.TYPE_3__*, %struct.TYPE_3__*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_3__*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @perf_env__exit(%struct.perf_env* %0) #0 {
  %2 = alloca %struct.perf_env*, align 8
  %3 = alloca i32, align 4
  store %struct.perf_env* %0, %struct.perf_env** %2, align 8
  %4 = load %struct.perf_env*, %struct.perf_env** %2, align 8
  %5 = call i32 @perf_env__purge_bpf(%struct.perf_env* %4)
  %6 = load %struct.perf_env*, %struct.perf_env** %2, align 8
  %7 = getelementptr inbounds %struct.perf_env, %struct.perf_env* %6, i32 0, i32 17
  %8 = call i32 @zfree(%struct.TYPE_3__** %7)
  %9 = load %struct.perf_env*, %struct.perf_env** %2, align 8
  %10 = getelementptr inbounds %struct.perf_env, %struct.perf_env* %9, i32 0, i32 16
  %11 = call i32 @zfree(%struct.TYPE_3__** %10)
  %12 = load %struct.perf_env*, %struct.perf_env** %2, align 8
  %13 = getelementptr inbounds %struct.perf_env, %struct.perf_env* %12, i32 0, i32 15
  %14 = call i32 @zfree(%struct.TYPE_3__** %13)
  %15 = load %struct.perf_env*, %struct.perf_env** %2, align 8
  %16 = getelementptr inbounds %struct.perf_env, %struct.perf_env* %15, i32 0, i32 14
  %17 = call i32 @zfree(%struct.TYPE_3__** %16)
  %18 = load %struct.perf_env*, %struct.perf_env** %2, align 8
  %19 = getelementptr inbounds %struct.perf_env, %struct.perf_env* %18, i32 0, i32 13
  %20 = call i32 @zfree(%struct.TYPE_3__** %19)
  %21 = load %struct.perf_env*, %struct.perf_env** %2, align 8
  %22 = getelementptr inbounds %struct.perf_env, %struct.perf_env* %21, i32 0, i32 12
  %23 = call i32 @zfree(%struct.TYPE_3__** %22)
  %24 = load %struct.perf_env*, %struct.perf_env** %2, align 8
  %25 = getelementptr inbounds %struct.perf_env, %struct.perf_env* %24, i32 0, i32 11
  %26 = call i32 @zfree(%struct.TYPE_3__** %25)
  %27 = load %struct.perf_env*, %struct.perf_env** %2, align 8
  %28 = getelementptr inbounds %struct.perf_env, %struct.perf_env* %27, i32 0, i32 10
  %29 = call i32 @zfree(%struct.TYPE_3__** %28)
  %30 = load %struct.perf_env*, %struct.perf_env** %2, align 8
  %31 = getelementptr inbounds %struct.perf_env, %struct.perf_env* %30, i32 0, i32 9
  %32 = call i32 @zfree(%struct.TYPE_3__** %31)
  %33 = load %struct.perf_env*, %struct.perf_env** %2, align 8
  %34 = getelementptr inbounds %struct.perf_env, %struct.perf_env* %33, i32 0, i32 8
  %35 = call i32 @zfree(%struct.TYPE_3__** %34)
  %36 = load %struct.perf_env*, %struct.perf_env** %2, align 8
  %37 = getelementptr inbounds %struct.perf_env, %struct.perf_env* %36, i32 0, i32 7
  %38 = call i32 @zfree(%struct.TYPE_3__** %37)
  %39 = load %struct.perf_env*, %struct.perf_env** %2, align 8
  %40 = getelementptr inbounds %struct.perf_env, %struct.perf_env* %39, i32 0, i32 6
  %41 = call i32 @zfree(%struct.TYPE_3__** %40)
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %58, %1
  %43 = load i32, i32* %3, align 4
  %44 = load %struct.perf_env*, %struct.perf_env** %2, align 8
  %45 = getelementptr inbounds %struct.perf_env, %struct.perf_env* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %61

48:                                               ; preds = %42
  %49 = load %struct.perf_env*, %struct.perf_env** %2, align 8
  %50 = getelementptr inbounds %struct.perf_env, %struct.perf_env* %49, i32 0, i32 5
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @perf_cpu_map__put(i32 %56)
  br label %58

58:                                               ; preds = %48
  %59 = load i32, i32* %3, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %3, align 4
  br label %42

61:                                               ; preds = %42
  %62 = load %struct.perf_env*, %struct.perf_env** %2, align 8
  %63 = getelementptr inbounds %struct.perf_env, %struct.perf_env* %62, i32 0, i32 5
  %64 = call i32 @zfree(%struct.TYPE_3__** %63)
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %79, %61
  %66 = load i32, i32* %3, align 4
  %67 = load %struct.perf_env*, %struct.perf_env** %2, align 8
  %68 = getelementptr inbounds %struct.perf_env, %struct.perf_env* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %82

71:                                               ; preds = %65
  %72 = load %struct.perf_env*, %struct.perf_env** %2, align 8
  %73 = getelementptr inbounds %struct.perf_env, %struct.perf_env* %72, i32 0, i32 4
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = load i32, i32* %3, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i64 %76
  %78 = call i32 @cpu_cache_level__free(%struct.TYPE_3__* %77)
  br label %79

79:                                               ; preds = %71
  %80 = load i32, i32* %3, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %3, align 4
  br label %65

82:                                               ; preds = %65
  %83 = load %struct.perf_env*, %struct.perf_env** %2, align 8
  %84 = getelementptr inbounds %struct.perf_env, %struct.perf_env* %83, i32 0, i32 4
  %85 = call i32 @zfree(%struct.TYPE_3__** %84)
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %101, %82
  %87 = load i32, i32* %3, align 4
  %88 = load %struct.perf_env*, %struct.perf_env** %2, align 8
  %89 = getelementptr inbounds %struct.perf_env, %struct.perf_env* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = icmp slt i32 %87, %90
  br i1 %91, label %92, label %104

92:                                               ; preds = %86
  %93 = load %struct.perf_env*, %struct.perf_env** %2, align 8
  %94 = getelementptr inbounds %struct.perf_env, %struct.perf_env* %93, i32 0, i32 3
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %94, align 8
  %96 = load i32, i32* %3, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = call i32 @zfree(%struct.TYPE_3__** %99)
  br label %101

101:                                              ; preds = %92
  %102 = load i32, i32* %3, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %3, align 4
  br label %86

104:                                              ; preds = %86
  %105 = load %struct.perf_env*, %struct.perf_env** %2, align 8
  %106 = getelementptr inbounds %struct.perf_env, %struct.perf_env* %105, i32 0, i32 3
  %107 = call i32 @zfree(%struct.TYPE_3__** %106)
  ret void
}

declare dso_local i32 @perf_env__purge_bpf(%struct.perf_env*) #1

declare dso_local i32 @zfree(%struct.TYPE_3__**) #1

declare dso_local i32 @perf_cpu_map__put(i32) #1

declare dso_local i32 @cpu_cache_level__free(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
