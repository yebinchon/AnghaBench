; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_dwarf-aux.c___die_find_variable_cb.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_dwarf-aux.c___die_find_variable_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__find_variable_param = type { i32, i32 }

@DW_TAG_formal_parameter = common dso_local global i32 0, align 4
@DW_TAG_variable = common dso_local global i32 0, align 4
@DW_AT_external = common dso_local global i32 0, align 4
@DW_AT_location = common dso_local global i32 0, align 4
@DIE_FIND_CB_END = common dso_local global i32 0, align 4
@DIE_FIND_CB_CONTINUE = common dso_local global i32 0, align 4
@DIE_FIND_CB_SIBLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @__die_find_variable_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__die_find_variable_cb(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.__find_variable_param*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.__find_variable_param*
  store %struct.__find_variable_param* %10, %struct.__find_variable_param** %6, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @dwarf_tag(i32* %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @DW_TAG_formal_parameter, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @DW_TAG_variable, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %39

20:                                               ; preds = %16, %2
  %21 = load i32*, i32** %4, align 8
  %22 = load %struct.__find_variable_param*, %struct.__find_variable_param** %6, align 8
  %23 = getelementptr inbounds %struct.__find_variable_param, %struct.__find_variable_param* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @die_compare_name(i32* %21, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %20
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* @DW_AT_external, align 4
  %30 = call i64 @dwarf_attr(i32* %28, i32 %29, i32* %7)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load i32*, i32** %4, align 8
  %34 = load i32, i32* @DW_AT_location, align 4
  %35 = call i64 @dwarf_attr(i32* %33, i32 %34, i32* %7)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32, %27
  %38 = load i32, i32* @DIE_FIND_CB_END, align 4
  store i32 %38, i32* %3, align 4
  br label %50

39:                                               ; preds = %32, %20, %16
  %40 = load i32*, i32** %4, align 8
  %41 = load %struct.__find_variable_param*, %struct.__find_variable_param** %6, align 8
  %42 = getelementptr inbounds %struct.__find_variable_param, %struct.__find_variable_param* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @dwarf_haspc(i32* %40, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i32, i32* @DIE_FIND_CB_CONTINUE, align 4
  store i32 %47, i32* %3, align 4
  br label %50

48:                                               ; preds = %39
  %49 = load i32, i32* @DIE_FIND_CB_SIBLING, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %48, %46, %37
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @dwarf_tag(i32*) #1

declare dso_local i64 @die_compare_name(i32*, i32) #1

declare dso_local i64 @dwarf_attr(i32*, i32, i32*) #1

declare dso_local i64 @dwarf_haspc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
