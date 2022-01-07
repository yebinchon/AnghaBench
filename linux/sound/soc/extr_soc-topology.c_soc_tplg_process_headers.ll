; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-topology.c_soc_tplg_process_headers.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-topology.c_soc_tplg_process_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_tplg = type { i64, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.snd_soc_tplg_hdr = type { i32 }

@SOC_TPLG_PASS_START = common dso_local global i64 0, align 8
@SOC_TPLG_PASS_END = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"ASoC: failed to initialise DAPM from Firmware\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_tplg*)* @soc_tplg_process_headers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soc_tplg_process_headers(%struct.soc_tplg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.soc_tplg*, align 8
  %4 = alloca %struct.snd_soc_tplg_hdr*, align 8
  %5 = alloca i32, align 4
  store %struct.soc_tplg* %0, %struct.soc_tplg** %3, align 8
  %6 = load i64, i64* @SOC_TPLG_PASS_START, align 8
  %7 = load %struct.soc_tplg*, %struct.soc_tplg** %3, align 8
  %8 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %7, i32 0, i32 0
  store i64 %6, i64* %8, align 8
  br label %9

9:                                                ; preds = %67, %1
  %10 = load %struct.soc_tplg*, %struct.soc_tplg** %3, align 8
  %11 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SOC_TPLG_PASS_END, align 8
  %14 = icmp sle i64 %12, %13
  br i1 %14, label %15, label %72

15:                                               ; preds = %9
  %16 = load %struct.soc_tplg*, %struct.soc_tplg** %3, align 8
  %17 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %16, i32 0, i32 3
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.soc_tplg*, %struct.soc_tplg** %3, align 8
  %22 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %21, i32 0, i32 2
  store i64 %20, i64* %22, align 8
  %23 = load %struct.soc_tplg*, %struct.soc_tplg** %3, align 8
  %24 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.snd_soc_tplg_hdr*
  store %struct.snd_soc_tplg_hdr* %26, %struct.snd_soc_tplg_hdr** %4, align 8
  br label %27

27:                                               ; preds = %53, %15
  %28 = load %struct.soc_tplg*, %struct.soc_tplg** %3, align 8
  %29 = call i32 @soc_tplg_is_eof(%struct.soc_tplg* %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  br i1 %31, label %32, label %67

32:                                               ; preds = %27
  %33 = load %struct.soc_tplg*, %struct.soc_tplg** %3, align 8
  %34 = load %struct.snd_soc_tplg_hdr*, %struct.snd_soc_tplg_hdr** %4, align 8
  %35 = call i32 @soc_valid_header(%struct.soc_tplg* %33, %struct.snd_soc_tplg_hdr* %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %2, align 4
  br label %84

40:                                               ; preds = %32
  %41 = load i32, i32* %5, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  br label %67

44:                                               ; preds = %40
  br label %45

45:                                               ; preds = %44
  %46 = load %struct.soc_tplg*, %struct.soc_tplg** %3, align 8
  %47 = load %struct.snd_soc_tplg_hdr*, %struct.snd_soc_tplg_hdr** %4, align 8
  %48 = call i32 @soc_tplg_load_header(%struct.soc_tplg* %46, %struct.snd_soc_tplg_hdr* %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* %5, align 4
  store i32 %52, i32* %2, align 4
  br label %84

53:                                               ; preds = %45
  %54 = load %struct.snd_soc_tplg_hdr*, %struct.snd_soc_tplg_hdr** %4, align 8
  %55 = getelementptr inbounds %struct.snd_soc_tplg_hdr, %struct.snd_soc_tplg_hdr* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @le32_to_cpu(i32 %56)
  %58 = add i64 %57, 4
  %59 = load %struct.soc_tplg*, %struct.soc_tplg** %3, align 8
  %60 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = add i64 %61, %58
  store i64 %62, i64* %60, align 8
  %63 = load %struct.soc_tplg*, %struct.soc_tplg** %3, align 8
  %64 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to %struct.snd_soc_tplg_hdr*
  store %struct.snd_soc_tplg_hdr* %66, %struct.snd_soc_tplg_hdr** %4, align 8
  br label %27

67:                                               ; preds = %43, %27
  %68 = load %struct.soc_tplg*, %struct.soc_tplg** %3, align 8
  %69 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %70, 1
  store i64 %71, i64* %69, align 8
  br label %9

72:                                               ; preds = %9
  %73 = load %struct.soc_tplg*, %struct.soc_tplg** %3, align 8
  %74 = call i32 @soc_tplg_dapm_complete(%struct.soc_tplg* %73)
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* %5, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = load %struct.soc_tplg*, %struct.soc_tplg** %3, align 8
  %79 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @dev_err(i32 %80, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %82

82:                                               ; preds = %77, %72
  %83 = load i32, i32* %5, align 4
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %82, %51, %38
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i32 @soc_tplg_is_eof(%struct.soc_tplg*) #1

declare dso_local i32 @soc_valid_header(%struct.soc_tplg*, %struct.snd_soc_tplg_hdr*) #1

declare dso_local i32 @soc_tplg_load_header(%struct.soc_tplg*, %struct.snd_soc_tplg_hdr*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @soc_tplg_dapm_complete(%struct.soc_tplg*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
