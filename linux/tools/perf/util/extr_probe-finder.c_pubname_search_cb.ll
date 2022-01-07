; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-finder.c_pubname_search_cb.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-finder.c_pubname_search_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.pubname_callback_param = type { i32, i32, i64, i32, i32 }

@DW_TAG_subprogram = common dso_local global i64 0, align 8
@DWARF_CB_OK = common dso_local global i32 0, align 4
@DWARF_CB_ABORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*, i8*)* @pubname_search_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pubname_search_cb(i32* %0, %struct.TYPE_3__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.pubname_callback_param*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = bitcast i8* %9 to %struct.pubname_callback_param*
  store %struct.pubname_callback_param* %10, %struct.pubname_callback_param** %8, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.pubname_callback_param*, %struct.pubname_callback_param** %8, align 8
  %16 = getelementptr inbounds %struct.pubname_callback_param, %struct.pubname_callback_param* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @dwarf_offdie(i32* %11, i32 %14, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %72

20:                                               ; preds = %3
  %21 = load %struct.pubname_callback_param*, %struct.pubname_callback_param** %8, align 8
  %22 = getelementptr inbounds %struct.pubname_callback_param, %struct.pubname_callback_param* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @dwarf_tag(i32 %23)
  %25 = load i64, i64* @DW_TAG_subprogram, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* @DWARF_CB_OK, align 4
  store i32 %28, i32* %4, align 4
  br label %74

29:                                               ; preds = %20
  %30 = load %struct.pubname_callback_param*, %struct.pubname_callback_param** %8, align 8
  %31 = getelementptr inbounds %struct.pubname_callback_param, %struct.pubname_callback_param* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.pubname_callback_param*, %struct.pubname_callback_param** %8, align 8
  %34 = getelementptr inbounds %struct.pubname_callback_param, %struct.pubname_callback_param* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @die_match_name(i32 %32, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %71

38:                                               ; preds = %29
  %39 = load i32*, i32** %5, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.pubname_callback_param*, %struct.pubname_callback_param** %8, align 8
  %44 = getelementptr inbounds %struct.pubname_callback_param, %struct.pubname_callback_param* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @dwarf_offdie(i32* %39, i32 %42, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %38
  %49 = load i32, i32* @DWARF_CB_OK, align 4
  store i32 %49, i32* %4, align 4
  br label %74

50:                                               ; preds = %38
  %51 = load %struct.pubname_callback_param*, %struct.pubname_callback_param** %8, align 8
  %52 = getelementptr inbounds %struct.pubname_callback_param, %struct.pubname_callback_param* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %50
  %56 = load %struct.pubname_callback_param*, %struct.pubname_callback_param** %8, align 8
  %57 = getelementptr inbounds %struct.pubname_callback_param, %struct.pubname_callback_param* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.pubname_callback_param*, %struct.pubname_callback_param** %8, align 8
  %60 = getelementptr inbounds %struct.pubname_callback_param, %struct.pubname_callback_param* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @dwarf_decl_file(i32 %61)
  %63 = call i64 @strtailcmp(i64 %58, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %55
  %66 = load i32, i32* @DWARF_CB_OK, align 4
  store i32 %66, i32* %4, align 4
  br label %74

67:                                               ; preds = %55, %50
  %68 = load %struct.pubname_callback_param*, %struct.pubname_callback_param** %8, align 8
  %69 = getelementptr inbounds %struct.pubname_callback_param, %struct.pubname_callback_param* %68, i32 0, i32 0
  store i32 1, i32* %69, align 8
  %70 = load i32, i32* @DWARF_CB_ABORT, align 4
  store i32 %70, i32* %4, align 4
  br label %74

71:                                               ; preds = %29
  br label %72

72:                                               ; preds = %71, %3
  %73 = load i32, i32* @DWARF_CB_OK, align 4
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %72, %67, %65, %48, %27
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i64 @dwarf_offdie(i32*, i32, i32) #1

declare dso_local i64 @dwarf_tag(i32) #1

declare dso_local i64 @die_match_name(i32, i32) #1

declare dso_local i64 @strtailcmp(i64, i32) #1

declare dso_local i32 @dwarf_decl_file(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
