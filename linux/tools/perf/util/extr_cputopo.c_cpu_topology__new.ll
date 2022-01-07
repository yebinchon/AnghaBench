; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_cputopo.c_cpu_topology__new.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_cputopo.c_cpu_topology__new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_topology = type { i8*, i8*, i8* }
%struct.perf_cpu_map = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"failed to get system cpumap\0A\00", align 1
@UINT_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cpu_topology* @cpu_topology__new() #0 {
  %1 = alloca %struct.cpu_topology*, align 8
  %2 = alloca %struct.cpu_topology*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.perf_cpu_map*, align 8
  %11 = alloca i32, align 4
  store %struct.cpu_topology* null, %struct.cpu_topology** %2, align 8
  store i32 -1, i32* %9, align 4
  %12 = call i32 (...) @has_die_topology()
  store i32 %12, i32* %11, align 4
  %13 = call i64 (...) @cpu__max_present_cpu()
  store i64 %13, i64* %8, align 8
  %14 = call %struct.perf_cpu_map* @perf_cpu_map__new(i32* null)
  store %struct.perf_cpu_map* %14, %struct.perf_cpu_map** %10, align 8
  %15 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %10, align 8
  %16 = icmp eq %struct.perf_cpu_map* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %0
  %18 = call i32 @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store %struct.cpu_topology* null, %struct.cpu_topology** %1, align 8
  br label %98

19:                                               ; preds = %0
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* @UINT_MAX, align 8
  %22 = and i64 %20, %21
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 8
  store i64 %26, i64* %7, align 8
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  store i32 3, i32* %6, align 4
  br label %31

30:                                               ; preds = %19
  store i32 2, i32* %6, align 4
  br label %31

31:                                               ; preds = %30, %29
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = load i64, i64* %7, align 8
  %35 = mul i64 %33, %34
  %36 = add i64 24, %35
  %37 = trunc i64 %36 to i32
  %38 = call i8* @calloc(i32 1, i32 %37)
  store i8* %38, i8** %3, align 8
  %39 = load i8*, i8** %3, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %31
  br label %88

42:                                               ; preds = %31
  %43 = load i8*, i8** %3, align 8
  %44 = bitcast i8* %43 to %struct.cpu_topology*
  store %struct.cpu_topology* %44, %struct.cpu_topology** %2, align 8
  %45 = load i8*, i8** %3, align 8
  %46 = getelementptr i8, i8* %45, i64 24
  store i8* %46, i8** %3, align 8
  %47 = load i8*, i8** %3, align 8
  %48 = load %struct.cpu_topology*, %struct.cpu_topology** %2, align 8
  %49 = getelementptr inbounds %struct.cpu_topology, %struct.cpu_topology* %48, i32 0, i32 2
  store i8* %47, i8** %49, align 8
  %50 = load i64, i64* %7, align 8
  %51 = load i8*, i8** %3, align 8
  %52 = getelementptr i8, i8* %51, i64 %50
  store i8* %52, i8** %3, align 8
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %42
  %56 = load i8*, i8** %3, align 8
  %57 = load %struct.cpu_topology*, %struct.cpu_topology** %2, align 8
  %58 = getelementptr inbounds %struct.cpu_topology, %struct.cpu_topology* %57, i32 0, i32 1
  store i8* %56, i8** %58, align 8
  %59 = load i64, i64* %7, align 8
  %60 = load i8*, i8** %3, align 8
  %61 = getelementptr i8, i8* %60, i64 %59
  store i8* %61, i8** %3, align 8
  br label %62

62:                                               ; preds = %55, %42
  %63 = load i8*, i8** %3, align 8
  %64 = load %struct.cpu_topology*, %struct.cpu_topology** %2, align 8
  %65 = getelementptr inbounds %struct.cpu_topology, %struct.cpu_topology* %64, i32 0, i32 0
  store i8* %63, i8** %65, align 8
  store i32 0, i32* %5, align 4
  br label %66

66:                                               ; preds = %84, %62
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* %4, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %87

70:                                               ; preds = %66
  %71 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %10, align 8
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @cpu_map__has(%struct.perf_cpu_map* %71, i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %70
  br label %84

76:                                               ; preds = %70
  %77 = load %struct.cpu_topology*, %struct.cpu_topology** %2, align 8
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @build_cpu_topology(%struct.cpu_topology* %77, i32 %78)
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %9, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  br label %87

83:                                               ; preds = %76
  br label %84

84:                                               ; preds = %83, %75
  %85 = load i32, i32* %5, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %5, align 4
  br label %66

87:                                               ; preds = %82, %66
  br label %88

88:                                               ; preds = %87, %41
  %89 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %10, align 8
  %90 = call i32 @perf_cpu_map__put(%struct.perf_cpu_map* %89)
  %91 = load i32, i32* %9, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = load %struct.cpu_topology*, %struct.cpu_topology** %2, align 8
  %95 = call i32 @cpu_topology__delete(%struct.cpu_topology* %94)
  store %struct.cpu_topology* null, %struct.cpu_topology** %2, align 8
  br label %96

96:                                               ; preds = %93, %88
  %97 = load %struct.cpu_topology*, %struct.cpu_topology** %2, align 8
  store %struct.cpu_topology* %97, %struct.cpu_topology** %1, align 8
  br label %98

98:                                               ; preds = %96, %17
  %99 = load %struct.cpu_topology*, %struct.cpu_topology** %1, align 8
  ret %struct.cpu_topology* %99
}

declare dso_local i32 @has_die_topology(...) #1

declare dso_local i64 @cpu__max_present_cpu(...) #1

declare dso_local %struct.perf_cpu_map* @perf_cpu_map__new(i32*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @cpu_map__has(%struct.perf_cpu_map*, i32) #1

declare dso_local i32 @build_cpu_topology(%struct.cpu_topology*, i32) #1

declare dso_local i32 @perf_cpu_map__put(%struct.perf_cpu_map*) #1

declare dso_local i32 @cpu_topology__delete(%struct.cpu_topology*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
