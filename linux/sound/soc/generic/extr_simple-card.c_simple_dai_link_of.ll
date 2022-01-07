; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/generic/extr_simple-card.c_simple_dai_link_of.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/generic/extr_simple-card.c_simple_dai_link_of.c"
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

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"link_of (%pOF)\0A\00", align 1
@PREFIX = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"%splat\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%s-%s\00", align 1
@simple_ops = common dso_local global i32 0, align 4
@asoc_simple_dai_init = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asoc_simple_priv*, %struct.device_node*, %struct.device_node*, %struct.link_info*, i32)* @simple_dai_link_of to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @simple_dai_link_of(%struct.asoc_simple_priv* %0, %struct.device_node* %1, %struct.device_node* %2, %struct.link_info* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.asoc_simple_priv*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca %struct.device_node*, align 8
  %10 = alloca %struct.link_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.device*, align 8
  %13 = alloca %struct.snd_soc_dai_link*, align 8
  %14 = alloca %struct.simple_dai_props*, align 8
  %15 = alloca %struct.asoc_simple_dai*, align 8
  %16 = alloca %struct.asoc_simple_dai*, align 8
  %17 = alloca %struct.device_node*, align 8
  %18 = alloca %struct.device_node*, align 8
  %19 = alloca %struct.device_node*, align 8
  %20 = alloca %struct.device_node*, align 8
  %21 = alloca [128 x i8], align 16
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.asoc_simple_priv* %0, %struct.asoc_simple_priv** %7, align 8
  store %struct.device_node* %1, %struct.device_node** %8, align 8
  store %struct.device_node* %2, %struct.device_node** %9, align 8
  store %struct.link_info* %3, %struct.link_info** %10, align 8
  store i32 %4, i32* %11, align 4
  %25 = load %struct.asoc_simple_priv*, %struct.asoc_simple_priv** %7, align 8
  %26 = call %struct.device* @simple_priv_to_dev(%struct.asoc_simple_priv* %25)
  store %struct.device* %26, %struct.device** %12, align 8
  %27 = load %struct.asoc_simple_priv*, %struct.asoc_simple_priv** %7, align 8
  %28 = load %struct.link_info*, %struct.link_info** %10, align 8
  %29 = getelementptr inbounds %struct.link_info, %struct.link_info* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.snd_soc_dai_link* @simple_priv_to_link(%struct.asoc_simple_priv* %27, i32 %30)
  store %struct.snd_soc_dai_link* %31, %struct.snd_soc_dai_link** %13, align 8
  %32 = load %struct.asoc_simple_priv*, %struct.asoc_simple_priv** %7, align 8
  %33 = load %struct.link_info*, %struct.link_info** %10, align 8
  %34 = getelementptr inbounds %struct.link_info, %struct.link_info* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.simple_dai_props* @simple_priv_to_props(%struct.asoc_simple_priv* %32, i32 %35)
  store %struct.simple_dai_props* %36, %struct.simple_dai_props** %14, align 8
  %37 = load %struct.device*, %struct.device** %12, align 8
  %38 = getelementptr inbounds %struct.device, %struct.device* %37, i32 0, i32 0
  %39 = load %struct.device_node*, %struct.device_node** %38, align 8
  store %struct.device_node* %39, %struct.device_node** %17, align 8
  store %struct.device_node* null, %struct.device_node** %18, align 8
  store %struct.device_node* null, %struct.device_node** %19, align 8
  store %struct.device_node* null, %struct.device_node** %20, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %22, align 8
  %40 = load %struct.link_info*, %struct.link_info** %10, align 8
  %41 = getelementptr inbounds %struct.link_info, %struct.link_info* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %5
  %45 = load %struct.device_node*, %struct.device_node** %8, align 8
  %46 = load %struct.device_node*, %struct.device_node** %9, align 8
  %47 = icmp eq %struct.device_node* %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44, %5
  store i32 0, i32* %6, align 4
  br label %196

49:                                               ; preds = %44
  %50 = load %struct.device_node*, %struct.device_node** %8, align 8
  store %struct.device_node* %50, %struct.device_node** %18, align 8
  %51 = load %struct.device_node*, %struct.device_node** %8, align 8
  %52 = call %struct.device_node* @of_get_parent(%struct.device_node* %51)
  store %struct.device_node* %52, %struct.device_node** %19, align 8
  %53 = load %struct.link_info*, %struct.link_info** %10, align 8
  %54 = getelementptr inbounds %struct.link_info, %struct.link_info* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  %57 = load %struct.device*, %struct.device** %12, align 8
  %58 = load %struct.device_node*, %struct.device_node** %19, align 8
  %59 = call i32 @dev_dbg(%struct.device* %57, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), %struct.device_node* %58)
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %49
  %63 = load i8*, i8** @PREFIX, align 8
  store i8* %63, i8** %22, align 8
  br label %64

