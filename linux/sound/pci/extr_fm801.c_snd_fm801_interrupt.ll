; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_fm801.c_snd_fm801_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_fm801.c_snd_fm801_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm801 = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__*, i64, i32, i64, i64, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@IRQ_STATUS = common dso_local global i32 0, align 4
@FM801_IRQ_PLAYBACK = common dso_local global i16 0, align 2
@FM801_IRQ_CAPTURE = common dso_local global i16 0, align 2
@FM801_IRQ_MPU = common dso_local global i16 0, align 2
@FM801_IRQ_VOLUME = common dso_local global i16 0, align 2
@IRQ_NONE = common dso_local global i32 0, align 4
@PLY_BUF1 = common dso_local global i32 0, align 4
@PLY_BUF2 = common dso_local global i32 0, align 4
@CAP_BUF1 = common dso_local global i32 0, align 4
@CAP_BUF2 = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @snd_fm801_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_fm801_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.fm801*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.fm801*
  store %struct.fm801* %10, %struct.fm801** %6, align 8
  %11 = load %struct.fm801*, %struct.fm801** %6, align 8
  %12 = load i32, i32* @IRQ_STATUS, align 4
  %13 = call zeroext i16 @fm801_readw(%struct.fm801* %11, i32 %12)
  store i16 %13, i16* %7, align 2
  %14 = load i16, i16* @FM801_IRQ_PLAYBACK, align 2
  %15 = zext i16 %14 to i32
  %16 = load i16, i16* @FM801_IRQ_CAPTURE, align 2
  %17 = zext i16 %16 to i32
  %18 = or i32 %15, %17
  %19 = load i16, i16* @FM801_IRQ_MPU, align 2
  %20 = zext i16 %19 to i32
  %21 = or i32 %18, %20
  %22 = load i16, i16* @FM801_IRQ_VOLUME, align 2
  %23 = zext i16 %22 to i32
  %24 = or i32 %21, %23
  %25 = load i16, i16* %7, align 2
  %26 = zext i16 %25 to i32
  %27 = and i32 %26, %24
  %28 = trunc i32 %27 to i16
  store i16 %28, i16* %7, align 2
  %29 = load i16, i16* %7, align 2
  %30 = icmp ne i16 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %2
  %32 = load i32, i32* @IRQ_NONE, align 4
  store i32 %32, i32* %3, align 4
  br label %235

33:                                               ; preds = %2
  %34 = load %struct.fm801*, %struct.fm801** %6, align 8
  %35 = load i32, i32* @IRQ_STATUS, align 4
  %36 = load i16, i16* %7, align 2
  %37 = call i32 @fm801_writew(%struct.fm801* %34, i32 %35, i16 zeroext %36)
  %38 = load %struct.fm801*, %struct.fm801** %6, align 8
  %39 = getelementptr inbounds %struct.fm801, %struct.fm801* %38, i32 0, i32 12
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %121

42:                                               ; preds = %33
  %43 = load i16, i16* %7, align 2
  %44 = zext i16 %43 to i32
  %45 = load i16, i16* @FM801_IRQ_PLAYBACK, align 2
  %46 = zext i16 %45 to i32
  %47 = and i32 %44, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %121

49:                                               ; preds = %42
  %50 = load %struct.fm801*, %struct.fm801** %6, align 8
  %51 = getelementptr inbounds %struct.fm801, %struct.fm801* %50, i32 0, i32 13
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %121

54:                                               ; preds = %49
  %55 = load %struct.fm801*, %struct.fm801** %6, align 8
  %56 = getelementptr inbounds %struct.fm801, %struct.fm801* %55, i32 0, i32 10
  %57 = call i32 @spin_lock(i32* %56)
  %58 = load %struct.fm801*, %struct.fm801** %6, align 8
  %59 = getelementptr inbounds %struct.fm801, %struct.fm801* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 8
  %62 = load %struct.fm801*, %struct.fm801** %6, align 8
  %63 = getelementptr inbounds %struct.fm801, %struct.fm801* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.fm801*, %struct.fm801** %6, align 8
  %66 = getelementptr inbounds %struct.fm801, %struct.fm801* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = add i32 %67, %64
  store i32 %68, i32* %66, align 4
  %69 = load %struct.fm801*, %struct.fm801** %6, align 8
  %70 = getelementptr inbounds %struct.fm801, %struct.fm801* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.fm801*, %struct.fm801** %6, align 8
  %73 = getelementptr inbounds %struct.fm801, %struct.fm801* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = urem i32 %74, %71
  store i32 %75, i32* %73, align 4
  %76 = load %struct.fm801*, %struct.fm801** %6, align 8
  %77 = getelementptr inbounds %struct.fm801, %struct.fm801* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.fm801*, %struct.fm801** %6, align 8
  %80 = getelementptr inbounds %struct.fm801, %struct.fm801* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = add i32 %78, %81
  store i32 %82, i32* %8, align 4
  %83 = load %struct.fm801*, %struct.fm801** %6, align 8
  %84 = getelementptr inbounds %struct.fm801, %struct.fm801* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %8, align 4
  %87 = urem i32 %86, %85
  store i32 %87, i32* %8, align 4
  %88 = load %struct.fm801*, %struct.fm801** %6, align 8
  %89 = getelementptr inbounds %struct.fm801, %struct.fm801* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = and i32 %90, 1
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %54
  %94 = load %struct.fm801*, %struct.fm801** %6, align 8
  %95 = load i32, i32* @PLY_BUF1, align 4
  %96 = load %struct.fm801*, %struct.fm801** %6, align 8
  %97 = getelementptr inbounds %struct.fm801, %struct.fm801* %96, i32 0, i32 14
  %98 = load i64, i64* %97, align 8
  %99 = load i32, i32* %8, align 4
  %100 = zext i32 %99 to i64
  %101 = add nsw i64 %98, %100
  %102 = call i32 @fm801_writel(%struct.fm801* %94, i32 %95, i64 %101)
  br label %113

