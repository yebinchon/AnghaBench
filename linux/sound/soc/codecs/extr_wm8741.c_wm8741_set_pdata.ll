; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8741.c_wm8741_set_pdata.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8741.c_wm8741_set_pdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i64 }
%struct.wm8741_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.wm8741_platform_data = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"diff-mode\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.wm8741_priv*)* @wm8741_set_pdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8741_set_pdata(%struct.device* %0, %struct.wm8741_priv* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.wm8741_priv*, align 8
  %5 = alloca %struct.wm8741_platform_data*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.wm8741_priv* %1, %struct.wm8741_priv** %4, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.wm8741_platform_data* @dev_get_platdata(%struct.device* %7)
  store %struct.wm8741_platform_data* %8, %struct.wm8741_platform_data** %5, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %2
  %14 = load %struct.device*, %struct.device** %3, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i64 @of_property_read_u32(i64 %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %6)
  %18 = icmp sge i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.wm8741_priv*, %struct.wm8741_priv** %4, align 8
  %22 = getelementptr inbounds %struct.wm8741_priv, %struct.wm8741_priv* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 4
  br label %24

24:                                               ; preds = %19, %13
  br label %34

25:                                               ; preds = %2
  %26 = load %struct.wm8741_platform_data*, %struct.wm8741_platform_data** %5, align 8
  %27 = icmp ne %struct.wm8741_platform_data* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load %struct.wm8741_priv*, %struct.wm8741_priv** %4, align 8
  %30 = getelementptr inbounds %struct.wm8741_priv, %struct.wm8741_priv* %29, i32 0, i32 0
  %31 = load %struct.wm8741_platform_data*, %struct.wm8741_platform_data** %5, align 8
  %32 = call i32 @memcpy(%struct.TYPE_2__* %30, %struct.wm8741_platform_data* %31, i32 4)
  br label %33

33:                                               ; preds = %28, %25
  br label %34

34:                                               ; preds = %33, %24
  ret i32 0
}

declare dso_local %struct.wm8741_platform_data* @dev_get_platdata(%struct.device*) #1

declare dso_local i64 @of_property_read_u32(i64, i8*, i32*) #1

declare dso_local i32 @memcpy(%struct.TYPE_2__*, %struct.wm8741_platform_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
