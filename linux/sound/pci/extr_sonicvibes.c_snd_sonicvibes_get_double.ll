; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_sonicvibes.c_snd_sonicvibes_get_double.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_sonicvibes.c_snd_sonicvibes_get_double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.sonicvibes = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_sonicvibes_get_double to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_sonicvibes_get_double(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.sonicvibes*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %12 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %13 = call %struct.sonicvibes* @snd_kcontrol_chip(%struct.snd_kcontrol* %12)
  store %struct.sonicvibes* %13, %struct.sonicvibes** %5, align 8
  %14 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %15 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, 255
  store i32 %17, i32* %6, align 4
  %18 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %19 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = ashr i32 %20, 8
  %22 = and i32 %21, 255
  store i32 %22, i32* %7, align 4
  %23 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %24 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = ashr i32 %25, 16
  %27 = and i32 %26, 7
  store i32 %27, i32* %8, align 4
  %28 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %29 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = ashr i32 %30, 19
  %32 = and i32 %31, 7
  store i32 %32, i32* %9, align 4
  %33 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %34 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = ashr i32 %35, 24
  %37 = and i32 %36, 255
  store i32 %37, i32* %10, align 4
  %38 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %39 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = ashr i32 %40, 22
  %42 = and i32 %41, 1
  store i32 %42, i32* %11, align 4
  %43 = load %struct.sonicvibes*, %struct.sonicvibes** %5, align 8
  %44 = getelementptr inbounds %struct.sonicvibes, %struct.sonicvibes* %43, i32 0, i32 0
  %45 = call i32 @spin_lock_irq(i32* %44)
  %46 = load %struct.sonicvibes*, %struct.sonicvibes** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @snd_sonicvibes_in1(%struct.sonicvibes* %46, i32 %47)
  %49 = load i32, i32* %8, align 4
  %50 = ashr i32 %48, %49
  %51 = load i32, i32* %10, align 4
  %52 = and i32 %50, %51
  %53 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %54 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  store i32 %52, i32* %58, align 4
  %59 = load %struct.sonicvibes*, %struct.sonicvibes** %5, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @snd_sonicvibes_in1(%struct.sonicvibes* %59, i32 %60)
  %62 = load i32, i32* %9, align 4
  %63 = ashr i32 %61, %62
  %64 = load i32, i32* %10, align 4
  %65 = and i32 %63, %64
  %66 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %67 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  store i32 %65, i32* %71, align 4
  %72 = load %struct.sonicvibes*, %struct.sonicvibes** %5, align 8
  %73 = getelementptr inbounds %struct.sonicvibes, %struct.sonicvibes* %72, i32 0, i32 0
  %74 = call i32 @spin_unlock_irq(i32* %73)
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %108

77:                                               ; preds = %2
  %78 = load i32, i32* %10, align 4
  %79 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %80 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = sub nsw i32 %78, %85
  %87 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %88 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  store i32 %86, i32* %92, align 4
  %93 = load i32, i32* %10, align 4
  %94 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %95 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 1
  %100 = load i32, i32* %99, align 4
  %101 = sub nsw i32 %93, %100
  %102 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %103 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 1
  store i32 %101, i32* %107, align 4
  br label %108

108:                                              ; preds = %77, %2
  ret i32 0
}

declare dso_local %struct.sonicvibes* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @snd_sonicvibes_in1(%struct.sonicvibes*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
