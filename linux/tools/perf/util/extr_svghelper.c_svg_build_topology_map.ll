; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_svghelper.c_svg_build_topology_map.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_svghelper.c_svg_build_topology_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_env = type { i32, i32, i8*, i8*, i32 }
%struct.topology = type { i32, i32, i32*, i32* }

@MAX_NR_CPUS = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"topology: no memory\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"topology: can't parse siblings map\0A\00", align 1
@topology_map = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @svg_build_topology_map(%struct.perf_env* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_env*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.topology, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.perf_env* %0, %struct.perf_env** %3, align 8
  %9 = load %struct.perf_env*, %struct.perf_env** %3, align 8
  %10 = getelementptr inbounds %struct.perf_env, %struct.perf_env* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @MAX_NR_CPUS, align 4
  %13 = call i32 @min(i32 %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.perf_env*, %struct.perf_env** %3, align 8
  %15 = getelementptr inbounds %struct.perf_env, %struct.perf_env* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = getelementptr inbounds %struct.topology, %struct.topology* %6, i32 0, i32 0
  store i32 %16, i32* %17, align 8
  %18 = load %struct.perf_env*, %struct.perf_env** %3, align 8
  %19 = getelementptr inbounds %struct.perf_env, %struct.perf_env* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.topology, %struct.topology* %6, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = load %struct.perf_env*, %struct.perf_env** %3, align 8
  %23 = getelementptr inbounds %struct.perf_env, %struct.perf_env* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i8* @calloc(i32 %24, i32 4)
  %26 = bitcast i8* %25 to i32*
  %27 = getelementptr inbounds %struct.topology, %struct.topology* %6, i32 0, i32 3
  store i32* %26, i32** %27, align 8
  %28 = load %struct.perf_env*, %struct.perf_env** %3, align 8
  %29 = getelementptr inbounds %struct.perf_env, %struct.perf_env* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @calloc(i32 %30, i32 4)
  %32 = bitcast i8* %31 to i32*
  %33 = getelementptr inbounds %struct.topology, %struct.topology* %6, i32 0, i32 2
  store i32* %32, i32** %33, align 8
  %34 = load %struct.perf_env*, %struct.perf_env** %3, align 8
  %35 = getelementptr inbounds %struct.perf_env, %struct.perf_env* %34, i32 0, i32 2
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %7, align 8
  %37 = load %struct.perf_env*, %struct.perf_env** %3, align 8
  %38 = getelementptr inbounds %struct.perf_env, %struct.perf_env* %37, i32 0, i32 3
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %8, align 8
  %40 = getelementptr inbounds %struct.topology, %struct.topology* %6, i32 0, i32 3
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %1
  %44 = getelementptr inbounds %struct.topology, %struct.topology* %6, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %43, %1
  %48 = load i32, i32* @stderr, align 4
  %49 = call i32 @fprintf(i32 %48, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %136

50:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %76, %50
  %52 = load i32, i32* %4, align 4
  %53 = load %struct.perf_env*, %struct.perf_env** %3, align 8
  %54 = getelementptr inbounds %struct.perf_env, %struct.perf_env* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %79

57:                                               ; preds = %51
  %58 = load i8*, i8** %7, align 8
  %59 = getelementptr inbounds %struct.topology, %struct.topology* %6, i32 0, i32 3
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %4, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %5, align 4
  %65 = call i64 @str_to_bitmap(i8* %58, i32* %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %57
  %68 = load i32, i32* @stderr, align 4
  %69 = call i32 @fprintf(i32 %68, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %136

70:                                               ; preds = %57
  %71 = load i8*, i8** %7, align 8
  %72 = call i64 @strlen(i8* %71)
  %73 = add nsw i64 %72, 1
  %74 = load i8*, i8** %7, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 %73
  store i8* %75, i8** %7, align 8
  br label %76

76:                                               ; preds = %70
  %77 = load i32, i32* %4, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %4, align 4
  br label %51

79:                                               ; preds = %51
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %105, %79
  %81 = load i32, i32* %4, align 4
  %82 = load %struct.perf_env*, %struct.perf_env** %3, align 8
  %83 = getelementptr inbounds %struct.perf_env, %struct.perf_env* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp slt i32 %81, %84
  br i1 %85, label %86, label %108

86:                                               ; preds = %80
  %87 = load i8*, i8** %8, align 8
  %88 = getelementptr inbounds %struct.topology, %struct.topology* %6, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %4, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %5, align 4
  %94 = call i64 @str_to_bitmap(i8* %87, i32* %92, i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %86
  %97 = load i32, i32* @stderr, align 4
  %98 = call i32 @fprintf(i32 %97, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %136

99:                                               ; preds = %86
  %100 = load i8*, i8** %8, align 8
  %101 = call i64 @strlen(i8* %100)
  %102 = add nsw i64 %101, 1
  %103 = load i8*, i8** %8, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 %102
  store i8* %104, i8** %8, align 8
  br label %105

105:                                              ; preds = %99
  %106 = load i32, i32* %4, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %4, align 4
  br label %80

108:                                              ; preds = %80
  %109 = load i32, i32* %5, align 4
  %110 = sext i32 %109 to i64
  %111 = mul i64 4, %110
  %112 = trunc i64 %111 to i32
  %113 = call i32* @malloc(i32 %112)
  store i32* %113, i32** @topology_map, align 8
  %114 = load i32*, i32** @topology_map, align 8
  %115 = icmp ne i32* %114, null
  br i1 %115, label %119, label %116

116:                                              ; preds = %108
  %117 = load i32, i32* @stderr, align 4
  %118 = call i32 @fprintf(i32 %117, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %136

119:                                              ; preds = %108
  store i32 0, i32* %4, align 4
  br label %120

120:                                              ; preds = %129, %119
  %121 = load i32, i32* %4, align 4
  %122 = load i32, i32* %5, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %132

124:                                              ; preds = %120
  %125 = load i32*, i32** @topology_map, align 8
  %126 = load i32, i32* %4, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  store i32 -1, i32* %128, align 4
  br label %129

129:                                              ; preds = %124
  %130 = load i32, i32* %4, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %4, align 4
  br label %120

132:                                              ; preds = %120
  %133 = load i32*, i32** @topology_map, align 8
  %134 = load i32, i32* %5, align 4
  %135 = call i32 @scan_core_topology(i32* %133, %struct.topology* %6, i32 %134)
  store i32 0, i32* %2, align 4
  br label %141

136:                                              ; preds = %116, %96, %67, %47
  %137 = getelementptr inbounds %struct.topology, %struct.topology* %6, i32 0, i32 3
  %138 = call i32 @zfree(i32** %137)
  %139 = getelementptr inbounds %struct.topology, %struct.topology* %6, i32 0, i32 2
  %140 = call i32 @zfree(i32** %139)
  store i32 -1, i32* %2, align 4
  br label %141

141:                                              ; preds = %136, %132
  %142 = load i32, i32* %2, align 4
  ret i32 %142
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i64 @str_to_bitmap(i8*, i32*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @scan_core_topology(i32*, %struct.topology*, i32) #1

declare dso_local i32 @zfree(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
