; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-topology.c_soc_tplg_dai_elems_load.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-topology.c_soc_tplg_dai_elems_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_tplg = type { i64, i32, i64 }
%struct.snd_soc_tplg_hdr = type { i32 }
%struct.snd_soc_tplg_dai = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@SOC_TPLG_PASS_BE_DAI = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"ASoC: invalid physical DAI size\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"ASoC: Configure %d BE DAIs\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_tplg*, %struct.snd_soc_tplg_hdr*)* @soc_tplg_dai_elems_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soc_tplg_dai_elems_load(%struct.soc_tplg* %0, %struct.snd_soc_tplg_hdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.soc_tplg*, align 8
  %5 = alloca %struct.snd_soc_tplg_hdr*, align 8
  %6 = alloca %struct.snd_soc_tplg_dai*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.soc_tplg* %0, %struct.soc_tplg** %4, align 8
  store %struct.snd_soc_tplg_hdr* %1, %struct.snd_soc_tplg_hdr** %5, align 8
  %9 = load %struct.snd_soc_tplg_hdr*, %struct.snd_soc_tplg_hdr** %5, align 8
  %10 = getelementptr inbounds %struct.snd_soc_tplg_hdr, %struct.snd_soc_tplg_hdr* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @le32_to_cpu(i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %14 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SOC_TPLG_PASS_BE_DAI, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %66

19:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %57, %19
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %60

24:                                               ; preds = %20
  %25 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %26 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.snd_soc_tplg_dai*
  store %struct.snd_soc_tplg_dai* %28, %struct.snd_soc_tplg_dai** %6, align 8
  %29 = load %struct.snd_soc_tplg_dai*, %struct.snd_soc_tplg_dai** %6, align 8
  %30 = getelementptr inbounds %struct.snd_soc_tplg_dai, %struct.snd_soc_tplg_dai* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @le32_to_cpu(i32 %31)
  %33 = sext i32 %32 to i64
  %34 = icmp ne i64 %33, 8
  br i1 %34, label %35, label %42

35:                                               ; preds = %24
  %36 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %37 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %66

42:                                               ; preds = %24
  %43 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %44 = load %struct.snd_soc_tplg_dai*, %struct.snd_soc_tplg_dai** %6, align 8
  %45 = call i32 @soc_tplg_dai_config(%struct.soc_tplg* %43, %struct.snd_soc_tplg_dai* %44)
  %46 = load %struct.snd_soc_tplg_dai*, %struct.snd_soc_tplg_dai** %6, align 8
  %47 = getelementptr inbounds %struct.snd_soc_tplg_dai, %struct.snd_soc_tplg_dai* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @le32_to_cpu(i32 %49)
  %51 = sext i32 %50 to i64
  %52 = add i64 8, %51
  %53 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %54 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = add i64 %55, %52
  store i64 %56, i64* %54, align 8
  br label %57

57:                                               ; preds = %42
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %8, align 4
  br label %20

60:                                               ; preds = %20
  %61 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %62 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @dev_dbg(i32 %63, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %60, %35, %18
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @soc_tplg_dai_config(%struct.soc_tplg*, %struct.snd_soc_tplg_dai*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
