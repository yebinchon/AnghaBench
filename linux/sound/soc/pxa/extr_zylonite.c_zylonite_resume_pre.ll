; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/pxa/extr_zylonite.c_zylonite_resume_pre.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/pxa/extr_zylonite.c_zylonite_resume_pre.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_card = type { i32 }

@clk_pout = common dso_local global i64 0, align 8
@pout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Unable to enable CLK_POUT: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_card*)* @zylonite_resume_pre to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zylonite_resume_pre(%struct.snd_soc_card* %0) #0 {
  %2 = alloca %struct.snd_soc_card*, align 8
  %3 = alloca i32, align 4
  store %struct.snd_soc_card* %0, %struct.snd_soc_card** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load i64, i64* @clk_pout, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %18

6:                                                ; preds = %1
  %7 = load i32, i32* @pout, align 4
  %8 = call i32 @clk_enable(i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %6
  %12 = load %struct.snd_soc_card*, %struct.snd_soc_card** %2, align 8
  %13 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @dev_err(i32 %14, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %17

17:                                               ; preds = %11, %6
  br label %18

18:                                               ; preds = %17, %1
  %19 = load i32, i32* %3, align 4
  ret i32 %19
}

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
