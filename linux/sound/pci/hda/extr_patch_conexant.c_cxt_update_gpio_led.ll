; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_conexant.c_cxt_update_gpio_led.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_conexant.c_cxt_update_gpio_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.conexant_spec* }
%struct.conexant_spec = type { i32, i64 }

@.str = private unnamed_addr constant [32 x i8] c"mask:%d enabled:%d gpio_led:%d\0A\00", align 1
@AC_VERB_SET_GPIO_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, i32, i32)* @cxt_update_gpio_led to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxt_update_gpio_led(%struct.hda_codec* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.conexant_spec*, align 8
  %8 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %10 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %9, i32 0, i32 0
  %11 = load %struct.conexant_spec*, %struct.conexant_spec** %10, align 8
  store %struct.conexant_spec* %11, %struct.conexant_spec** %7, align 8
  %12 = load %struct.conexant_spec*, %struct.conexant_spec** %7, align 8
  %13 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %8, align 4
  %15 = load %struct.conexant_spec*, %struct.conexant_spec** %7, align 8
  %16 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %19, %3
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.conexant_spec*, %struct.conexant_spec** %7, align 8
  %30 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 8
  br label %40

33:                                               ; preds = %24
  %34 = load i32, i32* %5, align 4
  %35 = xor i32 %34, -1
  %36 = load %struct.conexant_spec*, %struct.conexant_spec** %7, align 8
  %37 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = and i32 %38, %35
  store i32 %39, i32* %37, align 8
  br label %40

40:                                               ; preds = %33, %27
  %41 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.conexant_spec*, %struct.conexant_spec** %7, align 8
  %45 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @codec_dbg(%struct.hda_codec* %41, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43, i32 %46)
  %48 = load %struct.conexant_spec*, %struct.conexant_spec** %7, align 8
  %49 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %40
  %54 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %55 = load i32, i32* @AC_VERB_SET_GPIO_DATA, align 4
  %56 = load %struct.conexant_spec*, %struct.conexant_spec** %7, align 8
  %57 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @snd_hda_codec_write(%struct.hda_codec* %54, i32 1, i32 0, i32 %55, i32 %58)
  br label %60

60:                                               ; preds = %53, %40
  ret void
}

declare dso_local i32 @codec_dbg(%struct.hda_codec*, i8*, i32, i32, i32) #1

declare dso_local i32 @snd_hda_codec_write(%struct.hda_codec*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
