; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-topology.c_skl_fill_module_pin_info_v4.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-topology.c_skl_fill_module_pin_info_v4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skl_dfw_v4_module_pin = type { i32, i32 }
%struct.skl_module_pin = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@SKL_PIN_UNBIND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.skl_dfw_v4_module_pin*, %struct.skl_module_pin*, i32, i32)* @skl_fill_module_pin_info_v4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skl_fill_module_pin_info_v4(%struct.skl_dfw_v4_module_pin* %0, %struct.skl_module_pin* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.skl_dfw_v4_module_pin*, align 8
  %6 = alloca %struct.skl_module_pin*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.skl_dfw_v4_module_pin* %0, %struct.skl_dfw_v4_module_pin** %5, align 8
  store %struct.skl_module_pin* %1, %struct.skl_module_pin** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %56, %4
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %59

14:                                               ; preds = %10
  %15 = load %struct.skl_dfw_v4_module_pin*, %struct.skl_dfw_v4_module_pin** %5, align 8
  %16 = load i32, i32* %9, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.skl_dfw_v4_module_pin, %struct.skl_dfw_v4_module_pin* %15, i64 %17
  %19 = getelementptr inbounds %struct.skl_dfw_v4_module_pin, %struct.skl_dfw_v4_module_pin* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.skl_module_pin*, %struct.skl_module_pin** %6, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.skl_module_pin, %struct.skl_module_pin* %21, i64 %23
  %25 = getelementptr inbounds %struct.skl_module_pin, %struct.skl_module_pin* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  store i32 %20, i32* %26, align 4
  %27 = load %struct.skl_dfw_v4_module_pin*, %struct.skl_dfw_v4_module_pin** %5, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.skl_dfw_v4_module_pin, %struct.skl_dfw_v4_module_pin* %27, i64 %29
  %31 = getelementptr inbounds %struct.skl_dfw_v4_module_pin, %struct.skl_dfw_v4_module_pin* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.skl_module_pin*, %struct.skl_module_pin** %6, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.skl_module_pin, %struct.skl_module_pin* %33, i64 %35
  %37 = getelementptr inbounds %struct.skl_module_pin, %struct.skl_module_pin* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i32 %32, i32* %38, align 4
  %39 = load %struct.skl_module_pin*, %struct.skl_module_pin** %6, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.skl_module_pin, %struct.skl_module_pin* %39, i64 %41
  %43 = getelementptr inbounds %struct.skl_module_pin, %struct.skl_module_pin* %42, i32 0, i32 0
  store i32 0, i32* %43, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.skl_module_pin*, %struct.skl_module_pin** %6, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.skl_module_pin, %struct.skl_module_pin* %45, i64 %47
  %49 = getelementptr inbounds %struct.skl_module_pin, %struct.skl_module_pin* %48, i32 0, i32 1
  store i32 %44, i32* %49, align 4
  %50 = load i32, i32* @SKL_PIN_UNBIND, align 4
  %51 = load %struct.skl_module_pin*, %struct.skl_module_pin** %6, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.skl_module_pin, %struct.skl_module_pin* %51, i64 %53
  %55 = getelementptr inbounds %struct.skl_module_pin, %struct.skl_module_pin* %54, i32 0, i32 2
  store i32 %50, i32* %55, align 4
  br label %56

56:                                               ; preds = %14
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  br label %10

59:                                               ; preds = %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
