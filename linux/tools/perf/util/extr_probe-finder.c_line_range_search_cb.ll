; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-finder.c_line_range_search_cb.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-finder.c_line_range_search_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwarf_callback_param = type { i32, %struct.line_finder* }
%struct.line_finder = type { i64, i64, i64, %struct.line_range* }
%struct.line_range = type { i64, i64, i64, i32, i64 }

@DWARF_CB_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"fname: %s, lineno:%d\0A\00", align 1
@INT_MAX = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"New line range: %d to %d\0A\00", align 1
@line_range_inline_cb = common dso_local global i32 0, align 4
@DWARF_CB_ABORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @line_range_search_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @line_range_search_cb(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dwarf_callback_param*, align 8
  %7 = alloca %struct.line_finder*, align 8
  %8 = alloca %struct.line_range*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.dwarf_callback_param*
  store %struct.dwarf_callback_param* %10, %struct.dwarf_callback_param** %6, align 8
  %11 = load %struct.dwarf_callback_param*, %struct.dwarf_callback_param** %6, align 8
  %12 = getelementptr inbounds %struct.dwarf_callback_param, %struct.dwarf_callback_param* %11, i32 0, i32 1
  %13 = load %struct.line_finder*, %struct.line_finder** %12, align 8
  store %struct.line_finder* %13, %struct.line_finder** %7, align 8
  %14 = load %struct.line_finder*, %struct.line_finder** %7, align 8
  %15 = getelementptr inbounds %struct.line_finder, %struct.line_finder* %14, i32 0, i32 3
  %16 = load %struct.line_range*, %struct.line_range** %15, align 8
  store %struct.line_range* %16, %struct.line_range** %8, align 8
  %17 = load %struct.line_range*, %struct.line_range** %8, align 8
  %18 = getelementptr inbounds %struct.line_range, %struct.line_range* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %2
  %22 = load %struct.line_range*, %struct.line_range** %8, align 8
  %23 = getelementptr inbounds %struct.line_range, %struct.line_range* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = call i64 @dwarf_decl_file(i32* %25)
  %27 = call i64 @strtailcmp(i64 %24, i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32, i32* @DWARF_CB_OK, align 4
  store i32 %30, i32* %3, align 4
  br label %133

31:                                               ; preds = %21, %2
  %32 = load i32*, i32** %4, align 8
  %33 = call i64 @die_is_func_def(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %131

35:                                               ; preds = %31
  %36 = load i32*, i32** %4, align 8
  %37 = load %struct.line_range*, %struct.line_range** %8, align 8
  %38 = getelementptr inbounds %struct.line_range, %struct.line_range* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @die_match_name(i32* %36, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %131

42:                                               ; preds = %35
  %43 = load i32*, i32** %4, align 8
  %44 = call i64 @dwarf_decl_file(i32* %43)
  %45 = load %struct.line_finder*, %struct.line_finder** %7, align 8
  %46 = getelementptr inbounds %struct.line_finder, %struct.line_finder* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = load i32*, i32** %4, align 8
  %48 = load %struct.line_range*, %struct.line_range** %8, align 8
  %49 = getelementptr inbounds %struct.line_range, %struct.line_range* %48, i32 0, i32 0
  %50 = call i32 @dwarf_decl_line(i32* %47, i64* %49)
  %51 = load %struct.line_finder*, %struct.line_finder** %7, align 8
  %52 = getelementptr inbounds %struct.line_finder, %struct.line_finder* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.line_range*, %struct.line_range** %8, align 8
  %55 = getelementptr inbounds %struct.line_range, %struct.line_range* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %53, i64 %56)
  %58 = load %struct.line_range*, %struct.line_range** %8, align 8
  %59 = getelementptr inbounds %struct.line_range, %struct.line_range* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.line_range*, %struct.line_range** %8, align 8
  %62 = getelementptr inbounds %struct.line_range, %struct.line_range* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %60, %63
  %65 = load %struct.line_finder*, %struct.line_finder** %7, align 8
  %66 = getelementptr inbounds %struct.line_finder, %struct.line_finder* %65, i32 0, i32 1
  store i64 %64, i64* %66, align 8
  %67 = load %struct.line_finder*, %struct.line_finder** %7, align 8
  %68 = getelementptr inbounds %struct.line_finder, %struct.line_finder* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %42
  %72 = load i8*, i8** @INT_MAX, align 8
  %73 = ptrtoint i8* %72 to i64
  %74 = load %struct.line_finder*, %struct.line_finder** %7, align 8
  %75 = getelementptr inbounds %struct.line_finder, %struct.line_finder* %74, i32 0, i32 1
  store i64 %73, i64* %75, align 8
  br label %76

76:                                               ; preds = %71, %42
  %77 = load %struct.line_range*, %struct.line_range** %8, align 8
  %78 = getelementptr inbounds %struct.line_range, %struct.line_range* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.line_range*, %struct.line_range** %8, align 8
  %81 = getelementptr inbounds %struct.line_range, %struct.line_range* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %79, %82
  %84 = load %struct.line_finder*, %struct.line_finder** %7, align 8
  %85 = getelementptr inbounds %struct.line_finder, %struct.line_finder* %84, i32 0, i32 2
  store i64 %83, i64* %85, align 8
  %86 = load %struct.line_finder*, %struct.line_finder** %7, align 8
  %87 = getelementptr inbounds %struct.line_finder, %struct.line_finder* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = icmp slt i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %76
  %91 = load i8*, i8** @INT_MAX, align 8
  %92 = ptrtoint i8* %91 to i64
  %93 = load %struct.line_finder*, %struct.line_finder** %7, align 8
  %94 = getelementptr inbounds %struct.line_finder, %struct.line_finder* %93, i32 0, i32 2
  store i64 %92, i64* %94, align 8
  br label %95

95:                                               ; preds = %90, %76
  %96 = load %struct.line_finder*, %struct.line_finder** %7, align 8
  %97 = getelementptr inbounds %struct.line_finder, %struct.line_finder* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.line_finder*, %struct.line_finder** %7, align 8
  %100 = getelementptr inbounds %struct.line_finder, %struct.line_finder* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %98, i64 %101)
  %103 = load %struct.line_finder*, %struct.line_finder** %7, align 8
  %104 = getelementptr inbounds %struct.line_finder, %struct.line_finder* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.line_range*, %struct.line_range** %8, align 8
  %107 = getelementptr inbounds %struct.line_range, %struct.line_range* %106, i32 0, i32 1
  store i64 %105, i64* %107, align 8
  %108 = load %struct.line_finder*, %struct.line_finder** %7, align 8
  %109 = getelementptr inbounds %struct.line_finder, %struct.line_finder* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.line_range*, %struct.line_range** %8, align 8
  %112 = getelementptr inbounds %struct.line_range, %struct.line_range* %111, i32 0, i32 2
  store i64 %110, i64* %112, align 8
  %113 = load i32*, i32** %4, align 8
  %114 = call i32 @die_is_func_instance(i32* %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %123, label %116

116:                                              ; preds = %95
  %117 = load i32*, i32** %4, align 8
  %118 = load i32, i32* @line_range_inline_cb, align 4
  %119 = load %struct.line_finder*, %struct.line_finder** %7, align 8
  %120 = call i32 @die_walk_instances(i32* %117, i32 %118, %struct.line_finder* %119)
  %121 = load %struct.dwarf_callback_param*, %struct.dwarf_callback_param** %6, align 8
  %122 = getelementptr inbounds %struct.dwarf_callback_param, %struct.dwarf_callback_param* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 8
  br label %129

123:                                              ; preds = %95
  %124 = load i32*, i32** %4, align 8
  %125 = load %struct.line_finder*, %struct.line_finder** %7, align 8
  %126 = call i32 @find_line_range_by_line(i32* %124, %struct.line_finder* %125)
  %127 = load %struct.dwarf_callback_param*, %struct.dwarf_callback_param** %6, align 8
  %128 = getelementptr inbounds %struct.dwarf_callback_param, %struct.dwarf_callback_param* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 8
  br label %129

129:                                              ; preds = %123, %116
  %130 = load i32, i32* @DWARF_CB_ABORT, align 4
  store i32 %130, i32* %3, align 4
  br label %133

131:                                              ; preds = %35, %31
  %132 = load i32, i32* @DWARF_CB_OK, align 4
  store i32 %132, i32* %3, align 4
  br label %133

133:                                              ; preds = %131, %129, %29
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local i64 @strtailcmp(i64, i64) #1

declare dso_local i64 @dwarf_decl_file(i32*) #1

declare dso_local i64 @die_is_func_def(i32*) #1

declare dso_local i64 @die_match_name(i32*, i32) #1

declare dso_local i32 @dwarf_decl_line(i32*, i64*) #1

declare dso_local i32 @pr_debug(i8*, i64, i64) #1

declare dso_local i32 @die_is_func_instance(i32*) #1

declare dso_local i32 @die_walk_instances(i32*, i32, %struct.line_finder*) #1

declare dso_local i32 @find_line_range_by_line(i32*, %struct.line_finder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
