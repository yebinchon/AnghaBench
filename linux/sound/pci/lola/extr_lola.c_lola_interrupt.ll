; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/lola/extr_lola.c_lola_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/lola/extr_lola.c_lola_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lola = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@BAR1 = common dso_local global i32 0, align 4
@DINTSTS = common dso_local global i32 0, align 4
@DIINTSTS = common dso_local global i32 0, align 4
@DOINTSTS = common dso_local global i32 0, align 4
@CAPT = common dso_local global i64 0, align 8
@STS = common dso_local global i32 0, align 4
@LOLA_DSD_STS_DESE = common dso_local global i32 0, align 4
@LOLA_DSD_STS_BCIS = common dso_local global i32 0, align 4
@PLAY = common dso_local global i64 0, align 8
@MAX_STREAM_IN_COUNT = common dso_local global i32 0, align 4
@LOLA_DINT_CTRL = common dso_local global i32 0, align 4
@BAR0 = common dso_local global i32 0, align 4
@RIRBSTS = common dso_local global i32 0, align 4
@LOLA_RIRB_INT_MASK = common dso_local global i8 0, align 1
@CORBSTS = common dso_local global i32 0, align 4
@LOLA_CORB_INT_MASK = common dso_local global i8 0, align 1
@LOLA_DINT_FIFOERR = common dso_local global i32 0, align 4
@LOLA_DINT_MUERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @lola_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lola_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.lola*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = bitcast i8* %17 to %struct.lola*
  store %struct.lola* %18, %struct.lola** %5, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  %19 = load %struct.lola*, %struct.lola** %5, align 8
  %20 = getelementptr inbounds %struct.lola, %struct.lola* %19, i32 0, i32 1
  %21 = call i32 @spin_lock(i32* %20)
  br label %22

