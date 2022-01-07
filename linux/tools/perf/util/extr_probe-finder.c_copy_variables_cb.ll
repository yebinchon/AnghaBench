; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-finder.c_copy_variables_cb.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-finder.c_copy_variables_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.local_vars_finder = type { i64, %struct.probe_finder*, %struct.TYPE_2__*, i32, i64 }
%struct.probe_finder = type { i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i8* }

@DW_TAG_formal_parameter = common dso_local global i32 0, align 4
@DW_TAG_variable = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DIE_FIND_CB_END = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@DIE_FIND_CB_CONTINUE = common dso_local global i32 0, align 4
@DIE_FIND_CB_SIBLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @copy_variables_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_variables_cb(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.local_vars_finder*, align 8
  %7 = alloca %struct.probe_finder*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.local_vars_finder*
  store %struct.local_vars_finder* %10, %struct.local_vars_finder** %6, align 8
  %11 = load %struct.local_vars_finder*, %struct.local_vars_finder** %6, align 8
  %12 = getelementptr inbounds %struct.local_vars_finder, %struct.local_vars_finder* %11, i32 0, i32 1
  %13 = load %struct.probe_finder*, %struct.probe_finder** %12, align 8
  store %struct.probe_finder* %13, %struct.probe_finder** %7, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @dwarf_tag(i32* %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @DW_TAG_formal_parameter, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %28, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @DW_TAG_variable, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %91

23:                                               ; preds = %19
  %24 = load %struct.local_vars_finder*, %struct.local_vars_finder** %6, align 8
  %25 = getelementptr inbounds %struct.local_vars_finder, %struct.local_vars_finder* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %91

28:                                               ; preds = %23, %2
  %29 = load i32*, i32** %4, align 8
  %30 = load %struct.local_vars_finder*, %struct.local_vars_finder** %6, align 8
  %31 = getelementptr inbounds %struct.local_vars_finder, %struct.local_vars_finder* %30, i32 0, i32 1
  %32 = load %struct.probe_finder*, %struct.probe_finder** %31, align 8
  %33 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.local_vars_finder*, %struct.local_vars_finder** %6, align 8
  %36 = getelementptr inbounds %struct.local_vars_finder, %struct.local_vars_finder* %35, i32 0, i32 1
  %37 = load %struct.probe_finder*, %struct.probe_finder** %36, align 8
  %38 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.probe_finder*, %struct.probe_finder** %7, align 8
  %41 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %40, i32 0, i32 2
  %42 = load %struct.probe_finder*, %struct.probe_finder** %7, align 8
  %43 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @convert_variable_location(i32* %29, i32 %34, i32 %39, i32* %41, i32 %44, i32* null)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %90

47:                                               ; preds = %28
  %48 = load i32*, i32** %4, align 8
  %49 = call i64 @dwarf_diename(i32* %48)
  %50 = inttoptr i64 %49 to i8*
  %51 = load %struct.local_vars_finder*, %struct.local_vars_finder** %6, align 8
  %52 = getelementptr inbounds %struct.local_vars_finder, %struct.local_vars_finder* %51, i32 0, i32 2
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load %struct.local_vars_finder*, %struct.local_vars_finder** %6, align 8
  %55 = getelementptr inbounds %struct.local_vars_finder, %struct.local_vars_finder* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i8* %50, i8** %58, align 8
  %59 = load %struct.local_vars_finder*, %struct.local_vars_finder** %6, align 8
  %60 = getelementptr inbounds %struct.local_vars_finder, %struct.local_vars_finder* %59, i32 0, i32 2
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = load %struct.local_vars_finder*, %struct.local_vars_finder** %6, align 8
  %63 = getelementptr inbounds %struct.local_vars_finder, %struct.local_vars_finder* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = icmp eq i8* %67, null
  br i1 %68, label %69, label %75

69:                                               ; preds = %47
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  %72 = load %struct.local_vars_finder*, %struct.local_vars_finder** %6, align 8
  %73 = getelementptr inbounds %struct.local_vars_finder, %struct.local_vars_finder* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 8
  %74 = load i32, i32* @DIE_FIND_CB_END, align 4
  store i32 %74, i32* %3, align 4
  br label %104

75:                                               ; preds = %47
  %76 = load %struct.local_vars_finder*, %struct.local_vars_finder** %6, align 8
  %77 = getelementptr inbounds %struct.local_vars_finder, %struct.local_vars_finder* %76, i32 0, i32 2
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = load %struct.local_vars_finder*, %struct.local_vars_finder** %6, align 8
  %80 = getelementptr inbounds %struct.local_vars_finder, %struct.local_vars_finder* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 @pr_debug(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %84)
  %86 = load %struct.local_vars_finder*, %struct.local_vars_finder** %6, align 8
  %87 = getelementptr inbounds %struct.local_vars_finder, %struct.local_vars_finder* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %87, align 8
  br label %90

90:                                               ; preds = %75, %28
  br label %91

91:                                               ; preds = %90, %23, %19
  %92 = load i32*, i32** %4, align 8
  %93 = load %struct.local_vars_finder*, %struct.local_vars_finder** %6, align 8
  %94 = getelementptr inbounds %struct.local_vars_finder, %struct.local_vars_finder* %93, i32 0, i32 1
  %95 = load %struct.probe_finder*, %struct.probe_finder** %94, align 8
  %96 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @dwarf_haspc(i32* %92, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %91
  %101 = load i32, i32* @DIE_FIND_CB_CONTINUE, align 4
  store i32 %101, i32* %3, align 4
  br label %104

102:                                              ; preds = %91
  %103 = load i32, i32* @DIE_FIND_CB_SIBLING, align 4
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %102, %100, %69
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @dwarf_tag(i32*) #1

declare dso_local i64 @convert_variable_location(i32*, i32, i32, i32*, i32, i32*) #1

declare dso_local i64 @dwarf_diename(i32*) #1

declare dso_local i32 @pr_debug(i8*, i8*) #1

declare dso_local i64 @dwarf_haspc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
