; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-finder.c_find_best_scope_cb.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-finder.c_find_best_scope_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.find_scope_param = type { i32, i32, i32, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @find_best_scope_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_best_scope_cb(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.find_scope_param*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.find_scope_param*
  store %struct.find_scope_param* %10, %struct.find_scope_param** %6, align 8
  %11 = load %struct.find_scope_param*, %struct.find_scope_param** %6, align 8
  %12 = getelementptr inbounds %struct.find_scope_param, %struct.find_scope_param* %11, i32 0, i32 5
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %2
  %16 = load i32*, i32** %4, align 8
  %17 = call i8* @dwarf_decl_file(i32* %16)
  store i8* %17, i8** %7, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = load %struct.find_scope_param*, %struct.find_scope_param** %6, align 8
  %22 = getelementptr inbounds %struct.find_scope_param, %struct.find_scope_param* %21, i32 0, i32 5
  %23 = load i64, i64* %22, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call i64 @strcmp(i64 %23, i8* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20, %15
  store i32 0, i32* %3, align 4
  br label %85

28:                                               ; preds = %20
  br label %29

29:                                               ; preds = %28, %2
  %30 = load %struct.find_scope_param*, %struct.find_scope_param** %6, align 8
  %31 = getelementptr inbounds %struct.find_scope_param, %struct.find_scope_param* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %29
  %35 = load i32*, i32** %4, align 8
  %36 = load %struct.find_scope_param*, %struct.find_scope_param** %6, align 8
  %37 = getelementptr inbounds %struct.find_scope_param, %struct.find_scope_param* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = call i64 @die_match_name(i32* %35, i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %34
  %42 = load %struct.find_scope_param*, %struct.find_scope_param** %6, align 8
  %43 = getelementptr inbounds %struct.find_scope_param, %struct.find_scope_param* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @memcpy(i32 %44, i32* %45, i32 4)
  %47 = load %struct.find_scope_param*, %struct.find_scope_param** %6, align 8
  %48 = getelementptr inbounds %struct.find_scope_param, %struct.find_scope_param* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  store i32 1, i32* %3, align 4
  br label %85

49:                                               ; preds = %34
  br label %84

50:                                               ; preds = %29
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @dwarf_decl_line(i32* %51, i32* %8)
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.find_scope_param*, %struct.find_scope_param** %6, align 8
  %55 = getelementptr inbounds %struct.find_scope_param, %struct.find_scope_param* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %83

58:                                               ; preds = %50
  %59 = load %struct.find_scope_param*, %struct.find_scope_param** %6, align 8
  %60 = getelementptr inbounds %struct.find_scope_param, %struct.find_scope_param* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.find_scope_param*, %struct.find_scope_param** %6, align 8
  %63 = getelementptr inbounds %struct.find_scope_param, %struct.find_scope_param* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %8, align 4
  %66 = sub nsw i32 %64, %65
  %67 = icmp sgt i32 %61, %66
  br i1 %67, label %68, label %83

68:                                               ; preds = %58
  %69 = load %struct.find_scope_param*, %struct.find_scope_param** %6, align 8
  %70 = getelementptr inbounds %struct.find_scope_param, %struct.find_scope_param* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %8, align 4
  %73 = sub nsw i32 %71, %72
  %74 = load %struct.find_scope_param*, %struct.find_scope_param** %6, align 8
  %75 = getelementptr inbounds %struct.find_scope_param, %struct.find_scope_param* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 8
  %76 = load %struct.find_scope_param*, %struct.find_scope_param** %6, align 8
  %77 = getelementptr inbounds %struct.find_scope_param, %struct.find_scope_param* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** %4, align 8
  %80 = call i32 @memcpy(i32 %78, i32* %79, i32 4)
  %81 = load %struct.find_scope_param*, %struct.find_scope_param** %6, align 8
  %82 = getelementptr inbounds %struct.find_scope_param, %struct.find_scope_param* %81, i32 0, i32 0
  store i32 1, i32* %82, align 8
  br label %83

83:                                               ; preds = %68, %58, %50
  br label %84

84:                                               ; preds = %83, %49
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %84, %41, %27
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i8* @dwarf_decl_file(i32*) #1

declare dso_local i64 @strcmp(i64, i8*) #1

declare dso_local i64 @die_match_name(i32*, i64) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @dwarf_decl_line(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
