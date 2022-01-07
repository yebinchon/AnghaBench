; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-finder.c_debuginfo__find_line_range.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-finder.c_debuginfo__find_line_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debuginfo = type { i32 }
%struct.line_range = type { i32, i32, i32, i32, i64, i32 }
%struct.line_finder = type { i32, i32, i32, i32, i64, i32, %struct.line_range* }
%struct.pubname_callback_param = type { i64, i32*, i32*, i32, i64 }
%struct.dwarf_callback_param = type { i8*, i32 }

@pubname_search_cb = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"path: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @debuginfo__find_line_range(%struct.debuginfo* %0, %struct.line_range* %1) #0 {
  %3 = alloca %struct.debuginfo*, align 8
  %4 = alloca %struct.line_range*, align 8
  %5 = alloca %struct.line_finder, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.pubname_callback_param, align 8
  %13 = alloca %struct.dwarf_callback_param, align 8
  store %struct.debuginfo* %0, %struct.debuginfo** %3, align 8
  store %struct.line_range* %1, %struct.line_range** %4, align 8
  %14 = bitcast %struct.line_finder* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 40, i1 false)
  %15 = getelementptr inbounds %struct.line_finder, %struct.line_finder* %5, i32 0, i32 6
  %16 = load %struct.line_range*, %struct.line_range** %4, align 8
  store %struct.line_range* %16, %struct.line_range** %15, align 8
  store i32 0, i32* %6, align 4
  store i64 0, i64* %7, align 8
  %17 = load %struct.line_range*, %struct.line_range** %4, align 8
  %18 = getelementptr inbounds %struct.line_range, %struct.line_range* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %55

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.pubname_callback_param, %struct.pubname_callback_param* %12, i32 0, i32 0
  store i64 0, i64* %22, align 8
  %23 = getelementptr inbounds %struct.pubname_callback_param, %struct.pubname_callback_param* %12, i32 0, i32 1
  %24 = getelementptr inbounds %struct.line_finder, %struct.line_finder* %5, i32 0, i32 5
  store i32* %24, i32** %23, align 8
  %25 = getelementptr inbounds %struct.pubname_callback_param, %struct.pubname_callback_param* %12, i32 0, i32 2
  %26 = getelementptr inbounds %struct.line_finder, %struct.line_finder* %5, i32 0, i32 1
  store i32* %26, i32** %25, align 8
  %27 = getelementptr inbounds %struct.pubname_callback_param, %struct.pubname_callback_param* %12, i32 0, i32 3
  %28 = load %struct.line_range*, %struct.line_range** %4, align 8
  %29 = getelementptr inbounds %struct.line_range, %struct.line_range* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %27, align 8
  %31 = getelementptr inbounds %struct.pubname_callback_param, %struct.pubname_callback_param* %12, i32 0, i32 4
  %32 = load %struct.line_range*, %struct.line_range** %4, align 8
  %33 = getelementptr inbounds %struct.line_range, %struct.line_range* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %31, align 8
  %35 = getelementptr inbounds %struct.dwarf_callback_param, %struct.dwarf_callback_param* %13, i32 0, i32 0
  %36 = bitcast %struct.line_finder* %5 to i8*
  store i8* %36, i8** %35, align 8
  %37 = getelementptr inbounds %struct.dwarf_callback_param, %struct.dwarf_callback_param* %13, i32 0, i32 1
  store i32 0, i32* %37, align 8
  %38 = load %struct.debuginfo*, %struct.debuginfo** %3, align 8
  %39 = getelementptr inbounds %struct.debuginfo, %struct.debuginfo* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @pubname_search_cb, align 4
  %42 = call i32 @dwarf_getpubnames(i32 %40, i32 %41, %struct.pubname_callback_param* %12, i32 0)
  %43 = getelementptr inbounds %struct.pubname_callback_param, %struct.pubname_callback_param* %12, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %21
  %47 = getelementptr inbounds %struct.line_finder, %struct.line_finder* %5, i32 0, i32 5
  %48 = call i32 @line_range_search_cb(i32* %47, %struct.dwarf_callback_param* %13)
  %49 = getelementptr inbounds %struct.line_finder, %struct.line_finder* %5, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %129

53:                                               ; preds = %46
  br label %54

54:                                               ; preds = %53, %21
  br label %55

55:                                               ; preds = %54, %2
  br label %56

56:                                               ; preds = %126, %84, %55
  %57 = getelementptr inbounds %struct.line_finder, %struct.line_finder* %5, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* %6, align 4
  %62 = icmp sge i32 %61, 0
  br label %63

63:                                               ; preds = %60, %56
  %64 = phi i1 [ false, %56 ], [ %62, %60 ]
  br i1 %64, label %65, label %128

65:                                               ; preds = %63
  %66 = load %struct.debuginfo*, %struct.debuginfo** %3, align 8
  %67 = getelementptr inbounds %struct.debuginfo, %struct.debuginfo* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i64, i64* %7, align 8
  %70 = call i64 @dwarf_nextcu(i32 %68, i64 %69, i64* %8, i64* %9, i32* null, i32* null, i32* null)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  br label %128

73:                                               ; preds = %65
  %74 = load %struct.debuginfo*, %struct.debuginfo** %3, align 8
  %75 = getelementptr inbounds %struct.debuginfo, %struct.debuginfo* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i64, i64* %7, align 8
  %78 = load i64, i64* %9, align 8
  %79 = add i64 %77, %78
  %80 = getelementptr inbounds %struct.line_finder, %struct.line_finder* %5, i32 0, i32 1
  %81 = call i32* @dwarf_offdie(i32 %76, i64 %79, i32* %80)
  store i32* %81, i32** %10, align 8
  %82 = load i32*, i32** %10, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %73
  br label %56

