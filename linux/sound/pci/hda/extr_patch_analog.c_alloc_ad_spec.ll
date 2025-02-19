; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_analog.c_alloc_ad_spec.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_analog.c_alloc_ad_spec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32, %struct.ad198x_spec* }
%struct.ad198x_spec = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ad198x_auto_patch_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @alloc_ad_spec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_ad_spec(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.ad198x_spec*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.ad198x_spec* @kzalloc(i32 4, i32 %5)
  store %struct.ad198x_spec* %6, %struct.ad198x_spec** %4, align 8
  %7 = load %struct.ad198x_spec*, %struct.ad198x_spec** %4, align 8
  %8 = icmp ne %struct.ad198x_spec* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %22

12:                                               ; preds = %1
  %13 = load %struct.ad198x_spec*, %struct.ad198x_spec** %4, align 8
  %14 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %15 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %14, i32 0, i32 1
  store %struct.ad198x_spec* %13, %struct.ad198x_spec** %15, align 8
  %16 = load %struct.ad198x_spec*, %struct.ad198x_spec** %4, align 8
  %17 = getelementptr inbounds %struct.ad198x_spec, %struct.ad198x_spec* %16, i32 0, i32 0
  %18 = call i32 @snd_hda_gen_spec_init(i32* %17)
  %19 = load i32, i32* @ad198x_auto_patch_ops, align 4
  %20 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %21 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %12, %9
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local %struct.ad198x_spec* @kzalloc(i32, i32) #1

declare dso_local i32 @snd_hda_gen_spec_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
