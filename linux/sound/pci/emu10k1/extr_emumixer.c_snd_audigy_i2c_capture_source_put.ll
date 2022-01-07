; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emumixer.c_snd_audigy_i2c_capture_source_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emumixer.c_snd_audigy_i2c_capture_source_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_emu10k1 = type { i32, i32**, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@ADC_MUX = common dso_local global i32 0, align 4
@A_IOCFG = common dso_local global i64 0, align 8
@ADC_ATTEN_ADCL = common dso_local global i32 0, align 4
@ADC_ATTEN_ADCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_audigy_i2c_capture_source_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_audigy_i2c_capture_source_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_emu10k1*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %14 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %15 = call %struct.snd_emu10k1* @snd_kcontrol_chip(%struct.snd_kcontrol* %14)
  store %struct.snd_emu10k1* %15, %struct.snd_emu10k1** %6, align 8
  store i32 0, i32* %11, align 4
  %16 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %17 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp uge i32 %23, 2
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %148

28:                                               ; preds = %2
  %29 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %30 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %31, %32
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %146

37:                                               ; preds = %28
  %38 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %39 = load i32, i32* @ADC_MUX, align 4
  %40 = call i32 @snd_emu10k1_i2c_write(%struct.snd_emu10k1* %38, i32 %39, i32 0)
  %41 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %42 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %41, i32 0, i32 2
  %43 = load i64, i64* %12, align 8
  %44 = call i32 @spin_lock_irqsave(i32* %42, i64 %43)
  %45 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %46 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @A_IOCFG, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @inl(i64 %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %37
  %54 = load i32, i32* %10, align 4
  %55 = or i32 %54, 4
  %56 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %57 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @A_IOCFG, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @outl(i32 %55, i64 %60)
  br label %71

62:                                               ; preds = %37
  %63 = load i32, i32* %10, align 4
  %64 = and i32 %63, -5
  %65 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %66 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @A_IOCFG, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @outl(i32 %64, i64 %69)
  br label %71

71:                                               ; preds = %62, %53
  %72 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %73 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %72, i32 0, i32 2
  %74 = load i64, i64* %12, align 8
  %75 = call i32 @spin_unlock_irqrestore(i32* %73, i64 %74)
  %76 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %77 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %76, i32 0, i32 1
  %78 = load i32**, i32*** %77, align 8
  %79 = load i32, i32* %7, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i32*, i32** %78, i64 %80
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %8, align 4
  %85 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %86 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %85, i32 0, i32 1
  %87 = load i32**, i32*** %86, align 8
  %88 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %89 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i32*, i32** %87, i64 %91
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %9, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %105

99:                                               ; preds = %71
  %100 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %101 = load i32, i32* @ADC_ATTEN_ADCL, align 4
  %102 = load i32, i32* %8, align 4
  %103 = and i32 %102, 255
  %104 = call i32 @snd_emu10k1_i2c_write(%struct.snd_emu10k1* %100, i32 %101, i32 %103)
  br label %105

105:                                              ; preds = %99, %71
  %106 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %107 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %106, i32 0, i32 1
  %108 = load i32**, i32*** %107, align 8
  %109 = load i32, i32* %7, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds i32*, i32** %108, i64 %110
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 1
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* %8, align 4
  %115 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %116 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %115, i32 0, i32 1
  %117 = load i32**, i32*** %116, align 8
  %118 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %119 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds i32*, i32** %117, i64 %121
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 1
  %125 = load i32, i32* %124, align 4
  store i32 %125, i32* %9, align 4
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* %9, align 4
  %128 = icmp ne i32 %126, %127
  br i1 %128, label %129, label %135

129:                                              ; preds = %105
  %130 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %131 = load i32, i32* @ADC_ATTEN_ADCR, align 4
  %132 = load i32, i32* %8, align 4
  %133 = and i32 %132, 255
  %134 = call i32 @snd_emu10k1_i2c_write(%struct.snd_emu10k1* %130, i32 %131, i32 %133)
  br label %135

135:                                              ; preds = %129, %105
  %136 = load i32, i32* %7, align 4
  %137 = add i32 %136, 2
  %138 = shl i32 1, %137
  store i32 %138, i32* %13, align 4
  %139 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %140 = load i32, i32* @ADC_MUX, align 4
  %141 = load i32, i32* %13, align 4
  %142 = call i32 @snd_emu10k1_i2c_write(%struct.snd_emu10k1* %139, i32 %140, i32 %141)
  %143 = load i32, i32* %7, align 4
  %144 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %145 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 8
  br label %146

146:                                              ; preds = %135, %28
  %147 = load i32, i32* %11, align 4
  store i32 %147, i32* %3, align 4
  br label %148

148:                                              ; preds = %146, %25
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local %struct.snd_emu10k1* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_emu10k1_i2c_write(%struct.snd_emu10k1*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
