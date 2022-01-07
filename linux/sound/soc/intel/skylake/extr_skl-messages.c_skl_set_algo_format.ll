; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-messages.c_skl_set_algo_format.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-messages.c_skl_set_algo_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skl_dev = type { i32 }
%struct.skl_module_cfg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.skl_algo_cfg = type { i32 }
%struct.skl_base_cfg = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.skl_dev*, %struct.skl_module_cfg*, %struct.skl_algo_cfg*)* @skl_set_algo_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skl_set_algo_format(%struct.skl_dev* %0, %struct.skl_module_cfg* %1, %struct.skl_algo_cfg* %2) #0 {
  %4 = alloca %struct.skl_dev*, align 8
  %5 = alloca %struct.skl_module_cfg*, align 8
  %6 = alloca %struct.skl_algo_cfg*, align 8
  %7 = alloca %struct.skl_base_cfg*, align 8
  store %struct.skl_dev* %0, %struct.skl_dev** %4, align 8
  store %struct.skl_module_cfg* %1, %struct.skl_module_cfg** %5, align 8
  store %struct.skl_algo_cfg* %2, %struct.skl_algo_cfg** %6, align 8
  %8 = load %struct.skl_algo_cfg*, %struct.skl_algo_cfg** %6, align 8
  %9 = bitcast %struct.skl_algo_cfg* %8 to %struct.skl_base_cfg*
  store %struct.skl_base_cfg* %9, %struct.skl_base_cfg** %7, align 8
  %10 = load %struct.skl_dev*, %struct.skl_dev** %4, align 8
  %11 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %5, align 8
  %12 = load %struct.skl_base_cfg*, %struct.skl_base_cfg** %7, align 8
  %13 = call i32 @skl_set_base_module_format(%struct.skl_dev* %10, %struct.skl_module_cfg* %11, %struct.skl_base_cfg* %12)
  %14 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %5, align 8
  %15 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %33

20:                                               ; preds = %3
  %21 = load %struct.skl_algo_cfg*, %struct.skl_algo_cfg** %6, align 8
  %22 = getelementptr inbounds %struct.skl_algo_cfg, %struct.skl_algo_cfg* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %5, align 8
  %25 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %5, align 8
  %29 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @memcpy(i32 %23, i32 %27, i64 %31)
  br label %33

33:                                               ; preds = %20, %19
  ret void
}

declare dso_local i32 @skl_set_base_module_format(%struct.skl_dev*, %struct.skl_module_cfg*, %struct.skl_base_cfg*) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
