; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/generic/extr_audio-graph-card.c_graph_dai_link_of.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/generic/extr_audio-graph-card.c_graph_dai_link_of.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asoc_simple_priv = type { %struct.asoc_simple_dai* }
%struct.asoc_simple_dai = type { i32 }
%struct.device_node = type { i32 }
%struct.link_info = type { i32, i32, i32 }
%struct.device = type { %struct.device_node* }
%struct.snd_soc_dai_link = type { i32, i32*, %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.simple_dai_props = type { %struct.asoc_simple_dai*, %struct.asoc_simple_dai* }

@.str = private unnamed_addr constant [16 x i8] c"link_of (%pOF)\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s-%s\00", align 1
@graph_ops = common dso_local global i32 0, align 4
@asoc_simple_dai_init = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asoc_simple_priv*, %struct.device_node*, %struct.device_node*, %struct.link_info*)* @graph_dai_link_of to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @graph_dai_link_of(%struct.asoc_simple_priv* %0, %struct.device_node* %1, %struct.device_node* %2, %struct.link_info* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.asoc_simple_priv*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca %struct.link_info*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca %struct.snd_soc_dai_link*, align 8
  %12 = alloca %struct.simple_dai_props*, align 8
  %13 = alloca %struct.device_node*, align 8
  %14 = alloca %struct.asoc_simple_dai*, align 8
  %15 = alloca %struct.asoc_simple_dai*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.asoc_simple_priv* %0, %struct.asoc_simple_priv** %6, align 8
  store %struct.device_node* %1, %struct.device_node** %7, align 8
  store %struct.device_node* %2, %struct.device_node** %8, align 8
  store %struct.link_info* %3, %struct.link_info** %9, align 8
  %18 = load %struct.asoc_simple_priv*, %struct.asoc_simple_priv** %6, align 8
  %19 = call %struct.device* @simple_priv_to_dev(%struct.asoc_simple_priv* %18)
  store %struct.device* %19, %struct.device** %10, align 8
  %20 = load %struct.asoc_simple_priv*, %struct.asoc_simple_priv** %6, align 8
  %21 = load %struct.link_info*, %struct.link_info** %9, align 8
  %22 = getelementptr inbounds %struct.link_info, %struct.link_info* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.snd_soc_dai_link* @simple_priv_to_link(%struct.asoc_simple_priv* %20, i32 %23)
  store %struct.snd_soc_dai_link* %24, %struct.snd_soc_dai_link** %11, align 8
  %25 = load %struct.asoc_simple_priv*, %struct.asoc_simple_priv** %6, align 8
  %26 = load %struct.link_info*, %struct.link_info** %9, align 8
  %27 = getelementptr inbounds %struct.link_info, %struct.link_info* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.simple_dai_props* @simple_priv_to_props(%struct.asoc_simple_priv* %25, i32 %28)
  store %struct.simple_dai_props* %29, %struct.simple_dai_props** %12, align 8
  %30 = load %struct.device*, %struct.device** %10, align 8
  %31 = getelementptr inbounds %struct.device, %struct.device* %30, i32 0, i32 0
  %32 = load %struct.device_node*, %struct.device_node** %31, align 8
  store %struct.device_node* %32, %struct.device_node** %13, align 8
  %33 = load %struct.link_info*, %struct.link_info** %9, align 8
  %34 = getelementptr inbounds %struct.link_info, %struct.link_info* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %167

38:                                               ; preds = %4
  %39 = load %struct.device*, %struct.device** %10, align 8
  %40 = load %struct.device_node*, %struct.device_node** %7, align 8
  %41 = call i32 @dev_dbg(%struct.device* %39, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.device_node* %40)
  %42 = load %struct.link_info*, %struct.link_info** %9, align 8
  %43 = getelementptr inbounds %struct.link_info, %struct.link_info* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  %46 = load %struct.asoc_simple_priv*, %struct.asoc_simple_priv** %6, align 8
  %47 = getelementptr inbounds %struct.asoc_simple_priv, %struct.asoc_simple_priv* %46, i32 0, i32 0
  %48 = load %struct.asoc_simple_dai*, %struct.asoc_simple_dai** %47, align 8
  %49 = load %struct.link_info*, %struct.link_info** %9, align 8
  %50 = getelementptr inbounds %struct.link_info, %struct.link_info* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 4
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds %struct.asoc_simple_dai, %struct.asoc_simple_dai* %48, i64 %53
  %55 = load %struct.simple_dai_props*, %struct.simple_dai_props** %12, align 8
  %56 = getelementptr inbounds %struct.simple_dai_props, %struct.simple_dai_props* %55, i32 0, i32 1
  store %struct.asoc_simple_dai* %54, %struct.asoc_simple_dai** %56, align 8
  store %struct.asoc_simple_dai* %54, %struct.asoc_simple_dai** %14, align 8
  %57 = load %struct.asoc_simple_priv*, %struct.asoc_simple_priv** %6, align 8
  %58 = getelementptr inbounds %struct.asoc_simple_priv, %struct.asoc_simple_priv* %57, i32 0, i32 0
  %59 = load %struct.asoc_simple_dai*, %struct.asoc_simple_dai** %58, align 8
  %60 = load %struct.link_info*, %struct.link_info** %9, align 8
  %61 = getelementptr inbounds %struct.link_info, %struct.link_info* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds %struct.asoc_simple_dai, %struct.asoc_simple_dai* %59, i64 %64
  %66 = load %struct.simple_dai_props*, %struct.simple_dai_props** %12, align 8
  %67 = getelementptr inbounds %struct.simple_dai_props, %struct.simple_dai_props* %66, i32 0, i32 0
  store %struct.asoc_simple_dai* %65, %struct.asoc_simple_dai** %67, align 8
  store %struct.asoc_simple_dai* %65, %struct.asoc_simple_dai** %15, align 8
  %68 = load %struct.device_node*, %struct.device_node** %13, align 8
  %69 = load %struct.device_node*, %struct.device_node** %7, align 8
  %70 = load %struct.simple_dai_props*, %struct.simple_dai_props** %12, align 8
  %71 = call i32 @graph_parse_mclk_fs(%struct.device_node* %68, %struct.device_node* %69, %struct.simple_dai_props* %70)
  %72 = load %struct.device_node*, %struct.device_node** %13, align 8
  %73 = load %struct.device_node*, %struct.device_node** %8, align 8
  %74 = load %struct.simple_dai_props*, %struct.simple_dai_props** %12, align 8
  %75 = call i32 @graph_parse_mclk_fs(%struct.device_node* %72, %struct.device_node* %73, %struct.simple_dai_props* %74)
  %76 = load %struct.device*, %struct.device** %10, align 8
  %77 = load %struct.device_node*, %struct.device_node** %7, align 8
  %78 = load %struct.device_node*, %struct.device_node** %8, align 8
  %79 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %11, align 8
  %80 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %79, i32 0, i32 4
  %81 = call i32 @asoc_simple_parse_daifmt(%struct.device* %76, %struct.device_node* %77, %struct.device_node* %78, i32* null, i32* %80)
  store i32 %81, i32* %16, align 4
  %82 = load i32, i32* %16, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %38
  %85 = load i32, i32* %16, align 4
  store i32 %85, i32* %5, align 4
  br label %167

86:                                               ; preds = %38
  %87 = load %struct.device_node*, %struct.device_node** %7, align 8
  %88 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %11, align 8
  %89 = call i32 @asoc_simple_parse_cpu(%struct.device_node* %87, %struct.snd_soc_dai_link* %88, i32* %17)
  store i32 %89, i32* %16, align 4
  %90 = load i32, i32* %16, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %86
  %93 = load i32, i32* %16, align 4
  store i32 %93, i32* %5, align 4
  br label %167

94:                                               ; preds = %86
  %95 = load %struct.device_node*, %struct.device_node** %8, align 8
  %96 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %11, align 8
  %97 = call i32 @asoc_simple_parse_codec(%struct.device_node* %95, %struct.snd_soc_dai_link* %96)
  store i32 %97, i32* %16, align 4
  %98 = load i32, i32* %16, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %94
  %101 = load i32, i32* %16, align 4
  store i32 %101, i32* %5, align 4
  br label %167

102:                                              ; preds = %94
  %103 = load %struct.device_node*, %struct.device_node** %7, align 8
  %104 = load %struct.asoc_simple_dai*, %struct.asoc_simple_dai** %14, align 8
  %105 = call i32 @asoc_simple_parse_tdm(%struct.device_node* %103, %struct.asoc_simple_dai* %104)
  store i32 %105, i32* %16, align 4
  %106 = load i32, i32* %16, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %102
  %109 = load i32, i32* %16, align 4
  store i32 %109, i32* %5, align 4
  br label %167

110:                                              ; preds = %102
  %111 = load %struct.device_node*, %struct.device_node** %8, align 8
  %112 = load %struct.asoc_simple_dai*, %struct.asoc_simple_dai** %15, align 8
  %113 = call i32 @asoc_simple_parse_tdm(%struct.device_node* %111, %struct.asoc_simple_dai* %112)
  store i32 %113, i32* %16, align 4
  %114 = load i32, i32* %16, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %110
  %117 = load i32, i32* %16, align 4
  store i32 %117, i32* %5, align 4
  br label %167

118:                                              ; preds = %110
  %119 = load %struct.device*, %struct.device** %10, align 8
  %120 = load %struct.device_node*, %struct.device_node** %7, align 8
  %121 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %11, align 8
  %122 = load %struct.asoc_simple_dai*, %struct.asoc_simple_dai** %14, align 8
  %123 = call i32 @asoc_simple_parse_clk_cpu(%struct.device* %119, %struct.device_node* %120, %struct.snd_soc_dai_link* %121, %struct.asoc_simple_dai* %122)
  store i32 %123, i32* %16, align 4
  %124 = load i32, i32* %16, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %118
  %127 = load i32, i32* %16, align 4
  store i32 %127, i32* %5, align 4
  br label %167

128:                                              ; preds = %118
  %129 = load %struct.device*, %struct.device** %10, align 8
  %130 = load %struct.device_node*, %struct.device_node** %8, align 8
  %131 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %11, align 8
  %132 = load %struct.asoc_simple_dai*, %struct.asoc_simple_dai** %15, align 8
  %133 = call i32 @asoc_simple_parse_clk_codec(%struct.device* %129, %struct.device_node* %130, %struct.snd_soc_dai_link* %131, %struct.asoc_simple_dai* %132)
  store i32 %133, i32* %16, align 4
  %134 = load i32, i32* %16, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %128
  %137 = load i32, i32* %16, align 4
  store i32 %137, i32* %5, align 4
  br label %167

138:                                              ; preds = %128
  %139 = load %struct.device*, %struct.device** %10, align 8
  %140 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %11, align 8
  %141 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %11, align 8
  %142 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %141, i32 0, i32 3
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %11, align 8
  %147 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %146, i32 0, i32 2
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @asoc_simple_set_dailink_name(%struct.device* %139, %struct.snd_soc_dai_link* %140, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %145, i32 %150)
  store i32 %151, i32* %16, align 4
  %152 = load i32, i32* %16, align 4
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %138
  %155 = load i32, i32* %16, align 4
  store i32 %155, i32* %5, align 4
  br label %167

156:                                              ; preds = %138
  %157 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %11, align 8
  %158 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %157, i32 0, i32 1
  store i32* @graph_ops, i32** %158, align 8
  %159 = load i32, i32* @asoc_simple_dai_init, align 4
  %160 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %11, align 8
  %161 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %160, i32 0, i32 0
  store i32 %159, i32* %161, align 8
  %162 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %11, align 8
  %163 = load i32, i32* %17, align 4
  %164 = call i32 @asoc_simple_canonicalize_cpu(%struct.snd_soc_dai_link* %162, i32 %163)
  %165 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %11, align 8
  %166 = call i32 @asoc_simple_canonicalize_platform(%struct.snd_soc_dai_link* %165)
  store i32 0, i32* %5, align 4
  br label %167

167:                                              ; preds = %156, %154, %136, %126, %116, %108, %100, %92, %84, %37
  %168 = load i32, i32* %5, align 4
  ret i32 %168
}

