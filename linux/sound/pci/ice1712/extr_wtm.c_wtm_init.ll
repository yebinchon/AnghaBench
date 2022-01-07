; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_wtm.c_wtm_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_wtm.c_wtm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { i32, i32, i32, %struct.TYPE_2__, %struct.wtm_spec* }
%struct.TYPE_2__ = type { i32 }
%struct.wtm_spec = type { i32 }

@wtm_init.stac_inits_wtm = internal global [5 x i16] [i16 128, i16 0, i16 129, i16 17, i16 -1], align 2
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@stac9460_set_rate_val = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ice1712*)* @wtm_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wtm_init(%struct.snd_ice1712* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_ice1712*, align 8
  %4 = alloca i16*, align 8
  %5 = alloca %struct.wtm_spec*, align 8
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %3, align 8
  %6 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %7 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %6, i32 0, i32 0
  store i32 8, i32* %7, align 8
  %8 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %9 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %8, i32 0, i32 1
  store i32 4, i32* %9, align 4
  %10 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %11 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %10, i32 0, i32 2
  store i32 1, i32* %11, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.wtm_spec* @kzalloc(i32 4, i32 %12)
  store %struct.wtm_spec* %13, %struct.wtm_spec** %5, align 8
  %14 = load %struct.wtm_spec*, %struct.wtm_spec** %5, align 8
  %15 = icmp ne %struct.wtm_spec* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %56

19:                                               ; preds = %1
  %20 = load %struct.wtm_spec*, %struct.wtm_spec** %5, align 8
  %21 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %22 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %21, i32 0, i32 4
  store %struct.wtm_spec* %20, %struct.wtm_spec** %22, align 8
  %23 = load %struct.wtm_spec*, %struct.wtm_spec** %5, align 8
  %24 = getelementptr inbounds %struct.wtm_spec, %struct.wtm_spec* %23, i32 0, i32 0
  %25 = call i32 @mutex_init(i32* %24)
  store i16* getelementptr inbounds ([5 x i16], [5 x i16]* @wtm_init.stac_inits_wtm, i64 0, i64 0), i16** %4, align 8
  br label %26

26:                                               ; preds = %48, %19
  %27 = load i16*, i16** %4, align 8
  %28 = load i16, i16* %27, align 2
  %29 = zext i16 %28 to i32
  %30 = icmp ne i32 %29, 65535
  br i1 %30, label %31, label %51

31:                                               ; preds = %26
  %32 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %33 = load i16*, i16** %4, align 8
  %34 = getelementptr inbounds i16, i16* %33, i64 0
  %35 = load i16, i16* %34, align 2
  %36 = load i16*, i16** %4, align 8
  %37 = getelementptr inbounds i16, i16* %36, i64 1
  %38 = load i16, i16* %37, align 2
  %39 = call i32 @stac9460_put(%struct.snd_ice1712* %32, i16 zeroext %35, i16 zeroext %38)
  %40 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %41 = load i16*, i16** %4, align 8
  %42 = getelementptr inbounds i16, i16* %41, i64 0
  %43 = load i16, i16* %42, align 2
  %44 = load i16*, i16** %4, align 8
  %45 = getelementptr inbounds i16, i16* %44, i64 1
  %46 = load i16, i16* %45, align 2
  %47 = call i32 @stac9460_2_put(%struct.snd_ice1712* %40, i16 zeroext %43, i16 zeroext %46)
  br label %48

48:                                               ; preds = %31
  %49 = load i16*, i16** %4, align 8
  %50 = getelementptr inbounds i16, i16* %49, i64 2
  store i16* %50, i16** %4, align 8
  br label %26

51:                                               ; preds = %26
  %52 = load i32, i32* @stac9460_set_rate_val, align 4
  %53 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %54 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 4
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %51, %16
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local %struct.wtm_spec* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @stac9460_put(%struct.snd_ice1712*, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @stac9460_2_put(%struct.snd_ice1712*, i16 zeroext, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
