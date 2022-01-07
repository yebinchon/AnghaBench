; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-topology.c_soc_tplg_pcm_elems_load.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-topology.c_soc_tplg_pcm_elems_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_tplg = type { i64, i32, i64 }
%struct.snd_soc_tplg_hdr = type { i32, i32 }
%struct.snd_soc_tplg_pcm = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@SOC_TPLG_PASS_PCM_DAI = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"ASoC: invalid size %d for PCM elems\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"PCM DAI\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"ASoC: invalid count %d for PCM DAI elems\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"ASoC: adding %d PCM DAIs\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_tplg*, %struct.snd_soc_tplg_hdr*)* @soc_tplg_pcm_elems_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soc_tplg_pcm_elems_load(%struct.soc_tplg* %0, %struct.snd_soc_tplg_hdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.soc_tplg*, align 8
  %5 = alloca %struct.snd_soc_tplg_hdr*, align 8
  %6 = alloca %struct.snd_soc_tplg_pcm*, align 8
  %7 = alloca %struct.snd_soc_tplg_pcm*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.soc_tplg* %0, %struct.soc_tplg** %4, align 8
  store %struct.snd_soc_tplg_hdr* %1, %struct.snd_soc_tplg_hdr** %5, align 8
  %12 = load %struct.snd_soc_tplg_hdr*, %struct.snd_soc_tplg_hdr** %5, align 8
  %13 = getelementptr inbounds %struct.snd_soc_tplg_hdr, %struct.snd_soc_tplg_hdr* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @le32_to_cpu(i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %17 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SOC_TPLG_PASS_PCM_DAI, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %118

22:                                               ; preds = %2
  %23 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %24 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.snd_soc_tplg_pcm*
  store %struct.snd_soc_tplg_pcm* %26, %struct.snd_soc_tplg_pcm** %6, align 8
  %27 = load %struct.snd_soc_tplg_pcm*, %struct.snd_soc_tplg_pcm** %6, align 8
  %28 = getelementptr inbounds %struct.snd_soc_tplg_pcm, %struct.snd_soc_tplg_pcm* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @le32_to_cpu(i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = icmp ugt i64 %32, 8
  br i1 %33, label %38, label %34

34:                                               ; preds = %22
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = icmp ult i64 %36, 4
  br i1 %37, label %38, label %46

38:                                               ; preds = %34, %22
  %39 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %40 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @dev_err(i32 %41, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %118

46:                                               ; preds = %34
  %47 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.snd_soc_tplg_hdr*, %struct.snd_soc_tplg_hdr** %5, align 8
  %51 = getelementptr inbounds %struct.snd_soc_tplg_hdr, %struct.snd_soc_tplg_hdr* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @le32_to_cpu(i32 %52)
  %54 = call i64 @soc_tplg_check_elem_count(%struct.soc_tplg* %47, i32 %48, i32 %49, i32 %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %46
  %57 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %58 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @dev_err(i32 %59, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %118

64:                                               ; preds = %46
  store i32 0, i32* %10, align 4
  br label %65

65:                                               ; preds = %109, %64
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %112

69:                                               ; preds = %65
  %70 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %71 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = inttoptr i64 %72 to %struct.snd_soc_tplg_pcm*
  store %struct.snd_soc_tplg_pcm* %73, %struct.snd_soc_tplg_pcm** %6, align 8
  %74 = load %struct.snd_soc_tplg_pcm*, %struct.snd_soc_tplg_pcm** %6, align 8
  %75 = getelementptr inbounds %struct.snd_soc_tplg_pcm, %struct.snd_soc_tplg_pcm* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @le32_to_cpu(i32 %76)
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = icmp eq i64 %79, 8
  br i1 %80, label %81, label %83

81:                                               ; preds = %69
  store i32 1, i32* %11, align 4
  %82 = load %struct.snd_soc_tplg_pcm*, %struct.snd_soc_tplg_pcm** %6, align 8
  store %struct.snd_soc_tplg_pcm* %82, %struct.snd_soc_tplg_pcm** %7, align 8
  br label %87

83:                                               ; preds = %69
  store i32 0, i32* %11, align 4
  %84 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %85 = load %struct.snd_soc_tplg_pcm*, %struct.snd_soc_tplg_pcm** %6, align 8
  %86 = call i32 @pcm_new_ver(%struct.soc_tplg* %84, %struct.snd_soc_tplg_pcm* %85, %struct.snd_soc_tplg_pcm** %7)
  br label %87

87:                                               ; preds = %83, %81
  %88 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %89 = load %struct.snd_soc_tplg_pcm*, %struct.snd_soc_tplg_pcm** %7, align 8
  %90 = call i32 @soc_tplg_pcm_create(%struct.soc_tplg* %88, %struct.snd_soc_tplg_pcm* %89)
  %91 = load i32, i32* %9, align 4
  %92 = load %struct.snd_soc_tplg_pcm*, %struct.snd_soc_tplg_pcm** %7, align 8
  %93 = getelementptr inbounds %struct.snd_soc_tplg_pcm, %struct.snd_soc_tplg_pcm* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @le32_to_cpu(i32 %95)
  %97 = add nsw i32 %91, %96
  %98 = sext i32 %97 to i64
  %99 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %100 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %101, %98
  store i64 %102, i64* %100, align 8
  %103 = load i32, i32* %11, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %87
  %106 = load %struct.snd_soc_tplg_pcm*, %struct.snd_soc_tplg_pcm** %7, align 8
  %107 = call i32 @kfree(%struct.snd_soc_tplg_pcm* %106)
  br label %108

108:                                              ; preds = %105, %87
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %10, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %10, align 4
  br label %65

112:                                              ; preds = %65
  %113 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %114 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* %8, align 4
  %117 = call i32 @dev_dbg(i32 %115, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %116)
  store i32 0, i32* %3, align 4
  br label %118

118:                                              ; preds = %112, %56, %38, %21
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i64 @soc_tplg_check_elem_count(%struct.soc_tplg*, i32, i32, i32, i8*) #1

declare dso_local i32 @pcm_new_ver(%struct.soc_tplg*, %struct.snd_soc_tplg_pcm*, %struct.snd_soc_tplg_pcm**) #1

declare dso_local i32 @soc_tplg_pcm_create(%struct.soc_tplg*, %struct.snd_soc_tplg_pcm*) #1

declare dso_local i32 @kfree(%struct.snd_soc_tplg_pcm*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
