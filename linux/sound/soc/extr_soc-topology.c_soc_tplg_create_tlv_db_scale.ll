; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-topology.c_soc_tplg_create_tlv_db_scale.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-topology.c_soc_tplg_create_tlv_db_scale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_tplg = type { i32 }
%struct.snd_kcontrol_new = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }
%struct.snd_soc_tplg_tlv_dbscale = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SNDRV_CTL_TLVT_DB_SCALE = common dso_local global i32 0, align 4
@TLV_DB_SCALE_MASK = common dso_local global i32 0, align 4
@TLV_DB_SCALE_MUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_tplg*, %struct.snd_kcontrol_new*, %struct.snd_soc_tplg_tlv_dbscale*)* @soc_tplg_create_tlv_db_scale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soc_tplg_create_tlv_db_scale(%struct.soc_tplg* %0, %struct.snd_kcontrol_new* %1, %struct.snd_soc_tplg_tlv_dbscale* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.soc_tplg*, align 8
  %6 = alloca %struct.snd_kcontrol_new*, align 8
  %7 = alloca %struct.snd_soc_tplg_tlv_dbscale*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.soc_tplg* %0, %struct.soc_tplg** %5, align 8
  store %struct.snd_kcontrol_new* %1, %struct.snd_kcontrol_new** %6, align 8
  store %struct.snd_soc_tplg_tlv_dbscale* %2, %struct.snd_soc_tplg_tlv_dbscale** %7, align 8
  store i32 8, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  %11 = zext i32 %10 to i64
  %12 = add i64 %11, 8
  %13 = trunc i64 %12 to i32
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i32* @kzalloc(i32 %13, i32 %14)
  store i32* %15, i32** %9, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %58

21:                                               ; preds = %3
  %22 = load i32, i32* @SNDRV_CTL_TLVT_DB_SCALE, align 4
  %23 = load i32*, i32** %9, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32*, i32** %9, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.snd_soc_tplg_tlv_dbscale*, %struct.snd_soc_tplg_tlv_dbscale** %7, align 8
  %29 = getelementptr inbounds %struct.snd_soc_tplg_tlv_dbscale, %struct.snd_soc_tplg_tlv_dbscale* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @le32_to_cpu(i32 %30)
  %32 = load i32*, i32** %9, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  store i32 %31, i32* %33, align 4
  %34 = load %struct.snd_soc_tplg_tlv_dbscale*, %struct.snd_soc_tplg_tlv_dbscale** %7, align 8
  %35 = getelementptr inbounds %struct.snd_soc_tplg_tlv_dbscale, %struct.snd_soc_tplg_tlv_dbscale* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @le32_to_cpu(i32 %36)
  %38 = load i32, i32* @TLV_DB_SCALE_MASK, align 4
  %39 = and i32 %37, %38
  %40 = load %struct.snd_soc_tplg_tlv_dbscale*, %struct.snd_soc_tplg_tlv_dbscale** %7, align 8
  %41 = getelementptr inbounds %struct.snd_soc_tplg_tlv_dbscale, %struct.snd_soc_tplg_tlv_dbscale* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @le32_to_cpu(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %21
  %46 = load i32, i32* @TLV_DB_SCALE_MUTE, align 4
  br label %48

47:                                               ; preds = %21
  br label %48

48:                                               ; preds = %47, %45
  %49 = phi i32 [ %46, %45 ], [ 0, %47 ]
  %50 = or i32 %39, %49
  %51 = load i32*, i32** %9, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 3
  store i32 %50, i32* %52, align 4
  %53 = load i32*, i32** %9, align 8
  %54 = bitcast i32* %53 to i8*
  %55 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %6, align 8
  %56 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store i8* %54, i8** %57, align 8
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %48, %18
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
