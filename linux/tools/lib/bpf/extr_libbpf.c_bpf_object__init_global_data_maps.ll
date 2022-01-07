; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_object__init_global_data_maps.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_object__init_global_data_maps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_object = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64, i64, i64, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@LIBBPF_MAP_DATA = common dso_local global i32 0, align 4
@LIBBPF_MAP_RODATA = common dso_local global i32 0, align 4
@LIBBPF_MAP_BSS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_object*)* @bpf_object__init_global_data_maps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_object__init_global_data_maps(%struct.bpf_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bpf_object*, align 8
  %4 = alloca i32, align 4
  store %struct.bpf_object* %0, %struct.bpf_object** %3, align 8
  %5 = load %struct.bpf_object*, %struct.bpf_object** %3, align 8
  %6 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %87

11:                                               ; preds = %1
  %12 = load %struct.bpf_object*, %struct.bpf_object** %3, align 8
  %13 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sge i64 %15, 0
  br i1 %16, label %17, label %37

17:                                               ; preds = %11
  %18 = load %struct.bpf_object*, %struct.bpf_object** %3, align 8
  %19 = load i32, i32* @LIBBPF_MAP_DATA, align 4
  %20 = load %struct.bpf_object*, %struct.bpf_object** %3, align 8
  %21 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.bpf_object*, %struct.bpf_object** %3, align 8
  %25 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.bpf_object*, %struct.bpf_object** %3, align 8
  %29 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = call i32 @bpf_object__init_internal_map(%struct.bpf_object* %18, i32 %19, i64 %23, i32 %27, i32* %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %17
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* %2, align 4
  br label %87

36:                                               ; preds = %17
  br label %37

37:                                               ; preds = %36, %11
  %38 = load %struct.bpf_object*, %struct.bpf_object** %3, align 8
  %39 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp sge i64 %41, 0
  br i1 %42, label %43, label %63

43:                                               ; preds = %37
  %44 = load %struct.bpf_object*, %struct.bpf_object** %3, align 8
  %45 = load i32, i32* @LIBBPF_MAP_RODATA, align 4
  %46 = load %struct.bpf_object*, %struct.bpf_object** %3, align 8
  %47 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.bpf_object*, %struct.bpf_object** %3, align 8
  %51 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.bpf_object*, %struct.bpf_object** %3, align 8
  %55 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = call i32 @bpf_object__init_internal_map(%struct.bpf_object* %44, i32 %45, i64 %49, i32 %53, i32* %56)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %43
  %61 = load i32, i32* %4, align 4
  store i32 %61, i32* %2, align 4
  br label %87

62:                                               ; preds = %43
  br label %63

63:                                               ; preds = %62, %37
  %64 = load %struct.bpf_object*, %struct.bpf_object** %3, align 8
  %65 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp sge i64 %67, 0
  br i1 %68, label %69, label %86

69:                                               ; preds = %63
  %70 = load %struct.bpf_object*, %struct.bpf_object** %3, align 8
  %71 = load i32, i32* @LIBBPF_MAP_BSS, align 4
  %72 = load %struct.bpf_object*, %struct.bpf_object** %3, align 8
  %73 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.bpf_object*, %struct.bpf_object** %3, align 8
  %77 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @bpf_object__init_internal_map(%struct.bpf_object* %70, i32 %71, i64 %75, i32 %79, i32* null)
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* %4, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %69
  %84 = load i32, i32* %4, align 4
  store i32 %84, i32* %2, align 4
  br label %87

85:                                               ; preds = %69
  br label %86

86:                                               ; preds = %85, %63
  store i32 0, i32* %2, align 4
  br label %87

87:                                               ; preds = %86, %83, %60, %34, %10
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i32 @bpf_object__init_internal_map(%struct.bpf_object*, i32, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
