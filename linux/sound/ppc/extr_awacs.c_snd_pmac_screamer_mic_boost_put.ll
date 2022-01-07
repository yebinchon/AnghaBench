; ModuleID = '/home/carl/AnghaBench/linux/sound/ppc/extr_awacs.c_snd_pmac_screamer_mic_boost_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/ppc/extr_awacs.c_snd_pmac_screamer_mic_boost_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_pmac = type { i32*, i32 }

@MASK_GAINLINE = common dso_local global i32 0, align 4
@MASK_MIC_BOOST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_pmac_screamer_mic_boost_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_pmac_screamer_mic_boost_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_pmac*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %11 = call %struct.snd_pmac* @snd_kcontrol_chip(%struct.snd_kcontrol* %10)
  store %struct.snd_pmac* %11, %struct.snd_pmac** %5, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.snd_pmac*, %struct.snd_pmac** %5, align 8
  %13 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %12, i32 0, i32 1
  %14 = load i64, i64* %9, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.snd_pmac*, %struct.snd_pmac** %5, align 8
  %17 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @MASK_GAINLINE, align 4
  %22 = xor i32 %21, -1
  %23 = and i32 %20, %22
  store i32 %23, i32* %7, align 4
  %24 = load %struct.snd_pmac*, %struct.snd_pmac** %5, align 8
  %25 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 6
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @MASK_MIC_BOOST, align 4
  %30 = xor i32 %29, -1
  %31 = and i32 %28, %30
  store i32 %31, i32* %8, align 4
  %32 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %33 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, 1
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %2
  %42 = load i32, i32* @MASK_GAINLINE, align 4
  %43 = load i32, i32* %7, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %41, %2
  %46 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %47 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, 2
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %45
  %56 = load i32, i32* @MASK_MIC_BOOST, align 4
  %57 = load i32, i32* %8, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %55, %45
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.snd_pmac*, %struct.snd_pmac** %5, align 8
  %62 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %60, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %59
  %68 = load %struct.snd_pmac*, %struct.snd_pmac** %5, align 8
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @snd_pmac_awacs_write_reg(%struct.snd_pmac* %68, i32 0, i32 %69)
  store i32 1, i32* %6, align 4
  br label %71

71:                                               ; preds = %67, %59
  %72 = load i32, i32* %8, align 4
  %73 = load %struct.snd_pmac*, %struct.snd_pmac** %5, align 8
  %74 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 6
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %72, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %71
  %80 = load %struct.snd_pmac*, %struct.snd_pmac** %5, align 8
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @snd_pmac_awacs_write_reg(%struct.snd_pmac* %80, i32 6, i32 %81)
  store i32 1, i32* %6, align 4
  br label %83

83:                                               ; preds = %79, %71
  %84 = load %struct.snd_pmac*, %struct.snd_pmac** %5, align 8
  %85 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %84, i32 0, i32 1
  %86 = load i64, i64* %9, align 8
  %87 = call i32 @spin_unlock_irqrestore(i32* %85, i64 %86)
  %88 = load i32, i32* %6, align 4
  ret i32 %88
}

declare dso_local %struct.snd_pmac* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_pmac_awacs_write_reg(%struct.snd_pmac*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
