; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wcd9335.c_wcd9335_codec_update_sido_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wcd9335.c_wcd9335_codec_update_sido_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wcd9335_codec = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"Ext clk enable failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wcd9335_codec*, i32)* @wcd9335_codec_update_sido_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wcd9335_codec_update_sido_voltage(%struct.wcd9335_codec* %0, i32 %1) #0 {
  %3 = alloca %struct.wcd9335_codec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.wcd9335_codec* %0, %struct.wcd9335_codec** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %3, align 8
  %7 = call i32 @wcd9335_cdc_req_mclk_enable(%struct.wcd9335_codec* %6, i32 1)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %3, align 8
  %12 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @dev_err(i32 %13, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %21

15:                                               ; preds = %2
  %16 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @wcd9335_codec_apply_sido_voltage(%struct.wcd9335_codec* %16, i32 %17)
  %19 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %3, align 8
  %20 = call i32 @wcd9335_cdc_req_mclk_enable(%struct.wcd9335_codec* %19, i32 0)
  br label %21

21:                                               ; preds = %15, %10
  %22 = load i32, i32* %5, align 4
  ret i32 %22
}

declare dso_local i32 @wcd9335_cdc_req_mclk_enable(%struct.wcd9335_codec*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @wcd9335_codec_apply_sido_voltage(%struct.wcd9335_codec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
