; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wcd9335.c_wcd9335_cdc_sido_ccl_enable.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wcd9335.c_wcd9335_cdc_sido_ccl_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wcd9335_codec = type { i32, i32, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@WCD9335_SIDO_SIDO_CCL_10 = common dso_local global i32 0, align 4
@WCD9335_SIDO_SIDO_CCL_DEF_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"sido_ccl already disabled\0A\00", align 1
@WCD9335_SIDO_SIDO_CCL_10_ICHARG_PWR_SEL_C320FF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wcd9335_codec*, i32)* @wcd9335_cdc_sido_ccl_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wcd9335_cdc_sido_ccl_enable(%struct.wcd9335_codec* %0, i32 %1) #0 {
  %3 = alloca %struct.wcd9335_codec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_component*, align 8
  store %struct.wcd9335_codec* %0, %struct.wcd9335_codec** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %3, align 8
  %7 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %6, i32 0, i32 2
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  store %struct.snd_soc_component* %8, %struct.snd_soc_component** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %2
  %12 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %3, align 8
  %13 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 8
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %22

17:                                               ; preds = %11
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %19 = load i32, i32* @WCD9335_SIDO_SIDO_CCL_10, align 4
  %20 = load i32, i32* @WCD9335_SIDO_SIDO_CCL_DEF_VALUE, align 4
  %21 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %18, i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %17, %11
  br label %45

23:                                               ; preds = %2
  %24 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %3, align 8
  %25 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %3, align 8
  %30 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %45

33:                                               ; preds = %23
  %34 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %3, align 8
  %35 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %35, align 8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  %40 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %41 = load i32, i32* @WCD9335_SIDO_SIDO_CCL_10, align 4
  %42 = load i32, i32* @WCD9335_SIDO_SIDO_CCL_10_ICHARG_PWR_SEL_C320FF, align 4
  %43 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %40, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %39, %33
  br label %45

45:                                               ; preds = %28, %44, %22
  ret void
}

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