85:                                               ; preds = %73
  %86 = load %struct.line_range*, %struct.line_range** %4, align 8
  %87 = getelementptr inbounds %struct.line_range, %struct.line_range* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.line_finder, %struct.line_finder* %5, i32 0, i32 1
  %92 = load %struct.line_range*, %struct.line_range** %4, align 8
  %93 = getelementptr inbounds %struct.line_range, %struct.line_range* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 8
  %95 = call i64 @cu_find_realpath(i32* %91, i32 %94)
  %96 = getelementptr inbounds %struct.line_finder, %struct.line_finder* %5, i32 0, i32 4
  store i64 %95, i64* %96, align 8
  br label %99

97:                                               ; preds = %85
  %98 = getelementptr inbounds %struct.line_finder, %struct.line_finder* %5, i32 0, i32 4
  store i64 0, i64* %98, align 8
  br label %99

99:                                               ; preds = %97, %90
  %100 = load %struct.line_range*, %struct.line_range** %4, align 8
  %101 = getelementptr inbounds %struct.line_range, %struct.line_range* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct.line_finder, %struct.line_finder* %5, i32 0, i32 4
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %126

108:                                              ; preds = %104, %99
  %109 = load %struct.line_range*, %struct.line_range** %4, align 8
  %110 = getelementptr inbounds %struct.line_range, %struct.line_range* %109, i32 0, i32 4
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %108
  %114 = call i32 @find_line_range_by_func(%struct.line_finder* %5)
  store i32 %114, i32* %6, align 4
  br label %125

115:                                              ; preds = %108
  %116 = load %struct.line_range*, %struct.line_range** %4, align 8
  %117 = getelementptr inbounds %struct.line_range, %struct.line_range* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = getelementptr inbounds %struct.line_finder, %struct.line_finder* %5, i32 0, i32 3
  store i32 %118, i32* %119, align 4
  %120 = load %struct.line_range*, %struct.line_range** %4, align 8
  %121 = getelementptr inbounds %struct.line_range, %struct.line_range* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = getelementptr inbounds %struct.line_finder, %struct.line_finder* %5, i32 0, i32 2
  store i32 %122, i32* %123, align 8
  %124 = call i32 @find_line_range_by_line(i32* null, %struct.line_finder* %5)
  store i32 %124, i32* %6, align 4
  br label %125

125:                                              ; preds = %115, %113
  br label %126

126:                                              ; preds = %125, %104
  %127 = load i64, i64* %8, align 8
  store i64 %127, i64* %7, align 8
  br label %56

128:                                              ; preds = %72, %63
  br label %129

129:                                              ; preds = %128, %52
  %130 = getelementptr inbounds %struct.line_finder, %struct.line_finder* %5, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %152

133:                                              ; preds = %129
  %134 = getelementptr inbounds %struct.line_finder, %struct.line_finder* %5, i32 0, i32 1
  %135 = call i8* @cu_get_comp_dir(i32* %134)
  store i8* %135, i8** %11, align 8
  %136 = load i8*, i8** %11, align 8
  %137 = icmp ne i8* %136, null
  br i1 %137, label %138, label %151

138:                                              ; preds = %133
  %139 = load i8*, i8** %11, align 8
  %140 = call i32 @strdup(i8* %139)
  %141 = load %struct.line_range*, %struct.line_range** %4, align 8
  %142 = getelementptr inbounds %struct.line_range, %struct.line_range* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 4
  %143 = load %struct.line_range*, %struct.line_range** %4, align 8
  %144 = getelementptr inbounds %struct.line_range, %struct.line_range* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %150, label %147

147:                                              ; preds = %138
  %148 = load i32, i32* @ENOMEM, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %6, align 4
  br label %150

150:                                              ; preds = %147, %138
  br label %151

151:                                              ; preds = %150, %133
  br label %152

152:                                              ; preds = %151, %129
  %153 = load %struct.line_range*, %struct.line_range** %4, align 8
  %154 = getelementptr inbounds %struct.line_range, %struct.line_range* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @pr_debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %155)
  %157 = load i32, i32* %6, align 4
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %152
  %160 = load i32, i32* %6, align 4
  br label %164

161:                                              ; preds = %152
  %162 = getelementptr inbounds %struct.line_finder, %struct.line_finder* %5, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  br label %164

164:                                              ; preds = %161, %159
  %165 = phi i32 [ %160, %159 ], [ %163, %161 ]
  ret i32 %165
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dwarf_getpubnames(i32, i32, %struct.pubname_callback_param*, i32) #2

declare dso_local i32 @line_range_search_cb(i32*, %struct.dwarf_callback_param*) #2

declare dso_local i64 @dwarf_nextcu(i32, i64, i64*, i64*, i32*, i32*, i32*) #2

declare dso_local i32* @dwarf_offdie(i32, i64, i32*) #2

declare dso_local i64 @cu_find_realpath(i32*, i32) #2

declare dso_local i32 @find_line_range_by_func(%struct.line_finder*) #2

declare dso_local i32 @find_line_range_by_line(i32*, %struct.line_finder*) #2

declare dso_local i8* @cu_get_comp_dir(i32*) #2

declare dso_local i32 @strdup(i8*) #2

declare dso_local i32 @pr_debug(i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
