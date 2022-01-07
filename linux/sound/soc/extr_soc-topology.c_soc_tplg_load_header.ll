; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-topology.c_soc_tplg_load_header.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-topology.c_soc_tplg_load_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_tplg = type { i32, i32, i64, i64 }
%struct.snd_soc_tplg_hdr = type { i32, i32 }

@SND_SOC_TPLG_INDEX_ALL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_tplg*, %struct.snd_soc_tplg_hdr*)* @soc_tplg_load_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soc_tplg_load_header(%struct.soc_tplg* %0, %struct.snd_soc_tplg_hdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.soc_tplg*, align 8
  %5 = alloca %struct.snd_soc_tplg_hdr*, align 8
  store %struct.soc_tplg* %0, %struct.soc_tplg** %4, align 8
  store %struct.snd_soc_tplg_hdr* %1, %struct.snd_soc_tplg_hdr** %5, align 8
  %6 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %7 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = add i64 %8, 8
  %10 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %11 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %10, i32 0, i32 3
  store i64 %9, i64* %11, align 8
  %12 = load %struct.snd_soc_tplg_hdr*, %struct.snd_soc_tplg_hdr** %5, align 8
  %13 = getelementptr inbounds %struct.snd_soc_tplg_hdr, %struct.snd_soc_tplg_hdr* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @le32_to_cpu(i32 %14)
  %16 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %17 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %15, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %2
  %21 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %22 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = load i64, i64* @SND_SOC_TPLG_INDEX_ALL, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %71

28:                                               ; preds = %20, %2
  %29 = load %struct.snd_soc_tplg_hdr*, %struct.snd_soc_tplg_hdr** %5, align 8
  %30 = getelementptr inbounds %struct.snd_soc_tplg_hdr, %struct.snd_soc_tplg_hdr* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @le32_to_cpu(i32 %31)
  %33 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %34 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.snd_soc_tplg_hdr*, %struct.snd_soc_tplg_hdr** %5, align 8
  %36 = getelementptr inbounds %struct.snd_soc_tplg_hdr, %struct.snd_soc_tplg_hdr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @le32_to_cpu(i32 %37)
  switch i32 %38, label %67 [
    i32 129, label %39
    i32 131, label %39
    i32 136, label %39
    i32 133, label %43
    i32 132, label %47
    i32 128, label %51
    i32 135, label %55
    i32 134, label %59
    i32 137, label %59
    i32 130, label %63
  ]

39:                                               ; preds = %28, %28, %28
  %40 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %41 = load %struct.snd_soc_tplg_hdr*, %struct.snd_soc_tplg_hdr** %5, align 8
  %42 = call i32 @soc_tplg_kcontrol_elems_load(%struct.soc_tplg* %40, %struct.snd_soc_tplg_hdr* %41)
  store i32 %42, i32* %3, align 4
  br label %71

43:                                               ; preds = %28
  %44 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %45 = load %struct.snd_soc_tplg_hdr*, %struct.snd_soc_tplg_hdr** %5, align 8
  %46 = call i32 @soc_tplg_dapm_graph_elems_load(%struct.soc_tplg* %44, %struct.snd_soc_tplg_hdr* %45)
  store i32 %46, i32* %3, align 4
  br label %71

47:                                               ; preds = %28
  %48 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %49 = load %struct.snd_soc_tplg_hdr*, %struct.snd_soc_tplg_hdr** %5, align 8
  %50 = call i32 @soc_tplg_dapm_widget_elems_load(%struct.soc_tplg* %48, %struct.snd_soc_tplg_hdr* %49)
  store i32 %50, i32* %3, align 4
  br label %71

51:                                               ; preds = %28
  %52 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %53 = load %struct.snd_soc_tplg_hdr*, %struct.snd_soc_tplg_hdr** %5, align 8
  %54 = call i32 @soc_tplg_pcm_elems_load(%struct.soc_tplg* %52, %struct.snd_soc_tplg_hdr* %53)
  store i32 %54, i32* %3, align 4
  br label %71

55:                                               ; preds = %28
  %56 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %57 = load %struct.snd_soc_tplg_hdr*, %struct.snd_soc_tplg_hdr** %5, align 8
  %58 = call i32 @soc_tplg_dai_elems_load(%struct.soc_tplg* %56, %struct.snd_soc_tplg_hdr* %57)
  store i32 %58, i32* %3, align 4
  br label %71

59:                                               ; preds = %28, %28
  %60 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %61 = load %struct.snd_soc_tplg_hdr*, %struct.snd_soc_tplg_hdr** %5, align 8
  %62 = call i32 @soc_tplg_link_elems_load(%struct.soc_tplg* %60, %struct.snd_soc_tplg_hdr* %61)
  store i32 %62, i32* %3, align 4
  br label %71

63:                                               ; preds = %28
  %64 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %65 = load %struct.snd_soc_tplg_hdr*, %struct.snd_soc_tplg_hdr** %5, align 8
  %66 = call i32 @soc_tplg_manifest_load(%struct.soc_tplg* %64, %struct.snd_soc_tplg_hdr* %65)
  store i32 %66, i32* %3, align 4
  br label %71

67:                                               ; preds = %28
  %68 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %69 = load %struct.snd_soc_tplg_hdr*, %struct.snd_soc_tplg_hdr** %5, align 8
  %70 = call i32 @soc_tplg_vendor_load(%struct.soc_tplg* %68, %struct.snd_soc_tplg_hdr* %69)
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %67, %63, %59, %55, %51, %47, %43, %39, %27
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @soc_tplg_kcontrol_elems_load(%struct.soc_tplg*, %struct.snd_soc_tplg_hdr*) #1

declare dso_local i32 @soc_tplg_dapm_graph_elems_load(%struct.soc_tplg*, %struct.snd_soc_tplg_hdr*) #1

declare dso_local i32 @soc_tplg_dapm_widget_elems_load(%struct.soc_tplg*, %struct.snd_soc_tplg_hdr*) #1

declare dso_local i32 @soc_tplg_pcm_elems_load(%struct.soc_tplg*, %struct.snd_soc_tplg_hdr*) #1

declare dso_local i32 @soc_tplg_dai_elems_load(%struct.soc_tplg*, %struct.snd_soc_tplg_hdr*) #1

declare dso_local i32 @soc_tplg_link_elems_load(%struct.soc_tplg*, %struct.snd_soc_tplg_hdr*) #1

declare dso_local i32 @soc_tplg_manifest_load(%struct.soc_tplg*, %struct.snd_soc_tplg_hdr*) #1

declare dso_local i32 @soc_tplg_vendor_load(%struct.soc_tplg*, %struct.snd_soc_tplg_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
