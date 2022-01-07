; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_dsp_allocate_ports_format.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_dsp_allocate_ports_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"bad rate multiple\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i16, i32*)* @dsp_allocate_ports_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsp_allocate_ports_format(%struct.hda_codec* %0, i16 zeroext %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %5, align 8
  store i16 %1, i16* %6, align 2
  store i32* %2, i32** %7, align 8
  %13 = load i16, i16* %6, align 2
  %14 = call i32 @get_hdafmt_rate(i16 zeroext %13)
  %15 = ashr i32 %14, 0
  %16 = and i32 %15, 3
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %10, align 4
  %18 = load i16, i16* %6, align 2
  %19 = call i32 @get_hdafmt_rate(i16 zeroext %18)
  %20 = ashr i32 %19, 3
  %21 = and i32 %20, 3
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %10, align 4
  %25 = udiv i32 %23, %24
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp ne i32 %26, 1
  br i1 %27, label %28, label %39

28:                                               ; preds = %3
  %29 = load i32, i32* %12, align 4
  %30 = icmp ne i32 %29, 2
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = load i32, i32* %12, align 4
  %33 = icmp ne i32 %32, 4
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %36 = call i32 @codec_dbg(%struct.hda_codec* %35, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %49

39:                                               ; preds = %31, %28, %3
  %40 = load i16, i16* %6, align 2
  %41 = call i32 @get_hdafmt_chs(i16 zeroext %40)
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %9, align 4
  %43 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load i32*, i32** %7, align 8
  %47 = call i32 @dsp_allocate_ports(%struct.hda_codec* %43, i32 %44, i32 %45, i32* %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %39, %34
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @get_hdafmt_rate(i16 zeroext) #1

declare dso_local i32 @codec_dbg(%struct.hda_codec*, i8*) #1

declare dso_local i32 @get_hdafmt_chs(i16 zeroext) #1

declare dso_local i32 @dsp_allocate_ports(%struct.hda_codec*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