22:                                               ; preds = %230, %2
  %23 = load %struct.lola*, %struct.lola** %5, align 8
  %24 = load i32, i32* @BAR1, align 4
  %25 = load i32, i32* @DINTSTS, align 4
  %26 = call i32 @lola_readl(%struct.lola* %23, i32 %24, i32 %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load i32, i32* %12, align 4
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %33

32:                                               ; preds = %29, %22
  br label %231

33:                                               ; preds = %29
  %34 = load %struct.lola*, %struct.lola** %5, align 8
  %35 = load i32, i32* @BAR1, align 4
  %36 = load i32, i32* @DIINTSTS, align 4
  %37 = call i32 @lola_readl(%struct.lola* %34, i32 %35, i32 %36)
  store i32 %37, i32* %13, align 4
  %38 = load %struct.lola*, %struct.lola** %5, align 8
  %39 = load i32, i32* @BAR1, align 4
  %40 = load i32, i32* @DOINTSTS, align 4
  %41 = call i32 @lola_readl(%struct.lola* %38, i32 %39, i32 %40)
  store i32 %41, i32* %14, align 4
  store i32 0, i32* %11, align 4
  br label %42

42:                                               ; preds = %99, %33
  %43 = load i32, i32* %13, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %42
  %46 = load i32, i32* %11, align 4
  %47 = load %struct.lola*, %struct.lola** %5, align 8
  %48 = getelementptr inbounds %struct.lola, %struct.lola* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i64, i64* @CAPT, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %46, %53
  br label %55

55:                                               ; preds = %45, %42
  %56 = phi i1 [ false, %42 ], [ %54, %45 ]
  br i1 %56, label %57, label %102

57:                                               ; preds = %55
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* %11, align 4
  %60 = shl i32 1, %59
  %61 = and i32 %58, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %57
  br label %99

64:                                               ; preds = %57
  %65 = load i32, i32* %11, align 4
  %66 = shl i32 1, %65
  %67 = xor i32 %66, -1
  %68 = load i32, i32* %13, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %13, align 4
  %70 = load %struct.lola*, %struct.lola** %5, align 8
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* @STS, align 4
  %73 = call i32 @lola_dsd_read(%struct.lola* %70, i32 %71, i32 %72)
  store i32 %73, i32* %15, align 4
  %74 = load i32, i32* %15, align 4
  %75 = load i32, i32* @LOLA_DSD_STS_DESE, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %64
  %79 = load i32, i32* %11, align 4
  %80 = shl i32 1, %79
  %81 = load i32, i32* %8, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %8, align 4
  br label %83

83:                                               ; preds = %78, %64
  %84 = load i32, i32* %15, align 4
  %85 = load i32, i32* @LOLA_DSD_STS_BCIS, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = load i32, i32* %11, align 4
  %90 = shl i32 1, %89
  %91 = load i32, i32* %6, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %6, align 4
  br label %93

93:                                               ; preds = %88, %83
  %94 = load %struct.lola*, %struct.lola** %5, align 8
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* @STS, align 4
  %97 = load i32, i32* %15, align 4
  %98 = call i32 @lola_dsd_write(%struct.lola* %94, i32 %95, i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %93, %63
  %100 = load i32, i32* %11, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %11, align 4
  br label %42

102:                                              ; preds = %55
  store i32 0, i32* %11, align 4
  br label %103

103:                                              ; preds = %164, %102
  %104 = load i32, i32* %14, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %116

106:                                              ; preds = %103
  %107 = load i32, i32* %11, align 4
  %108 = load %struct.lola*, %struct.lola** %5, align 8
  %109 = getelementptr inbounds %struct.lola, %struct.lola* %108, i32 0, i32 0
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = load i64, i64* @PLAY, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = icmp slt i32 %107, %114
  br label %116

116:                                              ; preds = %106, %103
  %117 = phi i1 [ false, %103 ], [ %115, %106 ]
  br i1 %117, label %118, label %167

118:                                              ; preds = %116
  %119 = load i32, i32* %14, align 4
  %120 = load i32, i32* %11, align 4
  %121 = shl i32 1, %120
  %122 = and i32 %119, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %118
  br label %164

125:                                              ; preds = %118
  %126 = load i32, i32* %11, align 4
  %127 = shl i32 1, %126
  %128 = xor i32 %127, -1
  %129 = load i32, i32* %14, align 4
  %130 = and i32 %129, %128
  store i32 %130, i32* %14, align 4
  %131 = load %struct.lola*, %struct.lola** %5, align 8
  %132 = load i32, i32* %11, align 4
  %133 = load i32, i32* @MAX_STREAM_IN_COUNT, align 4
  %134 = add nsw i32 %132, %133
  %135 = load i32, i32* @STS, align 4
  %136 = call i32 @lola_dsd_read(%struct.lola* %131, i32 %134, i32 %135)
  store i32 %136, i32* %15, align 4
  %137 = load i32, i32* %15, align 4
  %138 = load i32, i32* @LOLA_DSD_STS_DESE, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %125
  %142 = load i32, i32* %11, align 4
  %143 = shl i32 1, %142
  %144 = load i32, i32* %9, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %9, align 4
  br label %146

146:                                              ; preds = %141, %125
  %147 = load i32, i32* %15, align 4
  %148 = load i32, i32* @LOLA_DSD_STS_BCIS, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %146
  %152 = load i32, i32* %11, align 4
  %153 = shl i32 1, %152
  %154 = load i32, i32* %7, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %7, align 4
  br label %156

156:                                              ; preds = %151, %146
  %157 = load %struct.lola*, %struct.lola** %5, align 8
  %158 = load i32, i32* %11, align 4
  %159 = load i32, i32* @MAX_STREAM_IN_COUNT, align 4
  %160 = add nsw i32 %158, %159
  %161 = load i32, i32* @STS, align 4
  %162 = load i32, i32* %15, align 4
  %163 = call i32 @lola_dsd_write(%struct.lola* %157, i32 %160, i32 %161, i32 %162)
  br label %164

164:                                              ; preds = %156, %124
  %165 = load i32, i32* %11, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %11, align 4
  br label %103

167:                                              ; preds = %116
  %168 = load i32, i32* %12, align 4
  %169 = load i32, i32* @LOLA_DINT_CTRL, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %213

172:                                              ; preds = %167
  %173 = load %struct.lola*, %struct.lola** %5, align 8
  %174 = load i32, i32* @BAR0, align 4
  %175 = load i32, i32* @RIRBSTS, align 4
  %176 = call zeroext i8 @lola_readb(%struct.lola* %173, i32 %174, i32 %175)
  store i8 %176, i8* %16, align 1
  %177 = load i8, i8* @LOLA_RIRB_INT_MASK, align 1
  %178 = zext i8 %177 to i32
  %179 = load i8, i8* %16, align 1
  %180 = zext i8 %179 to i32
  %181 = and i32 %180, %178
  %182 = trunc i32 %181 to i8
  store i8 %182, i8* %16, align 1
  %183 = load i8, i8* %16, align 1
  %184 = icmp ne i8 %183, 0
  br i1 %184, label %185, label %191

185:                                              ; preds = %172
  %186 = load %struct.lola*, %struct.lola** %5, align 8
  %187 = load i32, i32* @BAR0, align 4
  %188 = load i32, i32* @RIRBSTS, align 4
  %189 = load i8, i8* %16, align 1
  %190 = call i32 @lola_writeb(%struct.lola* %186, i32 %187, i32 %188, i8 zeroext %189)
  br label %191

191:                                              ; preds = %185, %172
  %192 = load %struct.lola*, %struct.lola** %5, align 8
  %193 = load i32, i32* @BAR0, align 4
  %194 = load i32, i32* @CORBSTS, align 4
  %195 = call zeroext i8 @lola_readb(%struct.lola* %192, i32 %193, i32 %194)
  store i8 %195, i8* %16, align 1
  %196 = load i8, i8* @LOLA_CORB_INT_MASK, align 1
  %197 = zext i8 %196 to i32
  %198 = load i8, i8* %16, align 1
  %199 = zext i8 %198 to i32
  %200 = and i32 %199, %197
  %201 = trunc i32 %200 to i8
  store i8 %201, i8* %16, align 1
  %202 = load i8, i8* %16, align 1
  %203 = icmp ne i8 %202, 0
  br i1 %203, label %204, label %210

204:                                              ; preds = %191
  %205 = load %struct.lola*, %struct.lola** %5, align 8
  %206 = load i32, i32* @BAR0, align 4
  %207 = load i32, i32* @CORBSTS, align 4
  %208 = load i8, i8* %16, align 1
  %209 = call i32 @lola_writeb(%struct.lola* %205, i32 %206, i32 %207, i8 zeroext %208)
  br label %210

210:                                              ; preds = %204, %191
  %211 = load %struct.lola*, %struct.lola** %5, align 8
  %212 = call i32 @lola_update_rirb(%struct.lola* %211)
  br label %213

213:                                              ; preds = %210, %167
  %214 = load i32, i32* %12, align 4
  %215 = load i32, i32* @LOLA_DINT_FIFOERR, align 4
  %216 = load i32, i32* @LOLA_DINT_MUERR, align 4
  %217 = or i32 %215, %216
  %218 = and i32 %214, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %230

220:                                              ; preds = %213
  %221 = load %struct.lola*, %struct.lola** %5, align 8
  %222 = load i32, i32* @BAR1, align 4
  %223 = load i32, i32* @DINTSTS, align 4
  %224 = load i32, i32* %12, align 4
  %225 = load i32, i32* @LOLA_DINT_FIFOERR, align 4
  %226 = load i32, i32* @LOLA_DINT_MUERR, align 4
  %227 = or i32 %225, %226
  %228 = and i32 %224, %227
  %229 = call i32 @lola_writel(%struct.lola* %221, i32 %222, i32 %223, i32 %228)
  br label %230

230:                                              ; preds = %220, %213
  store i32 1, i32* %10, align 4
  br label %22

231:                                              ; preds = %32
  %232 = load %struct.lola*, %struct.lola** %5, align 8
  %233 = getelementptr inbounds %struct.lola, %struct.lola* %232, i32 0, i32 1
  %234 = call i32 @spin_unlock(i32* %233)
  %235 = load %struct.lola*, %struct.lola** %5, align 8
  %236 = load %struct.lola*, %struct.lola** %5, align 8
  %237 = getelementptr inbounds %struct.lola, %struct.lola* %236, i32 0, i32 0
  %238 = load %struct.TYPE_2__*, %struct.TYPE_2__** %237, align 8
  %239 = load i64, i64* @CAPT, align 8
  %240 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %238, i64 %239
  %241 = load i32, i32* %6, align 4
  %242 = call i32 @lola_pcm_update(%struct.lola* %235, %struct.TYPE_2__* %240, i32 %241)
  %243 = load %struct.lola*, %struct.lola** %5, align 8
  %244 = load %struct.lola*, %struct.lola** %5, align 8
  %245 = getelementptr inbounds %struct.lola, %struct.lola* %244, i32 0, i32 0
  %246 = load %struct.TYPE_2__*, %struct.TYPE_2__** %245, align 8
  %247 = load i64, i64* @PLAY, align 8
  %248 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %246, i64 %247
  %249 = load i32, i32* %7, align 4
  %250 = call i32 @lola_pcm_update(%struct.lola* %243, %struct.TYPE_2__* %248, i32 %249)
  %251 = load i32, i32* %10, align 4
  %252 = call i32 @IRQ_RETVAL(i32 %251)
  ret i32 %252
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @lola_readl(%struct.lola*, i32, i32) #1

declare dso_local i32 @lola_dsd_read(%struct.lola*, i32, i32) #1

declare dso_local i32 @lola_dsd_write(%struct.lola*, i32, i32, i32) #1

declare dso_local zeroext i8 @lola_readb(%struct.lola*, i32, i32) #1

declare dso_local i32 @lola_writeb(%struct.lola*, i32, i32, i8 zeroext) #1

declare dso_local i32 @lola_update_rirb(%struct.lola*) #1

declare dso_local i32 @lola_writel(%struct.lola*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @lola_pcm_update(%struct.lola*, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
