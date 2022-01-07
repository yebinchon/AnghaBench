; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_intel8x0.c_snd_intel8x0_ich_chip_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_intel8x0.c_snd_intel8x0_ich_chip_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel8x0 = type { i64, i32, i32, i32*, i64*, i32, i64*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ICH_RCS = common dso_local global i32 0, align 4
@ICH_MCINT = common dso_local global i32 0, align 4
@ICH_POINT = common dso_local global i32 0, align 4
@ICH_PIINT = common dso_local global i32 0, align 4
@DEVICE_NFORCE = common dso_local global i64 0, align 8
@ICH_NVSPINT = common dso_local global i32 0, align 4
@GLOB_STA = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"codec_ready: codec is not ready [0x%x]\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@DEVICE_SIS = common dso_local global i64 0, align 8
@spdif_aclink = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel8x0*, i32)* @snd_intel8x0_ich_chip_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_intel8x0_ich_chip_init(%struct.intel8x0* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel8x0*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.intel8x0* %0, %struct.intel8x0** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load i32, i32* @ICH_RCS, align 4
  %14 = load i32, i32* @ICH_MCINT, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @ICH_POINT, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @ICH_PIINT, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %7, align 4
  %20 = load %struct.intel8x0*, %struct.intel8x0** %4, align 8
  %21 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @DEVICE_NFORCE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load i32, i32* @ICH_NVSPINT, align 4
  %27 = load i32, i32* %7, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %25, %2
  %30 = load %struct.intel8x0*, %struct.intel8x0** %4, align 8
  %31 = load i32, i32* @GLOB_STA, align 4
  %32 = call i32 @ICHREG(i32 %31)
  %33 = call i32 @igetdword(%struct.intel8x0* %30, i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load %struct.intel8x0*, %struct.intel8x0** %4, align 8
  %35 = load i32, i32* @GLOB_STA, align 4
  %36 = call i32 @ICHREG(i32 %35)
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %7, align 4
  %39 = and i32 %37, %38
  %40 = call i32 @iputdword(%struct.intel8x0* %34, i32 %36, i32 %39)
  %41 = load %struct.intel8x0*, %struct.intel8x0** %4, align 8
  %42 = call i64 @snd_intel8x0_ich_chip_can_cold_reset(%struct.intel8x0* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %29
  %45 = load %struct.intel8x0*, %struct.intel8x0** %4, align 8
  %46 = call i32 @snd_intel8x0_ich_chip_cold_reset(%struct.intel8x0* %45)
  store i32 %46, i32* %10, align 4
  br label %50

47:                                               ; preds = %29
  %48 = load %struct.intel8x0*, %struct.intel8x0** %4, align 8
  %49 = call i32 @snd_intel8x0_ich_chip_reset(%struct.intel8x0* %48)
  store i32 %49, i32* %10, align 4
  br label %50

50:                                               ; preds = %47, %44
  %51 = load i32, i32* %10, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = load i32, i32* %10, align 4
  store i32 %54, i32* %3, align 4
  br label %225

55:                                               ; preds = %50
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %130

58:                                               ; preds = %55
  %59 = load i32, i32* @jiffies, align 4
  %60 = load i32, i32* @HZ, align 4
  %61 = add nsw i32 %59, %60
  %62 = sext i32 %61 to i64
  store i64 %62, i64* %6, align 8
  br label %63

63:                                               ; preds = %77, %58
  %64 = load %struct.intel8x0*, %struct.intel8x0** %4, align 8
  %65 = load i32, i32* @GLOB_STA, align 4
  %66 = call i32 @ICHREG(i32 %65)
  %67 = call i32 @igetdword(%struct.intel8x0* %64, i32 %66)
  %68 = load %struct.intel8x0*, %struct.intel8x0** %4, align 8
  %69 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = and i32 %67, %70
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %63
  br label %82

75:                                               ; preds = %63
  %76 = call i32 @schedule_timeout_uninterruptible(i32 1)
  br label %77

77:                                               ; preds = %75
  %78 = load i64, i64* %6, align 8
  %79 = load i32, i32* @jiffies, align 4
  %80 = call i64 @time_after_eq(i64 %78, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %63, label %82

82:                                               ; preds = %77, %74
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %98, label %85

85:                                               ; preds = %82
  %86 = load %struct.intel8x0*, %struct.intel8x0** %4, align 8
  %87 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %86, i32 0, i32 7
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.intel8x0*, %struct.intel8x0** %4, align 8
  %92 = load i32, i32* @GLOB_STA, align 4
  %93 = call i32 @ICHREG(i32 %92)
  %94 = call i32 @igetdword(%struct.intel8x0* %91, i32 %93)
  %95 = call i32 @dev_err(i32 %90, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* @EIO, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %3, align 4
  br label %225

98:                                               ; preds = %82
  %99 = load i32, i32* @jiffies, align 4
  %100 = load i32, i32* @HZ, align 4
  %101 = sdiv i32 %100, 4
  %102 = add nsw i32 %99, %101
  %103 = sext i32 %102 to i64
  store i64 %103, i64* %6, align 8
  br label %104

104:                                              ; preds = %117, %98
  %105 = load i32, i32* %7, align 4
  %106 = load %struct.intel8x0*, %struct.intel8x0** %4, align 8
  %107 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %105, %108
  br i1 %109, label %110, label %115

110:                                              ; preds = %104
  %111 = load i64, i64* %6, align 8
  %112 = load i32, i32* @jiffies, align 4
  %113 = call i64 @time_after_eq(i64 %111, i32 %112)
  %114 = icmp ne i64 %113, 0
  br label %115

115:                                              ; preds = %110, %104
  %116 = phi i1 [ false, %104 ], [ %114, %110 ]
  br i1 %116, label %117, label %129

117:                                              ; preds = %115
  %118 = call i32 @schedule_timeout_uninterruptible(i32 1)
  %119 = load %struct.intel8x0*, %struct.intel8x0** %4, align 8
  %120 = load i32, i32* @GLOB_STA, align 4
  %121 = call i32 @ICHREG(i32 %120)
  %122 = call i32 @igetdword(%struct.intel8x0* %119, i32 %121)
  %123 = load %struct.intel8x0*, %struct.intel8x0** %4, align 8
  %124 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = and i32 %122, %125
  %127 = load i32, i32* %7, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %7, align 4
  br label %104

129:                                              ; preds = %115
  br label %191

130:                                              ; preds = %55
  store i32 0, i32* %7, align 4
  store i32 0, i32* %11, align 4
  br label %131

131:                                              ; preds = %162, %130
  %132 = load i32, i32* %11, align 4
  %133 = load %struct.intel8x0*, %struct.intel8x0** %4, align 8
  %134 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = icmp slt i32 %132, %135
  br i1 %136, label %137, label %165

137:                                              ; preds = %131
  %138 = load %struct.intel8x0*, %struct.intel8x0** %4, align 8
  %139 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %138, i32 0, i32 6
  %140 = load i64*, i64** %139, align 8
  %141 = load i32, i32* %11, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i64, i64* %140, i64 %142
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %161

146:                                              ; preds = %137
  %147 = load %struct.intel8x0*, %struct.intel8x0** %4, align 8
  %148 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %147, i32 0, i32 3
  %149 = load i32*, i32** %148, align 8
  %150 = load %struct.intel8x0*, %struct.intel8x0** %4, align 8
  %151 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %150, i32 0, i32 4
  %152 = load i64*, i64** %151, align 8
  %153 = load i32, i32* %11, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i64, i64* %152, i64 %154
  %156 = load i64, i64* %155, align 8
  %157 = getelementptr inbounds i32, i32* %149, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %7, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %7, align 4
  br label %161

161:                                              ; preds = %146, %137
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %11, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %11, align 4
  br label %131

165:                                              ; preds = %131
  %166 = load i32, i32* @jiffies, align 4
  %167 = load i32, i32* @HZ, align 4
  %168 = add nsw i32 %166, %167
  %169 = sext i32 %168 to i64
  store i64 %169, i64* %6, align 8
  br label %170

170:                                              ; preds = %185, %165
  %171 = load %struct.intel8x0*, %struct.intel8x0** %4, align 8
  %172 = load i32, i32* @GLOB_STA, align 4
  %173 = call i32 @ICHREG(i32 %172)
  %174 = call i32 @igetdword(%struct.intel8x0* %171, i32 %173)
  %175 = load %struct.intel8x0*, %struct.intel8x0** %4, align 8
  %176 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = and i32 %174, %177
  store i32 %178, i32* %8, align 4
  %179 = load i32, i32* %7, align 4
  %180 = load i32, i32* %8, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %183

182:                                              ; preds = %170
  br label %190

183:                                              ; preds = %170
  %184 = call i32 @schedule_timeout_uninterruptible(i32 1)
  br label %185

185:                                              ; preds = %183
  %186 = load i64, i64* %6, align 8
  %187 = load i32, i32* @jiffies, align 4
  %188 = call i64 @time_after_eq(i64 %186, i32 %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %170, label %190

190:                                              ; preds = %185, %182
  br label %191

191:                                              ; preds = %190, %129
  %192 = load %struct.intel8x0*, %struct.intel8x0** %4, align 8
  %193 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @DEVICE_SIS, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %203

197:                                              ; preds = %191
  %198 = load %struct.intel8x0*, %struct.intel8x0** %4, align 8
  %199 = load %struct.intel8x0*, %struct.intel8x0** %4, align 8
  %200 = call i32 @igetword(%struct.intel8x0* %199, i32 76)
  %201 = or i32 %200, 1
  %202 = call i32 @iputword(%struct.intel8x0* %198, i32 76, i32 %201)
  br label %203

203:                                              ; preds = %197, %191
  %204 = load %struct.intel8x0*, %struct.intel8x0** %4, align 8
  %205 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @DEVICE_NFORCE, align 8
  %208 = icmp eq i64 %206, %207
  br i1 %208, label %209, label %224

209:                                              ; preds = %203
  %210 = load i32, i32* @spdif_aclink, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %224, label %212

212:                                              ; preds = %209
  %213 = load %struct.intel8x0*, %struct.intel8x0** %4, align 8
  %214 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %213, i32 0, i32 5
  %215 = load i32, i32* %214, align 8
  %216 = call i32 @pci_read_config_dword(i32 %215, i32 76, i32* %12)
  %217 = load i32, i32* %12, align 4
  %218 = or i32 %217, 16777216
  store i32 %218, i32* %12, align 4
  %219 = load %struct.intel8x0*, %struct.intel8x0** %4, align 8
  %220 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %219, i32 0, i32 5
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* %12, align 4
  %223 = call i32 @pci_write_config_dword(i32 %221, i32 76, i32 %222)
  br label %224

224:                                              ; preds = %212, %209, %203
  store i32 0, i32* %3, align 4
  br label %225

225:                                              ; preds = %224, %85, %53
  %226 = load i32, i32* %3, align 4
  ret i32 %226
}

declare dso_local i32 @igetdword(%struct.intel8x0*, i32) #1

declare dso_local i32 @ICHREG(i32) #1

declare dso_local i32 @iputdword(%struct.intel8x0*, i32, i32) #1

declare dso_local i64 @snd_intel8x0_ich_chip_can_cold_reset(%struct.intel8x0*) #1

declare dso_local i32 @snd_intel8x0_ich_chip_cold_reset(%struct.intel8x0*) #1

declare dso_local i32 @snd_intel8x0_ich_chip_reset(%struct.intel8x0*) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

declare dso_local i64 @time_after_eq(i64, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @iputword(%struct.intel8x0*, i32, i32) #1

declare dso_local i32 @igetword(%struct.intel8x0*, i32) #1

declare dso_local i32 @pci_read_config_dword(i32, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