64:                                               ; preds = %62, %49
  %65 = getelementptr inbounds [128 x i8], [128 x i8]* %21, i64 0, i64 0
  %66 = load i8*, i8** %22, align 8
  %67 = call i32 @snprintf(i8* %65, i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %66)
  %68 = load %struct.device_node*, %struct.device_node** %19, align 8
  %69 = getelementptr inbounds [128 x i8], [128 x i8]* %21, i64 0, i64 0
  %70 = call %struct.device_node* @of_get_child_by_name(%struct.device_node* %68, i8* %69)
  store %struct.device_node* %70, %struct.device_node** %20, align 8
  %71 = load %struct.asoc_simple_priv*, %struct.asoc_simple_priv** %7, align 8
  %72 = getelementptr inbounds %struct.asoc_simple_priv, %struct.asoc_simple_priv* %71, i32 0, i32 0
  %73 = load %struct.asoc_simple_dai*, %struct.asoc_simple_dai** %72, align 8
  %74 = load %struct.link_info*, %struct.link_info** %10, align 8
  %75 = getelementptr inbounds %struct.link_info, %struct.link_info* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds %struct.asoc_simple_dai, %struct.asoc_simple_dai* %73, i64 %78
  %80 = load %struct.simple_dai_props*, %struct.simple_dai_props** %14, align 8
  %81 = getelementptr inbounds %struct.simple_dai_props, %struct.simple_dai_props* %80, i32 0, i32 1
  store %struct.asoc_simple_dai* %79, %struct.asoc_simple_dai** %81, align 8
  store %struct.asoc_simple_dai* %79, %struct.asoc_simple_dai** %15, align 8
  %82 = load %struct.asoc_simple_priv*, %struct.asoc_simple_priv** %7, align 8
  %83 = getelementptr inbounds %struct.asoc_simple_priv, %struct.asoc_simple_priv* %82, i32 0, i32 0
  %84 = load %struct.asoc_simple_dai*, %struct.asoc_simple_dai** %83, align 8
  %85 = load %struct.link_info*, %struct.link_info** %10, align 8
  %86 = getelementptr inbounds %struct.link_info, %struct.link_info* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 4
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds %struct.asoc_simple_dai, %struct.asoc_simple_dai* %84, i64 %89
  %91 = load %struct.simple_dai_props*, %struct.simple_dai_props** %14, align 8
  %92 = getelementptr inbounds %struct.simple_dai_props, %struct.simple_dai_props* %91, i32 0, i32 0
  store %struct.asoc_simple_dai* %90, %struct.asoc_simple_dai** %92, align 8
  store %struct.asoc_simple_dai* %90, %struct.asoc_simple_dai** %16, align 8
  %93 = load %struct.device*, %struct.device** %12, align 8
  %94 = load %struct.device_node*, %struct.device_node** %19, align 8
  %95 = load %struct.device_node*, %struct.device_node** %9, align 8
  %96 = load i8*, i8** %22, align 8
  %97 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %13, align 8
  %98 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %97, i32 0, i32 4
  %99 = call i32 @asoc_simple_parse_daifmt(%struct.device* %93, %struct.device_node* %94, %struct.device_node* %95, i8* %96, i32* %98)
  store i32 %99, i32* %23, align 4
  %100 = load i32, i32* %23, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %64
  br label %190

