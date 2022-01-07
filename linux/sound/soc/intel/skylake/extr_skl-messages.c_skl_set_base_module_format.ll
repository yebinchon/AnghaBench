; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-messages.c_skl_set_base_module_format.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-messages.c_skl_set_base_module_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skl_dev = type { i32 }
%struct.skl_module_cfg = type { i64, i64, %struct.skl_module* }
%struct.skl_module = type { %struct.skl_module_iface*, %struct.skl_module_res* }
%struct.skl_module_iface = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.skl_module_fmt }
%struct.skl_module_fmt = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.skl_module_res = type { i32, i32, i32, i32 }
%struct.skl_base_cfg = type { i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"bit_depth=%x valid_bd=%x ch_config=%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.skl_dev*, %struct.skl_module_cfg*, %struct.skl_base_cfg*)* @skl_set_base_module_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skl_set_base_module_format(%struct.skl_dev* %0, %struct.skl_module_cfg* %1, %struct.skl_base_cfg* %2) #0 {
  %4 = alloca %struct.skl_dev*, align 8
  %5 = alloca %struct.skl_module_cfg*, align 8
  %6 = alloca %struct.skl_base_cfg*, align 8
  %7 = alloca %struct.skl_module*, align 8
  %8 = alloca %struct.skl_module_res*, align 8
  %9 = alloca %struct.skl_module_iface*, align 8
  %10 = alloca %struct.skl_module_fmt*, align 8
  store %struct.skl_dev* %0, %struct.skl_dev** %4, align 8
  store %struct.skl_module_cfg* %1, %struct.skl_module_cfg** %5, align 8
  store %struct.skl_base_cfg* %2, %struct.skl_base_cfg** %6, align 8
  %11 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %5, align 8
  %12 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %11, i32 0, i32 2
  %13 = load %struct.skl_module*, %struct.skl_module** %12, align 8
  store %struct.skl_module* %13, %struct.skl_module** %7, align 8
  %14 = load %struct.skl_module*, %struct.skl_module** %7, align 8
  %15 = getelementptr inbounds %struct.skl_module, %struct.skl_module* %14, i32 0, i32 1
  %16 = load %struct.skl_module_res*, %struct.skl_module_res** %15, align 8
  %17 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %5, align 8
  %18 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.skl_module_res, %struct.skl_module_res* %16, i64 %19
  store %struct.skl_module_res* %20, %struct.skl_module_res** %8, align 8
  %21 = load %struct.skl_module*, %struct.skl_module** %7, align 8
  %22 = getelementptr inbounds %struct.skl_module, %struct.skl_module* %21, i32 0, i32 0
  %23 = load %struct.skl_module_iface*, %struct.skl_module_iface** %22, align 8
  %24 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %5, align 8
  %25 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.skl_module_iface, %struct.skl_module_iface* %23, i64 %26
  store %struct.skl_module_iface* %27, %struct.skl_module_iface** %9, align 8
  %28 = load %struct.skl_module_iface*, %struct.skl_module_iface** %9, align 8
  %29 = getelementptr inbounds %struct.skl_module_iface, %struct.skl_module_iface* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store %struct.skl_module_fmt* %32, %struct.skl_module_fmt** %10, align 8
  %33 = load %struct.skl_module_fmt*, %struct.skl_module_fmt** %10, align 8
  %34 = getelementptr inbounds %struct.skl_module_fmt, %struct.skl_module_fmt* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.skl_base_cfg*, %struct.skl_base_cfg** %6, align 8
  %37 = getelementptr inbounds %struct.skl_base_cfg, %struct.skl_base_cfg* %36, i32 0, i32 4
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 7
  store i32 %35, i32* %38, align 4
  %39 = load %struct.skl_module_fmt*, %struct.skl_module_fmt** %10, align 8
  %40 = getelementptr inbounds %struct.skl_module_fmt, %struct.skl_module_fmt* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.skl_base_cfg*, %struct.skl_base_cfg** %6, align 8
  %43 = getelementptr inbounds %struct.skl_base_cfg, %struct.skl_base_cfg* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 6
  store i32 %41, i32* %44, align 4
  %45 = load %struct.skl_module_fmt*, %struct.skl_module_fmt** %10, align 8
  %46 = getelementptr inbounds %struct.skl_module_fmt, %struct.skl_module_fmt* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.skl_base_cfg*, %struct.skl_base_cfg** %6, align 8
  %49 = getelementptr inbounds %struct.skl_base_cfg, %struct.skl_base_cfg* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 5
  store i32 %47, i32* %50, align 4
  %51 = load %struct.skl_module_fmt*, %struct.skl_module_fmt** %10, align 8
  %52 = getelementptr inbounds %struct.skl_module_fmt, %struct.skl_module_fmt* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.skl_base_cfg*, %struct.skl_base_cfg** %6, align 8
  %55 = getelementptr inbounds %struct.skl_base_cfg, %struct.skl_base_cfg* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 4
  store i32 %53, i32* %56, align 4
  %57 = load %struct.skl_module_fmt*, %struct.skl_module_fmt** %10, align 8
  %58 = getelementptr inbounds %struct.skl_module_fmt, %struct.skl_module_fmt* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.skl_base_cfg*, %struct.skl_base_cfg** %6, align 8
  %61 = getelementptr inbounds %struct.skl_base_cfg, %struct.skl_base_cfg* %60, i32 0, i32 4
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 3
  store i32 %59, i32* %62, align 4
  %63 = load %struct.skl_module_fmt*, %struct.skl_module_fmt** %10, align 8
  %64 = getelementptr inbounds %struct.skl_module_fmt, %struct.skl_module_fmt* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.skl_base_cfg*, %struct.skl_base_cfg** %6, align 8
  %67 = getelementptr inbounds %struct.skl_base_cfg, %struct.skl_base_cfg* %66, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  store i32 %65, i32* %68, align 4
  %69 = load %struct.skl_dev*, %struct.skl_dev** %4, align 8
  %70 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.skl_module_fmt*, %struct.skl_module_fmt** %10, align 8
  %73 = getelementptr inbounds %struct.skl_module_fmt, %struct.skl_module_fmt* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.skl_module_fmt*, %struct.skl_module_fmt** %10, align 8
  %76 = getelementptr inbounds %struct.skl_module_fmt, %struct.skl_module_fmt* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.skl_module_fmt*, %struct.skl_module_fmt** %10, align 8
  %79 = getelementptr inbounds %struct.skl_module_fmt, %struct.skl_module_fmt* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @dev_dbg(i32 %71, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %74, i32 %77, i32 %80)
  %82 = load %struct.skl_module_fmt*, %struct.skl_module_fmt** %10, align 8
  %83 = getelementptr inbounds %struct.skl_module_fmt, %struct.skl_module_fmt* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.skl_base_cfg*, %struct.skl_base_cfg** %6, align 8
  %86 = getelementptr inbounds %struct.skl_base_cfg, %struct.skl_base_cfg* %85, i32 0, i32 4
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  store i32 %84, i32* %87, align 4
  %88 = load %struct.skl_module_fmt*, %struct.skl_module_fmt** %10, align 8
  %89 = getelementptr inbounds %struct.skl_module_fmt, %struct.skl_module_fmt* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.skl_base_cfg*, %struct.skl_base_cfg** %6, align 8
  %92 = getelementptr inbounds %struct.skl_base_cfg, %struct.skl_base_cfg* %91, i32 0, i32 4
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  store i32 %90, i32* %93, align 4
  %94 = load %struct.skl_module_res*, %struct.skl_module_res** %8, align 8
  %95 = getelementptr inbounds %struct.skl_module_res, %struct.skl_module_res* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.skl_base_cfg*, %struct.skl_base_cfg** %6, align 8
  %98 = getelementptr inbounds %struct.skl_base_cfg, %struct.skl_base_cfg* %97, i32 0, i32 3
  store i32 %96, i32* %98, align 4
  %99 = load %struct.skl_module_res*, %struct.skl_module_res** %8, align 8
  %100 = getelementptr inbounds %struct.skl_module_res, %struct.skl_module_res* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.skl_base_cfg*, %struct.skl_base_cfg** %6, align 8
  %103 = getelementptr inbounds %struct.skl_base_cfg, %struct.skl_base_cfg* %102, i32 0, i32 2
  store i32 %101, i32* %103, align 4
  %104 = load %struct.skl_module_res*, %struct.skl_module_res** %8, align 8
  %105 = getelementptr inbounds %struct.skl_module_res, %struct.skl_module_res* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.skl_base_cfg*, %struct.skl_base_cfg** %6, align 8
  %108 = getelementptr inbounds %struct.skl_base_cfg, %struct.skl_base_cfg* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  %109 = load %struct.skl_module_res*, %struct.skl_module_res** %8, align 8
  %110 = getelementptr inbounds %struct.skl_module_res, %struct.skl_module_res* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.skl_base_cfg*, %struct.skl_base_cfg** %6, align 8
  %113 = getelementptr inbounds %struct.skl_base_cfg, %struct.skl_base_cfg* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 4
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
