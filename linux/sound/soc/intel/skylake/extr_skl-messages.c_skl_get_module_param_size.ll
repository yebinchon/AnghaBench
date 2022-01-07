; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-messages.c_skl_get_module_param_size.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-messages.c_skl_get_module_param_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skl_dev = type { i32 }
%struct.skl_module_cfg = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skl_dev*, %struct.skl_module_cfg*)* @skl_get_module_param_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_get_module_param_size(%struct.skl_dev* %0, %struct.skl_module_cfg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.skl_dev*, align 8
  %5 = alloca %struct.skl_module_cfg*, align 8
  %6 = alloca i32, align 4
  store %struct.skl_dev* %0, %struct.skl_dev** %4, align 8
  store %struct.skl_module_cfg* %1, %struct.skl_module_cfg** %5, align 8
  %7 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %5, align 8
  %8 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %29 [
    i32 132, label %10
    i32 129, label %18
    i32 128, label %19
    i32 134, label %20
    i32 133, label %28
    i32 130, label %28
    i32 131, label %28
  ]

10:                                               ; preds = %2
  store i32 4, i32* %6, align 4
  %11 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %5, align 8
  %12 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %6, align 4
  %16 = add nsw i32 %15, %14
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %3, align 4
  br label %30

18:                                               ; preds = %2
  store i32 4, i32* %3, align 4
  br label %30

19:                                               ; preds = %2
  store i32 4, i32* %3, align 4
  br label %30

20:                                               ; preds = %2
  store i32 4, i32* %6, align 4
  %21 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %5, align 8
  %22 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %25, %24
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %30

28:                                               ; preds = %2, %2, %2
  store i32 4, i32* %3, align 4
  br label %30

29:                                               ; preds = %2
  store i32 4, i32* %3, align 4
  br label %30

30:                                               ; preds = %29, %28, %20, %19, %18, %10
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