103:                                              ; preds = %64
  %104 = load %struct.device_node*, %struct.device_node** %17, align 8
  %105 = load %struct.device_node*, %struct.device_node** %18, align 8
  %106 = load %struct.device_node*, %struct.device_node** %9, align 8
  %107 = load %struct.simple_dai_props*, %struct.simple_dai_props** %14, align 8
  %108 = load i8*, i8** %22, align 8
  %109 = call i32 @simple_parse_mclk_fs(%struct.device_node* %104, %struct.device_node* %105, %struct.device_node* %106, %struct.simple_dai_props* %107, i8* %108)
  %110 = load %struct.device_node*, %struct.device_node** %18, align 8
  %111 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %13, align 8
  %112 = call i32 @asoc_simple_parse_cpu(%struct.device_node* %110, %struct.snd_soc_dai_link* %111, i32* %24)
  store i32 %112, i32* %23, align 4
  %113 = load i32, i32* %23, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %103
  br label %190

116:                                              ; preds = %103
  %117 = load %struct.device_node*, %struct.device_node** %9, align 8
  %118 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %13, align 8
  %119 = call i32 @asoc_simple_parse_codec(%struct.device_node* %117, %struct.snd_soc_dai_link* %118)
  store i32 %119, i32* %23, align 4
  %120 = load i32, i32* %23, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %116
  br label %190

123:                                              ; preds = %116
  %124 = load %struct.device_node*, %struct.device_node** %20, align 8
  %125 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %13, align 8
  %126 = call i32 @asoc_simple_parse_platform(%struct.device_node* %124, %struct.snd_soc_dai_link* %125)
  store i32 %126, i32* %23, align 4
  %127 = load i32, i32* %23, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %123
  br label %190

130:                                              ; preds = %123
  %131 = load %struct.device_node*, %struct.device_node** %18, align 8
  %132 = load %struct.asoc_simple_dai*, %struct.asoc_simple_dai** %15, align 8
  %133 = call i32 @asoc_simple_parse_tdm(%struct.device_node* %131, %struct.asoc_simple_dai* %132)
  store i32 %133, i32* %23, align 4
  %134 = load i32, i32* %23, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %130
  br label %190

137:                                              ; preds = %130
  %138 = load %struct.device_node*, %struct.device_node** %9, align 8
  %139 = load %struct.asoc_simple_dai*, %struct.asoc_simple_dai** %16, align 8
  %140 = call i32 @asoc_simple_parse_tdm(%struct.device_node* %138, %struct.asoc_simple_dai* %139)
  store i32 %140, i32* %23, align 4
  %141 = load i32, i32* %23, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %137
  br label %190

144:                                              ; preds = %137
  %145 = load %struct.device*, %struct.device** %12, align 8
  %146 = load %struct.device_node*, %struct.device_node** %18, align 8
  %147 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %13, align 8
  %148 = load %struct.asoc_simple_dai*, %struct.asoc_simple_dai** %15, align 8
  %149 = call i32 @asoc_simple_parse_clk_cpu(%struct.device* %145, %struct.device_node* %146, %struct.snd_soc_dai_link* %147, %struct.asoc_simple_dai* %148)
  store i32 %149, i32* %23, align 4
  %150 = load i32, i32* %23, align 4
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %144
  br label %190

153:                                              ; preds = %144
  %154 = load %struct.device*, %struct.device** %12, align 8
  %155 = load %struct.device_node*, %struct.device_node** %9, align 8
  %156 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %13, align 8
  %157 = load %struct.asoc_simple_dai*, %struct.asoc_simple_dai** %16, align 8
  %158 = call i32 @asoc_simple_parse_clk_codec(%struct.device* %154, %struct.device_node* %155, %struct.snd_soc_dai_link* %156, %struct.asoc_simple_dai* %157)
  store i32 %158, i32* %23, align 4
  %159 = load i32, i32* %23, align 4
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %153
  br label %190

