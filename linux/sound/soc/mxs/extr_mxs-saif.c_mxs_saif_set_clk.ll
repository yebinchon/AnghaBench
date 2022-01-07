; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/mxs/extr_mxs-saif.c_mxs_saif_set_clk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/mxs/extr_mxs-saif.c_mxs_saif_set_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxs_saif = type { i32, i64, i64, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [17 x i8] c"mclk %d rate %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"master saif%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"can not change clock, master saif%d(rate %d) is ongoing\0A\00", align 1
@SAIF_CTRL = common dso_local global i64 0, align 8
@BM_SAIF_CTRL_BITCLK_MULT_RATE = common dso_local global i32 0, align 4
@BM_SAIF_CTRL_BITCLK_BASE_RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxs_saif*, i32, i32)* @mxs_saif_set_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxs_saif_set_clk(%struct.mxs_saif* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mxs_saif*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mxs_saif*, align 8
  store %struct.mxs_saif* %0, %struct.mxs_saif** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.mxs_saif*, %struct.mxs_saif** %5, align 8
  %12 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %13, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15)
  %17 = load %struct.mxs_saif*, %struct.mxs_saif** %5, align 8
  %18 = call %struct.mxs_saif* @mxs_saif_get_master(%struct.mxs_saif* %17)
  store %struct.mxs_saif* %18, %struct.mxs_saif** %10, align 8
  %19 = load %struct.mxs_saif*, %struct.mxs_saif** %10, align 8
  %20 = icmp ne %struct.mxs_saif* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %203

24:                                               ; preds = %3
  %25 = load %struct.mxs_saif*, %struct.mxs_saif** %5, align 8
  %26 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.mxs_saif*, %struct.mxs_saif** %10, align 8
  %29 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %27, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load %struct.mxs_saif*, %struct.mxs_saif** %10, align 8
  %33 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %32, i32 0, i32 6
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %55

36:                                               ; preds = %24
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.mxs_saif*, %struct.mxs_saif** %10, align 8
  %39 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %37, %40
  br i1 %41, label %42, label %55

42:                                               ; preds = %36
  %43 = load %struct.mxs_saif*, %struct.mxs_saif** %5, align 8
  %44 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.mxs_saif*, %struct.mxs_saif** %10, align 8
  %47 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.mxs_saif*, %struct.mxs_saif** %10, align 8
  %50 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @dev_err(i32 %45, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 %48, i32 %51)
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %203

