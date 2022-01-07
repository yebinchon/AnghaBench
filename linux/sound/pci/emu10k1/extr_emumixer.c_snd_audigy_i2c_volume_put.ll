; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emumixer.c_snd_audigy_i2c_volume_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emumixer.c_snd_audigy_i2c_volume_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_emu10k1 = type { i32**, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ADC_ATTEN_ADCL = common dso_local global i32 0, align 4
@ADC_ATTEN_ADCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_audigy_i2c_volume_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_audigy_i2c_volume_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_emu10k1*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %11 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %12 = call %struct.snd_emu10k1* @snd_kcontrol_chip(%struct.snd_kcontrol* %11)
  store %struct.snd_emu10k1* %12, %struct.snd_emu10k1** %6, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %14 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp uge i32 %16, 2
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %115

21:                                               ; preds = %2
  %22 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %23 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %22, i32 0, i32 0
  %24 = load i32**, i32*** %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i32*, i32** %24, i64 %26
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %7, align 4
  %31 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %32 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ugt i32 %38, 255
  br i1 %39, label %40, label %41

40:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %115

41:                                               ; preds = %21
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %67

45:                                               ; preds = %41
  %46 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %47 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %53 = load i32, i32* @ADC_ATTEN_ADCL, align 4
  %54 = load i32, i32* %8, align 4
  %55 = and i32 %54, 255
  %56 = call i32 @snd_emu10k1_i2c_write(%struct.snd_emu10k1* %52, i32 %53, i32 %55)
  br label %57

57:                                               ; preds = %51, %45
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %60 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %59, i32 0, i32 0
  %61 = load i32**, i32*** %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i32*, i32** %61, i64 %63
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  store i32 %58, i32* %66, align 4
  store i32 1, i32* %10, align 4
  br label %67

67:                                               ; preds = %57, %41
  %68 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %69 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %68, i32 0, i32 0
  %70 = load i32**, i32*** %69, align 8
  %71 = load i32, i32* %9, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i32*, i32** %70, i64 %72
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %7, align 4
  %77 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %78 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp ugt i32 %84, 255
  br i1 %85, label %86, label %87

86:                                               ; preds = %67
  store i32 0, i32* %3, align 4
  br label %115

87:                                               ; preds = %67
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %113

91:                                               ; preds = %87
  %92 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %93 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %9, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %103

97:                                               ; preds = %91
  %98 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %99 = load i32, i32* @ADC_ATTEN_ADCR, align 4
  %100 = load i32, i32* %8, align 4
  %101 = and i32 %100, 255
  %102 = call i32 @snd_emu10k1_i2c_write(%struct.snd_emu10k1* %98, i32 %99, i32 %101)
  br label %103

103:                                              ; preds = %97, %91
  %104 = load i32, i32* %8, align 4
  %105 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %106 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %105, i32 0, i32 0
  %107 = load i32**, i32*** %106, align 8
  %108 = load i32, i32* %9, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds i32*, i32** %107, i64 %109
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 1
  store i32 %104, i32* %112, align 4
  store i32 1, i32* %10, align 4
  br label %113

113:                                              ; preds = %103, %87
  %114 = load i32, i32* %10, align 4
  store i32 %114, i32* %3, align 4
  br label %115

115:                                              ; preds = %113, %86, %40, %18
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local %struct.snd_emu10k1* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_emu10k1_i2c_write(%struct.snd_emu10k1*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
