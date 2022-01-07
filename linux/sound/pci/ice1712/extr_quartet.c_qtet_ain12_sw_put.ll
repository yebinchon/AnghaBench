; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_quartet.c_qtet_ain12_sw_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_quartet.c_qtet_ain12_sw_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_ice1712 = type { i32 }

@SCR_AIN12_SEL1 = common dso_local global i32 0, align 4
@SCR_AIN12_SEL0 = common dso_local global i32 0, align 4
@SCR_RELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @qtet_ain12_sw_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qtet_ain12_sw_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_ice1712*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %11 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %12 = call %struct.snd_ice1712* @snd_kcontrol_chip(%struct.snd_kcontrol* %11)
  store %struct.snd_ice1712* %12, %struct.snd_ice1712** %6, align 8
  %13 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %14 = call i32 @get_scr(%struct.snd_ice1712* %13)
  store i32 %14, i32* %8, align 4
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @SCR_AIN12_SEL1, align 4
  %17 = load i32, i32* @SCR_AIN12_SEL0, align 4
  %18 = or i32 %16, %17
  %19 = and i32 %15, %18
  store i32 %19, i32* %10, align 4
  %20 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %21 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  store i32 3, i32* %9, align 4
  br label %30

30:                                               ; preds = %29, %2
  %31 = load i32, i32* %9, align 4
  %32 = shl i32 %31, 4
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %89

36:                                               ; preds = %30
  %37 = load i32, i32* %9, align 4
  switch i32 %37, label %86 [
    i32 130, label %38
    i32 128, label %55
    i32 129, label %71
  ]

38:                                               ; preds = %36
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @SCR_AIN12_SEL1, align 4
  %41 = load i32, i32* @SCR_AIN12_SEL0, align 4
  %42 = or i32 %40, %41
  %43 = xor i32 %42, -1
  %44 = and i32 %39, %43
  store i32 %44, i32* %8, align 4
  %45 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @set_scr(%struct.snd_ice1712* %45, i32 %46)
  %48 = load i32, i32* @SCR_RELAY, align 4
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %8, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %8, align 4
  %52 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @set_scr(%struct.snd_ice1712* %52, i32 %53)
  br label %88

55:                                               ; preds = %36
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @SCR_RELAY, align 4
  %58 = or i32 %56, %57
  store i32 %58, i32* %8, align 4
  %59 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @set_scr(%struct.snd_ice1712* %59, i32 %60)
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @SCR_AIN12_SEL1, align 4
  %64 = xor i32 %63, -1
  %65 = and i32 %62, %64
  %66 = load i32, i32* @SCR_AIN12_SEL0, align 4
  %67 = or i32 %65, %66
  store i32 %67, i32* %8, align 4
  %68 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @set_scr(%struct.snd_ice1712* %68, i32 %69)
  br label %88

71:                                               ; preds = %36
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @SCR_RELAY, align 4
  %74 = or i32 %72, %73
  store i32 %74, i32* %8, align 4
  %75 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @set_scr(%struct.snd_ice1712* %75, i32 %76)
  %78 = load i32, i32* @SCR_AIN12_SEL1, align 4
  %79 = load i32, i32* @SCR_AIN12_SEL0, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* %8, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %8, align 4
  %83 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @set_scr(%struct.snd_ice1712* %83, i32 %84)
  br label %88

86:                                               ; preds = %36
  %87 = call i32 (...) @snd_BUG()
  br label %88

88:                                               ; preds = %86, %71, %55, %38
  store i32 1, i32* %3, align 4
  br label %90

89:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %89, %88
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local %struct.snd_ice1712* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @get_scr(%struct.snd_ice1712*) #1

declare dso_local i32 @set_scr(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @snd_BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
