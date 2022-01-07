; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/ui/browsers/extr_header.c_ui_browser__argv_write.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/ui/browsers/extr_header.c_ui_browser__argv_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_browser = type { i32, i64 }

@__const.ui_browser__argv_write.empty = private unnamed_addr constant [2 x i8] c" \00", align 1
@HE_COLORSET_SELECTED = common dso_local global i32 0, align 4
@HE_COLORSET_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ui_browser*, i8*, i32)* @ui_browser__argv_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ui_browser__argv_write(%struct.ui_browser* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.ui_browser*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [2 x i8], align 1
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.ui_browser* %0, %struct.ui_browser** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to i8**
  store i8** %13, i8*** %7, align 8
  %14 = load i8**, i8*** %7, align 8
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %8, align 8
  %16 = bitcast [2 x i8]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %16, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.ui_browser__argv_write.empty, i32 0, i32 0), i64 2, i1 false)
  %17 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @ui_browser__is_current_entry(%struct.ui_browser* %17, i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %21 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %11, align 8
  %23 = load i64, i64* %11, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = call i64 @strlen(i8* %24)
  %26 = icmp uge i64 %23, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 0
  store i8* %28, i8** %8, align 8
  br label %33

29:                                               ; preds = %3
  %30 = load i8*, i8** %8, align 8
  %31 = load i64, i64* %11, align 8
  %32 = getelementptr inbounds i8, i8* %30, i64 %31
  store i8* %32, i8** %8, align 8
  br label %33

33:                                               ; preds = %29, %27
  %34 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* @HE_COLORSET_SELECTED, align 4
  br label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @HE_COLORSET_NORMAL, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  %43 = call i32 @ui_browser__set_color(%struct.ui_browser* %34, i32 %42)
  %44 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %47 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @ui_browser__write_nstring(%struct.ui_browser* %44, i8* %45, i32 %48)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ui_browser__is_current_entry(%struct.ui_browser*, i32) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @ui_browser__set_color(%struct.ui_browser*, i32) #2

declare dso_local i32 @ui_browser__write_nstring(%struct.ui_browser*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
