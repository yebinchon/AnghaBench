; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-finder.c_probe_point_search_cb.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-finder.c_probe_point_search_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.dwarf_callback_param = type { i32, %struct.probe_finder* }
%struct.probe_finder = type { i64, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.perf_probe_point }
%struct.perf_probe_point = type { i64, i32, i64, i64, i64 }

@DWARF_CB_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Matched function: %s [%lx]\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"%s has no entry PC. Skipped\0A\00", align 1
@probe_conf = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@probe_point_inline_cb = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@DWARF_CB_ABORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @probe_point_search_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @probe_point_search_cb(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dwarf_callback_param*, align 8
  %7 = alloca %struct.probe_finder*, align 8
  %8 = alloca %struct.perf_probe_point*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.dwarf_callback_param*
  store %struct.dwarf_callback_param* %10, %struct.dwarf_callback_param** %6, align 8
  %11 = load %struct.dwarf_callback_param*, %struct.dwarf_callback_param** %6, align 8
  %12 = getelementptr inbounds %struct.dwarf_callback_param, %struct.dwarf_callback_param* %11, i32 0, i32 1
  %13 = load %struct.probe_finder*, %struct.probe_finder** %12, align 8
  store %struct.probe_finder* %13, %struct.probe_finder** %7, align 8
  %14 = load %struct.probe_finder*, %struct.probe_finder** %7, align 8
  %15 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %14, i32 0, i32 3
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store %struct.perf_probe_point* %17, %struct.perf_probe_point** %8, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @die_is_func_def(i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %2
  %22 = load i32*, i32** %4, align 8
  %23 = load %struct.perf_probe_point*, %struct.perf_probe_point** %8, align 8
  %24 = getelementptr inbounds %struct.perf_probe_point, %struct.perf_probe_point* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @die_match_name(i32* %22, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %21, %2
  %29 = load i32, i32* @DWARF_CB_OK, align 4
  store i32 %29, i32* %3, align 4
  br label %165

30:                                               ; preds = %21
  %31 = load %struct.perf_probe_point*, %struct.perf_probe_point** %8, align 8
  %32 = getelementptr inbounds %struct.perf_probe_point, %struct.perf_probe_point* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %30
  %36 = load %struct.perf_probe_point*, %struct.perf_probe_point** %8, align 8
  %37 = getelementptr inbounds %struct.perf_probe_point, %struct.perf_probe_point* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @dwarf_decl_file(i32* %39)
  %41 = call i64 @strtailcmp(i64 %38, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = load i32, i32* @DWARF_CB_OK, align 4
  store i32 %44, i32* %3, align 4
  br label %165

45:                                               ; preds = %35, %30
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @dwarf_diename(i32* %46)
  %48 = load i32*, i32** %4, align 8
  %49 = call i64 @dwarf_dieoffset(i32* %48)
  %50 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %47, i64 %49)
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @dwarf_decl_file(i32* %51)
  %53 = load %struct.probe_finder*, %struct.probe_finder** %7, align 8
  %54 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = load %struct.perf_probe_point*, %struct.perf_probe_point** %8, align 8
  %56 = getelementptr inbounds %struct.perf_probe_point, %struct.perf_probe_point* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %77

59:                                               ; preds = %45
  %60 = load i32*, i32** %4, align 8
  %61 = load %struct.probe_finder*, %struct.probe_finder** %7, align 8
  %62 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %61, i32 0, i32 1
  %63 = call i32 @dwarf_decl_line(i32* %60, i32* %62)
  %64 = load %struct.perf_probe_point*, %struct.perf_probe_point** %8, align 8
  %65 = getelementptr inbounds %struct.perf_probe_point, %struct.perf_probe_point* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.probe_finder*, %struct.probe_finder** %7, align 8
  %68 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %70, %66
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %68, align 8
  %73 = load %struct.probe_finder*, %struct.probe_finder** %7, align 8
  %74 = call i32 @find_probe_point_by_line(%struct.probe_finder* %73)
  %75 = load %struct.dwarf_callback_param*, %struct.dwarf_callback_param** %6, align 8
  %76 = getelementptr inbounds %struct.dwarf_callback_param, %struct.dwarf_callback_param* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  br label %148

77:                                               ; preds = %45
  %78 = load i32*, i32** %4, align 8
  %79 = call i64 @die_is_func_instance(i32* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %125

81:                                               ; preds = %77
  %82 = load i32*, i32** %4, align 8
  %83 = load %struct.probe_finder*, %struct.probe_finder** %7, align 8
  %84 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %83, i32 0, i32 0
  %85 = call i32 @dwarf_entrypc(i32* %82, i64* %84)
  %86 = load %struct.probe_finder*, %struct.probe_finder** %7, align 8
  %87 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %81
  %91 = load i32*, i32** %4, align 8
  %92 = call i32 @dwarf_diename(i32* %91)
  %93 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %92)
  %94 = load %struct.dwarf_callback_param*, %struct.dwarf_callback_param** %6, align 8
  %95 = getelementptr inbounds %struct.dwarf_callback_param, %struct.dwarf_callback_param* %94, i32 0, i32 0
  store i32 0, i32* %95, align 8
  br label %124

96:                                               ; preds = %81
  %97 = load %struct.perf_probe_point*, %struct.perf_probe_point** %8, align 8
  %98 = getelementptr inbounds %struct.perf_probe_point, %struct.perf_probe_point* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %96
  %102 = load i32*, i32** %4, align 8
  %103 = load %struct.probe_finder*, %struct.probe_finder** %7, align 8
  %104 = call i32 @find_probe_point_lazy(i32* %102, %struct.probe_finder* %103)
  %105 = load %struct.dwarf_callback_param*, %struct.dwarf_callback_param** %6, align 8
  %106 = getelementptr inbounds %struct.dwarf_callback_param, %struct.dwarf_callback_param* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  br label %123

107:                                              ; preds = %96
  %108 = load i32*, i32** %4, align 8
  %109 = load %struct.probe_finder*, %struct.probe_finder** %7, align 8
  %110 = call i32 @skip_prologue(i32* %108, %struct.probe_finder* %109)
  %111 = load %struct.perf_probe_point*, %struct.perf_probe_point** %8, align 8
  %112 = getelementptr inbounds %struct.perf_probe_point, %struct.perf_probe_point* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.probe_finder*, %struct.probe_finder** %7, align 8
  %115 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = add nsw i64 %116, %113
  store i64 %117, i64* %115, align 8
  %118 = load i32*, i32** %4, align 8
  %119 = load %struct.probe_finder*, %struct.probe_finder** %7, align 8
  %120 = call i32 @call_probe_finder(i32* %118, %struct.probe_finder* %119)
  %121 = load %struct.dwarf_callback_param*, %struct.dwarf_callback_param** %6, align 8
  %122 = getelementptr inbounds %struct.dwarf_callback_param, %struct.dwarf_callback_param* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 8
  br label %123

123:                                              ; preds = %107, %101
  br label %124

124:                                              ; preds = %123, %90
  br label %147

125:                                              ; preds = %77
  %126 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @probe_conf, i32 0, i32 0), align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %146, label %128

128:                                              ; preds = %125
  %129 = load i32*, i32** %4, align 8
  %130 = load i32, i32* @probe_point_inline_cb, align 4
  %131 = load %struct.probe_finder*, %struct.probe_finder** %7, align 8
  %132 = bitcast %struct.probe_finder* %131 to i8*
  %133 = call i32 @die_walk_instances(i32* %129, i32 %130, i8* %132)
  %134 = load %struct.dwarf_callback_param*, %struct.dwarf_callback_param** %6, align 8
  %135 = getelementptr inbounds %struct.dwarf_callback_param, %struct.dwarf_callback_param* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 8
  %136 = load %struct.dwarf_callback_param*, %struct.dwarf_callback_param** %6, align 8
  %137 = getelementptr inbounds %struct.dwarf_callback_param, %struct.dwarf_callback_param* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @ENOENT, align 4
  %140 = sub nsw i32 0, %139
  %141 = icmp eq i32 %138, %140
  br i1 %141, label %142, label %145

142:                                              ; preds = %128
  %143 = load %struct.dwarf_callback_param*, %struct.dwarf_callback_param** %6, align 8
  %144 = getelementptr inbounds %struct.dwarf_callback_param, %struct.dwarf_callback_param* %143, i32 0, i32 0
  store i32 0, i32* %144, align 8
  br label %145

145:                                              ; preds = %142, %128
  br label %146

146:                                              ; preds = %145, %125
  br label %147

147:                                              ; preds = %146, %124
  br label %148

148:                                              ; preds = %147, %59
  %149 = load %struct.perf_probe_point*, %struct.perf_probe_point** %8, align 8
  %150 = getelementptr inbounds %struct.perf_probe_point, %struct.perf_probe_point* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = call i64 @strisglob(i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %163

154:                                              ; preds = %148
  %155 = load %struct.dwarf_callback_param*, %struct.dwarf_callback_param** %6, align 8
  %156 = getelementptr inbounds %struct.dwarf_callback_param, %struct.dwarf_callback_param* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = icmp sge i32 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %154
  %160 = load %struct.dwarf_callback_param*, %struct.dwarf_callback_param** %6, align 8
  %161 = getelementptr inbounds %struct.dwarf_callback_param, %struct.dwarf_callback_param* %160, i32 0, i32 0
  store i32 0, i32* %161, align 8
  %162 = load i32, i32* @DWARF_CB_OK, align 4
  store i32 %162, i32* %3, align 4
  br label %165

163:                                              ; preds = %154, %148
  %164 = load i32, i32* @DWARF_CB_ABORT, align 4
  store i32 %164, i32* %3, align 4
  br label %165

165:                                              ; preds = %163, %159, %43, %28
  %166 = load i32, i32* %3, align 4
  ret i32 %166
}

declare dso_local i32 @die_is_func_def(i32*) #1

declare dso_local i32 @die_match_name(i32*, i32) #1

declare dso_local i64 @strtailcmp(i64, i32) #1

declare dso_local i32 @dwarf_decl_file(i32*) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @dwarf_diename(i32*) #1

declare dso_local i64 @dwarf_dieoffset(i32*) #1

declare dso_local i32 @dwarf_decl_line(i32*, i32*) #1

declare dso_local i32 @find_probe_point_by_line(%struct.probe_finder*) #1

declare dso_local i64 @die_is_func_instance(i32*) #1

declare dso_local i32 @dwarf_entrypc(i32*, i64*) #1

declare dso_local i32 @find_probe_point_lazy(i32*, %struct.probe_finder*) #1

declare dso_local i32 @skip_prologue(i32*, %struct.probe_finder*) #1

declare dso_local i32 @call_probe_finder(i32*, %struct.probe_finder*) #1

declare dso_local i32 @die_walk_instances(i32*, i32, i8*) #1

declare dso_local i64 @strisglob(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
