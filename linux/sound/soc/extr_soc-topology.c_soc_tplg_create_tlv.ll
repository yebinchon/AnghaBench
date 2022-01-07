; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-topology.c_soc_tplg_create_tlv.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-topology.c_soc_tplg_create_tlv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_tplg = type { i32 }
%struct.snd_kcontrol_new = type { i32 }
%struct.snd_soc_tplg_ctl_hdr = type { %struct.snd_soc_tplg_ctl_tlv, i32 }
%struct.snd_soc_tplg_ctl_tlv = type { i32, i32 }

@SNDRV_CTL_ELEM_ACCESS_TLV_READWRITE = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_ACCESS_TLV_CALLBACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Unsupported TLV type %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_tplg*, %struct.snd_kcontrol_new*, %struct.snd_soc_tplg_ctl_hdr*)* @soc_tplg_create_tlv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soc_tplg_create_tlv(%struct.soc_tplg* %0, %struct.snd_kcontrol_new* %1, %struct.snd_soc_tplg_ctl_hdr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.soc_tplg*, align 8
  %6 = alloca %struct.snd_kcontrol_new*, align 8
  %7 = alloca %struct.snd_soc_tplg_ctl_hdr*, align 8
  %8 = alloca %struct.snd_soc_tplg_ctl_tlv*, align 8
  %9 = alloca i32, align 4
  store %struct.soc_tplg* %0, %struct.soc_tplg** %5, align 8
  store %struct.snd_kcontrol_new* %1, %struct.snd_kcontrol_new** %6, align 8
  store %struct.snd_soc_tplg_ctl_hdr* %2, %struct.snd_soc_tplg_ctl_hdr** %7, align 8
  %10 = load %struct.snd_soc_tplg_ctl_hdr*, %struct.snd_soc_tplg_ctl_hdr** %7, align 8
  %11 = getelementptr inbounds %struct.snd_soc_tplg_ctl_hdr, %struct.snd_soc_tplg_ctl_hdr* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @le32_to_cpu(i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_TLV_READWRITE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %48

19:                                               ; preds = %3
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_TLV_CALLBACK, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %47, label %24

24:                                               ; preds = %19
  %25 = load %struct.snd_soc_tplg_ctl_hdr*, %struct.snd_soc_tplg_ctl_hdr** %7, align 8
  %26 = getelementptr inbounds %struct.snd_soc_tplg_ctl_hdr, %struct.snd_soc_tplg_ctl_hdr* %25, i32 0, i32 0
  store %struct.snd_soc_tplg_ctl_tlv* %26, %struct.snd_soc_tplg_ctl_tlv** %8, align 8
  %27 = load %struct.snd_soc_tplg_ctl_tlv*, %struct.snd_soc_tplg_ctl_tlv** %8, align 8
  %28 = getelementptr inbounds %struct.snd_soc_tplg_ctl_tlv, %struct.snd_soc_tplg_ctl_tlv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @le32_to_cpu(i32 %29)
  switch i32 %30, label %37 [
    i32 128, label %31
  ]

31:                                               ; preds = %24
  %32 = load %struct.soc_tplg*, %struct.soc_tplg** %5, align 8
  %33 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %6, align 8
  %34 = load %struct.snd_soc_tplg_ctl_tlv*, %struct.snd_soc_tplg_ctl_tlv** %8, align 8
  %35 = getelementptr inbounds %struct.snd_soc_tplg_ctl_tlv, %struct.snd_soc_tplg_ctl_tlv* %34, i32 0, i32 1
  %36 = call i32 @soc_tplg_create_tlv_db_scale(%struct.soc_tplg* %32, %struct.snd_kcontrol_new* %33, i32* %35)
  store i32 %36, i32* %4, align 4
  br label %48

37:                                               ; preds = %24
  %38 = load %struct.soc_tplg*, %struct.soc_tplg** %5, align 8
  %39 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.snd_soc_tplg_ctl_tlv*, %struct.snd_soc_tplg_ctl_tlv** %8, align 8
  %42 = getelementptr inbounds %struct.snd_soc_tplg_ctl_tlv, %struct.snd_soc_tplg_ctl_tlv* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @dev_dbg(i32 %40, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %48

47:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %47, %37, %31, %18
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @soc_tplg_create_tlv_db_scale(%struct.soc_tplg*, %struct.snd_kcontrol_new*, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
