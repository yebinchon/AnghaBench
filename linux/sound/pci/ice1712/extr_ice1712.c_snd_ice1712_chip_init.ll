; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1712.c_snd_ice1712_chip_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1712.c_snd_ice1712_chip_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { %struct.TYPE_4__, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i64, i32*, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@ICE1712_RESET = common dso_local global i32 0, align 4
@ICE1712_NATIVE = common dso_local global i32 0, align 4
@CONTROL = common dso_local global i32 0, align 4
@ICE1712_SUBDEVICE_DMX6FIRE = common dso_local global i64 0, align 8
@ICE_EEP1_CODEC = common dso_local global i64 0, align 8
@ICE_EEP1_ACLINK = common dso_local global i64 0, align 8
@ICE_EEP1_I2SID = common dso_local global i64 0, align 8
@ICE_EEP1_SPDIF = common dso_local global i64 0, align 8
@ICE1712_SUBDEVICE_STDSP24 = common dso_local global i64 0, align 8
@ICE1712_IREG_GPIO_WRITE_MASK = common dso_local global i32 0, align 4
@ICE1712_IREG_GPIO_DIRECTION = common dso_local global i32 0, align 4
@ICE1712_IREG_GPIO_DATA = common dso_local global i32 0, align 4
@ICE1712_STDSP24_CLOCK_BIT = common dso_local global i32 0, align 4
@ICE1712_IREG_PRO_POWERDOWN = common dso_local global i32 0, align 4
@ICE1712_CFG_NO_CON_AC97 = common dso_local global i32 0, align 4
@ICE1712_AC97_WARM = common dso_local global i32 0, align 4
@AC97_CMD = common dso_local global i32 0, align 4
@ICE1712_IREG_CONSUMER_POWERDOWN = common dso_local global i32 0, align 4
@ICE1712_CFG_2xMPU401 = common dso_local global i32 0, align 4
@ICE1712_IRQ_MPU2 = common dso_local global i32 0, align 4
@ICE1712_IRQ_PBKDS = common dso_local global i32 0, align 4
@ICE1712_IRQ_CONCAP = common dso_local global i32 0, align 4
@ICE1712_IRQ_CONPBK = common dso_local global i32 0, align 4
@IRQMASK = common dso_local global i32 0, align 4
@IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ice1712*)* @snd_ice1712_chip_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ice1712_chip_init(%struct.snd_ice1712* %0) #0 {
  %2 = alloca %struct.snd_ice1712*, align 8
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %2, align 8
  %3 = load i32, i32* @ICE1712_RESET, align 4
  %4 = load i32, i32* @ICE1712_NATIVE, align 4
  %5 = or i32 %3, %4
  %6 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %7 = load i32, i32* @CONTROL, align 4
  %8 = call i32 @ICEREG(%struct.snd_ice1712* %6, i32 %7)
  %9 = call i32 @outb(i32 %5, i32 %8)
  %10 = call i32 @udelay(i32 200)
  %11 = load i32, i32* @ICE1712_NATIVE, align 4
  %12 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %13 = load i32, i32* @CONTROL, align 4
  %14 = call i32 @ICEREG(%struct.snd_ice1712* %12, i32 %13)
  %15 = call i32 @outb(i32 %11, i32 %14)
  %16 = call i32 @udelay(i32 200)
  %17 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %18 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @ICE1712_SUBDEVICE_DMX6FIRE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %1
  %24 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %25 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %23
  %29 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %30 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* @ICE_EEP1_CODEC, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  store i32 58, i32* %34, align 4
  br label %35

35:                                               ; preds = %28, %23, %1
  %36 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %37 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %40 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* @ICE_EEP1_CODEC, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @pci_write_config_byte(i32 %38, i32 96, i32 %45)
  %47 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %48 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %51 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* @ICE_EEP1_ACLINK, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @pci_write_config_byte(i32 %49, i32 97, i32 %56)
  %58 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %59 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %62 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i64, i64* @ICE_EEP1_I2SID, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @pci_write_config_byte(i32 %60, i32 98, i32 %67)
  %69 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %70 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %73 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load i64, i64* @ICE_EEP1_SPDIF, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @pci_write_config_byte(i32 %71, i32 99, i32 %78)
  %80 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %81 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @ICE1712_SUBDEVICE_STDSP24, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %122

86:                                               ; preds = %35
  %87 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %88 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %92 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  store i32 %90, i32* %93, align 8
  %94 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %95 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %99 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  store i32 %97, i32* %100, align 4
  %101 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %102 = load i32, i32* @ICE1712_IREG_GPIO_WRITE_MASK, align 4
  %103 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %104 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @snd_ice1712_write(%struct.snd_ice1712* %101, i32 %102, i32 %106)
  %108 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %109 = load i32, i32* @ICE1712_IREG_GPIO_DIRECTION, align 4
  %110 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %111 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @snd_ice1712_write(%struct.snd_ice1712* %108, i32 %109, i32 %113)
  %115 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %116 = load i32, i32* @ICE1712_IREG_GPIO_DATA, align 4
  %117 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %118 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @snd_ice1712_write(%struct.snd_ice1712* %115, i32 %116, i32 %120)
  br label %139

