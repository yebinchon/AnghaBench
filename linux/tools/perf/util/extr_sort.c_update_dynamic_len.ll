; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c_update_dynamic_len.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c_update_dynamic_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpp_dynamic_entry = type { i64, i64, %struct.tep_format_field* }
%struct.tep_format_field = type { i8* }
%struct.hist_entry = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hpp_dynamic_entry*, %struct.hist_entry*)* @update_dynamic_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_dynamic_len(%struct.hpp_dynamic_entry* %0, %struct.hist_entry* %1) #0 {
  %3 = alloca %struct.hpp_dynamic_entry*, align 8
  %4 = alloca %struct.hist_entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.tep_format_field*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.hpp_dynamic_entry* %0, %struct.hpp_dynamic_entry** %3, align 8
  store %struct.hist_entry* %1, %struct.hist_entry** %4, align 8
  %11 = load %struct.hpp_dynamic_entry*, %struct.hpp_dynamic_entry** %3, align 8
  %12 = getelementptr inbounds %struct.hpp_dynamic_entry, %struct.hpp_dynamic_entry* %11, i32 0, i32 2
  %13 = load %struct.tep_format_field*, %struct.tep_format_field** %12, align 8
  store %struct.tep_format_field* %13, %struct.tep_format_field** %7, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.hpp_dynamic_entry*, %struct.hpp_dynamic_entry** %3, align 8
  %15 = getelementptr inbounds %struct.hpp_dynamic_entry, %struct.hpp_dynamic_entry* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %86

19:                                               ; preds = %2
  %20 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %21 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %26 = call i8* @get_trace_output(%struct.hist_entry* %25)
  %27 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %28 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %27, i32 0, i32 0
  store i8* %26, i8** %28, align 8
  br label %29

29:                                               ; preds = %24, %19
  %30 = load %struct.tep_format_field*, %struct.tep_format_field** %7, align 8
  %31 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i64 @strlen(i8* %32)
  store i64 %33, i64* %8, align 8
  %34 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %35 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %5, align 8
  br label %37

37:                                               ; preds = %85, %29
  %38 = load i8*, i8** %5, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %86

40:                                               ; preds = %37
  %41 = load i8*, i8** %5, align 8
  %42 = call i8* @strchr(i8* %41, i8 signext 32)
  store i8* %42, i8** %6, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  store i32 1, i32* %9, align 4
  %46 = load i8*, i8** %5, align 8
  %47 = load i8*, i8** %5, align 8
  %48 = call i64 @strlen(i8* %47)
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  store i8* %49, i8** %6, align 8
  br label %50

50:                                               ; preds = %45, %40
  %51 = load i8*, i8** %5, align 8
  %52 = load %struct.tep_format_field*, %struct.tep_format_field** %7, align 8
  %53 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = load i64, i64* %8, align 8
  %56 = call i32 @strncmp(i8* %51, i8* %54, i64 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %78, label %58

58:                                               ; preds = %50
  %59 = load i64, i64* %8, align 8
  %60 = add i64 %59, 1
  %61 = load i8*, i8** %5, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 %60
  store i8* %62, i8** %5, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = load i8*, i8** %5, align 8
  %65 = ptrtoint i8* %63 to i64
  %66 = ptrtoint i8* %64 to i64
  %67 = sub i64 %65, %66
  store i64 %67, i64* %10, align 8
  %68 = load i64, i64* %10, align 8
  %69 = load %struct.hpp_dynamic_entry*, %struct.hpp_dynamic_entry** %3, align 8
  %70 = getelementptr inbounds %struct.hpp_dynamic_entry, %struct.hpp_dynamic_entry* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ugt i64 %68, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %58
  %74 = load i64, i64* %10, align 8
  %75 = load %struct.hpp_dynamic_entry*, %struct.hpp_dynamic_entry** %3, align 8
  %76 = getelementptr inbounds %struct.hpp_dynamic_entry, %struct.hpp_dynamic_entry* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  br label %77

77:                                               ; preds = %73, %58
  br label %86

78:                                               ; preds = %50
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  store i8* null, i8** %5, align 8
  br label %85

82:                                               ; preds = %78
  %83 = load i8*, i8** %6, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 1
  store i8* %84, i8** %5, align 8
  br label %85

85:                                               ; preds = %82, %81
  br label %37

86:                                               ; preds = %18, %77, %37
  ret void
}

declare dso_local i8* @get_trace_output(%struct.hist_entry*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strncmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
