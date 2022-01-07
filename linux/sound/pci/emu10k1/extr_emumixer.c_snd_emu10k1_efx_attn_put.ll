; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emumixer.c_snd_emu10k1_efx_attn_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emumixer.c_snd_emu10k1_efx_attn_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.snd_emu10k1 = type { i32, %struct.snd_emu10k1_pcm_mixer* }
%struct.snd_emu10k1_pcm_mixer = type { i32*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__** }
%struct.TYPE_7__ = type { i32 }

@VTFT_VOLUMETARGET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_emu10k1_efx_attn_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_emu10k1_efx_attn_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.snd_emu10k1*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_emu10k1_pcm_mixer*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %11 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %12 = call %struct.snd_emu10k1* @snd_kcontrol_chip(%struct.snd_kcontrol* %11)
  store %struct.snd_emu10k1* %12, %struct.snd_emu10k1** %6, align 8
  %13 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %14 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %15 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %14, i32 0, i32 1
  %16 = call i32 @snd_ctl_get_ioffidx(%struct.snd_kcontrol* %13, i32* %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %18 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %17, i32 0, i32 1
  %19 = load %struct.snd_emu10k1_pcm_mixer*, %struct.snd_emu10k1_pcm_mixer** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.snd_emu10k1_pcm_mixer, %struct.snd_emu10k1_pcm_mixer* %19, i64 %21
  store %struct.snd_emu10k1_pcm_mixer* %22, %struct.snd_emu10k1_pcm_mixer** %8, align 8
  store i32 0, i32* %9, align 4
  %23 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %24 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %23, i32 0, i32 0
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %28 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 65535
  store i32 %34, i32* %10, align 4
  %35 = load %struct.snd_emu10k1_pcm_mixer*, %struct.snd_emu10k1_pcm_mixer** %8, align 8
  %36 = getelementptr inbounds %struct.snd_emu10k1_pcm_mixer, %struct.snd_emu10k1_pcm_mixer* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %2
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.snd_emu10k1_pcm_mixer*, %struct.snd_emu10k1_pcm_mixer** %8, align 8
  %45 = getelementptr inbounds %struct.snd_emu10k1_pcm_mixer, %struct.snd_emu10k1_pcm_mixer* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  store i32 %43, i32* %47, align 4
  store i32 1, i32* %9, align 4
  br label %48

48:                                               ; preds = %42, %2
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %88

51:                                               ; preds = %48
  %52 = load %struct.snd_emu10k1_pcm_mixer*, %struct.snd_emu10k1_pcm_mixer** %8, align 8
  %53 = getelementptr inbounds %struct.snd_emu10k1_pcm_mixer, %struct.snd_emu10k1_pcm_mixer* %52, i32 0, i32 1
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = icmp ne %struct.TYPE_8__* %54, null
  br i1 %55, label %56, label %88

56:                                               ; preds = %51
  %57 = load %struct.snd_emu10k1_pcm_mixer*, %struct.snd_emu10k1_pcm_mixer** %8, align 8
  %58 = getelementptr inbounds %struct.snd_emu10k1_pcm_mixer, %struct.snd_emu10k1_pcm_mixer* %57, i32 0, i32 1
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %61, i64 %63
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = icmp ne %struct.TYPE_7__* %65, null
  br i1 %66, label %67, label %87

67:                                               ; preds = %56
  %68 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %69 = load i32, i32* @VTFT_VOLUMETARGET, align 4
  %70 = load %struct.snd_emu10k1_pcm_mixer*, %struct.snd_emu10k1_pcm_mixer** %8, align 8
  %71 = getelementptr inbounds %struct.snd_emu10k1_pcm_mixer, %struct.snd_emu10k1_pcm_mixer* %70, i32 0, i32 1
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %74, i64 %76
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.snd_emu10k1_pcm_mixer*, %struct.snd_emu10k1_pcm_mixer** %8, align 8
  %82 = getelementptr inbounds %struct.snd_emu10k1_pcm_mixer, %struct.snd_emu10k1_pcm_mixer* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %68, i32 %69, i32 %80, i32 %85)
  br label %87

87:                                               ; preds = %67, %56
  br label %88

88:                                               ; preds = %87, %51, %48
  %89 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %90 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %89, i32 0, i32 0
  %91 = load i64, i64* %5, align 8
  %92 = call i32 @spin_unlock_irqrestore(i32* %90, i64 %91)
  %93 = load i32, i32* %9, align 4
  ret i32 %93
}

declare dso_local %struct.snd_emu10k1* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_ctl_get_ioffidx(%struct.snd_kcontrol*, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
