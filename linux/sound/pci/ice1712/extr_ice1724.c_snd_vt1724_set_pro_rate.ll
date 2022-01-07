; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1724.c_snd_vt1724_set_pro_rate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1724.c_snd_vt1724_set_pro_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { i32, i32 (%struct.snd_ice1712*)*, i8 (%struct.snd_ice1712*, i32)*, i32, %struct.TYPE_11__, %struct.TYPE_12__*, %struct.TYPE_8__, i32, i32 (%struct.snd_ice1712*, i32)*, i32 (%struct.snd_ice1712*)*, %struct.TYPE_7__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 (%struct.snd_ice1712.0*, i32)* }
%struct.snd_ice1712.0 = type opaque
%struct.TYPE_12__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_12__*, i32)* }
%struct.TYPE_8__ = type { i32 (%struct.snd_ice1712.1*, i32)*, i32 (%struct.snd_ice1712.2*)* }
%struct.snd_ice1712.1 = type opaque
%struct.snd_ice1712.2 = type opaque
%struct.TYPE_7__ = type { i32*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@DMA_CONTROL = common dso_local global i32 0, align 4
@DMA_STARTS = common dso_local global i32 0, align 4
@DMA_PAUSE = common dso_local global i32 0, align 4
@DMA_PAUSES = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ice1712*, i32, i32)* @snd_vt1724_set_pro_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_vt1724_set_pro_rate(%struct.snd_ice1712* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_ice1712*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %14 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %13, i32 0, i32 10
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %19 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %18, i32 0, i32 10
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %17, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = icmp ugt i32 %12, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %239

31:                                               ; preds = %3
  %32 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %33 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %32, i32 0, i32 7
  %34 = load i64, i64* %8, align 8
  %35 = call i32 @spin_lock_irqsave(i32* %33, i64 %34)
  %36 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %37 = load i32, i32* @DMA_CONTROL, align 4
  %38 = call i32 @ICEMT1724(%struct.snd_ice1712* %36, i32 %37)
  %39 = call i32 @inb(i32 %38)
  %40 = load i32, i32* @DMA_STARTS, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %31
  %44 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %45 = load i32, i32* @DMA_PAUSE, align 4
  %46 = call i32 @ICEMT1724(%struct.snd_ice1712* %44, i32 %45)
  %47 = call i32 @inb(i32 %46)
  %48 = load i32, i32* @DMA_PAUSES, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %70

51:                                               ; preds = %43, %31
  %52 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %53 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %52, i32 0, i32 7
  %54 = load i64, i64* %8, align 8
  %55 = call i32 @spin_unlock_irqrestore(i32* %53, i64 %54)
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %58 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp eq i32 %56, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %51
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %61
  br label %68

65:                                               ; preds = %61, %51
  %66 = load i32, i32* @EBUSY, align 4
  %67 = sub nsw i32 0, %66
  br label %68

68:                                               ; preds = %65, %64
  %69 = phi i32 [ 0, %64 ], [ %67, %65 ]
  store i32 %69, i32* %4, align 4
  br label %239

70:                                               ; preds = %43
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %93, label %73

73:                                               ; preds = %70
  %74 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %75 = call i64 @is_pro_rate_locked(%struct.snd_ice1712* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %93

77:                                               ; preds = %73
  %78 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %79 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %78, i32 0, i32 7
  %80 = load i64, i64* %8, align 8
  %81 = call i32 @spin_unlock_irqrestore(i32* %79, i64 %80)
  %82 = load i32, i32* %6, align 4
  %83 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %84 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp eq i32 %82, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %77
  br label %91

88:                                               ; preds = %77
  %89 = load i32, i32* @EBUSY, align 4
  %90 = sub nsw i32 0, %89
  br label %91

91:                                               ; preds = %88, %87
  %92 = phi i32 [ 0, %87 ], [ %90, %88 ]
  store i32 %92, i32* %4, align 4
  br label %239

93:                                               ; preds = %73, %70
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %103, label %96

96:                                               ; preds = %93
  %97 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %98 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %97, i32 0, i32 9
  %99 = load i32 (%struct.snd_ice1712*)*, i32 (%struct.snd_ice1712*)** %98, align 8
  %100 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %101 = call i32 %99(%struct.snd_ice1712* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %135, label %103

103:                                              ; preds = %96, %93
  %104 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %105 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %104, i32 0, i32 1
  %106 = load i32 (%struct.snd_ice1712*)*, i32 (%struct.snd_ice1712*)** %105, align 8
  %107 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %108 = call i32 %106(%struct.snd_ice1712* %107)
  store i32 %108, i32* %11, align 4
  %109 = load i32, i32* %7, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %103
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* %6, align 4
  %114 = icmp ne i32 %112, %113
  br i1 %114, label %115, label %122

115:                                              ; preds = %111, %103
  %116 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %117 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %116, i32 0, i32 8
  %118 = load i32 (%struct.snd_ice1712*, i32)*, i32 (%struct.snd_ice1712*, i32)** %117, align 8
  %119 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %120 = load i32, i32* %6, align 4
  %121 = call i32 %118(%struct.snd_ice1712* %119, i32 %120)
  br label %134

122:                                              ; preds = %111
  %123 = load i32, i32* %6, align 4
  %124 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %125 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp eq i32 %123, %126
  br i1 %127, label %128, label %133

128:                                              ; preds = %122
  %129 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %130 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %129, i32 0, i32 7
  %131 = load i64, i64* %8, align 8
  %132 = call i32 @spin_unlock_irqrestore(i32* %130, i64 %131)
  store i32 0, i32* %4, align 4
  br label %239

133:                                              ; preds = %122
  br label %134

134:                                              ; preds = %133, %115
  br label %135

135:                                              ; preds = %134, %96
  %136 = load i32, i32* %6, align 4
  %137 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %138 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 8
  %139 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %140 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %139, i32 0, i32 2
  %141 = load i8 (%struct.snd_ice1712*, i32)*, i8 (%struct.snd_ice1712*, i32)** %140, align 8
  %142 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %143 = load i32, i32* %6, align 4
  %144 = call zeroext i8 %141(%struct.snd_ice1712* %142, i32 %143)
  store i8 %144, i8* %9, align 1
  %145 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %146 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %145, i32 0, i32 7
  %147 = load i64, i64* %8, align 8
  %148 = call i32 @spin_unlock_irqrestore(i32* %146, i64 %147)
  %149 = load i8, i8* %9, align 1
  %150 = zext i8 %149 to i32
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %166

152:                                              ; preds = %135
  %153 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %154 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %153, i32 0, i32 6
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 1
  %156 = load i32 (%struct.snd_ice1712.2*)*, i32 (%struct.snd_ice1712.2*)** %155, align 8
  %157 = icmp ne i32 (%struct.snd_ice1712.2*)* %156, null
  br i1 %157, label %158, label %166

158:                                              ; preds = %152
  %159 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %160 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %159, i32 0, i32 6
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 1
  %162 = load i32 (%struct.snd_ice1712.2*)*, i32 (%struct.snd_ice1712.2*)** %161, align 8
  %163 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %164 = bitcast %struct.snd_ice1712* %163 to %struct.snd_ice1712.2*
  %165 = call i32 %162(%struct.snd_ice1712.2* %164)
  br label %166

166:                                              ; preds = %158, %152, %135
  %167 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %168 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %167, i32 0, i32 6
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 0
  %170 = load i32 (%struct.snd_ice1712.1*, i32)*, i32 (%struct.snd_ice1712.1*, i32)** %169, align 8
  %171 = icmp ne i32 (%struct.snd_ice1712.1*, i32)* %170, null
  br i1 %171, label %172, label %181

172:                                              ; preds = %166
  %173 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %174 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %173, i32 0, i32 6
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 0
  %176 = load i32 (%struct.snd_ice1712.1*, i32)*, i32 (%struct.snd_ice1712.1*, i32)** %175, align 8
  %177 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %178 = bitcast %struct.snd_ice1712* %177 to %struct.snd_ice1712.1*
  %179 = load i32, i32* %6, align 4
  %180 = call i32 %176(%struct.snd_ice1712.1* %178, i32 %179)
  br label %181

181:                                              ; preds = %172, %166
  store i32 0, i32* %10, align 4
  br label %182

182:                                              ; preds = %218, %181
  %183 = load i32, i32* %10, align 4
  %184 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %185 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 8
  %187 = icmp ult i32 %183, %186
  br i1 %187, label %188, label %221

188:                                              ; preds = %182
  %189 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %190 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %189, i32 0, i32 5
  %191 = load %struct.TYPE_12__*, %struct.TYPE_12__** %190, align 8
  %192 = load i32, i32* %10, align 4
  %193 = zext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 0
  %197 = load i32 (%struct.TYPE_12__*, i32)*, i32 (%struct.TYPE_12__*, i32)** %196, align 8
  %198 = icmp ne i32 (%struct.TYPE_12__*, i32)* %197, null
  br i1 %198, label %199, label %217

199:                                              ; preds = %188
  %200 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %201 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %200, i32 0, i32 5
  %202 = load %struct.TYPE_12__*, %struct.TYPE_12__** %201, align 8
  %203 = load i32, i32* %10, align 4
  %204 = zext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %202, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 0
  %208 = load i32 (%struct.TYPE_12__*, i32)*, i32 (%struct.TYPE_12__*, i32)** %207, align 8
  %209 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %210 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %209, i32 0, i32 5
  %211 = load %struct.TYPE_12__*, %struct.TYPE_12__** %210, align 8
  %212 = load i32, i32* %10, align 4
  %213 = zext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %211, i64 %213
  %215 = load i32, i32* %6, align 4
  %216 = call i32 %208(%struct.TYPE_12__* %214, i32 %215)
  br label %217

217:                                              ; preds = %199, %188
  br label %218

218:                                              ; preds = %217
  %219 = load i32, i32* %10, align 4
  %220 = add i32 %219, 1
  store i32 %220, i32* %10, align 4
  br label %182

221:                                              ; preds = %182
  %222 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %223 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %222, i32 0, i32 4
  %224 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %224, i32 0, i32 0
  %226 = load i32 (%struct.snd_ice1712.0*, i32)*, i32 (%struct.snd_ice1712.0*, i32)** %225, align 8
  %227 = icmp ne i32 (%struct.snd_ice1712.0*, i32)* %226, null
  br i1 %227, label %228, label %238

228:                                              ; preds = %221
  %229 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %230 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %229, i32 0, i32 4
  %231 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %231, i32 0, i32 0
  %233 = load i32 (%struct.snd_ice1712.0*, i32)*, i32 (%struct.snd_ice1712.0*, i32)** %232, align 8
  %234 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %235 = bitcast %struct.snd_ice1712* %234 to %struct.snd_ice1712.0*
  %236 = load i32, i32* %6, align 4
  %237 = call i32 %233(%struct.snd_ice1712.0* %235, i32 %236)
  br label %238

238:                                              ; preds = %228, %221
  store i32 0, i32* %4, align 4
  br label %239

239:                                              ; preds = %238, %128, %91, %68, %28
  %240 = load i32, i32* %4, align 4
  ret i32 %240
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @ICEMT1724(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @is_pro_rate_locked(%struct.snd_ice1712*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
