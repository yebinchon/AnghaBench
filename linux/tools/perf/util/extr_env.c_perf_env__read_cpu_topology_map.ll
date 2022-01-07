; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_env.c_perf_env__read_cpu_topology_map.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_env.c_perf_env__read_cpu_topology_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_env = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perf_env__read_cpu_topology_map(%struct.perf_env* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_env*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.perf_env* %0, %struct.perf_env** %3, align 8
  %6 = load %struct.perf_env*, %struct.perf_env** %3, align 8
  %7 = getelementptr inbounds %struct.perf_env, %struct.perf_env* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = icmp ne %struct.TYPE_2__* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %83

11:                                               ; preds = %1
  %12 = load %struct.perf_env*, %struct.perf_env** %3, align 8
  %13 = getelementptr inbounds %struct.perf_env, %struct.perf_env* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = call i32 (...) @cpu__max_present_cpu()
  %18 = load %struct.perf_env*, %struct.perf_env** %3, align 8
  %19 = getelementptr inbounds %struct.perf_env, %struct.perf_env* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  br label %20

20:                                               ; preds = %16, %11
  %21 = load %struct.perf_env*, %struct.perf_env** %3, align 8
  %22 = getelementptr inbounds %struct.perf_env, %struct.perf_env* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %83

29:                                               ; preds = %20
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @calloc(i32 %30, i32 12)
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to %struct.TYPE_2__*
  %34 = load %struct.perf_env*, %struct.perf_env** %3, align 8
  %35 = getelementptr inbounds %struct.perf_env, %struct.perf_env* %34, i32 0, i32 1
  store %struct.TYPE_2__* %33, %struct.TYPE_2__** %35, align 8
  %36 = load %struct.perf_env*, %struct.perf_env** %3, align 8
  %37 = getelementptr inbounds %struct.perf_env, %struct.perf_env* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = icmp eq %struct.TYPE_2__* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %29
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %83

43:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %76, %43
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %79

48:                                               ; preds = %44
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @cpu_map__get_core_id(i32 %49)
  %51 = load %struct.perf_env*, %struct.perf_env** %3, align 8
  %52 = getelementptr inbounds %struct.perf_env, %struct.perf_env* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  store i32 %50, i32* %57, align 4
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @cpu_map__get_socket_id(i32 %58)
  %60 = load %struct.perf_env*, %struct.perf_env** %3, align 8
  %61 = getelementptr inbounds %struct.perf_env, %struct.perf_env* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  store i32 %59, i32* %66, align 4
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @cpu_map__get_die_id(i32 %67)
  %69 = load %struct.perf_env*, %struct.perf_env** %3, align 8
  %70 = getelementptr inbounds %struct.perf_env, %struct.perf_env* %69, i32 0, i32 1
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  store i32 %68, i32* %75, align 4
  br label %76

76:                                               ; preds = %48
  %77 = load i32, i32* %4, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %4, align 4
  br label %44

79:                                               ; preds = %44
  %80 = load i32, i32* %5, align 4
  %81 = load %struct.perf_env*, %struct.perf_env** %3, align 8
  %82 = getelementptr inbounds %struct.perf_env, %struct.perf_env* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  store i32 0, i32* %2, align 4
  br label %83

83:                                               ; preds = %79, %40, %26, %10
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @cpu__max_present_cpu(...) #1

declare dso_local i32 @calloc(i32, i32) #1

declare dso_local i32 @cpu_map__get_core_id(i32) #1

declare dso_local i32 @cpu_map__get_socket_id(i32) #1

declare dso_local i32 @cpu_map__get_die_id(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
