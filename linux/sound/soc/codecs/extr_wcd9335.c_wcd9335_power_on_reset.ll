; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wcd9335.c_wcd9335_power_on_reset.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wcd9335.c_wcd9335_power_on_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wcd9335_codec = type { i32, i32, %struct.device* }
%struct.device = type { i32 }

@WCD9335_MAX_SUPPLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to get supplies: err = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wcd9335_codec*)* @wcd9335_power_on_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wcd9335_power_on_reset(%struct.wcd9335_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wcd9335_codec*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.wcd9335_codec* %0, %struct.wcd9335_codec** %3, align 8
  %6 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %3, align 8
  %7 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %6, i32 0, i32 2
  %8 = load %struct.device*, %struct.device** %7, align 8
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load i32, i32* @WCD9335_MAX_SUPPLY, align 4
  %10 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %3, align 8
  %11 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @regulator_bulk_enable(i32 %9, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @dev_err(%struct.device* %17, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %2, align 4
  br label %33

21:                                               ; preds = %1
  %22 = call i32 @usleep_range(i32 600, i32 650)
  %23 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %3, align 8
  %24 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @gpio_direction_output(i32 %25, i32 0)
  %27 = call i32 @msleep(i32 20)
  %28 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %3, align 8
  %29 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @gpio_set_value(i32 %30, i32 1)
  %32 = call i32 @msleep(i32 20)
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %21, %16
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @regulator_bulk_enable(i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
