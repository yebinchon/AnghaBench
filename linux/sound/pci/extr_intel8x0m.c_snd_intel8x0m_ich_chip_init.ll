; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_intel8x0m.c_snd_intel8x0m_ich_chip_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_intel8x0m.c_snd_intel8x0m_ich_chip_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel8x0m = type { i64, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@ICH_RCS = common dso_local global i32 0, align 4
@ICH_MIINT = common dso_local global i32 0, align 4
@ICH_MOINT = common dso_local global i32 0, align 4
@GLOB_STA = common dso_local global i32 0, align 4
@GLOB_CNT = common dso_local global i32 0, align 4
@ICH_ACLINK = common dso_local global i32 0, align 4
@ICH_AC97COLD = common dso_local global i32 0, align 4
@ICH_AC97WARM = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"AC'97 warm reset still in progress? [0x%x]\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ICH_PCR = common dso_local global i32 0, align 4
@ICH_SCR = common dso_local global i32 0, align 4
@ICH_TCR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"codec_ready: codec is not ready [0x%x]\0A\00", align 1
@DEVICE_SIS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel8x0m*, i32)* @snd_intel8x0m_ich_chip_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_intel8x0m_ich_chip_init(%struct.intel8x0m* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel8x0m*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.intel8x0m* %0, %struct.intel8x0m** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* @ICH_RCS, align 4
  %11 = load i32, i32* @ICH_MIINT, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @ICH_MOINT, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %8, align 4
  %15 = load %struct.intel8x0m*, %struct.intel8x0m** %4, align 8
  %16 = load i32, i32* @GLOB_STA, align 4
  %17 = call i32 @ICHREG(i32 %16)
  %18 = call i32 @igetdword(%struct.intel8x0m* %15, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.intel8x0m*, %struct.intel8x0m** %4, align 8
  %20 = load i32, i32* @GLOB_STA, align 4
  %21 = call i32 @ICHREG(i32 %20)
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = and i32 %22, %23
  %25 = call i32 @iputdword(%struct.intel8x0m* %19, i32 %21, i32 %24)
  %26 = load %struct.intel8x0m*, %struct.intel8x0m** %4, align 8
  %27 = load i32, i32* @GLOB_CNT, align 4
  %28 = call i32 @ICHREG(i32 %27)
  %29 = call i32 @igetdword(%struct.intel8x0m* %26, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* @ICH_ACLINK, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %7, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @ICH_AC97COLD, align 4
  %36 = and i32 %34, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %2
  %39 = load i32, i32* @ICH_AC97COLD, align 4
  br label %42

40:                                               ; preds = %2
  %41 = load i32, i32* @ICH_AC97WARM, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  %44 = load i32, i32* %7, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %7, align 4
  %46 = load %struct.intel8x0m*, %struct.intel8x0m** %4, align 8
  %47 = load i32, i32* @GLOB_CNT, align 4
  %48 = call i32 @ICHREG(i32 %47)
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @iputdword(%struct.intel8x0m* %46, i32 %48, i32 %49)
  %51 = call i32 @usleep_range(i32 500, i32 1000)
  %52 = load i32, i32* @jiffies, align 4
  %53 = load i32, i32* @HZ, align 4
  %54 = sdiv i32 %53, 4
  %55 = add nsw i32 %52, %54
  %56 = sext i32 %55 to i64
  store i64 %56, i64* %6, align 8
  br label %57

57:                                               ; preds = %68, %42
  %58 = load %struct.intel8x0m*, %struct.intel8x0m** %4, align 8
  %59 = load i32, i32* @GLOB_CNT, align 4
  %60 = call i32 @ICHREG(i32 %59)
  %61 = call i32 @igetdword(%struct.intel8x0m* %58, i32 %60)
  %62 = load i32, i32* @ICH_AC97WARM, align 4
  %63 = and i32 %61, %62
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  br label %86

66:                                               ; preds = %57
  %67 = call i32 @schedule_timeout_uninterruptible(i32 1)
  br label %68

68:                                               ; preds = %66
  %69 = load i64, i64* %6, align 8
  %70 = load i32, i32* @jiffies, align 4
  %71 = call i64 @time_after_eq(i64 %69, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %57, label %73

73:                                               ; preds = %68
  %74 = load %struct.intel8x0m*, %struct.intel8x0m** %4, align 8
  %75 = getelementptr inbounds %struct.intel8x0m, %struct.intel8x0m* %74, i32 0, i32 2
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.intel8x0m*, %struct.intel8x0m** %4, align 8
  %80 = load i32, i32* @GLOB_CNT, align 4
  %81 = call i32 @ICHREG(i32 %80)
  %82 = call i32 @igetdword(%struct.intel8x0m* %79, i32 %81)
  %83 = call i32 @dev_err(i32 %78, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* @EIO, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %3, align 4
  br label %218

86:                                               ; preds = %65
  %87 = load i32, i32* %5, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %162

89:                                               ; preds = %86
  %90 = load i32, i32* @jiffies, align 4
  %91 = load i32, i32* @HZ, align 4
  %92 = add nsw i32 %90, %91
  %93 = sext i32 %92 to i64
  store i64 %93, i64* %6, align 8
  br label %94

94:                                               ; preds = %110, %89
  %95 = load %struct.intel8x0m*, %struct.intel8x0m** %4, align 8
  %96 = load i32, i32* @GLOB_STA, align 4
  %97 = call i32 @ICHREG(i32 %96)
  %98 = call i32 @igetdword(%struct.intel8x0m* %95, i32 %97)
  %99 = load i32, i32* @ICH_PCR, align 4
  %100 = load i32, i32* @ICH_SCR, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @ICH_TCR, align 4
  %103 = or i32 %101, %102
  %104 = and i32 %98, %103
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* %8, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %94
  br label %115

108:                                              ; preds = %94
  %109 = call i32 @schedule_timeout_uninterruptible(i32 1)
  br label %110

110:                                              ; preds = %108
  %111 = load i64, i64* %6, align 8
  %112 = load i32, i32* @jiffies, align 4
  %113 = call i64 @time_after_eq(i64 %111, i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %94, label %115

115:                                              ; preds = %110, %107
  %116 = load i32, i32* %8, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %131, label %118

118:                                              ; preds = %115
  %119 = load %struct.intel8x0m*, %struct.intel8x0m** %4, align 8
  %120 = getelementptr inbounds %struct.intel8x0m, %struct.intel8x0m* %119, i32 0, i32 2
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.intel8x0m*, %struct.intel8x0m** %4, align 8
  %125 = load i32, i32* @GLOB_STA, align 4
  %126 = call i32 @ICHREG(i32 %125)
  %127 = call i32 @igetdword(%struct.intel8x0m* %124, i32 %126)
  %128 = call i32 @dev_err(i32 %123, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %127)
  %129 = load i32, i32* @EIO, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %3, align 4
  br label %218

131:                                              ; preds = %115
  %132 = load i32, i32* @ICH_PCR, align 4
  %133 = load i32, i32* @ICH_SCR, align 4
  %134 = or i32 %132, %133
  store i32 %134, i32* %9, align 4
  %135 = load i32, i32* @jiffies, align 4
  %136 = load i32, i32* @HZ, align 4
  %137 = sdiv i32 %136, 4
  %138 = add nsw i32 %135, %137
  %139 = sext i32 %138 to i64
  store i64 %139, i64* %6, align 8
  br label %140

140:                                              ; preds = %151, %131
  %141 = load i32, i32* %8, align 4
  %142 = load i32, i32* %9, align 4
  %143 = icmp ne i32 %141, %142
  br i1 %143, label %144, label %149

144:                                              ; preds = %140
  %145 = load i64, i64* %6, align 8
  %146 = load i32, i32* @jiffies, align 4
  %147 = call i64 @time_after_eq(i64 %145, i32 %146)
  %148 = icmp ne i64 %147, 0
  br label %149

149:                                              ; preds = %144, %140
  %150 = phi i1 [ false, %140 ], [ %148, %144 ]
  br i1 %150, label %151, label %161

151:                                              ; preds = %149
  %152 = call i32 @schedule_timeout_uninterruptible(i32 1)
  %153 = load %struct.intel8x0m*, %struct.intel8x0m** %4, align 8
  %154 = load i32, i32* @GLOB_STA, align 4
  %155 = call i32 @ICHREG(i32 %154)
  %156 = call i32 @igetdword(%struct.intel8x0m* %153, i32 %155)
  %157 = load i32, i32* %9, align 4
  %158 = and i32 %156, %157
  %159 = load i32, i32* %8, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %8, align 4
  br label %140

161:                                              ; preds = %149
  br label %205

162:                                              ; preds = %86
  store i32 0, i32* %8, align 4
  %163 = load %struct.intel8x0m*, %struct.intel8x0m** %4, align 8
  %164 = getelementptr inbounds %struct.intel8x0m, %struct.intel8x0m* %163, i32 0, i32 1
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %164, align 8
  %166 = icmp ne %struct.TYPE_4__* %165, null
  br i1 %166, label %167, label %177

167:                                              ; preds = %162
  %168 = load %struct.intel8x0m*, %struct.intel8x0m** %4, align 8
  %169 = load %struct.intel8x0m*, %struct.intel8x0m** %4, align 8
  %170 = getelementptr inbounds %struct.intel8x0m, %struct.intel8x0m* %169, i32 0, i32 1
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @get_ich_codec_bit(%struct.intel8x0m* %168, i32 %173)
  %175 = load i32, i32* %8, align 4
  %176 = or i32 %175, %174
  store i32 %176, i32* %8, align 4
  br label %177

177:                                              ; preds = %167, %162
  %178 = load i32, i32* @jiffies, align 4
  %179 = load i32, i32* @HZ, align 4
  %180 = add nsw i32 %178, %179
  %181 = sext i32 %180 to i64
  store i64 %181, i64* %6, align 8
  br label %182

182:                                              ; preds = %199, %177
  %183 = load %struct.intel8x0m*, %struct.intel8x0m** %4, align 8
  %184 = load i32, i32* @GLOB_STA, align 4
  %185 = call i32 @ICHREG(i32 %184)
  %186 = call i32 @igetdword(%struct.intel8x0m* %183, i32 %185)
  %187 = load i32, i32* @ICH_PCR, align 4
  %188 = load i32, i32* @ICH_SCR, align 4
  %189 = or i32 %187, %188
  %190 = load i32, i32* @ICH_TCR, align 4
  %191 = or i32 %189, %190
  %192 = and i32 %186, %191
  store i32 %192, i32* %9, align 4
  %193 = load i32, i32* %8, align 4
  %194 = load i32, i32* %9, align 4
  %195 = icmp eq i32 %193, %194
  br i1 %195, label %196, label %197

196:                                              ; preds = %182
  br label %204

197:                                              ; preds = %182
  %198 = call i32 @schedule_timeout_uninterruptible(i32 1)
  br label %199

199:                                              ; preds = %197
  %200 = load i64, i64* %6, align 8
  %201 = load i32, i32* @jiffies, align 4
  %202 = call i64 @time_after_eq(i64 %200, i32 %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %182, label %204

204:                                              ; preds = %199, %196
  br label %205

205:                                              ; preds = %204, %161
  %206 = load %struct.intel8x0m*, %struct.intel8x0m** %4, align 8
  %207 = getelementptr inbounds %struct.intel8x0m, %struct.intel8x0m* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* @DEVICE_SIS, align 8
  %210 = icmp eq i64 %208, %209
  br i1 %210, label %211, label %217

211:                                              ; preds = %205
  %212 = load %struct.intel8x0m*, %struct.intel8x0m** %4, align 8
  %213 = load %struct.intel8x0m*, %struct.intel8x0m** %4, align 8
  %214 = call i32 @igetword(%struct.intel8x0m* %213, i32 76)
  %215 = or i32 %214, 1
  %216 = call i32 @iputword(%struct.intel8x0m* %212, i32 76, i32 %215)
  br label %217

217:                                              ; preds = %211, %205
  store i32 0, i32* %3, align 4
  br label %218

218:                                              ; preds = %217, %118, %73
  %219 = load i32, i32* %3, align 4
  ret i32 %219
}

declare dso_local i32 @igetdword(%struct.intel8x0m*, i32) #1

declare dso_local i32 @ICHREG(i32) #1

declare dso_local i32 @iputdword(%struct.intel8x0m*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

declare dso_local i64 @time_after_eq(i64, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @get_ich_codec_bit(%struct.intel8x0m*, i32) #1

declare dso_local i32 @iputword(%struct.intel8x0m*, i32, i32) #1

declare dso_local i32 @igetword(%struct.intel8x0m*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
