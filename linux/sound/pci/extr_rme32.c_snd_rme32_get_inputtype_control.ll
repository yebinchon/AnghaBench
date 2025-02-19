; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_rme32.c_snd_rme32_get_inputtype_control.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_rme32.c_snd_rme32_get_inputtype_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.rme32 = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_rme32_get_inputtype_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_rme32_get_inputtype_control(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.rme32*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %7 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %8 = call %struct.rme32* @snd_kcontrol_chip(%struct.snd_kcontrol* %7)
  store %struct.rme32* %8, %struct.rme32** %5, align 8
  store i32 3, i32* %6, align 4
  %9 = load %struct.rme32*, %struct.rme32** %5, align 8
  %10 = getelementptr inbounds %struct.rme32, %struct.rme32* %9, i32 0, i32 0
  %11 = call i32 @spin_lock_irq(i32* %10)
  %12 = load %struct.rme32*, %struct.rme32** %5, align 8
  %13 = call i32 @snd_rme32_getinputtype(%struct.rme32* %12)
  %14 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %15 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  store i32 %13, i32* %19, align 4
  %20 = load %struct.rme32*, %struct.rme32** %5, align 8
  %21 = getelementptr inbounds %struct.rme32, %struct.rme32* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %27 [
    i32 130, label %25
    i32 129, label %25
    i32 128, label %26
  ]

25:                                               ; preds = %2, %2
  store i32 3, i32* %6, align 4
  br label %29

26:                                               ; preds = %2
  store i32 4, i32* %6, align 4
  br label %29

27:                                               ; preds = %2
  %28 = call i32 (...) @snd_BUG()
  br label %29

29:                                               ; preds = %27, %26, %25
  %30 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %31 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp uge i32 %36, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %29
  %40 = load i32, i32* %6, align 4
  %41 = sub i32 %40, 1
  %42 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %43 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  store i32 %41, i32* %47, align 4
  br label %48

48:                                               ; preds = %39, %29
  %49 = load %struct.rme32*, %struct.rme32** %5, align 8
  %50 = getelementptr inbounds %struct.rme32, %struct.rme32* %49, i32 0, i32 0
  %51 = call i32 @spin_unlock_irq(i32* %50)
  ret i32 0
}

declare dso_local %struct.rme32* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @snd_rme32_getinputtype(%struct.rme32*) #1

declare dso_local i32 @snd_BUG(...) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
