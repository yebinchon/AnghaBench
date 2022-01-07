; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-topology.c_link_new_ver.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-topology.c_link_new_ver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_tplg = type { i32 }
%struct.snd_soc_tplg_link_config = type { i32*, i32, i32, i32 }
%struct.snd_soc_tplg_link_config_v4 = type { i32*, i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"ASoC: invalid physical link config size\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"ASoC: old version of physical link config\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_tplg*, %struct.snd_soc_tplg_link_config*, %struct.snd_soc_tplg_link_config**)* @link_new_ver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @link_new_ver(%struct.soc_tplg* %0, %struct.snd_soc_tplg_link_config* %1, %struct.snd_soc_tplg_link_config** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.soc_tplg*, align 8
  %6 = alloca %struct.snd_soc_tplg_link_config*, align 8
  %7 = alloca %struct.snd_soc_tplg_link_config**, align 8
  %8 = alloca %struct.snd_soc_tplg_link_config*, align 8
  %9 = alloca %struct.snd_soc_tplg_link_config_v4*, align 8
  %10 = alloca i32, align 4
  store %struct.soc_tplg* %0, %struct.soc_tplg** %5, align 8
  store %struct.snd_soc_tplg_link_config* %1, %struct.snd_soc_tplg_link_config** %6, align 8
  store %struct.snd_soc_tplg_link_config** %2, %struct.snd_soc_tplg_link_config*** %7, align 8
  %11 = load %struct.snd_soc_tplg_link_config**, %struct.snd_soc_tplg_link_config*** %7, align 8
  store %struct.snd_soc_tplg_link_config* null, %struct.snd_soc_tplg_link_config** %11, align 8
  %12 = load %struct.snd_soc_tplg_link_config*, %struct.snd_soc_tplg_link_config** %6, align 8
  %13 = getelementptr inbounds %struct.snd_soc_tplg_link_config, %struct.snd_soc_tplg_link_config* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @le32_to_cpu(i32 %14)
  %16 = sext i32 %15 to i64
  %17 = icmp ne i64 %16, 16
  br i1 %17, label %18, label %25

18:                                               ; preds = %3
  %19 = load %struct.soc_tplg*, %struct.soc_tplg** %5, align 8
  %20 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dev_err(i32 %21, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %80

25:                                               ; preds = %3
  %26 = load %struct.soc_tplg*, %struct.soc_tplg** %5, align 8
  %27 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dev_warn(i32 %28, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %30 = load %struct.snd_soc_tplg_link_config*, %struct.snd_soc_tplg_link_config** %6, align 8
  %31 = bitcast %struct.snd_soc_tplg_link_config* %30 to %struct.snd_soc_tplg_link_config_v4*
  store %struct.snd_soc_tplg_link_config_v4* %31, %struct.snd_soc_tplg_link_config_v4** %9, align 8
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.snd_soc_tplg_link_config* @kzalloc(i32 24, i32 %32)
  store %struct.snd_soc_tplg_link_config* %33, %struct.snd_soc_tplg_link_config** %8, align 8
  %34 = load %struct.snd_soc_tplg_link_config*, %struct.snd_soc_tplg_link_config** %8, align 8
  %35 = icmp ne %struct.snd_soc_tplg_link_config* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %25
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %80

39:                                               ; preds = %25
  %40 = call i32 @cpu_to_le32(i32 24)
  %41 = load %struct.snd_soc_tplg_link_config*, %struct.snd_soc_tplg_link_config** %8, align 8
  %42 = getelementptr inbounds %struct.snd_soc_tplg_link_config, %struct.snd_soc_tplg_link_config* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 8
  %43 = load %struct.snd_soc_tplg_link_config_v4*, %struct.snd_soc_tplg_link_config_v4** %9, align 8
  %44 = getelementptr inbounds %struct.snd_soc_tplg_link_config_v4, %struct.snd_soc_tplg_link_config_v4* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.snd_soc_tplg_link_config*, %struct.snd_soc_tplg_link_config** %8, align 8
  %47 = getelementptr inbounds %struct.snd_soc_tplg_link_config, %struct.snd_soc_tplg_link_config* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load %struct.snd_soc_tplg_link_config_v4*, %struct.snd_soc_tplg_link_config_v4** %9, align 8
  %49 = getelementptr inbounds %struct.snd_soc_tplg_link_config_v4, %struct.snd_soc_tplg_link_config_v4* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.snd_soc_tplg_link_config*, %struct.snd_soc_tplg_link_config** %8, align 8
  %52 = getelementptr inbounds %struct.snd_soc_tplg_link_config, %struct.snd_soc_tplg_link_config* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  store i32 0, i32* %10, align 4
  br label %53

53:                                               ; preds = %74, %39
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.snd_soc_tplg_link_config*, %struct.snd_soc_tplg_link_config** %8, align 8
  %56 = getelementptr inbounds %struct.snd_soc_tplg_link_config, %struct.snd_soc_tplg_link_config* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @le32_to_cpu(i32 %57)
  %59 = icmp slt i32 %54, %58
  br i1 %59, label %60, label %77

60:                                               ; preds = %53
  %61 = load %struct.snd_soc_tplg_link_config*, %struct.snd_soc_tplg_link_config** %8, align 8
  %62 = getelementptr inbounds %struct.snd_soc_tplg_link_config, %struct.snd_soc_tplg_link_config* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load %struct.snd_soc_tplg_link_config_v4*, %struct.snd_soc_tplg_link_config_v4** %9, align 8
  %68 = getelementptr inbounds %struct.snd_soc_tplg_link_config_v4, %struct.snd_soc_tplg_link_config_v4* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = call i32 @memcpy(i32* %66, i32* %72, i32 4)
  br label %74

74:                                               ; preds = %60
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %10, align 4
  br label %53

77:                                               ; preds = %53
  %78 = load %struct.snd_soc_tplg_link_config*, %struct.snd_soc_tplg_link_config** %8, align 8
  %79 = load %struct.snd_soc_tplg_link_config**, %struct.snd_soc_tplg_link_config*** %7, align 8
  store %struct.snd_soc_tplg_link_config* %78, %struct.snd_soc_tplg_link_config** %79, align 8
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %77, %36, %18
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local %struct.snd_soc_tplg_link_config* @kzalloc(i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
