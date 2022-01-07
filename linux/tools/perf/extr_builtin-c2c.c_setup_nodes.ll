; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-c2c.c_setup_nodes.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-c2c.c_setup_nodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i64**, i32* }
%struct.perf_session = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, %struct.numa_node* }
%struct.numa_node = type { %struct.perf_cpu_map* }
%struct.perf_cpu_map = type { i32, i64* }

@c2c = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"node/cpu topology bug\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_session*)* @setup_nodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_nodes(%struct.perf_session* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_session*, align 8
  %4 = alloca %struct.numa_node*, align 8
  %5 = alloca i64**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.perf_cpu_map*, align 8
  %10 = alloca i64*, align 8
  store %struct.perf_session* %0, %struct.perf_session** %3, align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @c2c, i32 0, i32 0), align 8
  %12 = icmp sgt i32 %11, 2
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 2, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @c2c, i32 0, i32 0), align 8
  br label %14

14:                                               ; preds = %13, %1
  %15 = load %struct.perf_session*, %struct.perf_session** %3, align 8
  %16 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @c2c, i32 0, i32 1), align 4
  %20 = load %struct.perf_session*, %struct.perf_session** %3, align 8
  %21 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @c2c, i32 0, i32 2), align 8
  %25 = load %struct.perf_session*, %struct.perf_session** %3, align 8
  %26 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  %29 = load %struct.numa_node*, %struct.numa_node** %28, align 8
  store %struct.numa_node* %29, %struct.numa_node** %4, align 8
  %30 = load %struct.numa_node*, %struct.numa_node** %4, align 8
  %31 = icmp ne %struct.numa_node* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %14
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %157

35:                                               ; preds = %14
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @c2c, i32 0, i32 1), align 4
  %37 = sext i32 %36 to i64
  %38 = mul i64 8, %37
  %39 = trunc i64 %38 to i32
  %40 = call i8* @zalloc(i32 %39)
  %41 = bitcast i8* %40 to i64**
  store i64** %41, i64*** %5, align 8
  %42 = load i64**, i64*** %5, align 8
  %43 = icmp ne i64** %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %35
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %157

47:                                               ; preds = %35
  %48 = load i64**, i64*** %5, align 8
  store i64** %48, i64*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @c2c, i32 0, i32 3), align 8
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @c2c, i32 0, i32 2), align 8
  %50 = sext i32 %49 to i64
  %51 = mul i64 4, %50
  %52 = trunc i64 %51 to i32
  %53 = call i8* @zalloc(i32 %52)
  %54 = bitcast i8* %53 to i32*
  store i32* %54, i32** %8, align 8
  %55 = load i32*, i32** %8, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %47
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %157

60:                                               ; preds = %47
  store i32 0, i32* %7, align 4
  br label %61

61:                                               ; preds = %70, %60
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @c2c, i32 0, i32 2), align 8
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %61
  %66 = load i32*, i32** %8, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 -1, i32* %69, align 4
  br label %70

70:                                               ; preds = %65
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %7, align 4
  br label %61

73:                                               ; preds = %61
  %74 = load i32*, i32** %8, align 8
  store i32* %74, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @c2c, i32 0, i32 4), align 8
  store i32 0, i32* %6, align 4
  br label %75

75:                                               ; preds = %152, %73
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @c2c, i32 0, i32 1), align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %155

79:                                               ; preds = %75
  %80 = load %struct.numa_node*, %struct.numa_node** %4, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.numa_node, %struct.numa_node* %80, i64 %82
  %84 = getelementptr inbounds %struct.numa_node, %struct.numa_node* %83, i32 0, i32 0
  %85 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %84, align 8
  store %struct.perf_cpu_map* %85, %struct.perf_cpu_map** %9, align 8
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @c2c, i32 0, i32 2), align 8
  %87 = call i64* @bitmap_alloc(i32 %86)
  store i64* %87, i64** %10, align 8
  %88 = load i64*, i64** %10, align 8
  %89 = icmp ne i64* %88, null
  br i1 %89, label %93, label %90

90:                                               ; preds = %79
  %91 = load i32, i32* @ENOMEM, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %2, align 4
  br label %157

93:                                               ; preds = %79
  %94 = load i64*, i64** %10, align 8
  %95 = load i64**, i64*** %5, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i64*, i64** %95, i64 %97
  store i64* %94, i64** %98, align 8
  %99 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %9, align 8
  %100 = call i64 @perf_cpu_map__empty(%struct.perf_cpu_map* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %93
  br label %152

103:                                              ; preds = %93
  store i32 0, i32* %7, align 4
  br label %104

104:                                              ; preds = %148, %103
  %105 = load i32, i32* %7, align 4
  %106 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %9, align 8
  %107 = getelementptr inbounds %struct.perf_cpu_map, %struct.perf_cpu_map* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp slt i32 %105, %108
  br i1 %109, label %110, label %151

110:                                              ; preds = %104
  %111 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %9, align 8
  %112 = getelementptr inbounds %struct.perf_cpu_map, %struct.perf_cpu_map* %111, i32 0, i32 1
  %113 = load i64*, i64** %112, align 8
  %114 = load i32, i32* %7, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i64, i64* %113, i64 %115
  %117 = load i64, i64* %116, align 8
  %118 = load i64*, i64** %10, align 8
  %119 = call i32 @set_bit(i64 %117, i64* %118)
  %120 = load i32*, i32** %8, align 8
  %121 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %9, align 8
  %122 = getelementptr inbounds %struct.perf_cpu_map, %struct.perf_cpu_map* %121, i32 0, i32 1
  %123 = load i64*, i64** %122, align 8
  %124 = load i32, i32* %7, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i64, i64* %123, i64 %125
  %127 = load i64, i64* %126, align 8
  %128 = getelementptr inbounds i32, i32* %120, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, -1
  %131 = zext i1 %130 to i32
  %132 = call i64 @WARN_ONCE(i32 %131, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %110
  %135 = load i32, i32* @EINVAL, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %2, align 4
  br label %157

137:                                              ; preds = %110
  %138 = load i32, i32* %6, align 4
  %139 = load i32*, i32** %8, align 8
  %140 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %9, align 8
  %141 = getelementptr inbounds %struct.perf_cpu_map, %struct.perf_cpu_map* %140, i32 0, i32 1
  %142 = load i64*, i64** %141, align 8
  %143 = load i32, i32* %7, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i64, i64* %142, i64 %144
  %146 = load i64, i64* %145, align 8
  %147 = getelementptr inbounds i32, i32* %139, i64 %146
  store i32 %138, i32* %147, align 4
  br label %148

148:                                              ; preds = %137
  %149 = load i32, i32* %7, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %7, align 4
  br label %104

151:                                              ; preds = %104
  br label %152

152:                                              ; preds = %151, %102
  %153 = load i32, i32* %6, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %6, align 4
  br label %75

155:                                              ; preds = %75
  %156 = call i32 (...) @setup_nodes_header()
  store i32 0, i32* %2, align 4
  br label %157

157:                                              ; preds = %155, %134, %90, %57, %44, %32
  %158 = load i32, i32* %2, align 4
  ret i32 %158
}

declare dso_local i8* @zalloc(i32) #1

declare dso_local i64* @bitmap_alloc(i32) #1

declare dso_local i64 @perf_cpu_map__empty(%struct.perf_cpu_map*) #1

declare dso_local i32 @set_bit(i64, i64*) #1

declare dso_local i64 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @setup_nodes_header(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