162:                                              ; preds = %153
  %163 = load %struct.device*, %struct.device** %12, align 8
  %164 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %13, align 8
  %165 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %13, align 8
  %166 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %165, i32 0, i32 3
  %167 = load %struct.TYPE_3__*, %struct.TYPE_3__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %13, align 8
  %171 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %170, i32 0, i32 2
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @asoc_simple_set_dailink_name(%struct.device* %163, %struct.snd_soc_dai_link* %164, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %169, i32 %174)
  store i32 %175, i32* %23, align 4
  %176 = load i32, i32* %23, align 4
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %162
  br label %190

179:                                              ; preds = %162
  %180 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %13, align 8
  %181 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %180, i32 0, i32 1
  store i32* @simple_ops, i32** %181, align 8
  %182 = load i32, i32* @asoc_simple_dai_init, align 4
  %183 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %13, align 8
  %184 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %183, i32 0, i32 0
  store i32 %182, i32* %184, align 8
  %185 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %13, align 8
  %186 = load i32, i32* %24, align 4
  %187 = call i32 @asoc_simple_canonicalize_cpu(%struct.snd_soc_dai_link* %185, i32 %186)
  %188 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %13, align 8
  %189 = call i32 @asoc_simple_canonicalize_platform(%struct.snd_soc_dai_link* %188)
  br label %190

190:                                              ; preds = %179, %178, %161, %152, %143, %136, %129, %122, %115, %102
  %191 = load %struct.device_node*, %struct.device_node** %20, align 8
  %192 = call i32 @of_node_put(%struct.device_node* %191)
  %193 = load %struct.device_node*, %struct.device_node** %19, align 8
  %194 = call i32 @of_node_put(%struct.device_node* %193)
  %195 = load i32, i32* %23, align 4
  store i32 %195, i32* %6, align 4
  br label %196

196:                                              ; preds = %190, %48
  %197 = load i32, i32* %6, align 4
  ret i32 %197
}

declare dso_local %struct.device* @simple_priv_to_dev(%struct.asoc_simple_priv*) #1

declare dso_local %struct.snd_soc_dai_link* @simple_priv_to_link(%struct.asoc_simple_priv*, i32) #1

declare dso_local %struct.simple_dai_props* @simple_priv_to_props(%struct.asoc_simple_priv*, i32) #1

declare dso_local %struct.device_node* @of_get_parent(%struct.device_node*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, %struct.device_node*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local %struct.device_node* @of_get_child_by_name(%struct.device_node*, i8*) #1

declare dso_local i32 @asoc_simple_parse_daifmt(%struct.device*, %struct.device_node*, %struct.device_node*, i8*, i32*) #1

declare dso_local i32 @simple_parse_mclk_fs(%struct.device_node*, %struct.device_node*, %struct.device_node*, %struct.simple_dai_props*, i8*) #1

declare dso_local i32 @asoc_simple_parse_cpu(%struct.device_node*, %struct.snd_soc_dai_link*, i32*) #1

declare dso_local i32 @asoc_simple_parse_codec(%struct.device_node*, %struct.snd_soc_dai_link*) #1

declare dso_local i32 @asoc_simple_parse_platform(%struct.device_node*, %struct.snd_soc_dai_link*) #1

declare dso_local i32 @asoc_simple_parse_tdm(%struct.device_node*, %struct.asoc_simple_dai*) #1

declare dso_local i32 @asoc_simple_parse_clk_cpu(%struct.device*, %struct.device_node*, %struct.snd_soc_dai_link*, %struct.asoc_simple_dai*) #1

declare dso_local i32 @asoc_simple_parse_clk_codec(%struct.device*, %struct.device_node*, %struct.snd_soc_dai_link*, %struct.asoc_simple_dai*) #1

declare dso_local i32 @asoc_simple_set_dailink_name(%struct.device*, %struct.snd_soc_dai_link*, i8*, i32, i32) #1

declare dso_local i32 @asoc_simple_canonicalize_cpu(%struct.snd_soc_dai_link*, i32) #1

declare dso_local i32 @asoc_simple_canonicalize_platform(%struct.snd_soc_dai_link*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