103:                                              ; preds = %54
  %104 = load %struct.fm801*, %struct.fm801** %6, align 8
  %105 = load i32, i32* @PLY_BUF2, align 4
  %106 = load %struct.fm801*, %struct.fm801** %6, align 8
  %107 = getelementptr inbounds %struct.fm801, %struct.fm801* %106, i32 0, i32 14
  %108 = load i64, i64* %107, align 8
  %109 = load i32, i32* %8, align 4
  %110 = zext i32 %109 to i64
  %111 = add nsw i64 %108, %110
  %112 = call i32 @fm801_writel(%struct.fm801* %104, i32 %105, i64 %111)
  br label %113

113:                                              ; preds = %103, %93
  %114 = load %struct.fm801*, %struct.fm801** %6, align 8
  %115 = getelementptr inbounds %struct.fm801, %struct.fm801* %114, i32 0, i32 10
  %116 = call i32 @spin_unlock(i32* %115)
  %117 = load %struct.fm801*, %struct.fm801** %6, align 8
  %118 = getelementptr inbounds %struct.fm801, %struct.fm801* %117, i32 0, i32 13
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @snd_pcm_period_elapsed(i64 %119)
  br label %121

121:                                              ; preds = %113, %49, %42, %33
  %122 = load %struct.fm801*, %struct.fm801** %6, align 8
  %123 = getelementptr inbounds %struct.fm801, %struct.fm801* %122, i32 0, i32 12
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %205

126:                                              ; preds = %121
  %127 = load i16, i16* %7, align 2
  %128 = zext i16 %127 to i32
  %129 = load i16, i16* @FM801_IRQ_CAPTURE, align 2
  %130 = zext i16 %129 to i32
  %131 = and i32 %128, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %205

133:                                              ; preds = %126
  %134 = load %struct.fm801*, %struct.fm801** %6, align 8
  %135 = getelementptr inbounds %struct.fm801, %struct.fm801* %134, i32 0, i32 9
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %205

138:                                              ; preds = %133
  %139 = load %struct.fm801*, %struct.fm801** %6, align 8
  %140 = getelementptr inbounds %struct.fm801, %struct.fm801* %139, i32 0, i32 10
  %141 = call i32 @spin_lock(i32* %140)
  %142 = load %struct.fm801*, %struct.fm801** %6, align 8
  %143 = getelementptr inbounds %struct.fm801, %struct.fm801* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 8
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %143, align 8
  %146 = load %struct.fm801*, %struct.fm801** %6, align 8
  %147 = getelementptr inbounds %struct.fm801, %struct.fm801* %146, i32 0, i32 6
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.fm801*, %struct.fm801** %6, align 8
  %150 = getelementptr inbounds %struct.fm801, %struct.fm801* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 4
  %152 = add i32 %151, %148
  store i32 %152, i32* %150, align 4
  %153 = load %struct.fm801*, %struct.fm801** %6, align 8
  %154 = getelementptr inbounds %struct.fm801, %struct.fm801* %153, i32 0, i32 7
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.fm801*, %struct.fm801** %6, align 8
  %157 = getelementptr inbounds %struct.fm801, %struct.fm801* %156, i32 0, i32 5
  %158 = load i32, i32* %157, align 4
  %159 = urem i32 %158, %155
  store i32 %159, i32* %157, align 4
  %160 = load %struct.fm801*, %struct.fm801** %6, align 8
  %161 = getelementptr inbounds %struct.fm801, %struct.fm801* %160, i32 0, i32 5
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.fm801*, %struct.fm801** %6, align 8
  %164 = getelementptr inbounds %struct.fm801, %struct.fm801* %163, i32 0, i32 6
  %165 = load i32, i32* %164, align 8
  %166 = add i32 %162, %165
  store i32 %166, i32* %8, align 4
  %167 = load %struct.fm801*, %struct.fm801** %6, align 8
  %168 = getelementptr inbounds %struct.fm801, %struct.fm801* %167, i32 0, i32 7
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* %8, align 4
  %171 = urem i32 %170, %169
  store i32 %171, i32* %8, align 4
  %172 = load %struct.fm801*, %struct.fm801** %6, align 8
  %173 = getelementptr inbounds %struct.fm801, %struct.fm801* %172, i32 0, i32 4
  %174 = load i32, i32* %173, align 8
  %175 = and i32 %174, 1
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %187

