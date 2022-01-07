; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_spdif.c_fsl_spdif_txclk_caldiv.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_spdif.c_fsl_spdif_txclk_caldiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_spdif_priv = type { i32*, i32*, i32*, i32 }
%struct.clk = type { i32 }

@fsl_spdif_txclk_caldiv.rate = internal constant [5 x i32] [i32 32000, i32 44100, i32 48000, i32 96000, i32 192000], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsl_spdif_priv*, %struct.clk*, i32, i32, i32)* @fsl_spdif_txclk_caldiv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_spdif_txclk_caldiv(%struct.fsl_spdif_priv* %0, %struct.clk* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.fsl_spdif_priv*, align 8
  %7 = alloca %struct.clk*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.fsl_spdif_priv* %0, %struct.fsl_spdif_priv** %6, align 8
  store %struct.clk* %1, %struct.clk** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %20 = load %struct.clk*, %struct.clk** %7, align 8
  %21 = load %struct.fsl_spdif_priv*, %struct.fsl_spdif_priv** %6, align 8
  %22 = getelementptr inbounds %struct.fsl_spdif_priv, %struct.fsl_spdif_priv* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @clk_is_match(%struct.clk* %20, i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 2, i32 1
  store i32 %28, i32* %16, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 512, i32 1
  store i32 %32, i32* %17, align 4
  %33 = load i32, i32* %16, align 4
  store i32 %33, i32* %18, align 4
  br label %34

34:                                               ; preds = %202, %5
  %35 = load i32, i32* %18, align 4
  %36 = load i32, i32* %17, align 4
  %37 = icmp sle i32 %35, %36
  br i1 %37, label %38, label %205

38:                                               ; preds = %34
  store i32 1, i32* %19, align 4
  br label %39

39:                                               ; preds = %198, %38
  %40 = load i32, i32* %19, align 4
  %41 = icmp sle i32 %40, 128
  br i1 %41, label %42, label %201

42:                                               ; preds = %39
  %43 = load i32, i32* %9, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds [5 x i32], [5 x i32]* @fsl_spdif_txclk_caldiv.rate, i64 0, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %19, align 4
  %48 = mul nsw i32 %46, %47
  %49 = sext i32 %48 to i64
  %50 = mul i64 %49, 64
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %42
  %55 = load %struct.clk*, %struct.clk** %7, align 8
  %56 = load i32, i32* %12, align 4
  %57 = call i32 @clk_round_rate(%struct.clk* %55, i32 %56)
  store i32 %57, i32* %13, align 4
  br label %61

58:                                               ; preds = %42
  %59 = load %struct.clk*, %struct.clk** %7, align 8
  %60 = call i32 @clk_get_rate(%struct.clk* %59)
  store i32 %60, i32* %13, align 4
  br label %61

61:                                               ; preds = %58, %54
  %62 = load i32, i32* %13, align 4
  %63 = sdiv i32 %62, 64
  store i32 %63, i32* %15, align 4
  %64 = load i32, i32* %19, align 4
  %65 = load i32, i32* %18, align 4
  %66 = mul nsw i32 %64, %65
  %67 = load i32, i32* %15, align 4
  %68 = sdiv i32 %67, %66
  store i32 %68, i32* %15, align 4
  %69 = load i32, i32* %15, align 4
  %70 = load i32, i32* %9, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds [5 x i32], [5 x i32]* @fsl_spdif_txclk_caldiv.rate, i64 0, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %69, %73
  br i1 %74, label %75, label %97

75:                                               ; preds = %61
  store i32 0, i32* %8, align 4
  %76 = load i32, i32* %19, align 4
  %77 = load %struct.fsl_spdif_priv*, %struct.fsl_spdif_priv** %6, align 8
  %78 = getelementptr inbounds %struct.fsl_spdif_priv, %struct.fsl_spdif_priv* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %9, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  store i32 %76, i32* %82, align 4
  %83 = load i32, i32* %18, align 4
  %84 = load %struct.fsl_spdif_priv*, %struct.fsl_spdif_priv** %6, align 8
  %85 = getelementptr inbounds %struct.fsl_spdif_priv, %struct.fsl_spdif_priv* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %9, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  store i32 %83, i32* %89, align 4
  %90 = load i32, i32* %15, align 4
  %91 = load %struct.fsl_spdif_priv*, %struct.fsl_spdif_priv** %6, align 8
  %92 = getelementptr inbounds %struct.fsl_spdif_priv, %struct.fsl_spdif_priv* %91, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %9, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  store i32 %90, i32* %96, align 4
  br label %206

97:                                               ; preds = %61
  %98 = load i32, i32* %15, align 4
  %99 = load i32, i32* %9, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds [5 x i32], [5 x i32]* @fsl_spdif_txclk_caldiv.rate, i64 0, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = sdiv i32 %98, %102
  %104 = icmp eq i32 %103, 1
  br i1 %104, label %105, label %146

105:                                              ; preds = %97
  %106 = load i32, i32* %15, align 4
  %107 = load i32, i32* %9, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds [5 x i32], [5 x i32]* @fsl_spdif_txclk_caldiv.rate, i64 0, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = sub nsw i32 %106, %110
  %112 = mul nsw i32 %111, 100000
  store i32 %112, i32* %14, align 4
  %113 = load i32, i32* %14, align 4
  %114 = load i32, i32* %9, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds [5 x i32], [5 x i32]* @fsl_spdif_txclk_caldiv.rate, i64 0, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @do_div(i32 %113, i32 %117)
  %119 = load i32, i32* %14, align 4
  %120 = load i32, i32* %8, align 4
  %121 = icmp sge i32 %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %105
  br label %198

123:                                              ; preds = %105
  %124 = load i32, i32* %14, align 4
  store i32 %124, i32* %8, align 4
  %125 = load i32, i32* %19, align 4
  %126 = load %struct.fsl_spdif_priv*, %struct.fsl_spdif_priv** %6, align 8
  %127 = getelementptr inbounds %struct.fsl_spdif_priv, %struct.fsl_spdif_priv* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %9, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  store i32 %125, i32* %131, align 4
  %132 = load i32, i32* %18, align 4
  %133 = load %struct.fsl_spdif_priv*, %struct.fsl_spdif_priv** %6, align 8
  %134 = getelementptr inbounds %struct.fsl_spdif_priv, %struct.fsl_spdif_priv* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %9, align 4
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  store i32 %132, i32* %138, align 4
  %139 = load i32, i32* %15, align 4
  %140 = load %struct.fsl_spdif_priv*, %struct.fsl_spdif_priv** %6, align 8
  %141 = getelementptr inbounds %struct.fsl_spdif_priv, %struct.fsl_spdif_priv* %140, i32 0, i32 2
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %9, align 4
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  store i32 %139, i32* %145, align 4
  br label %196

146:                                              ; preds = %97
  %147 = load i32, i32* %9, align 4
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds [5 x i32], [5 x i32]* @fsl_spdif_txclk_caldiv.rate, i64 0, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %15, align 4
  %152 = sdiv i32 %150, %151
  %153 = icmp eq i32 %152, 1
  br i1 %153, label %154, label %195

154:                                              ; preds = %146
  %155 = load i32, i32* %9, align 4
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds [5 x i32], [5 x i32]* @fsl_spdif_txclk_caldiv.rate, i64 0, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %15, align 4
  %160 = sub nsw i32 %158, %159
  %161 = mul nsw i32 %160, 100000
  store i32 %161, i32* %14, align 4
  %162 = load i32, i32* %14, align 4
  %163 = load i32, i32* %9, align 4
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds [5 x i32], [5 x i32]* @fsl_spdif_txclk_caldiv.rate, i64 0, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @do_div(i32 %162, i32 %166)
  %168 = load i32, i32* %14, align 4
  %169 = load i32, i32* %8, align 4
  %170 = icmp sge i32 %168, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %154
  br label %198

172:                                              ; preds = %154
  %173 = load i32, i32* %14, align 4
  store i32 %173, i32* %8, align 4
  %174 = load i32, i32* %19, align 4
  %175 = load %struct.fsl_spdif_priv*, %struct.fsl_spdif_priv** %6, align 8
  %176 = getelementptr inbounds %struct.fsl_spdif_priv, %struct.fsl_spdif_priv* %175, i32 0, i32 0
  %177 = load i32*, i32** %176, align 8
  %178 = load i32, i32* %9, align 4
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  store i32 %174, i32* %180, align 4
  %181 = load i32, i32* %18, align 4
  %182 = load %struct.fsl_spdif_priv*, %struct.fsl_spdif_priv** %6, align 8
  %183 = getelementptr inbounds %struct.fsl_spdif_priv, %struct.fsl_spdif_priv* %182, i32 0, i32 1
  %184 = load i32*, i32** %183, align 8
  %185 = load i32, i32* %9, align 4
  %186 = zext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  store i32 %181, i32* %187, align 4
  %188 = load i32, i32* %15, align 4
  %189 = load %struct.fsl_spdif_priv*, %struct.fsl_spdif_priv** %6, align 8
  %190 = getelementptr inbounds %struct.fsl_spdif_priv, %struct.fsl_spdif_priv* %189, i32 0, i32 2
  %191 = load i32*, i32** %190, align 8
  %192 = load i32, i32* %9, align 4
  %193 = zext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  store i32 %188, i32* %194, align 4
  br label %195

195:                                              ; preds = %172, %146
  br label %196

196:                                              ; preds = %195, %123
  br label %197

197:                                              ; preds = %196
  br label %198

198:                                              ; preds = %197, %171, %122
  %199 = load i32, i32* %19, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %19, align 4
  br label %39

201:                                              ; preds = %39
  br label %202

202:                                              ; preds = %201
  %203 = load i32, i32* %18, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %18, align 4
  br label %34

205:                                              ; preds = %34
  br label %206

206:                                              ; preds = %205, %75
  %207 = load i32, i32* %8, align 4
  ret i32 %207
}

declare dso_local i32 @clk_is_match(%struct.clk*, i32) #1

declare dso_local i32 @clk_round_rate(%struct.clk*, i32) #1

declare dso_local i32 @clk_get_rate(%struct.clk*) #1

declare dso_local i32 @do_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
