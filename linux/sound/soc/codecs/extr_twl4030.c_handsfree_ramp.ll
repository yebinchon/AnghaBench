; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_twl4030.c_handsfree_ramp.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_twl4030.c_handsfree_ramp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }

@TWL4030_HF_CTL_REF_EN = common dso_local global i8 0, align 1
@TWL4030_HF_CTL_RAMP_EN = common dso_local global i8 0, align 1
@TWL4030_HF_CTL_LOOP_EN = common dso_local global i8 0, align 1
@TWL4030_HF_CTL_HB_EN = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*, i32, i32)* @handsfree_ramp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handsfree_ramp(%struct.snd_soc_component* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call zeroext i8 @twl4030_read(%struct.snd_soc_component* %8, i32 %9)
  store i8 %10, i8* %7, align 1
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %52

13:                                               ; preds = %3
  %14 = load i8, i8* @TWL4030_HF_CTL_REF_EN, align 1
  %15 = zext i8 %14 to i32
  %16 = load i8, i8* %7, align 1
  %17 = zext i8 %16 to i32
  %18 = or i32 %17, %15
  %19 = trunc i32 %18 to i8
  store i8 %19, i8* %7, align 1
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i8, i8* %7, align 1
  %23 = call i32 @twl4030_write(%struct.snd_soc_component* %20, i32 %21, i8 zeroext %22)
  %24 = call i32 @udelay(i32 10)
  %25 = load i8, i8* @TWL4030_HF_CTL_RAMP_EN, align 1
  %26 = zext i8 %25 to i32
  %27 = load i8, i8* %7, align 1
  %28 = zext i8 %27 to i32
  %29 = or i32 %28, %26
  %30 = trunc i32 %29 to i8
  store i8 %30, i8* %7, align 1
  %31 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load i8, i8* %7, align 1
  %34 = call i32 @twl4030_write(%struct.snd_soc_component* %31, i32 %32, i8 zeroext %33)
  %35 = call i32 @udelay(i32 40)
  %36 = load i8, i8* @TWL4030_HF_CTL_LOOP_EN, align 1
  %37 = zext i8 %36 to i32
  %38 = load i8, i8* %7, align 1
  %39 = zext i8 %38 to i32
  %40 = or i32 %39, %37
  %41 = trunc i32 %40 to i8
  store i8 %41, i8* %7, align 1
  %42 = load i8, i8* @TWL4030_HF_CTL_HB_EN, align 1
  %43 = zext i8 %42 to i32
  %44 = load i8, i8* %7, align 1
  %45 = zext i8 %44 to i32
  %46 = or i32 %45, %43
  %47 = trunc i32 %46 to i8
  store i8 %47, i8* %7, align 1
  %48 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %49 = load i32, i32* %5, align 4
  %50 = load i8, i8* %7, align 1
  %51 = call i32 @twl4030_write(%struct.snd_soc_component* %48, i32 %49, i8 zeroext %50)
  br label %94

52:                                               ; preds = %3
  %53 = load i8, i8* @TWL4030_HF_CTL_LOOP_EN, align 1
  %54 = zext i8 %53 to i32
  %55 = xor i32 %54, -1
  %56 = load i8, i8* %7, align 1
  %57 = zext i8 %56 to i32
  %58 = and i32 %57, %55
  %59 = trunc i32 %58 to i8
  store i8 %59, i8* %7, align 1
  %60 = load i8, i8* @TWL4030_HF_CTL_HB_EN, align 1
  %61 = zext i8 %60 to i32
  %62 = xor i32 %61, -1
  %63 = load i8, i8* %7, align 1
  %64 = zext i8 %63 to i32
  %65 = and i32 %64, %62
  %66 = trunc i32 %65 to i8
  store i8 %66, i8* %7, align 1
  %67 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %68 = load i32, i32* %5, align 4
  %69 = load i8, i8* %7, align 1
  %70 = call i32 @twl4030_write(%struct.snd_soc_component* %67, i32 %68, i8 zeroext %69)
  %71 = load i8, i8* @TWL4030_HF_CTL_RAMP_EN, align 1
  %72 = zext i8 %71 to i32
  %73 = xor i32 %72, -1
  %74 = load i8, i8* %7, align 1
  %75 = zext i8 %74 to i32
  %76 = and i32 %75, %73
  %77 = trunc i32 %76 to i8
  store i8 %77, i8* %7, align 1
  %78 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %79 = load i32, i32* %5, align 4
  %80 = load i8, i8* %7, align 1
  %81 = call i32 @twl4030_write(%struct.snd_soc_component* %78, i32 %79, i8 zeroext %80)
  %82 = call i32 @udelay(i32 40)
  %83 = load i8, i8* @TWL4030_HF_CTL_REF_EN, align 1
  %84 = zext i8 %83 to i32
  %85 = xor i32 %84, -1
  %86 = load i8, i8* %7, align 1
  %87 = zext i8 %86 to i32
  %88 = and i32 %87, %85
  %89 = trunc i32 %88 to i8
  store i8 %89, i8* %7, align 1
  %90 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %91 = load i32, i32* %5, align 4
  %92 = load i8, i8* %7, align 1
  %93 = call i32 @twl4030_write(%struct.snd_soc_component* %90, i32 %91, i8 zeroext %92)
  br label %94

94:                                               ; preds = %52, %13
  ret void
}

declare dso_local zeroext i8 @twl4030_read(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @twl4030_write(%struct.snd_soc_component*, i32, i8 zeroext) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
