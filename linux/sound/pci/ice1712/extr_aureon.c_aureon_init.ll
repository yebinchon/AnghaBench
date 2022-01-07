; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_aureon.c_aureon_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_aureon.c_aureon_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { i32, i32, i32, i32, i32, i8*, %struct.TYPE_2__, %struct.aureon_spec* }
%struct.TYPE_2__ = type { i64 }
%struct.aureon_spec = type { i8**, i8** }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VT1724_SUBDEVICE_AUREON51_SKY = common dso_local global i64 0, align 8
@WM_VOL_MUTE = common dso_local global i8* null, align 8
@aureon_resume = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ice1712*)* @aureon_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aureon_init(%struct.snd_ice1712* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_ice1712*, align 8
  %4 = alloca %struct.aureon_spec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %3, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call i8* @kzalloc(i32 16, i32 %7)
  %9 = bitcast i8* %8 to %struct.aureon_spec*
  store %struct.aureon_spec* %9, %struct.aureon_spec** %4, align 8
  %10 = load %struct.aureon_spec*, %struct.aureon_spec** %4, align 8
  %11 = icmp ne %struct.aureon_spec* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %103

15:                                               ; preds = %1
  %16 = load %struct.aureon_spec*, %struct.aureon_spec** %4, align 8
  %17 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %18 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %17, i32 0, i32 7
  store %struct.aureon_spec* %16, %struct.aureon_spec** %18, align 8
  %19 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %20 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %19, i32 0, i32 6
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @VT1724_SUBDEVICE_AUREON51_SKY, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %15
  %26 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %27 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %26, i32 0, i32 0
  store i32 6, i32* %27, align 8
  %28 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %29 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %28, i32 0, i32 1
  store i32 2, i32* %29, align 4
  br label %35

30:                                               ; preds = %15
  %31 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %32 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %31, i32 0, i32 0
  store i32 8, i32* %32, align 8
  %33 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %34 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %33, i32 0, i32 1
  store i32 2, i32* %34, align 4
  br label %35

35:                                               ; preds = %30, %25
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call i8* @kzalloc(i32 4, i32 %36)
  %38 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %39 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %38, i32 0, i32 5
  store i8* %37, i8** %39, align 8
  %40 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %41 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %40, i32 0, i32 5
  %42 = load i8*, i8** %41, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %35
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %103

47:                                               ; preds = %35
  %48 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %49 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %48, i32 0, i32 2
  store i32 1, i32* %49, align 8
  %50 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %51 = call i32 @aureon_reset(%struct.snd_ice1712* %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %2, align 4
  br label %103

56:                                               ; preds = %47
  %57 = load i8*, i8** @WM_VOL_MUTE, align 8
  %58 = load %struct.aureon_spec*, %struct.aureon_spec** %4, align 8
  %59 = getelementptr inbounds %struct.aureon_spec, %struct.aureon_spec* %58, i32 0, i32 0
  %60 = load i8**, i8*** %59, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 0
  store i8* %57, i8** %61, align 8
  %62 = load i8*, i8** @WM_VOL_MUTE, align 8
  %63 = load %struct.aureon_spec*, %struct.aureon_spec** %4, align 8
  %64 = getelementptr inbounds %struct.aureon_spec, %struct.aureon_spec* %63, i32 0, i32 0
  %65 = load i8**, i8*** %64, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 1
  store i8* %62, i8** %66, align 8
  store i32 0, i32* %5, align 4
  br label %67

67:                                               ; preds = %99, %56
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %70 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %73, label %102

73:                                               ; preds = %67
  %74 = load i8*, i8** @WM_VOL_MUTE, align 8
  %75 = load %struct.aureon_spec*, %struct.aureon_spec** %4, align 8
  %76 = getelementptr inbounds %struct.aureon_spec, %struct.aureon_spec* %75, i32 0, i32 1
  %77 = load i8**, i8*** %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8*, i8** %77, i64 %79
  store i8* %74, i8** %80, align 8
  %81 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %82 = load i32, i32* %5, align 4
  %83 = load %struct.aureon_spec*, %struct.aureon_spec** %4, align 8
  %84 = getelementptr inbounds %struct.aureon_spec, %struct.aureon_spec* %83, i32 0, i32 1
  %85 = load i8**, i8*** %84, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8*, i8** %85, i64 %87
  %89 = load i8*, i8** %88, align 8
  %90 = load %struct.aureon_spec*, %struct.aureon_spec** %4, align 8
  %91 = getelementptr inbounds %struct.aureon_spec, %struct.aureon_spec* %90, i32 0, i32 0
  %92 = load i8**, i8*** %91, align 8
  %93 = load i32, i32* %5, align 4
  %94 = srem i32 %93, 2
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8*, i8** %92, i64 %95
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 @wm_set_vol(%struct.snd_ice1712* %81, i32 %82, i8* %89, i8* %97)
  br label %99

99:                                               ; preds = %73
  %100 = load i32, i32* %5, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %5, align 4
  br label %67

102:                                              ; preds = %67
  store i32 0, i32* %2, align 4
  br label %103

103:                                              ; preds = %102, %54, %44, %12
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @aureon_reset(%struct.snd_ice1712*) #1

declare dso_local i32 @wm_set_vol(%struct.snd_ice1712*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
