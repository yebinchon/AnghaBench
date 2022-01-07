; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_sonicvibes.c_snd_sonicvibes_put_mux.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_sonicvibes.c_snd_sonicvibes_put_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.sonicvibes = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SV_IREG_LEFT_ADC = common dso_local global i32 0, align 4
@SV_IREG_RIGHT_ADC = common dso_local global i32 0, align 4
@SV_RECSRC_OUT = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_sonicvibes_put_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_sonicvibes_put_mux(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.sonicvibes*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %12 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %13 = call %struct.sonicvibes* @snd_kcontrol_chip(%struct.snd_kcontrol* %12)
  store %struct.sonicvibes* %13, %struct.sonicvibes** %6, align 8
  %14 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %15 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp sge i32 %20, 7
  br i1 %21, label %31, label %22

22:                                               ; preds = %2
  %23 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %24 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp sge i32 %29, 7
  br i1 %30, label %31, label %34

31:                                               ; preds = %22, %2
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %110

34:                                               ; preds = %22
  %35 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %36 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  %43 = shl i32 %42, 5
  %44 = trunc i32 %43 to i16
  store i16 %44, i16* %7, align 2
  %45 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %46 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  %53 = shl i32 %52, 5
  %54 = trunc i32 %53 to i16
  store i16 %54, i16* %8, align 2
  %55 = load %struct.sonicvibes*, %struct.sonicvibes** %6, align 8
  %56 = getelementptr inbounds %struct.sonicvibes, %struct.sonicvibes* %55, i32 0, i32 0
  %57 = call i32 @spin_lock_irq(i32* %56)
  %58 = load %struct.sonicvibes*, %struct.sonicvibes** %6, align 8
  %59 = load i32, i32* @SV_IREG_LEFT_ADC, align 4
  %60 = call zeroext i16 @snd_sonicvibes_in1(%struct.sonicvibes* %58, i32 %59)
  store i16 %60, i16* %9, align 2
  %61 = load %struct.sonicvibes*, %struct.sonicvibes** %6, align 8
  %62 = load i32, i32* @SV_IREG_RIGHT_ADC, align 4
  %63 = call zeroext i16 @snd_sonicvibes_in1(%struct.sonicvibes* %61, i32 %62)
  store i16 %63, i16* %10, align 2
  %64 = load i16, i16* %9, align 2
  %65 = zext i16 %64 to i32
  %66 = load i16, i16* @SV_RECSRC_OUT, align 2
  %67 = zext i16 %66 to i32
  %68 = xor i32 %67, -1
  %69 = and i32 %65, %68
  %70 = load i16, i16* %7, align 2
  %71 = zext i16 %70 to i32
  %72 = or i32 %69, %71
  %73 = trunc i32 %72 to i16
  store i16 %73, i16* %7, align 2
  %74 = load i16, i16* %10, align 2
  %75 = zext i16 %74 to i32
  %76 = load i16, i16* @SV_RECSRC_OUT, align 2
  %77 = zext i16 %76 to i32
  %78 = xor i32 %77, -1
  %79 = and i32 %75, %78
  %80 = load i16, i16* %8, align 2
  %81 = zext i16 %80 to i32
  %82 = or i32 %79, %81
  %83 = trunc i32 %82 to i16
  store i16 %83, i16* %8, align 2
  %84 = load i16, i16* %7, align 2
  %85 = zext i16 %84 to i32
  %86 = load i16, i16* %9, align 2
  %87 = zext i16 %86 to i32
  %88 = icmp ne i32 %85, %87
  br i1 %88, label %95, label %89

89:                                               ; preds = %34
  %90 = load i16, i16* %8, align 2
  %91 = zext i16 %90 to i32
  %92 = load i16, i16* %10, align 2
  %93 = zext i16 %92 to i32
  %94 = icmp ne i32 %91, %93
  br label %95

95:                                               ; preds = %89, %34
  %96 = phi i1 [ true, %34 ], [ %94, %89 ]
  %97 = zext i1 %96 to i32
  store i32 %97, i32* %11, align 4
  %98 = load %struct.sonicvibes*, %struct.sonicvibes** %6, align 8
  %99 = load i32, i32* @SV_IREG_LEFT_ADC, align 4
  %100 = load i16, i16* %7, align 2
  %101 = call i32 @snd_sonicvibes_out1(%struct.sonicvibes* %98, i32 %99, i16 zeroext %100)
  %102 = load %struct.sonicvibes*, %struct.sonicvibes** %6, align 8
  %103 = load i32, i32* @SV_IREG_RIGHT_ADC, align 4
  %104 = load i16, i16* %8, align 2
  %105 = call i32 @snd_sonicvibes_out1(%struct.sonicvibes* %102, i32 %103, i16 zeroext %104)
  %106 = load %struct.sonicvibes*, %struct.sonicvibes** %6, align 8
  %107 = getelementptr inbounds %struct.sonicvibes, %struct.sonicvibes* %106, i32 0, i32 0
  %108 = call i32 @spin_unlock_irq(i32* %107)
  %109 = load i32, i32* %11, align 4
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %95, %31
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local %struct.sonicvibes* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local zeroext i16 @snd_sonicvibes_in1(%struct.sonicvibes*, i32) #1

declare dso_local i32 @snd_sonicvibes_out1(%struct.sonicvibes*, i32, i16 zeroext) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
