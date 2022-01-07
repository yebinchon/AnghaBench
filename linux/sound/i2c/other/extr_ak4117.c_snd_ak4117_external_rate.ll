; ModuleID = '/home/carl/AnghaBench/linux/sound/i2c/other/extr_ak4117.c_snd_ak4117_external_rate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/i2c/other/extr_ak4117.c_snd_ak4117_external_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ak4117 = type { i32 }

@AK4117_REG_RCS1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_ak4117_external_rate(%struct.ak4117* %0) #0 {
  %2 = alloca %struct.ak4117*, align 8
  %3 = alloca i8, align 1
  store %struct.ak4117* %0, %struct.ak4117** %2, align 8
  %4 = load %struct.ak4117*, %struct.ak4117** %2, align 8
  %5 = load i32, i32* @AK4117_REG_RCS1, align 4
  %6 = call zeroext i8 @reg_read(%struct.ak4117* %4, i32 %5)
  store i8 %6, i8* %3, align 1
  %7 = load i8, i8* %3, align 1
  %8 = call i32 @external_rate(i8 zeroext %7)
  ret i32 %8
}

declare dso_local zeroext i8 @reg_read(%struct.ak4117*, i32) #1

declare dso_local i32 @external_rate(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
