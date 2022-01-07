; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_object__add_map.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_object__add_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_map = type { i32, i32 }
%struct.bpf_object = type { i32, i32, %struct.bpf_map* }

@.str = private unnamed_addr constant [30 x i8] c"alloc maps for object failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bpf_map* (%struct.bpf_object*)* @bpf_object__add_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bpf_map* @bpf_object__add_map(%struct.bpf_object* %0) #0 {
  %2 = alloca %struct.bpf_map*, align 8
  %3 = alloca %struct.bpf_object*, align 8
  %4 = alloca %struct.bpf_map*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.bpf_object* %0, %struct.bpf_object** %3, align 8
  %7 = load %struct.bpf_object*, %struct.bpf_object** %3, align 8
  %8 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.bpf_object*, %struct.bpf_object** %3, align 8
  %11 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %1
  %15 = load %struct.bpf_object*, %struct.bpf_object** %3, align 8
  %16 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %15, i32 0, i32 2
  %17 = load %struct.bpf_map*, %struct.bpf_map** %16, align 8
  %18 = load %struct.bpf_object*, %struct.bpf_object** %3, align 8
  %19 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 8
  %22 = sext i32 %20 to i64
  %23 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %17, i64 %22
  store %struct.bpf_map* %23, %struct.bpf_map** %2, align 8
  br label %108

24:                                               ; preds = %1
  %25 = load %struct.bpf_object*, %struct.bpf_object** %3, align 8
  %26 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %27, 3
  %29 = sdiv i32 %28, 2
  %30 = call i64 @max(i64 4, i32 %29)
  store i64 %30, i64* %5, align 8
  %31 = load %struct.bpf_object*, %struct.bpf_object** %3, align 8
  %32 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %31, i32 0, i32 2
  %33 = load %struct.bpf_map*, %struct.bpf_map** %32, align 8
  %34 = load i64, i64* %5, align 8
  %35 = mul i64 %34, 8
  %36 = call %struct.bpf_map* @realloc(%struct.bpf_map* %33, i64 %35)
  store %struct.bpf_map* %36, %struct.bpf_map** %4, align 8
  %37 = load %struct.bpf_map*, %struct.bpf_map** %4, align 8
  %38 = icmp ne %struct.bpf_map* %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %24
  %40 = call i32 @pr_warning(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  %43 = call %struct.bpf_map* @ERR_PTR(i32 %42)
  store %struct.bpf_map* %43, %struct.bpf_map** %2, align 8
  br label %108

44:                                               ; preds = %24
  %45 = load i64, i64* %5, align 8
  %46 = trunc i64 %45 to i32
  %47 = load %struct.bpf_object*, %struct.bpf_object** %3, align 8
  %48 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.bpf_map*, %struct.bpf_map** %4, align 8
  %50 = load %struct.bpf_object*, %struct.bpf_object** %3, align 8
  %51 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %50, i32 0, i32 2
  store %struct.bpf_map* %49, %struct.bpf_map** %51, align 8
  %52 = load %struct.bpf_object*, %struct.bpf_object** %3, align 8
  %53 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %52, i32 0, i32 2
  %54 = load %struct.bpf_map*, %struct.bpf_map** %53, align 8
  %55 = load %struct.bpf_object*, %struct.bpf_object** %3, align 8
  %56 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %54, i64 %58
  %60 = load %struct.bpf_object*, %struct.bpf_object** %3, align 8
  %61 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.bpf_object*, %struct.bpf_object** %3, align 8
  %64 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sub nsw i32 %62, %65
  %67 = sext i32 %66 to i64
  %68 = mul i64 %67, 8
  %69 = trunc i64 %68 to i32
  %70 = call i32 @memset(%struct.bpf_map* %59, i32 0, i32 %69)
  %71 = load %struct.bpf_object*, %struct.bpf_object** %3, align 8
  %72 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %95, %44
  %75 = load i32, i32* %6, align 4
  %76 = load %struct.bpf_object*, %struct.bpf_object** %3, align 8
  %77 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp slt i32 %75, %78
  br i1 %79, label %80, label %98

80:                                               ; preds = %74
  %81 = load %struct.bpf_object*, %struct.bpf_object** %3, align 8
  %82 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %81, i32 0, i32 2
  %83 = load %struct.bpf_map*, %struct.bpf_map** %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %83, i64 %85
  %87 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %86, i32 0, i32 0
  store i32 -1, i32* %87, align 4
  %88 = load %struct.bpf_object*, %struct.bpf_object** %3, align 8
  %89 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %88, i32 0, i32 2
  %90 = load %struct.bpf_map*, %struct.bpf_map** %89, align 8
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %90, i64 %92
  %94 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %93, i32 0, i32 1
  store i32 -1, i32* %94, align 4
  br label %95

95:                                               ; preds = %80
  %96 = load i32, i32* %6, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %6, align 4
  br label %74

98:                                               ; preds = %74
  %99 = load %struct.bpf_object*, %struct.bpf_object** %3, align 8
  %100 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %99, i32 0, i32 2
  %101 = load %struct.bpf_map*, %struct.bpf_map** %100, align 8
  %102 = load %struct.bpf_object*, %struct.bpf_object** %3, align 8
  %103 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 8
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %101, i64 %106
  store %struct.bpf_map* %107, %struct.bpf_map** %2, align 8
  br label %108

108:                                              ; preds = %98, %39, %14
  %109 = load %struct.bpf_map*, %struct.bpf_map** %2, align 8
  ret %struct.bpf_map* %109
}

declare dso_local i64 @max(i64, i32) #1

declare dso_local %struct.bpf_map* @realloc(%struct.bpf_map*, i64) #1

declare dso_local i32 @pr_warning(i8*) #1

declare dso_local %struct.bpf_map* @ERR_PTR(i32) #1

declare dso_local i32 @memset(%struct.bpf_map*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
