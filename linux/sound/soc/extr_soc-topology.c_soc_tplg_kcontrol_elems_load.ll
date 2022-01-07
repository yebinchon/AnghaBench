; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-topology.c_soc_tplg_kcontrol_elems_load.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-topology.c_soc_tplg_kcontrol_elems_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_tplg = type { i64, i32, i32 }
%struct.snd_soc_tplg_hdr = type { i32, i32, i32 }
%struct.snd_soc_tplg_ctl_hdr = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@SOC_TPLG_PASS_MIXER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"ASoC: adding %d kcontrols at 0x%lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"ASoC: invalid control size\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_tplg*, %struct.snd_soc_tplg_hdr*)* @soc_tplg_kcontrol_elems_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soc_tplg_kcontrol_elems_load(%struct.soc_tplg* %0, %struct.snd_soc_tplg_hdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.soc_tplg*, align 8
  %5 = alloca %struct.snd_soc_tplg_hdr*, align 8
  %6 = alloca %struct.snd_soc_tplg_ctl_hdr*, align 8
  %7 = alloca i32, align 4
  store %struct.soc_tplg* %0, %struct.soc_tplg** %4, align 8
  store %struct.snd_soc_tplg_hdr* %1, %struct.snd_soc_tplg_hdr** %5, align 8
  %8 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %9 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @SOC_TPLG_PASS_MIXER, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %27

13:                                               ; preds = %2
  %14 = load %struct.snd_soc_tplg_hdr*, %struct.snd_soc_tplg_hdr** %5, align 8
  %15 = getelementptr inbounds %struct.snd_soc_tplg_hdr, %struct.snd_soc_tplg_hdr* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @le32_to_cpu(i32 %16)
  %18 = load %struct.snd_soc_tplg_hdr*, %struct.snd_soc_tplg_hdr** %5, align 8
  %19 = getelementptr inbounds %struct.snd_soc_tplg_hdr, %struct.snd_soc_tplg_hdr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @le32_to_cpu(i32 %20)
  %22 = add nsw i32 %17, %21
  %23 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %24 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, %22
  store i32 %26, i32* %24, align 8
  store i32 0, i32* %3, align 4
  br label %102

27:                                               ; preds = %2
  %28 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %29 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.snd_soc_tplg_hdr*, %struct.snd_soc_tplg_hdr** %5, align 8
  %32 = getelementptr inbounds %struct.snd_soc_tplg_hdr, %struct.snd_soc_tplg_hdr* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %35 = call i32 @soc_tplg_get_offset(%struct.soc_tplg* %34)
  %36 = call i32 @dev_dbg(i32 %30, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %35)
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %98, %27
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.snd_soc_tplg_hdr*, %struct.snd_soc_tplg_hdr** %5, align 8
  %40 = getelementptr inbounds %struct.snd_soc_tplg_hdr, %struct.snd_soc_tplg_hdr* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @le32_to_cpu(i32 %41)
  %43 = icmp slt i32 %38, %42
  br i1 %43, label %44, label %101

44:                                               ; preds = %37
  %45 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %46 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to %struct.snd_soc_tplg_ctl_hdr*
  store %struct.snd_soc_tplg_ctl_hdr* %49, %struct.snd_soc_tplg_ctl_hdr** %6, align 8
  %50 = load %struct.snd_soc_tplg_ctl_hdr*, %struct.snd_soc_tplg_ctl_hdr** %6, align 8
  %51 = getelementptr inbounds %struct.snd_soc_tplg_ctl_hdr, %struct.snd_soc_tplg_ctl_hdr* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @le32_to_cpu(i32 %52)
  %54 = sext i32 %53 to i64
  %55 = icmp ne i64 %54, 8
  br i1 %55, label %56, label %63

56:                                               ; preds = %44
  %57 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %58 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @dev_err(i32 %59, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %102

63:                                               ; preds = %44
  %64 = load %struct.snd_soc_tplg_ctl_hdr*, %struct.snd_soc_tplg_ctl_hdr** %6, align 8
  %65 = getelementptr inbounds %struct.snd_soc_tplg_ctl_hdr, %struct.snd_soc_tplg_ctl_hdr* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @le32_to_cpu(i32 %67)
  switch i32 %68, label %90 [
    i32 135, label %69
    i32 136, label %69
    i32 134, label %69
    i32 133, label %69
    i32 137, label %69
    i32 128, label %69
    i32 129, label %69
    i32 139, label %76
    i32 138, label %76
    i32 132, label %76
    i32 130, label %76
    i32 131, label %76
    i32 140, label %83
  ]

69:                                               ; preds = %63, %63, %63, %63, %63, %63, %63
  %70 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %71 = load %struct.snd_soc_tplg_hdr*, %struct.snd_soc_tplg_hdr** %5, align 8
  %72 = getelementptr inbounds %struct.snd_soc_tplg_hdr, %struct.snd_soc_tplg_hdr* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @le32_to_cpu(i32 %73)
  %75 = call i32 @soc_tplg_dmixer_create(%struct.soc_tplg* %70, i32 1, i32 %74)
  br label %97

76:                                               ; preds = %63, %63, %63, %63, %63
  %77 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %78 = load %struct.snd_soc_tplg_hdr*, %struct.snd_soc_tplg_hdr** %5, align 8
  %79 = getelementptr inbounds %struct.snd_soc_tplg_hdr, %struct.snd_soc_tplg_hdr* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @le32_to_cpu(i32 %80)
  %82 = call i32 @soc_tplg_denum_create(%struct.soc_tplg* %77, i32 1, i32 %81)
  br label %97

83:                                               ; preds = %63
  %84 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %85 = load %struct.snd_soc_tplg_hdr*, %struct.snd_soc_tplg_hdr** %5, align 8
  %86 = getelementptr inbounds %struct.snd_soc_tplg_hdr, %struct.snd_soc_tplg_hdr* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @le32_to_cpu(i32 %87)
  %89 = call i32 @soc_tplg_dbytes_create(%struct.soc_tplg* %84, i32 1, i32 %88)
  br label %97

90:                                               ; preds = %63
  %91 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %92 = load %struct.snd_soc_tplg_ctl_hdr*, %struct.snd_soc_tplg_ctl_hdr** %6, align 8
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @soc_bind_err(%struct.soc_tplg* %91, %struct.snd_soc_tplg_ctl_hdr* %92, i32 %93)
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %3, align 4
  br label %102

97:                                               ; preds = %83, %76, %69
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %7, align 4
  br label %37

101:                                              ; preds = %37
  store i32 0, i32* %3, align 4
  br label %102

102:                                              ; preds = %101, %90, %56, %13
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @soc_tplg_get_offset(%struct.soc_tplg*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @soc_tplg_dmixer_create(%struct.soc_tplg*, i32, i32) #1

declare dso_local i32 @soc_tplg_denum_create(%struct.soc_tplg*, i32, i32) #1

declare dso_local i32 @soc_tplg_dbytes_create(%struct.soc_tplg*, i32, i32) #1

declare dso_local i32 @soc_bind_err(%struct.soc_tplg*, %struct.snd_soc_tplg_ctl_hdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
