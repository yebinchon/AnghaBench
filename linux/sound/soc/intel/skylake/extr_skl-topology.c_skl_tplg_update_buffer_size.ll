; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-topology.c_skl_tplg_update_buffer_size.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-topology.c_skl_tplg_update_buffer_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skl_dev = type { i32 }
%struct.skl_module_cfg = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.skl_module_res* }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { %struct.skl_module_fmt }
%struct.skl_module_fmt = type { i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.skl_module_fmt }
%struct.skl_module_res = type { i32, i32 }

@SKL_MODULE_TYPE_SRCINT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.skl_dev*, %struct.skl_module_cfg*)* @skl_tplg_update_buffer_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skl_tplg_update_buffer_size(%struct.skl_dev* %0, %struct.skl_module_cfg* %1) #0 {
  %3 = alloca %struct.skl_dev*, align 8
  %4 = alloca %struct.skl_module_cfg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.skl_module_fmt*, align 8
  %7 = alloca %struct.skl_module_fmt*, align 8
  %8 = alloca %struct.skl_module_res*, align 8
  store %struct.skl_dev* %0, %struct.skl_dev** %3, align 8
  store %struct.skl_module_cfg* %1, %struct.skl_module_cfg** %4, align 8
  store i32 1, i32* %5, align 4
  %9 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %4, align 8
  %10 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %9, i32 0, i32 1
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %13 = load %struct.skl_module_res*, %struct.skl_module_res** %12, align 8
  %14 = getelementptr inbounds %struct.skl_module_res, %struct.skl_module_res* %13, i64 0
  store %struct.skl_module_res* %14, %struct.skl_module_res** %8, align 8
  %15 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %4, align 8
  %16 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %15, i32 0, i32 1
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i64 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i64 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  store %struct.skl_module_fmt* %24, %struct.skl_module_fmt** %6, align 8
  %25 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %4, align 8
  %26 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %25, i32 0, i32 1
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i64 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i64 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  store %struct.skl_module_fmt* %34, %struct.skl_module_fmt** %7, align 8
  %35 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %4, align 8
  %36 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @SKL_MODULE_TYPE_SRCINT, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %2
  store i32 5, i32* %5, align 4
  br label %41

41:                                               ; preds = %40, %2
  %42 = load %struct.skl_module_fmt*, %struct.skl_module_fmt** %6, align 8
  %43 = getelementptr inbounds %struct.skl_module_fmt, %struct.skl_module_fmt* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @DIV_ROUND_UP(i32 %44, i32 1000)
  %46 = load %struct.skl_module_fmt*, %struct.skl_module_fmt** %6, align 8
  %47 = getelementptr inbounds %struct.skl_module_fmt, %struct.skl_module_fmt* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = mul nsw i32 %45, %48
  %50 = load %struct.skl_module_fmt*, %struct.skl_module_fmt** %6, align 8
  %51 = getelementptr inbounds %struct.skl_module_fmt, %struct.skl_module_fmt* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = ashr i32 %52, 3
  %54 = mul nsw i32 %49, %53
  %55 = load i32, i32* %5, align 4
  %56 = mul nsw i32 %54, %55
  %57 = load %struct.skl_module_res*, %struct.skl_module_res** %8, align 8
  %58 = getelementptr inbounds %struct.skl_module_res, %struct.skl_module_res* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load %struct.skl_module_fmt*, %struct.skl_module_fmt** %7, align 8
  %60 = getelementptr inbounds %struct.skl_module_fmt, %struct.skl_module_fmt* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @DIV_ROUND_UP(i32 %61, i32 1000)
  %63 = load %struct.skl_module_fmt*, %struct.skl_module_fmt** %7, align 8
  %64 = getelementptr inbounds %struct.skl_module_fmt, %struct.skl_module_fmt* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = mul nsw i32 %62, %65
  %67 = load %struct.skl_module_fmt*, %struct.skl_module_fmt** %7, align 8
  %68 = getelementptr inbounds %struct.skl_module_fmt, %struct.skl_module_fmt* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = ashr i32 %69, 3
  %71 = mul nsw i32 %66, %70
  %72 = load i32, i32* %5, align 4
  %73 = mul nsw i32 %71, %72
  %74 = load %struct.skl_module_res*, %struct.skl_module_res** %8, align 8
  %75 = getelementptr inbounds %struct.skl_module_res, %struct.skl_module_res* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  ret void
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