177:                                              ; preds = %138
  %178 = load %struct.fm801*, %struct.fm801** %6, align 8
  %179 = load i32, i32* @CAP_BUF1, align 4
  %180 = load %struct.fm801*, %struct.fm801** %6, align 8
  %181 = getelementptr inbounds %struct.fm801, %struct.fm801* %180, i32 0, i32 11
  %182 = load i64, i64* %181, align 8
  %183 = load i32, i32* %8, align 4
  %184 = zext i32 %183 to i64
  %185 = add nsw i64 %182, %184
  %186 = call i32 @fm801_writel(%struct.fm801* %178, i32 %179, i64 %185)
  br label %197

187:                                              ; preds = %138
  %188 = load %struct.fm801*, %struct.fm801** %6, align 8
  %189 = load i32, i32* @CAP_BUF2, align 4
  %190 = load %struct.fm801*, %struct.fm801** %6, align 8
  %191 = getelementptr inbounds %struct.fm801, %struct.fm801* %190, i32 0, i32 11
  %192 = load i64, i64* %191, align 8
  %193 = load i32, i32* %8, align 4
  %194 = zext i32 %193 to i64
  %195 = add nsw i64 %192, %194
  %196 = call i32 @fm801_writel(%struct.fm801* %188, i32 %189, i64 %195)
  br label %197

197:                                              ; preds = %187, %177
  %198 = load %struct.fm801*, %struct.fm801** %6, align 8
  %199 = getelementptr inbounds %struct.fm801, %struct.fm801* %198, i32 0, i32 10
  %200 = call i32 @spin_unlock(i32* %199)
  %201 = load %struct.fm801*, %struct.fm801** %6, align 8
  %202 = getelementptr inbounds %struct.fm801, %struct.fm801* %201, i32 0, i32 9
  %203 = load i64, i64* %202, align 8
  %204 = call i32 @snd_pcm_period_elapsed(i64 %203)
  br label %205

205:                                              ; preds = %197, %133, %126, %121
  %206 = load %struct.fm801*, %struct.fm801** %6, align 8
  %207 = getelementptr inbounds %struct.fm801, %struct.fm801* %206, i32 0, i32 8
  %208 = load %struct.TYPE_2__*, %struct.TYPE_2__** %207, align 8
  %209 = icmp ne %struct.TYPE_2__* %208, null
  br i1 %209, label %210, label %225

210:                                              ; preds = %205
  %211 = load i16, i16* %7, align 2
  %212 = zext i16 %211 to i32
  %213 = load i16, i16* @FM801_IRQ_MPU, align 2
  %214 = zext i16 %213 to i32
  %215 = and i32 %212, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %225

217:                                              ; preds = %210
  %218 = load i32, i32* %4, align 4
  %219 = load %struct.fm801*, %struct.fm801** %6, align 8
  %220 = getelementptr inbounds %struct.fm801, %struct.fm801* %219, i32 0, i32 8
  %221 = load %struct.TYPE_2__*, %struct.TYPE_2__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @snd_mpu401_uart_interrupt(i32 %218, i32 %223)
  br label %225

225:                                              ; preds = %217, %210, %205
  %226 = load i16, i16* %7, align 2
  %227 = zext i16 %226 to i32
  %228 = load i16, i16* @FM801_IRQ_VOLUME, align 2
  %229 = zext i16 %228 to i32
  %230 = and i32 %227, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %225
  br label %233

233:                                              ; preds = %232, %225
  %234 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %234, i32* %3, align 4
  br label %235

235:                                              ; preds = %233, %31
  %236 = load i32, i32* %3, align 4
  ret i32 %236
}

declare dso_local zeroext i16 @fm801_readw(%struct.fm801*, i32) #1

declare dso_local i32 @fm801_writew(%struct.fm801*, i32, i16 zeroext) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @fm801_writel(%struct.fm801*, i32, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @snd_pcm_period_elapsed(i64) #1

declare dso_local i32 @snd_mpu401_uart_interrupt(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
