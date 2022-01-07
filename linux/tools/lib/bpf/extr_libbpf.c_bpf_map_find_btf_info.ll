; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_map_find_btf_info.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_map_find_btf_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_object = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.bpf_map = type { i64, i64, i32, i32, i32, %struct.bpf_map_def }
%struct.bpf_map_def = type { i32, i32 }

@libbpf_type_to_btf_name = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_object*, %struct.bpf_map*)* @bpf_map_find_btf_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_map_find_btf_info(%struct.bpf_object* %0, %struct.bpf_map* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bpf_object*, align 8
  %5 = alloca %struct.bpf_map*, align 8
  %6 = alloca %struct.bpf_map_def*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bpf_object* %0, %struct.bpf_object** %4, align 8
  store %struct.bpf_map* %1, %struct.bpf_map** %5, align 8
  %10 = load %struct.bpf_map*, %struct.bpf_map** %5, align 8
  %11 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %10, i32 0, i32 5
  store %struct.bpf_map_def* %11, %struct.bpf_map_def** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load %struct.bpf_map*, %struct.bpf_map** %5, align 8
  %13 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.bpf_object*, %struct.bpf_object** %4, align 8
  %16 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %14, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %70

21:                                               ; preds = %2
  %22 = load %struct.bpf_map*, %struct.bpf_map** %5, align 8
  %23 = call i64 @bpf_map__is_internal(%struct.bpf_map* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %39, label %25

25:                                               ; preds = %21
  %26 = load %struct.bpf_object*, %struct.bpf_object** %4, align 8
  %27 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.bpf_map*, %struct.bpf_map** %5, align 8
  %30 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.bpf_map_def*, %struct.bpf_map_def** %6, align 8
  %33 = getelementptr inbounds %struct.bpf_map_def, %struct.bpf_map_def* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.bpf_map_def*, %struct.bpf_map_def** %6, align 8
  %36 = getelementptr inbounds %struct.bpf_map_def, %struct.bpf_map_def* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @btf__get_map_kv_tids(i32 %28, i32 %31, i32 %34, i32 %37, i32* %7, i32* %8)
  store i32 %38, i32* %9, align 4
  br label %50

39:                                               ; preds = %21
  %40 = load %struct.bpf_object*, %struct.bpf_object** %4, align 8
  %41 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32*, i32** @libbpf_type_to_btf_name, align 8
  %44 = load %struct.bpf_map*, %struct.bpf_map** %5, align 8
  %45 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @btf__find_by_name(i32 %42, i32 %48)
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %39, %25
  %51 = load i32, i32* %9, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %3, align 4
  br label %70

55:                                               ; preds = %50
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.bpf_map*, %struct.bpf_map** %5, align 8
  %58 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  %59 = load %struct.bpf_map*, %struct.bpf_map** %5, align 8
  %60 = call i64 @bpf_map__is_internal(%struct.bpf_map* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = load i32, i32* %9, align 4
  br label %66

64:                                               ; preds = %55
  %65 = load i32, i32* %8, align 4
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi i32 [ %63, %62 ], [ %65, %64 ]
  %68 = load %struct.bpf_map*, %struct.bpf_map** %5, align 8
  %69 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 4
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %66, %53, %20
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i64 @bpf_map__is_internal(%struct.bpf_map*) #1

declare dso_local i32 @btf__get_map_kv_tids(i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @btf__find_by_name(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
