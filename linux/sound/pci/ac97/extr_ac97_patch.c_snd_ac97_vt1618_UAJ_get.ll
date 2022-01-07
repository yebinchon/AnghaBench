; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_patch.c_snd_ac97_vt1618_UAJ_get.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_patch.c_snd_ac97_vt1618_UAJ_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i16, i16 }
%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i16* }
%struct.snd_ac97 = type { i32 }

@AC97_INT_PAGING = common dso_local global i32 0, align 4
@AC97_PAGE_MASK = common dso_local global i16 0, align 2
@vt1618_uaj = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_ac97_vt1618_UAJ_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ac97_vt1618_UAJ_get(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca %struct.snd_ac97*, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %8 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %9 = call %struct.snd_ac97* @snd_kcontrol_chip(%struct.snd_kcontrol* %8)
  store %struct.snd_ac97* %9, %struct.snd_ac97** %7, align 8
  %10 = load %struct.snd_ac97*, %struct.snd_ac97** %7, align 8
  %11 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.snd_ac97*, %struct.snd_ac97** %7, align 8
  %14 = load i32, i32* @AC97_INT_PAGING, align 4
  %15 = call zeroext i16 @snd_ac97_read(%struct.snd_ac97* %13, i32 %14)
  %16 = zext i16 %15 to i32
  %17 = load i16, i16* @AC97_PAGE_MASK, align 2
  %18 = zext i16 %17 to i32
  %19 = and i32 %16, %18
  %20 = trunc i32 %19 to i16
  store i16 %20, i16* %5, align 2
  %21 = load %struct.snd_ac97*, %struct.snd_ac97** %7, align 8
  %22 = load i32, i32* @AC97_INT_PAGING, align 4
  %23 = load i16, i16* @AC97_PAGE_MASK, align 2
  %24 = call i32 @snd_ac97_update_bits(%struct.snd_ac97* %21, i32 %22, i16 zeroext %23, i16 zeroext 0)
  %25 = load %struct.snd_ac97*, %struct.snd_ac97** %7, align 8
  %26 = call zeroext i16 @snd_ac97_read(%struct.snd_ac97* %25, i32 96)
  %27 = zext i16 %26 to i32
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vt1618_uaj, align 8
  %29 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %30 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i16, i16* %33, align 2
  %35 = zext i16 %34 to i32
  %36 = and i32 %27, %35
  %37 = trunc i32 %36 to i16
  store i16 %37, i16* %6, align 2
  %38 = load %struct.snd_ac97*, %struct.snd_ac97** %7, align 8
  %39 = load i32, i32* @AC97_INT_PAGING, align 4
  %40 = load i16, i16* @AC97_PAGE_MASK, align 2
  %41 = load i16, i16* %5, align 2
  %42 = call i32 @snd_ac97_update_bits(%struct.snd_ac97* %38, i32 %39, i16 zeroext %40, i16 zeroext %41)
  %43 = load %struct.snd_ac97*, %struct.snd_ac97** %7, align 8
  %44 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %43, i32 0, i32 0
  %45 = call i32 @mutex_unlock(i32* %44)
  %46 = load i16, i16* %6, align 2
  %47 = zext i16 %46 to i32
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vt1618_uaj, align 8
  %49 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %50 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i16, i16* %53, align 2
  %55 = zext i16 %54 to i32
  %56 = ashr i32 %47, %55
  %57 = trunc i32 %56 to i16
  %58 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %59 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i16*, i16** %61, align 8
  %63 = getelementptr inbounds i16, i16* %62, i64 0
  store i16 %57, i16* %63, align 2
  ret i32 0
}

declare dso_local %struct.snd_ac97* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local zeroext i16 @snd_ac97_read(%struct.snd_ac97*, i32) #1

declare dso_local i32 @snd_ac97_update_bits(%struct.snd_ac97*, i32, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