122:                                              ; preds = %35
  %123 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %124 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 0
  store i32 192, i32* %125, align 8
  %126 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %127 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 1
  store i32 255, i32* %128, align 4
  %129 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %130 = load i32, i32* @ICE1712_IREG_GPIO_WRITE_MASK, align 4
  %131 = call i32 @snd_ice1712_write(%struct.snd_ice1712* %129, i32 %130, i32 192)
  %132 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %133 = load i32, i32* @ICE1712_IREG_GPIO_DIRECTION, align 4
  %134 = call i32 @snd_ice1712_write(%struct.snd_ice1712* %132, i32 %133, i32 255)
  %135 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %136 = load i32, i32* @ICE1712_IREG_GPIO_DATA, align 4
  %137 = load i32, i32* @ICE1712_STDSP24_CLOCK_BIT, align 4
  %138 = call i32 @snd_ice1712_write(%struct.snd_ice1712* %135, i32 %136, i32 %137)
  br label %139

139:                                              ; preds = %122, %86
  %140 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %141 = load i32, i32* @ICE1712_IREG_PRO_POWERDOWN, align 4
  %142 = call i32 @snd_ice1712_write(%struct.snd_ice1712* %140, i32 %141, i32 0)
  %143 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %144 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 1
  %146 = load i32*, i32** %145, align 8
  %147 = load i64, i64* @ICE_EEP1_CODEC, align 8
  %148 = getelementptr inbounds i32, i32* %146, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @ICE1712_CFG_NO_CON_AC97, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %168, label %153

153:                                              ; preds = %139
  %154 = load i32, i32* @ICE1712_AC97_WARM, align 4
  %155 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %156 = load i32, i32* @AC97_CMD, align 4
  %157 = call i32 @ICEREG(%struct.snd_ice1712* %155, i32 %156)
  %158 = call i32 @outb(i32 %154, i32 %157)
  %159 = call i32 @udelay(i32 100)
  %160 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %161 = load i32, i32* @AC97_CMD, align 4
  %162 = call i32 @ICEREG(%struct.snd_ice1712* %160, i32 %161)
  %163 = call i32 @outb(i32 0, i32 %162)
  %164 = call i32 @udelay(i32 200)
  %165 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %166 = load i32, i32* @ICE1712_IREG_CONSUMER_POWERDOWN, align 4
  %167 = call i32 @snd_ice1712_write(%struct.snd_ice1712* %165, i32 %166, i32 0)
  br label %168

168:                                              ; preds = %153, %139
  %169 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %170 = call i32 @snd_ice1712_set_pro_rate(%struct.snd_ice1712* %169, i32 48000, i32 1)
  %171 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %172 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 1
  %174 = load i32*, i32** %173, align 8
  %175 = load i64, i64* @ICE_EEP1_CODEC, align 8
  %176 = getelementptr inbounds i32, i32* %174, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @ICE1712_CFG_2xMPU401, align 4
  %179 = and i32 %177, %178
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %168
  %182 = load i32, i32* @ICE1712_IRQ_MPU2, align 4
  br label %184

183:                                              ; preds = %168
  br label %184

184:                                              ; preds = %183, %181
  %185 = phi i32 [ %182, %181 ], [ 0, %183 ]
  %186 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %187 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 1
  %189 = load i32*, i32** %188, align 8
  %190 = load i64, i64* @ICE_EEP1_CODEC, align 8
  %191 = getelementptr inbounds i32, i32* %189, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @ICE1712_CFG_NO_CON_AC97, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %202

196:                                              ; preds = %184
  %197 = load i32, i32* @ICE1712_IRQ_PBKDS, align 4
  %198 = load i32, i32* @ICE1712_IRQ_CONCAP, align 4
  %199 = or i32 %197, %198
  %200 = load i32, i32* @ICE1712_IRQ_CONPBK, align 4
  %201 = or i32 %199, %200
  br label %203

202:                                              ; preds = %184
  br label %203

203:                                              ; preds = %202, %196
  %204 = phi i32 [ %201, %196 ], [ 0, %202 ]
  %205 = or i32 %185, %204
  %206 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %207 = load i32, i32* @IRQMASK, align 4
  %208 = call i32 @ICEREG(%struct.snd_ice1712* %206, i32 %207)
  %209 = call i32 @outb(i32 %205, i32 %208)
  %210 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %211 = load i32, i32* @IRQ, align 4
  %212 = call i32 @ICEMT(%struct.snd_ice1712* %210, i32 %211)
  %213 = call i32 @outb(i32 0, i32 %212)
  ret i32 0
}

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @ICEREG(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @pci_write_config_byte(i32, i32, i32) #1

declare dso_local i32 @snd_ice1712_write(%struct.snd_ice1712*, i32, i32) #1

declare dso_local i32 @snd_ice1712_set_pro_rate(%struct.snd_ice1712*, i32, i32) #1

declare dso_local i32 @ICEMT(%struct.snd_ice1712*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
