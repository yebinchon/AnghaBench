; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/generic/extr_simple-card-utils.c_asoc_simple_init_priv.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/generic/extr_simple-card-utils.c_asoc_simple_init_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asoc_simple_priv = type { %struct.snd_soc_dai_link*, %struct.snd_soc_codec_conf*, %struct.asoc_simple_dai*, %struct.simple_dai_props* }
%struct.snd_soc_dai_link = type { i32, i32, i32, i32*, i32*, i32* }
%struct.snd_soc_codec_conf = type { i32 }
%struct.asoc_simple_dai = type { i32 }
%struct.simple_dai_props = type { i32, i32, i32 }
%struct.link_info = type { i32, i32, i32 }
%struct.snd_soc_card = type { i32, i32, %struct.snd_soc_codec_conf*, %struct.snd_soc_dai_link* }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @asoc_simple_init_priv(%struct.asoc_simple_priv* %0, %struct.link_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.asoc_simple_priv*, align 8
  %5 = alloca %struct.link_info*, align 8
  %6 = alloca %struct.snd_soc_card*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.snd_soc_dai_link*, align 8
  %9 = alloca %struct.simple_dai_props*, align 8
  %10 = alloca %struct.asoc_simple_dai*, align 8
  %11 = alloca %struct.snd_soc_codec_conf*, align 8
  %12 = alloca i32, align 4
  store %struct.asoc_simple_priv* %0, %struct.asoc_simple_priv** %4, align 8
  store %struct.link_info* %1, %struct.link_info** %5, align 8
  %13 = load %struct.asoc_simple_priv*, %struct.asoc_simple_priv** %4, align 8
  %14 = call %struct.snd_soc_card* @simple_priv_to_card(%struct.asoc_simple_priv* %13)
  store %struct.snd_soc_card* %14, %struct.snd_soc_card** %6, align 8
  %15 = load %struct.asoc_simple_priv*, %struct.asoc_simple_priv** %4, align 8
  %16 = call %struct.device* @simple_priv_to_dev(%struct.asoc_simple_priv* %15)
  store %struct.device* %16, %struct.device** %7, align 8
  store %struct.snd_soc_codec_conf* null, %struct.snd_soc_codec_conf** %11, align 8
  %17 = load %struct.device*, %struct.device** %7, align 8
  %18 = load %struct.link_info*, %struct.link_info** %5, align 8
  %19 = getelementptr inbounds %struct.link_info, %struct.link_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i8* @devm_kcalloc(%struct.device* %17, i32 %20, i32 12, i32 %21)
  %23 = bitcast i8* %22 to %struct.simple_dai_props*
  store %struct.simple_dai_props* %23, %struct.simple_dai_props** %9, align 8
  %24 = load %struct.device*, %struct.device** %7, align 8
  %25 = load %struct.link_info*, %struct.link_info** %5, align 8
  %26 = getelementptr inbounds %struct.link_info, %struct.link_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i8* @devm_kcalloc(%struct.device* %24, i32 %27, i32 40, i32 %28)
  %30 = bitcast i8* %29 to %struct.snd_soc_dai_link*
  store %struct.snd_soc_dai_link* %30, %struct.snd_soc_dai_link** %8, align 8
  %31 = load %struct.device*, %struct.device** %7, align 8
  %32 = load %struct.link_info*, %struct.link_info** %5, align 8
  %33 = getelementptr inbounds %struct.link_info, %struct.link_info* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i8* @devm_kcalloc(%struct.device* %31, i32 %34, i32 4, i32 %35)
  %37 = bitcast i8* %36 to %struct.asoc_simple_dai*
  store %struct.asoc_simple_dai* %37, %struct.asoc_simple_dai** %10, align 8
  %38 = load %struct.simple_dai_props*, %struct.simple_dai_props** %9, align 8
  %39 = icmp ne %struct.simple_dai_props* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %2
  %41 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %8, align 8
  %42 = icmp ne %struct.snd_soc_dai_link* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load %struct.asoc_simple_dai*, %struct.asoc_simple_dai** %10, align 8
  %45 = icmp ne %struct.asoc_simple_dai* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %43, %40, %2
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %155

49:                                               ; preds = %43
  %50 = load %struct.link_info*, %struct.link_info** %5, align 8
  %51 = getelementptr inbounds %struct.link_info, %struct.link_info* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %68

54:                                               ; preds = %49
  %55 = load %struct.device*, %struct.device** %7, align 8
  %56 = load %struct.link_info*, %struct.link_info** %5, align 8
  %57 = getelementptr inbounds %struct.link_info, %struct.link_info* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = call i8* @devm_kcalloc(%struct.device* %55, i32 %58, i32 4, i32 %59)
  %61 = bitcast i8* %60 to %struct.snd_soc_codec_conf*
  store %struct.snd_soc_codec_conf* %61, %struct.snd_soc_codec_conf** %11, align 8
  %62 = load %struct.snd_soc_codec_conf*, %struct.snd_soc_codec_conf** %11, align 8
  %63 = icmp ne %struct.snd_soc_codec_conf* %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %54
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %155

67:                                               ; preds = %54
  br label %68

68:                                               ; preds = %67, %49
  store i32 0, i32* %12, align 4
  br label %69

69:                                               ; preds = %121, %68
  %70 = load i32, i32* %12, align 4
  %71 = load %struct.link_info*, %struct.link_info** %5, align 8
  %72 = getelementptr inbounds %struct.link_info, %struct.link_info* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp slt i32 %70, %73
  br i1 %74, label %75, label %124

75:                                               ; preds = %69
  %76 = load %struct.simple_dai_props*, %struct.simple_dai_props** %9, align 8
  %77 = load i32, i32* %12, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.simple_dai_props, %struct.simple_dai_props* %76, i64 %78
  %80 = getelementptr inbounds %struct.simple_dai_props, %struct.simple_dai_props* %79, i32 0, i32 2
  %81 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %8, align 8
  %82 = load i32, i32* %12, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %81, i64 %83
  %85 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %84, i32 0, i32 5
  store i32* %80, i32** %85, align 8
  %86 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %8, align 8
  %87 = load i32, i32* %12, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %86, i64 %88
  %90 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %89, i32 0, i32 0
  store i32 1, i32* %90, align 8
  %91 = load %struct.simple_dai_props*, %struct.simple_dai_props** %9, align 8
  %92 = load i32, i32* %12, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.simple_dai_props, %struct.simple_dai_props* %91, i64 %93
  %95 = getelementptr inbounds %struct.simple_dai_props, %struct.simple_dai_props* %94, i32 0, i32 1
  %96 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %8, align 8
  %97 = load i32, i32* %12, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %96, i64 %98
  %100 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %99, i32 0, i32 4
  store i32* %95, i32** %100, align 8
  %101 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %8, align 8
  %102 = load i32, i32* %12, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %101, i64 %103
  %105 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %104, i32 0, i32 1
  store i32 1, i32* %105, align 4
  %106 = load %struct.simple_dai_props*, %struct.simple_dai_props** %9, align 8
  %107 = load i32, i32* %12, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.simple_dai_props, %struct.simple_dai_props* %106, i64 %108
  %110 = getelementptr inbounds %struct.simple_dai_props, %struct.simple_dai_props* %109, i32 0, i32 0
  %111 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %8, align 8
  %112 = load i32, i32* %12, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %111, i64 %113
  %115 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %114, i32 0, i32 3
  store i32* %110, i32** %115, align 8
  %116 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %8, align 8
  %117 = load i32, i32* %12, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %116, i64 %118
  %120 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %119, i32 0, i32 2
  store i32 1, i32* %120, align 8
  br label %121

121:                                              ; preds = %75
  %122 = load i32, i32* %12, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %12, align 4
  br label %69

124:                                              ; preds = %69
  %125 = load %struct.simple_dai_props*, %struct.simple_dai_props** %9, align 8
  %126 = load %struct.asoc_simple_priv*, %struct.asoc_simple_priv** %4, align 8
  %127 = getelementptr inbounds %struct.asoc_simple_priv, %struct.asoc_simple_priv* %126, i32 0, i32 3
  store %struct.simple_dai_props* %125, %struct.simple_dai_props** %127, align 8
  %128 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %8, align 8
  %129 = load %struct.asoc_simple_priv*, %struct.asoc_simple_priv** %4, align 8
  %130 = getelementptr inbounds %struct.asoc_simple_priv, %struct.asoc_simple_priv* %129, i32 0, i32 0
  store %struct.snd_soc_dai_link* %128, %struct.snd_soc_dai_link** %130, align 8
  %131 = load %struct.asoc_simple_dai*, %struct.asoc_simple_dai** %10, align 8
  %132 = load %struct.asoc_simple_priv*, %struct.asoc_simple_priv** %4, align 8
  %133 = getelementptr inbounds %struct.asoc_simple_priv, %struct.asoc_simple_priv* %132, i32 0, i32 2
  store %struct.asoc_simple_dai* %131, %struct.asoc_simple_dai** %133, align 8
  %134 = load %struct.snd_soc_codec_conf*, %struct.snd_soc_codec_conf** %11, align 8
  %135 = load %struct.asoc_simple_priv*, %struct.asoc_simple_priv** %4, align 8
  %136 = getelementptr inbounds %struct.asoc_simple_priv, %struct.asoc_simple_priv* %135, i32 0, i32 1
  store %struct.snd_soc_codec_conf* %134, %struct.snd_soc_codec_conf** %136, align 8
  %137 = load %struct.asoc_simple_priv*, %struct.asoc_simple_priv** %4, align 8
  %138 = getelementptr inbounds %struct.asoc_simple_priv, %struct.asoc_simple_priv* %137, i32 0, i32 0
  %139 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %138, align 8
  %140 = load %struct.snd_soc_card*, %struct.snd_soc_card** %6, align 8
  %141 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %140, i32 0, i32 3
  store %struct.snd_soc_dai_link* %139, %struct.snd_soc_dai_link** %141, align 8
  %142 = load %struct.link_info*, %struct.link_info** %5, align 8
  %143 = getelementptr inbounds %struct.link_info, %struct.link_info* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.snd_soc_card*, %struct.snd_soc_card** %6, align 8
  %146 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 8
  %147 = load %struct.snd_soc_codec_conf*, %struct.snd_soc_codec_conf** %11, align 8
  %148 = load %struct.snd_soc_card*, %struct.snd_soc_card** %6, align 8
  %149 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %148, i32 0, i32 2
  store %struct.snd_soc_codec_conf* %147, %struct.snd_soc_codec_conf** %149, align 8
  %150 = load %struct.link_info*, %struct.link_info** %5, align 8
  %151 = getelementptr inbounds %struct.link_info, %struct.link_info* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.snd_soc_card*, %struct.snd_soc_card** %6, align 8
  %154 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %153, i32 0, i32 1
  store i32 %152, i32* %154, align 4
  store i32 0, i32* %3, align 4
  br label %155

155:                                              ; preds = %124, %64, %46
  %156 = load i32, i32* %3, align 4
  ret i32 %156
}

declare dso_local %struct.snd_soc_card* @simple_priv_to_card(%struct.asoc_simple_priv*) #1

declare dso_local %struct.device* @simple_priv_to_dev(%struct.asoc_simple_priv*) #1

declare dso_local i8* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
