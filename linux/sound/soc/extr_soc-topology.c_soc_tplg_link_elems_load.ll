; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-topology.c_soc_tplg_link_elems_load.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-topology.c_soc_tplg_link_elems_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_tplg = type { i64, i64, i32 }
%struct.snd_soc_tplg_hdr = type { i32, i32, i32 }
%struct.snd_soc_tplg_link_config = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@SOC_TPLG_PASS_LINK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"ASoC: invalid size %d for physical link elems\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"physical link config\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"ASoC: invalid count %d for physical link elems\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_tplg*, %struct.snd_soc_tplg_hdr*)* @soc_tplg_link_elems_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soc_tplg_link_elems_load(%struct.soc_tplg* %0, %struct.snd_soc_tplg_hdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.soc_tplg*, align 8
  %5 = alloca %struct.snd_soc_tplg_hdr*, align 8
  %6 = alloca %struct.snd_soc_tplg_link_config*, align 8
  %7 = alloca %struct.snd_soc_tplg_link_config*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.soc_tplg* %0, %struct.soc_tplg** %4, align 8
  store %struct.snd_soc_tplg_hdr* %1, %struct.snd_soc_tplg_hdr** %5, align 8
  %13 = load %struct.snd_soc_tplg_hdr*, %struct.snd_soc_tplg_hdr** %5, align 8
  %14 = getelementptr inbounds %struct.snd_soc_tplg_hdr, %struct.snd_soc_tplg_hdr* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @le32_to_cpu(i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %18 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SOC_TPLG_PASS_LINK, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %2
  %23 = load %struct.snd_soc_tplg_hdr*, %struct.snd_soc_tplg_hdr** %5, align 8
  %24 = getelementptr inbounds %struct.snd_soc_tplg_hdr, %struct.snd_soc_tplg_hdr* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @le32_to_cpu(i32 %25)
  %27 = load %struct.snd_soc_tplg_hdr*, %struct.snd_soc_tplg_hdr** %5, align 8
  %28 = getelementptr inbounds %struct.snd_soc_tplg_hdr, %struct.snd_soc_tplg_hdr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @le32_to_cpu(i32 %29)
  %31 = add nsw i32 %26, %30
  %32 = sext i32 %31 to i64
  %33 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %34 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, %32
  store i64 %36, i64* %34, align 8
  store i32 0, i32* %3, align 4
  br label %138

37:                                               ; preds = %2
  %38 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %39 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to %struct.snd_soc_tplg_link_config*
  store %struct.snd_soc_tplg_link_config* %41, %struct.snd_soc_tplg_link_config** %6, align 8
  %42 = load %struct.snd_soc_tplg_link_config*, %struct.snd_soc_tplg_link_config** %6, align 8
  %43 = getelementptr inbounds %struct.snd_soc_tplg_link_config, %struct.snd_soc_tplg_link_config* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @le32_to_cpu(i32 %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = icmp ugt i64 %47, 8
  br i1 %48, label %53, label %49

49:                                               ; preds = %37
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = icmp ult i64 %51, 4
  br i1 %52, label %53, label %61

53:                                               ; preds = %49, %37
  %54 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %55 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @dev_err(i32 %56, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %138

61:                                               ; preds = %49
  %62 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.snd_soc_tplg_hdr*, %struct.snd_soc_tplg_hdr** %5, align 8
  %66 = getelementptr inbounds %struct.snd_soc_tplg_hdr, %struct.snd_soc_tplg_hdr* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @le32_to_cpu(i32 %67)
  %69 = call i64 @soc_tplg_check_elem_count(%struct.soc_tplg* %62, i32 %63, i32 %64, i32 %68, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %61
  %72 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %73 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @dev_err(i32 %74, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %138

79:                                               ; preds = %61
  store i32 0, i32* %10, align 4
  br label %80

80:                                               ; preds = %134, %79
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %137

84:                                               ; preds = %80
  %85 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %86 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = inttoptr i64 %87 to %struct.snd_soc_tplg_link_config*
  store %struct.snd_soc_tplg_link_config* %88, %struct.snd_soc_tplg_link_config** %6, align 8
  %89 = load %struct.snd_soc_tplg_link_config*, %struct.snd_soc_tplg_link_config** %6, align 8
  %90 = getelementptr inbounds %struct.snd_soc_tplg_link_config, %struct.snd_soc_tplg_link_config* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @le32_to_cpu(i32 %91)
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = icmp eq i64 %94, 8
  br i1 %95, label %96, label %98

96:                                               ; preds = %84
  store i32 1, i32* %12, align 4
  %97 = load %struct.snd_soc_tplg_link_config*, %struct.snd_soc_tplg_link_config** %6, align 8
  store %struct.snd_soc_tplg_link_config* %97, %struct.snd_soc_tplg_link_config** %7, align 8
  br label %107

98:                                               ; preds = %84
  store i32 0, i32* %12, align 4
  %99 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %100 = load %struct.snd_soc_tplg_link_config*, %struct.snd_soc_tplg_link_config** %6, align 8
  %101 = call i32 @link_new_ver(%struct.soc_tplg* %99, %struct.snd_soc_tplg_link_config* %100, %struct.snd_soc_tplg_link_config** %7)
  store i32 %101, i32* %11, align 4
  %102 = load i32, i32* %11, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %98
  %105 = load i32, i32* %11, align 4
  store i32 %105, i32* %3, align 4
  br label %138

106:                                              ; preds = %98
  br label %107

107:                                              ; preds = %106, %96
  %108 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %109 = load %struct.snd_soc_tplg_link_config*, %struct.snd_soc_tplg_link_config** %7, align 8
  %110 = call i32 @soc_tplg_link_config(%struct.soc_tplg* %108, %struct.snd_soc_tplg_link_config* %109)
  store i32 %110, i32* %11, align 4
  %111 = load i32, i32* %11, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %107
  %114 = load i32, i32* %11, align 4
  store i32 %114, i32* %3, align 4
  br label %138

115:                                              ; preds = %107
  %116 = load i32, i32* %9, align 4
  %117 = load %struct.snd_soc_tplg_link_config*, %struct.snd_soc_tplg_link_config** %7, align 8
  %118 = getelementptr inbounds %struct.snd_soc_tplg_link_config, %struct.snd_soc_tplg_link_config* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @le32_to_cpu(i32 %120)
  %122 = add nsw i32 %116, %121
  %123 = sext i32 %122 to i64
  %124 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %125 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = add nsw i64 %126, %123
  store i64 %127, i64* %125, align 8
  %128 = load i32, i32* %12, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %133, label %130

130:                                              ; preds = %115
  %131 = load %struct.snd_soc_tplg_link_config*, %struct.snd_soc_tplg_link_config** %7, align 8
  %132 = call i32 @kfree(%struct.snd_soc_tplg_link_config* %131)
  br label %133

133:                                              ; preds = %130, %115
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %10, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %10, align 4
  br label %80

137:                                              ; preds = %80
  store i32 0, i32* %3, align 4
  br label %138

138:                                              ; preds = %137, %113, %104, %71, %53, %22
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i64 @soc_tplg_check_elem_count(%struct.soc_tplg*, i32, i32, i32, i8*) #1

declare dso_local i32 @link_new_ver(%struct.soc_tplg*, %struct.snd_soc_tplg_link_config*, %struct.snd_soc_tplg_link_config**) #1

declare dso_local i32 @soc_tplg_link_config(%struct.soc_tplg*, %struct.snd_soc_tplg_link_config*) #1

declare dso_local i32 @kfree(%struct.snd_soc_tplg_link_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