55:                                               ; preds = %36, %24
  %56 = load %struct.mxs_saif*, %struct.mxs_saif** %10, align 8
  %57 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @SAIF_CTRL, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @__raw_readl(i64 %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* @BM_SAIF_CTRL_BITCLK_MULT_RATE, align 4
  %63 = xor i32 %62, -1
  %64 = load i32, i32* %8, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* @BM_SAIF_CTRL_BITCLK_BASE_RATE, align 4
  %67 = xor i32 %66, -1
  %68 = load i32, i32* %8, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %8, align 4
  %70 = load %struct.mxs_saif*, %struct.mxs_saif** %10, align 8
  %71 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @clk_prepare_enable(i32 %72)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %55
  %77 = load i32, i32* %9, align 4
  store i32 %77, i32* %4, align 4
  br label %203

78:                                               ; preds = %55
  %79 = load %struct.mxs_saif*, %struct.mxs_saif** %10, align 8
  %80 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %116

83:                                               ; preds = %78
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* %7, align 4
  %86 = udiv i32 %84, %85
  switch i32 %86, label %108 [
    i32 32, label %87
    i32 64, label %87
    i32 128, label %87
    i32 256, label %87
    i32 512, label %87
    i32 48, label %98
    i32 96, label %98
    i32 192, label %98
    i32 384, label %98
  ]

87:                                               ; preds = %83, %83, %83, %83, %83
  %88 = load i32, i32* @BM_SAIF_CTRL_BITCLK_BASE_RATE, align 4
  %89 = xor i32 %88, -1
  %90 = load i32, i32* %8, align 4
  %91 = and i32 %90, %89
  store i32 %91, i32* %8, align 4
  %92 = load %struct.mxs_saif*, %struct.mxs_saif** %10, align 8
  %93 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %7, align 4
  %96 = mul i32 512, %95
  %97 = call i32 @clk_set_rate(i32 %94, i32 %96)
  store i32 %97, i32* %9, align 4
  br label %115

98:                                               ; preds = %83, %83, %83, %83
  %99 = load i32, i32* @BM_SAIF_CTRL_BITCLK_BASE_RATE, align 4
  %100 = load i32, i32* %8, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %8, align 4
  %102 = load %struct.mxs_saif*, %struct.mxs_saif** %10, align 8
  %103 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* %7, align 4
  %106 = mul i32 384, %105
  %107 = call i32 @clk_set_rate(i32 %104, i32 %106)
  store i32 %107, i32* %9, align 4
  br label %115

108:                                              ; preds = %83
  %109 = load %struct.mxs_saif*, %struct.mxs_saif** %10, align 8
  %110 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @clk_disable_unprepare(i32 %111)
  %113 = load i32, i32* @EINVAL, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %4, align 4
  br label %203

115:                                              ; preds = %98, %87
  br label %127

116:                                              ; preds = %78
  %117 = load %struct.mxs_saif*, %struct.mxs_saif** %10, align 8
  %118 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* %7, align 4
  %121 = mul i32 512, %120
  %122 = call i32 @clk_set_rate(i32 %119, i32 %121)
  store i32 %122, i32* %9, align 4
  %123 = load i32, i32* @BM_SAIF_CTRL_BITCLK_BASE_RATE, align 4
  %124 = xor i32 %123, -1
  %125 = load i32, i32* %8, align 4
  %126 = and i32 %125, %124
  store i32 %126, i32* %8, align 4
  br label %127

127:                                              ; preds = %116, %115
  %128 = load %struct.mxs_saif*, %struct.mxs_saif** %10, align 8
  %129 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @clk_disable_unprepare(i32 %130)
  %132 = load i32, i32* %9, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %127
  %135 = load i32, i32* %9, align 4
  store i32 %135, i32* %4, align 4
  br label %203

136:                                              ; preds = %127
  %137 = load i32, i32* %7, align 4
  %138 = load %struct.mxs_saif*, %struct.mxs_saif** %10, align 8
  %139 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 8
  %140 = load %struct.mxs_saif*, %struct.mxs_saif** %10, align 8
  %141 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %152, label %144

144:                                              ; preds = %136
  %145 = load i32, i32* %8, align 4
  %146 = load %struct.mxs_saif*, %struct.mxs_saif** %10, align 8
  %147 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @SAIF_CTRL, align 8
  %150 = add nsw i64 %148, %149
  %151 = call i32 @__raw_writel(i32 %145, i64 %150)
  store i32 0, i32* %4, align 4
  br label %203

152:                                              ; preds = %136
  %153 = load i32, i32* %6, align 4
  %154 = load i32, i32* %7, align 4
  %155 = udiv i32 %153, %154
  switch i32 %155, label %192 [
    i32 32, label %156
    i32 64, label %160
    i32 128, label %164
    i32 256, label %168
    i32 512, label %172
    i32 48, label %176
    i32 96, label %180
    i32 192, label %184
    i32 384, label %188
  ]

156:                                              ; preds = %152
  %157 = call i32 @BF_SAIF_CTRL_BITCLK_MULT_RATE(i32 4)
  %158 = load i32, i32* %8, align 4
  %159 = or i32 %158, %157
  store i32 %159, i32* %8, align 4
  br label %195

160:                                              ; preds = %152
  %161 = call i32 @BF_SAIF_CTRL_BITCLK_MULT_RATE(i32 3)
  %162 = load i32, i32* %8, align 4
  %163 = or i32 %162, %161
  store i32 %163, i32* %8, align 4
  br label %195

164:                                              ; preds = %152
  %165 = call i32 @BF_SAIF_CTRL_BITCLK_MULT_RATE(i32 2)
  %166 = load i32, i32* %8, align 4
  %167 = or i32 %166, %165
  store i32 %167, i32* %8, align 4
  br label %195

168:                                              ; preds = %152
  %169 = call i32 @BF_SAIF_CTRL_BITCLK_MULT_RATE(i32 1)
  %170 = load i32, i32* %8, align 4
  %171 = or i32 %170, %169
  store i32 %171, i32* %8, align 4
  br label %195

172:                                              ; preds = %152
  %173 = call i32 @BF_SAIF_CTRL_BITCLK_MULT_RATE(i32 0)
  %174 = load i32, i32* %8, align 4
  %175 = or i32 %174, %173
  store i32 %175, i32* %8, align 4
  br label %195

176:                                              ; preds = %152
  %177 = call i32 @BF_SAIF_CTRL_BITCLK_MULT_RATE(i32 3)
  %178 = load i32, i32* %8, align 4
  %179 = or i32 %178, %177
  store i32 %179, i32* %8, align 4
  br label %195

180:                                              ; preds = %152
  %181 = call i32 @BF_SAIF_CTRL_BITCLK_MULT_RATE(i32 2)
  %182 = load i32, i32* %8, align 4
  %183 = or i32 %182, %181
  store i32 %183, i32* %8, align 4
  br label %195

184:                                              ; preds = %152
  %185 = call i32 @BF_SAIF_CTRL_BITCLK_MULT_RATE(i32 1)
  %186 = load i32, i32* %8, align 4
  %187 = or i32 %186, %185
  store i32 %187, i32* %8, align 4
  br label %195

188:                                              ; preds = %152
  %189 = call i32 @BF_SAIF_CTRL_BITCLK_MULT_RATE(i32 0)
  %190 = load i32, i32* %8, align 4
  %191 = or i32 %190, %189
  store i32 %191, i32* %8, align 4
  br label %195

192:                                              ; preds = %152
  %193 = load i32, i32* @EINVAL, align 4
  %194 = sub nsw i32 0, %193
  store i32 %194, i32* %4, align 4
  br label %203

195:                                              ; preds = %188, %184, %180, %176, %172, %168, %164, %160, %156
  %196 = load i32, i32* %8, align 4
  %197 = load %struct.mxs_saif*, %struct.mxs_saif** %10, align 8
  %198 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @SAIF_CTRL, align 8
  %201 = add nsw i64 %199, %200
  %202 = call i32 @__raw_writel(i32 %196, i64 %201)
  store i32 0, i32* %4, align 4
  br label %203

203:                                              ; preds = %195, %192, %144, %134, %108, %76, %42, %21
  %204 = load i32, i32* %4, align 4
  ret i32 %204
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

declare dso_local %struct.mxs_saif* @mxs_saif_get_master(%struct.mxs_saif*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @__raw_readl(i64) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @__raw_writel(i32, i64) #1

declare dso_local i32 @BF_SAIF_CTRL_BITCLK_MULT_RATE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
