; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_prodigy_hifi.c_prodigy_hifi_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_prodigy_hifi.c_prodigy_hifi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { i32, i32, i32, i32, i32, i32*, %struct.prodigy_hifi_spec*, i8*, %struct.TYPE_2__, i64 }
%struct.prodigy_hifi_spec = type { i32 }
%struct.TYPE_2__ = type { i64* }

@prodigy_hifi_init.wm8776_defaults = internal global [42 x i16] [i16 131, i16 34, i16 136, i16 34, i16 145, i16 34, i16 138, i16 144, i16 129, i16 1, i16 133, i16 377, i16 132, i16 377, i16 140, i16 0, i16 140, i16 256, i16 139, i16 0, i16 139, i16 256, i16 128, i16 0, i16 137, i16 0, i16 147, i16 0, i16 146, i16 0, i16 143, i16 123, i16 142, i16 0, i16 141, i16 0, i16 130, i16 0, i16 134, i16 0, i16 144, i16 3], align 16
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@prodigy_hifi_resume = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ice1712*)* @prodigy_hifi_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prodigy_hifi_init(%struct.snd_ice1712* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_ice1712*, align 8
  %4 = alloca %struct.prodigy_hifi_spec*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %3, align 8
  %6 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %7 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %6, i32 0, i32 9
  store i64 0, i64* %7, align 8
  %8 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %9 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %8, i32 0, i32 0
  store i32 1, i32* %9, align 8
  %10 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %11 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %10, i32 0, i32 1
  store i32 8, i32* %11, align 4
  %12 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %13 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %12, i32 0, i32 2
  store i32 1, i32* %13, align 8
  %14 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %15 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %14, i32 0, i32 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 0
  store i64 0, i64* %18, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i8* @kzalloc(i32 4, i32 %19)
  %21 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %22 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %21, i32 0, i32 7
  store i8* %20, i8** %22, align 8
  %23 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %24 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %23, i32 0, i32 7
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %1
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %70

30:                                               ; preds = %1
  %31 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %32 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %31, i32 0, i32 3
  store i32 1, i32* %32, align 4
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call i8* @kzalloc(i32 4, i32 %33)
  %35 = bitcast i8* %34 to %struct.prodigy_hifi_spec*
  store %struct.prodigy_hifi_spec* %35, %struct.prodigy_hifi_spec** %4, align 8
  %36 = load %struct.prodigy_hifi_spec*, %struct.prodigy_hifi_spec** %4, align 8
  %37 = icmp ne %struct.prodigy_hifi_spec* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %30
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %70

41:                                               ; preds = %30
  %42 = load %struct.prodigy_hifi_spec*, %struct.prodigy_hifi_spec** %4, align 8
  %43 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %44 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %43, i32 0, i32 6
  store %struct.prodigy_hifi_spec* %42, %struct.prodigy_hifi_spec** %44, align 8
  %45 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %46 = call i32 @wm8776_init(%struct.snd_ice1712* %45)
  %47 = call i32 @schedule_timeout_uninterruptible(i32 1)
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %64, %41
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @ARRAY_SIZE(i16* getelementptr inbounds ([42 x i16], [42 x i16]* @prodigy_hifi_init.wm8776_defaults, i64 0, i64 0))
  %51 = icmp ult i32 %49, %50
  br i1 %51, label %52, label %67

52:                                               ; preds = %48
  %53 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %54 = load i32, i32* %5, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds [42 x i16], [42 x i16]* @prodigy_hifi_init.wm8776_defaults, i64 0, i64 %55
  %57 = load i16, i16* %56, align 2
  %58 = load i32, i32* %5, align 4
  %59 = add i32 %58, 1
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds [42 x i16], [42 x i16]* @prodigy_hifi_init.wm8776_defaults, i64 0, i64 %60
  %62 = load i16, i16* %61, align 2
  %63 = call i32 @wm_put(%struct.snd_ice1712* %53, i16 zeroext %57, i16 zeroext %62)
  br label %64

64:                                               ; preds = %52
  %65 = load i32, i32* %5, align 4
  %66 = add i32 %65, 2
  store i32 %66, i32* %5, align 4
  br label %48

67:                                               ; preds = %48
  %68 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %69 = call i32 @wm8766_init(%struct.snd_ice1712* %68)
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %67, %38, %27
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @wm8776_init(%struct.snd_ice1712*) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

declare dso_local i32 @ARRAY_SIZE(i16*) #1

declare dso_local i32 @wm_put(%struct.snd_ice1712*, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @wm8766_init(%struct.snd_ice1712*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
