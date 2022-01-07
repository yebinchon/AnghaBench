; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c_hist_entry__dcacheline_snprintf.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c_hist_entry__dcacheline_snprintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_entry = type { i8, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.symbol*, %struct.map*, i32 }
%struct.symbol = type { i32 }
%struct.map = type { i32, i32, i64, i64, i64, i64 }

@PERF_RECORD_MISC_KERNEL = common dso_local global i64 0, align 8
@PROT_EXEC = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hist_entry*, i8*, i64, i32)* @hist_entry__dcacheline_snprintf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hist_entry__dcacheline_snprintf(%struct.hist_entry* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.hist_entry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.map*, align 8
  %11 = alloca %struct.symbol*, align 8
  %12 = alloca i8, align 1
  store %struct.hist_entry* %0, %struct.hist_entry** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store %struct.map* null, %struct.map** %10, align 8
  store %struct.symbol* null, %struct.symbol** %11, align 8
  %13 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %14 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %13, i32 0, i32 0
  %15 = load i8, i8* %14, align 8
  store i8 %15, i8* %12, align 1
  %16 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %17 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %16, i32 0, i32 2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = icmp ne %struct.TYPE_4__* %18, null
  br i1 %19, label %20, label %89

20:                                               ; preds = %4
  %21 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %22 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %21, i32 0, i32 2
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @cl_address(i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %29 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %28, i32 0, i32 2
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load %struct.map*, %struct.map** %32, align 8
  store %struct.map* %33, %struct.map** %10, align 8
  %34 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %35 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %34, i32 0, i32 2
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load %struct.symbol*, %struct.symbol** %38, align 8
  store %struct.symbol* %39, %struct.symbol** %11, align 8
  %40 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %41 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @PERF_RECORD_MISC_KERNEL, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %83

45:                                               ; preds = %20
  %46 = load %struct.map*, %struct.map** %10, align 8
  %47 = icmp ne %struct.map* %46, null
  br i1 %47, label %48, label %83

48:                                               ; preds = %45
  %49 = load %struct.map*, %struct.map** %10, align 8
  %50 = getelementptr inbounds %struct.map, %struct.map* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @PROT_EXEC, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %83, label %55

55:                                               ; preds = %48
  %56 = load %struct.map*, %struct.map** %10, align 8
  %57 = getelementptr inbounds %struct.map, %struct.map* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @MAP_SHARED, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %83

62:                                               ; preds = %55
  %63 = load %struct.map*, %struct.map** %10, align 8
  %64 = getelementptr inbounds %struct.map, %struct.map* %63, i32 0, i32 5
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %82, label %67

67:                                               ; preds = %62
  %68 = load %struct.map*, %struct.map** %10, align 8
  %69 = getelementptr inbounds %struct.map, %struct.map* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %82, label %72

72:                                               ; preds = %67
  %73 = load %struct.map*, %struct.map** %10, align 8
  %74 = getelementptr inbounds %struct.map, %struct.map* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %72
  %78 = load %struct.map*, %struct.map** %10, align 8
  %79 = getelementptr inbounds %struct.map, %struct.map* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77, %72, %67, %62
  store i8 115, i8* %12, align 1
  br label %88

83:                                               ; preds = %77, %55, %48, %45, %20
  %84 = load %struct.map*, %struct.map** %10, align 8
  %85 = icmp ne %struct.map* %84, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %83
  store i8 88, i8* %12, align 1
  br label %87

87:                                               ; preds = %86, %83
  br label %88

88:                                               ; preds = %87, %82
  br label %89

89:                                               ; preds = %88, %4
  %90 = load %struct.map*, %struct.map** %10, align 8
  %91 = load %struct.symbol*, %struct.symbol** %11, align 8
  %92 = load i32, i32* %9, align 4
  %93 = load i8, i8* %12, align 1
  %94 = load i8*, i8** %6, align 8
  %95 = load i64, i64* %7, align 8
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @_hist_entry__sym_snprintf(%struct.map* %90, %struct.symbol* %91, i32 %92, i8 signext %93, i8* %94, i64 %95, i32 %96)
  ret i32 %97
}

declare dso_local i32 @cl_address(i32) #1

declare dso_local i32 @_hist_entry__sym_snprintf(%struct.map*, %struct.symbol*, i32, i8 signext, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
