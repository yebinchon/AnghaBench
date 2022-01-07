; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_cputopo.c_numa_topology__new.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_cputopo.c_numa_topology__new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.numa_topology = type { i32, i32* }
%struct.perf_cpu_map = type { i32*, i64 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@NODE_ONLINE_FMT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.numa_topology* @numa_topology__new() #0 {
  %1 = alloca %struct.numa_topology*, align 8
  %2 = alloca %struct.perf_cpu_map*, align 8
  %3 = alloca %struct.numa_topology*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.perf_cpu_map* null, %struct.perf_cpu_map** %2, align 8
  store %struct.numa_topology* null, %struct.numa_topology** %3, align 8
  %13 = load i32, i32* @MAXPATHLEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %4, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %5, align 8
  store i8* null, i8** %6, align 8
  store i64 0, i64* %7, align 8
  %17 = load i32, i32* @MAXPATHLEN, align 4
  %18 = load i32, i32* @NODE_ONLINE_FMT, align 4
  %19 = call i32 (...) @sysfs__mountpoint()
  %20 = call i32 @scnprintf(i8* %16, i32 %17, i32 %18, i32 %19)
  %21 = call i32* @fopen(i8* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %21, i32** %10, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %0
  store %struct.numa_topology* null, %struct.numa_topology** %1, align 8
  store i32 1, i32* %12, align 4
  br label %97

25:                                               ; preds = %0
  %26 = load i32*, i32** %10, align 8
  %27 = call i64 @getline(i8** %6, i64* %7, i32* %26)
  %28 = icmp sle i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %89

30:                                               ; preds = %25
  %31 = load i8*, i8** %6, align 8
  %32 = call i8* @strchr(i8* %31, i8 signext 10)
  store i8* %32, i8** %11, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i8*, i8** %11, align 8
  store i8 0, i8* %36, align 1
  br label %37

37:                                               ; preds = %35, %30
  %38 = load i8*, i8** %6, align 8
  %39 = call %struct.perf_cpu_map* @perf_cpu_map__new(i8* %38)
  store %struct.perf_cpu_map* %39, %struct.perf_cpu_map** %2, align 8
  %40 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %2, align 8
  %41 = icmp ne %struct.perf_cpu_map* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  br label %89

43:                                               ; preds = %37
  %44 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %2, align 8
  %45 = getelementptr inbounds %struct.perf_cpu_map, %struct.perf_cpu_map* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = mul i64 4, %49
  %51 = add i64 16, %50
  %52 = trunc i64 %51 to i32
  %53 = call %struct.numa_topology* @zalloc(i32 %52)
  store %struct.numa_topology* %53, %struct.numa_topology** %3, align 8
  %54 = load %struct.numa_topology*, %struct.numa_topology** %3, align 8
  %55 = icmp ne %struct.numa_topology* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %43
  br label %89

57:                                               ; preds = %43
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.numa_topology*, %struct.numa_topology** %3, align 8
  %60 = getelementptr inbounds %struct.numa_topology, %struct.numa_topology* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  store i32 0, i32* %9, align 4
  br label %61

61:                                               ; preds = %85, %57
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %88

65:                                               ; preds = %61
  %66 = load %struct.numa_topology*, %struct.numa_topology** %3, align 8
  %67 = getelementptr inbounds %struct.numa_topology, %struct.numa_topology* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %2, align 8
  %73 = getelementptr inbounds %struct.perf_cpu_map, %struct.perf_cpu_map* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @load_numa_node(i32* %71, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %65
  %82 = load %struct.numa_topology*, %struct.numa_topology** %3, align 8
  %83 = call i32 @numa_topology__delete(%struct.numa_topology* %82)
  store %struct.numa_topology* null, %struct.numa_topology** %3, align 8
  br label %88

84:                                               ; preds = %65
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %9, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %9, align 4
  br label %61

88:                                               ; preds = %81, %61
  br label %89

89:                                               ; preds = %88, %56, %42, %29
  %90 = load i8*, i8** %6, align 8
  %91 = call i32 @free(i8* %90)
  %92 = load i32*, i32** %10, align 8
  %93 = call i32 @fclose(i32* %92)
  %94 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %2, align 8
  %95 = call i32 @perf_cpu_map__put(%struct.perf_cpu_map* %94)
  %96 = load %struct.numa_topology*, %struct.numa_topology** %3, align 8
  store %struct.numa_topology* %96, %struct.numa_topology** %1, align 8
  store i32 1, i32* %12, align 4
  br label %97

97:                                               ; preds = %89, %24
  %98 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %98)
  %99 = load %struct.numa_topology*, %struct.numa_topology** %1, align 8
  ret %struct.numa_topology* %99
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @scnprintf(i8*, i32, i32, i32) #2

declare dso_local i32 @sysfs__mountpoint(...) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i64 @getline(i8**, i64*, i32*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local %struct.perf_cpu_map* @perf_cpu_map__new(i8*) #2

declare dso_local %struct.numa_topology* @zalloc(i32) #2

declare dso_local i64 @load_numa_node(i32*, i32) #2

declare dso_local i32 @numa_topology__delete(%struct.numa_topology*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @perf_cpu_map__put(%struct.perf_cpu_map*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
