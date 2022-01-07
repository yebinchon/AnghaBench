; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-topology.c_soc_tplg_link_config.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-topology.c_soc_tplg_link_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_tplg = type { %struct.TYPE_4__*, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.snd_soc_tplg_link_config = type { i8*, i8*, i64, i64, i64, i64 }
%struct.snd_soc_dai_link = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@SNDRV_CTL_ELEM_ID_NAME_MAXLEN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"ASoC: physical link %s (id %d) not exist\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"ASoC: physical link loading failed\0A\00", align 1
@SND_SOC_DOBJ_BACKEND_LINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_tplg*, %struct.snd_soc_tplg_link_config*)* @soc_tplg_link_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soc_tplg_link_config(%struct.soc_tplg* %0, %struct.snd_soc_tplg_link_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.soc_tplg*, align 8
  %5 = alloca %struct.snd_soc_tplg_link_config*, align 8
  %6 = alloca %struct.snd_soc_dai_link*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.soc_tplg* %0, %struct.soc_tplg** %4, align 8
  store %struct.snd_soc_tplg_link_config* %1, %struct.snd_soc_tplg_link_config** %5, align 8
  %11 = load %struct.snd_soc_tplg_link_config*, %struct.snd_soc_tplg_link_config** %5, align 8
  %12 = getelementptr inbounds %struct.snd_soc_tplg_link_config, %struct.snd_soc_tplg_link_config* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = load i64, i64* @SNDRV_CTL_ELEM_ID_NAME_MAXLEN, align 8
  %15 = call i64 @strnlen(i8* %13, i64 %14)
  store i64 %15, i64* %9, align 8
  %16 = load i64, i64* %9, align 8
  %17 = load i64, i64* @SNDRV_CTL_ELEM_ID_NAME_MAXLEN, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %141

22:                                               ; preds = %2
  %23 = load i64, i64* %9, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load %struct.snd_soc_tplg_link_config*, %struct.snd_soc_tplg_link_config** %5, align 8
  %27 = getelementptr inbounds %struct.snd_soc_tplg_link_config, %struct.snd_soc_tplg_link_config* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %7, align 8
  br label %30

29:                                               ; preds = %22
  store i8* null, i8** %7, align 8
  br label %30

30:                                               ; preds = %29, %25
  br label %31

31:                                               ; preds = %30
  %32 = load %struct.snd_soc_tplg_link_config*, %struct.snd_soc_tplg_link_config** %5, align 8
  %33 = getelementptr inbounds %struct.snd_soc_tplg_link_config, %struct.snd_soc_tplg_link_config* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = load i64, i64* @SNDRV_CTL_ELEM_ID_NAME_MAXLEN, align 8
  %36 = call i64 @strnlen(i8* %34, i64 %35)
  store i64 %36, i64* %9, align 8
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* @SNDRV_CTL_ELEM_ID_NAME_MAXLEN, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %31
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %141

43:                                               ; preds = %31
  %44 = load i64, i64* %9, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load %struct.snd_soc_tplg_link_config*, %struct.snd_soc_tplg_link_config** %5, align 8
  %48 = getelementptr inbounds %struct.snd_soc_tplg_link_config, %struct.snd_soc_tplg_link_config* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  store i8* %49, i8** %8, align 8
  br label %51

50:                                               ; preds = %43
  store i8* null, i8** %8, align 8
  br label %51

51:                                               ; preds = %50, %46
  br label %52

52:                                               ; preds = %51
  %53 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %54 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.snd_soc_tplg_link_config*, %struct.snd_soc_tplg_link_config** %5, align 8
  %59 = getelementptr inbounds %struct.snd_soc_tplg_link_config, %struct.snd_soc_tplg_link_config* %58, i32 0, i32 5
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @le32_to_cpu(i64 %60)
  %62 = load i8*, i8** %7, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = call %struct.snd_soc_dai_link* @snd_soc_find_dai_link(i32 %57, i32 %61, i8* %62, i8* %63)
  store %struct.snd_soc_dai_link* %64, %struct.snd_soc_dai_link** %6, align 8
  %65 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %6, align 8
  %66 = icmp ne %struct.snd_soc_dai_link* %65, null
  br i1 %66, label %78, label %67

67:                                               ; preds = %52
  %68 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %69 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = load %struct.snd_soc_tplg_link_config*, %struct.snd_soc_tplg_link_config** %5, align 8
  %73 = getelementptr inbounds %struct.snd_soc_tplg_link_config, %struct.snd_soc_tplg_link_config* %72, i32 0, i32 5
  %74 = load i64, i64* %73, align 8
  %75 = call i32 (i32, i8*, ...) @dev_err(i32 %70, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %71, i64 %74)
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %141

78:                                               ; preds = %52
  %79 = load %struct.snd_soc_tplg_link_config*, %struct.snd_soc_tplg_link_config** %5, align 8
  %80 = getelementptr inbounds %struct.snd_soc_tplg_link_config, %struct.snd_soc_tplg_link_config* %79, i32 0, i32 4
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %6, align 8
  %85 = load %struct.snd_soc_tplg_link_config*, %struct.snd_soc_tplg_link_config** %5, align 8
  %86 = call i32 @set_link_hw_format(%struct.snd_soc_dai_link* %84, %struct.snd_soc_tplg_link_config* %85)
  br label %87

87:                                               ; preds = %83, %78
  %88 = load %struct.snd_soc_tplg_link_config*, %struct.snd_soc_tplg_link_config** %5, align 8
  %89 = getelementptr inbounds %struct.snd_soc_tplg_link_config, %struct.snd_soc_tplg_link_config* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %103

92:                                               ; preds = %87
  %93 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %6, align 8
  %94 = load %struct.snd_soc_tplg_link_config*, %struct.snd_soc_tplg_link_config** %5, align 8
  %95 = getelementptr inbounds %struct.snd_soc_tplg_link_config, %struct.snd_soc_tplg_link_config* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @le32_to_cpu(i64 %96)
  %98 = load %struct.snd_soc_tplg_link_config*, %struct.snd_soc_tplg_link_config** %5, align 8
  %99 = getelementptr inbounds %struct.snd_soc_tplg_link_config, %struct.snd_soc_tplg_link_config* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @le32_to_cpu(i64 %100)
  %102 = call i32 @set_link_flags(%struct.snd_soc_dai_link* %93, i32 %97, i32 %101)
  br label %103

103:                                              ; preds = %92, %87
  %104 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %105 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %6, align 8
  %106 = load %struct.snd_soc_tplg_link_config*, %struct.snd_soc_tplg_link_config** %5, align 8
  %107 = call i32 @soc_tplg_dai_link_load(%struct.soc_tplg* %104, %struct.snd_soc_dai_link* %105, %struct.snd_soc_tplg_link_config* %106)
  store i32 %107, i32* %10, align 4
  %108 = load i32, i32* %10, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %103
  %111 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %112 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = call i32 (i32, i8*, ...) @dev_err(i32 %113, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %115 = load i32, i32* %10, align 4
  store i32 %115, i32* %3, align 4
  br label %141

116:                                              ; preds = %103
  %117 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %118 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %6, align 8
  %121 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 3
  store i32 %119, i32* %122, align 4
  %123 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %124 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %6, align 8
  %127 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 2
  store i32 %125, i32* %128, align 4
  %129 = load i32, i32* @SND_SOC_DOBJ_BACKEND_LINK, align 4
  %130 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %6, align 8
  %131 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 1
  store i32 %129, i32* %132, align 4
  %133 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %6, align 8
  %134 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 0
  %136 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %137 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %136, i32 0, i32 0
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = call i32 @list_add(i32* %135, i32* %139)
  store i32 0, i32* %3, align 4
  br label %141

141:                                              ; preds = %116, %110, %67, %40, %19
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local i64 @strnlen(i8*, i64) #1

declare dso_local %struct.snd_soc_dai_link* @snd_soc_find_dai_link(i32, i32, i8*, i8*) #1

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @set_link_hw_format(%struct.snd_soc_dai_link*, %struct.snd_soc_tplg_link_config*) #1

declare dso_local i32 @set_link_flags(%struct.snd_soc_dai_link*, i32, i32) #1

declare dso_local i32 @soc_tplg_dai_link_load(%struct.soc_tplg*, %struct.snd_soc_dai_link*, %struct.snd_soc_tplg_link_config*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
