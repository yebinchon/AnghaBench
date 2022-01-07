; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-finder.c_debuginfo__find_probe_location.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-finder.c_debuginfo__find_probe_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debuginfo = type { i32 }
%struct.probe_finder = type { i32*, i32, i32, i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.perf_probe_point }
%struct.perf_probe_point = type { i32, i64, i64, i64 }
%struct.pubname_callback_param = type { i64, i32*, i32*, i64, i64 }
%struct.dwarf_callback_param = type { %struct.probe_finder* }

@ENOMEM = common dso_local global i32 0, align 4
@pubname_search_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.debuginfo*, %struct.probe_finder*)* @debuginfo__find_probe_location to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @debuginfo__find_probe_location(%struct.debuginfo* %0, %struct.probe_finder* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.debuginfo*, align 8
  %5 = alloca %struct.probe_finder*, align 8
  %6 = alloca %struct.perf_probe_point*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.pubname_callback_param, align 8
  %13 = alloca %struct.dwarf_callback_param, align 8
  store %struct.debuginfo* %0, %struct.debuginfo** %4, align 8
  store %struct.probe_finder* %1, %struct.probe_finder** %5, align 8
  %14 = load %struct.probe_finder*, %struct.probe_finder** %5, align 8
  %15 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %14, i32 0, i32 5
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store %struct.perf_probe_point* %17, %struct.perf_probe_point** %6, align 8
  store i32 0, i32* %11, align 4
  store i64 0, i64* %7, align 8
  %18 = call i32* @intlist__new(i32* null)
  %19 = load %struct.probe_finder*, %struct.probe_finder** %5, align 8
  %20 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %19, i32 0, i32 0
  store i32* %18, i32** %20, align 8
  %21 = load %struct.probe_finder*, %struct.probe_finder** %5, align 8
  %22 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %166

28:                                               ; preds = %2
  %29 = load %struct.perf_probe_point*, %struct.perf_probe_point** %6, align 8
  %30 = getelementptr inbounds %struct.perf_probe_point, %struct.perf_probe_point* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %74

33:                                               ; preds = %28
  %34 = load %struct.perf_probe_point*, %struct.perf_probe_point** %6, align 8
  %35 = getelementptr inbounds %struct.perf_probe_point, %struct.perf_probe_point* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @strisglob(i64 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %74, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.pubname_callback_param, %struct.pubname_callback_param* %12, i32 0, i32 0
  store i64 0, i64* %40, align 8
  %41 = getelementptr inbounds %struct.pubname_callback_param, %struct.pubname_callback_param* %12, i32 0, i32 1
  %42 = load %struct.probe_finder*, %struct.probe_finder** %5, align 8
  %43 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %42, i32 0, i32 4
  store i32* %43, i32** %41, align 8
  %44 = getelementptr inbounds %struct.pubname_callback_param, %struct.pubname_callback_param* %12, i32 0, i32 2
  %45 = load %struct.probe_finder*, %struct.probe_finder** %5, align 8
  %46 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %45, i32 0, i32 2
  store i32* %46, i32** %44, align 8
  %47 = getelementptr inbounds %struct.pubname_callback_param, %struct.pubname_callback_param* %12, i32 0, i32 3
  %48 = load %struct.perf_probe_point*, %struct.perf_probe_point** %6, align 8
  %49 = getelementptr inbounds %struct.perf_probe_point, %struct.perf_probe_point* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %47, align 8
  %51 = getelementptr inbounds %struct.pubname_callback_param, %struct.pubname_callback_param* %12, i32 0, i32 4
  %52 = load %struct.perf_probe_point*, %struct.perf_probe_point** %6, align 8
  %53 = getelementptr inbounds %struct.perf_probe_point, %struct.perf_probe_point* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %51, align 8
  %55 = getelementptr inbounds %struct.dwarf_callback_param, %struct.dwarf_callback_param* %13, i32 0, i32 0
  %56 = load %struct.probe_finder*, %struct.probe_finder** %5, align 8
  store %struct.probe_finder* %56, %struct.probe_finder** %55, align 8
  %57 = load %struct.debuginfo*, %struct.debuginfo** %4, align 8
  %58 = getelementptr inbounds %struct.debuginfo, %struct.debuginfo* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @pubname_search_cb, align 4
  %61 = call i32 @dwarf_getpubnames(i32 %59, i32 %60, %struct.pubname_callback_param* %12, i32 0)
  %62 = getelementptr inbounds %struct.pubname_callback_param, %struct.pubname_callback_param* %12, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %39
  %66 = load %struct.probe_finder*, %struct.probe_finder** %5, align 8
  %67 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %66, i32 0, i32 4
  %68 = call i32 @probe_point_search_cb(i32* %67, %struct.dwarf_callback_param* %13)
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %158

72:                                               ; preds = %65
  br label %73

73:                                               ; preds = %72, %39
  br label %74

74:                                               ; preds = %73, %33, %28
  br label %75

75:                                               ; preds = %155, %95, %74
  %76 = load %struct.debuginfo*, %struct.debuginfo** %4, align 8
  %77 = getelementptr inbounds %struct.debuginfo, %struct.debuginfo* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i64, i64* %7, align 8
  %80 = call i32 @dwarf_nextcu(i32 %78, i64 %79, i64* %8, i64* %9, i32* null, i32* null, i32* null)
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  br i1 %82, label %83, label %157

83:                                               ; preds = %75
  %84 = load %struct.debuginfo*, %struct.debuginfo** %4, align 8
  %85 = getelementptr inbounds %struct.debuginfo, %struct.debuginfo* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i64, i64* %7, align 8
  %88 = load i64, i64* %9, align 8
  %89 = add i64 %87, %88
  %90 = load %struct.probe_finder*, %struct.probe_finder** %5, align 8
  %91 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %90, i32 0, i32 2
  %92 = call i32* @dwarf_offdie(i32 %86, i64 %89, i32* %91)
  store i32* %92, i32** %10, align 8
  %93 = load i32*, i32** %10, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %96, label %95

95:                                               ; preds = %83
  br label %75

96:                                               ; preds = %83
  %97 = load %struct.perf_probe_point*, %struct.perf_probe_point** %6, align 8
  %98 = getelementptr inbounds %struct.perf_probe_point, %struct.perf_probe_point* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %110

101:                                              ; preds = %96
  %102 = load %struct.probe_finder*, %struct.probe_finder** %5, align 8
  %103 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %102, i32 0, i32 2
  %104 = load %struct.perf_probe_point*, %struct.perf_probe_point** %6, align 8
  %105 = getelementptr inbounds %struct.perf_probe_point, %struct.perf_probe_point* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = call i32* @cu_find_realpath(i32* %103, i64 %106)
  %108 = load %struct.probe_finder*, %struct.probe_finder** %5, align 8
  %109 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %108, i32 0, i32 3
  store i32* %107, i32** %109, align 8
  br label %113

110:                                              ; preds = %96
  %111 = load %struct.probe_finder*, %struct.probe_finder** %5, align 8
  %112 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %111, i32 0, i32 3
  store i32* null, i32** %112, align 8
  br label %113

113:                                              ; preds = %110, %101
  %114 = load %struct.perf_probe_point*, %struct.perf_probe_point** %6, align 8
  %115 = getelementptr inbounds %struct.perf_probe_point, %struct.perf_probe_point* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %113
  %119 = load %struct.probe_finder*, %struct.probe_finder** %5, align 8
  %120 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %119, i32 0, i32 3
  %121 = load i32*, i32** %120, align 8
  %122 = icmp ne i32* %121, null
  br i1 %122, label %123, label %155

123:                                              ; preds = %118, %113
  %124 = load %struct.perf_probe_point*, %struct.perf_probe_point** %6, align 8
  %125 = getelementptr inbounds %struct.perf_probe_point, %struct.perf_probe_point* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %123
  %129 = load %struct.probe_finder*, %struct.probe_finder** %5, align 8
  %130 = call i32 @find_probe_point_by_func(%struct.probe_finder* %129)
  store i32 %130, i32* %11, align 4
  br label %150

131:                                              ; preds = %123
  %132 = load %struct.perf_probe_point*, %struct.perf_probe_point** %6, align 8
  %133 = getelementptr inbounds %struct.perf_probe_point, %struct.perf_probe_point* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %131
  %137 = load %struct.probe_finder*, %struct.probe_finder** %5, align 8
  %138 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %137, i32 0, i32 2
  %139 = load %struct.probe_finder*, %struct.probe_finder** %5, align 8
  %140 = call i32 @find_probe_point_lazy(i32* %138, %struct.probe_finder* %139)
  store i32 %140, i32* %11, align 4
  br label %149

141:                                              ; preds = %131
  %142 = load %struct.perf_probe_point*, %struct.perf_probe_point** %6, align 8
  %143 = getelementptr inbounds %struct.perf_probe_point, %struct.perf_probe_point* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.probe_finder*, %struct.probe_finder** %5, align 8
  %146 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %145, i32 0, i32 1
  store i32 %144, i32* %146, align 8
  %147 = load %struct.probe_finder*, %struct.probe_finder** %5, align 8
  %148 = call i32 @find_probe_point_by_line(%struct.probe_finder* %147)
  store i32 %148, i32* %11, align 4
  br label %149

149:                                              ; preds = %141, %136
  br label %150

150:                                              ; preds = %149, %128
  %151 = load i32, i32* %11, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %150
  br label %157

154:                                              ; preds = %150
  br label %155

155:                                              ; preds = %154, %118
  %156 = load i64, i64* %8, align 8
  store i64 %156, i64* %7, align 8
  br label %75

157:                                              ; preds = %153, %75
  br label %158

158:                                              ; preds = %157, %71
  %159 = load %struct.probe_finder*, %struct.probe_finder** %5, align 8
  %160 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %159, i32 0, i32 0
  %161 = load i32*, i32** %160, align 8
  %162 = call i32 @intlist__delete(i32* %161)
  %163 = load %struct.probe_finder*, %struct.probe_finder** %5, align 8
  %164 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %163, i32 0, i32 0
  store i32* null, i32** %164, align 8
  %165 = load i32, i32* %11, align 4
  store i32 %165, i32* %3, align 4
  br label %166

166:                                              ; preds = %158, %25
  %167 = load i32, i32* %3, align 4
  ret i32 %167
}

declare dso_local i32* @intlist__new(i32*) #1

declare dso_local i32 @strisglob(i64) #1

declare dso_local i32 @dwarf_getpubnames(i32, i32, %struct.pubname_callback_param*, i32) #1

declare dso_local i32 @probe_point_search_cb(i32*, %struct.dwarf_callback_param*) #1

declare dso_local i32 @dwarf_nextcu(i32, i64, i64*, i64*, i32*, i32*, i32*) #1

declare dso_local i32* @dwarf_offdie(i32, i64, i32*) #1

declare dso_local i32* @cu_find_realpath(i32*, i64) #1

declare dso_local i32 @find_probe_point_by_func(%struct.probe_finder*) #1

declare dso_local i32 @find_probe_point_lazy(i32*, %struct.probe_finder*) #1

declare dso_local i32 @find_probe_point_by_line(%struct.probe_finder*) #1

declare dso_local i32 @intlist__delete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
