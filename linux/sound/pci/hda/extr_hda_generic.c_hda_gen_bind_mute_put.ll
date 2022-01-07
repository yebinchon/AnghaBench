; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_hda_gen_bind_mute_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_hda_gen_bind_mute_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { i32 }
%struct.hda_codec = type { i32 }

@AMP_VAL_IDX_MASK = common dso_local global i64 0, align 8
@AMP_VAL_IDX_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @hda_gen_bind_mute_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hda_gen_bind_mute_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %11 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %12 = call %struct.hda_codec* @snd_kcontrol_chip(%struct.snd_kcontrol* %11)
  store %struct.hda_codec* %12, %struct.hda_codec** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %14 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %15 = call i32 @sync_auto_mute_bits(%struct.snd_kcontrol* %13, %struct.snd_ctl_elem_value* %14)
  %16 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %17 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %20 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %6, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* @AMP_VAL_IDX_MASK, align 8
  %24 = and i64 %22, %23
  %25 = load i64, i64* @AMP_VAL_IDX_SHIFT, align 8
  %26 = lshr i64 %24, %25
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %55, %2
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %58

32:                                               ; preds = %28
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* @AMP_VAL_IDX_MASK, align 8
  %35 = xor i64 %34, -1
  %36 = and i64 %33, %35
  %37 = load i32, i32* %7, align 4
  %38 = load i64, i64* @AMP_VAL_IDX_SHIFT, align 8
  %39 = trunc i64 %38 to i32
  %40 = shl i32 %37, %39
  %41 = sext i32 %40 to i64
  %42 = or i64 %36, %41
  %43 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %44 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %46 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %47 = call i32 @snd_hda_mixer_amp_switch_put(%struct.snd_kcontrol* %45, %struct.snd_ctl_elem_value* %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %32
  br label %58

51:                                               ; preds = %32
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %10, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %10, align 4
  br label %55

55:                                               ; preds = %51
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %7, align 4
  br label %28

58:                                               ; preds = %50, %28
  %59 = load i64, i64* %6, align 8
  %60 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %61 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  %62 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %63 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %62, i32 0, i32 0
  %64 = call i32 @mutex_unlock(i32* %63)
  %65 = load i32, i32* %9, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %58
  %68 = load i32, i32* %9, align 4
  br label %71

69:                                               ; preds = %58
  %70 = load i32, i32* %10, align 4
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi i32 [ %68, %67 ], [ %70, %69 ]
  ret i32 %72
}

declare dso_local %struct.hda_codec* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @sync_auto_mute_bits(%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @snd_hda_mixer_amp_switch_put(%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
