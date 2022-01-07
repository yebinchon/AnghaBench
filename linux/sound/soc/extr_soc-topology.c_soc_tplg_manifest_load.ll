; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-topology.c_soc_tplg_manifest_load.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-topology.c_soc_tplg_manifest_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_tplg = type { i64, i32, i64, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 (i64, i32, %struct.snd_soc_tplg_manifest*)* }
%struct.snd_soc_tplg_manifest = type { i32 }
%struct.snd_soc_tplg_hdr = type { i32 }

@SOC_TPLG_PASS_MANIFEST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_tplg*, %struct.snd_soc_tplg_hdr*)* @soc_tplg_manifest_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soc_tplg_manifest_load(%struct.soc_tplg* %0, %struct.snd_soc_tplg_hdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.soc_tplg*, align 8
  %5 = alloca %struct.snd_soc_tplg_hdr*, align 8
  %6 = alloca %struct.snd_soc_tplg_manifest*, align 8
  %7 = alloca %struct.snd_soc_tplg_manifest*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.soc_tplg* %0, %struct.soc_tplg** %4, align 8
  store %struct.snd_soc_tplg_hdr* %1, %struct.snd_soc_tplg_hdr** %5, align 8
  %10 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %11 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SOC_TPLG_PASS_MANIFEST, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %76

16:                                               ; preds = %2
  %17 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %18 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.snd_soc_tplg_manifest*
  store %struct.snd_soc_tplg_manifest* %20, %struct.snd_soc_tplg_manifest** %6, align 8
  %21 = load %struct.snd_soc_tplg_manifest*, %struct.snd_soc_tplg_manifest** %6, align 8
  %22 = getelementptr inbounds %struct.snd_soc_tplg_manifest, %struct.snd_soc_tplg_manifest* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @le32_to_cpu(i32 %23)
  %25 = sext i32 %24 to i64
  %26 = icmp eq i64 %25, 4
  br i1 %26, label %27, label %29

27:                                               ; preds = %16
  store i32 1, i32* %8, align 4
  %28 = load %struct.snd_soc_tplg_manifest*, %struct.snd_soc_tplg_manifest** %6, align 8
  store %struct.snd_soc_tplg_manifest* %28, %struct.snd_soc_tplg_manifest** %7, align 8
  br label %38

29:                                               ; preds = %16
  store i32 0, i32* %8, align 4
  %30 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %31 = load %struct.snd_soc_tplg_manifest*, %struct.snd_soc_tplg_manifest** %6, align 8
  %32 = call i32 @manifest_new_ver(%struct.soc_tplg* %30, %struct.snd_soc_tplg_manifest* %31, %struct.snd_soc_tplg_manifest** %7)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %3, align 4
  br label %76

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %37, %27
  %39 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %40 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %69

43:                                               ; preds = %38
  %44 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %45 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %44, i32 0, i32 3
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = icmp ne %struct.TYPE_2__* %46, null
  br i1 %47, label %48, label %69

48:                                               ; preds = %43
  %49 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %50 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %49, i32 0, i32 3
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32 (i64, i32, %struct.snd_soc_tplg_manifest*)*, i32 (i64, i32, %struct.snd_soc_tplg_manifest*)** %52, align 8
  %54 = icmp ne i32 (i64, i32, %struct.snd_soc_tplg_manifest*)* %53, null
  br i1 %54, label %55, label %69

55:                                               ; preds = %48
  %56 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %57 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %56, i32 0, i32 3
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32 (i64, i32, %struct.snd_soc_tplg_manifest*)*, i32 (i64, i32, %struct.snd_soc_tplg_manifest*)** %59, align 8
  %61 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %62 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %65 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.snd_soc_tplg_manifest*, %struct.snd_soc_tplg_manifest** %7, align 8
  %68 = call i32 %60(i64 %63, i32 %66, %struct.snd_soc_tplg_manifest* %67)
  store i32 %68, i32* %3, align 4
  br label %76

69:                                               ; preds = %48, %43, %38
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %69
  %73 = load %struct.snd_soc_tplg_manifest*, %struct.snd_soc_tplg_manifest** %7, align 8
  %74 = call i32 @kfree(%struct.snd_soc_tplg_manifest* %73)
  br label %75

75:                                               ; preds = %72, %69
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %75, %55, %35, %15
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @manifest_new_ver(%struct.soc_tplg*, %struct.snd_soc_tplg_manifest*, %struct.snd_soc_tplg_manifest**) #1

declare dso_local i32 @kfree(%struct.snd_soc_tplg_manifest*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