declare dso_local %struct.device* @simple_priv_to_dev(%struct.asoc_simple_priv*) #1

declare dso_local %struct.snd_soc_dai_link* @simple_priv_to_link(%struct.asoc_simple_priv*, i32) #1

declare dso_local %struct.simple_dai_props* @simple_priv_to_props(%struct.asoc_simple_priv*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, %struct.device_node*) #1

declare dso_local i32 @graph_parse_mclk_fs(%struct.device_node*, %struct.device_node*, %struct.simple_dai_props*) #1

declare dso_local i32 @asoc_simple_parse_daifmt(%struct.device*, %struct.device_node*, %struct.device_node*, i32*, i32*) #1

declare dso_local i32 @asoc_simple_parse_cpu(%struct.device_node*, %struct.snd_soc_dai_link*, i32*) #1

declare dso_local i32 @asoc_simple_parse_codec(%struct.device_node*, %struct.snd_soc_dai_link*) #1

declare dso_local i32 @asoc_simple_parse_tdm(%struct.device_node*, %struct.asoc_simple_dai*) #1

declare dso_local i32 @asoc_simple_parse_clk_cpu(%struct.device*, %struct.device_node*, %struct.snd_soc_dai_link*, %struct.asoc_simple_dai*) #1

declare dso_local i32 @asoc_simple_parse_clk_codec(%struct.device*, %struct.device_node*, %struct.snd_soc_dai_link*, %struct.asoc_simple_dai*) #1

declare dso_local i32 @asoc_simple_set_dailink_name(%struct.device*, %struct.snd_soc_dai_link*, i8*, i32, i32) #1

declare dso_local i32 @asoc_simple_canonicalize_cpu(%struct.snd_soc_dai_link*, i32) #1

declare dso_local i32 @asoc_simple_canonicalize_platform(%struct.snd_soc_dai_link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
