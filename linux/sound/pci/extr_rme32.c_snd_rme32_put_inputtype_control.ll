; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_rme32.c_snd_rme32_put_inputtype_control.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_rme32.c_snd_rme32_put_inputtype_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.rme32 = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_rme32_put_inputtype_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_rme32_put_inputtype_control(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.rme32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %9 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %10 = call %struct.rme32* @snd_kcontrol_chip(%struct.snd_kcontrol* %9)
  store %struct.rme32* %10, %struct.rme32** %5, align 8
  store i32 3, i32* %8, align 4
  %11 = load %struct.rme32*, %struct.rme32** %5, align 8
  %12 = getelementptr inbounds %struct.rme32, %struct.rme32* %11, i32 0, i32 1
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %18 [
    i32 130, label %16
    i32 129, label %16
    i32 128, label %17
  ]

16:                                               ; preds = %2, %2
  store i32 3, i32* %8, align 4
  br label %20

17:                                               ; preds = %2
  store i32 4, i32* %8, align 4
  br label %20

18:                                               ; preds = %2
  %19 = call i32 (...) @snd_BUG()
  br label %20

20:                                               ; preds = %18, %17, %16
  %21 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %22 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %8, align 4
  %29 = srem i32 %27, %28
  store i32 %29, i32* %6, align 4
  %30 = load %struct.rme32*, %struct.rme32** %5, align 8
  %31 = getelementptr inbounds %struct.rme32, %struct.rme32* %30, i32 0, i32 0
  %32 = call i32 @spin_lock_irq(i32* %31)
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.rme32*, %struct.rme32** %5, align 8
  %35 = call i64 @snd_rme32_getinputtype(%struct.rme32* %34)
  %36 = trunc i64 %35 to i32
  %37 = icmp ne i32 %33, %36
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %7, align 4
  %39 = load %struct.rme32*, %struct.rme32** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @snd_rme32_setinputtype(%struct.rme32* %39, i32 %40)
  %42 = load %struct.rme32*, %struct.rme32** %5, align 8
  %43 = getelementptr inbounds %struct.rme32, %struct.rme32* %42, i32 0, i32 0
  %44 = call i32 @spin_unlock_irq(i32* %43)
  %45 = load i32, i32* %7, align 4
  ret i32 %45
}

declare dso_local %struct.rme32* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_BUG(...) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @snd_rme32_getinputtype(%struct.rme32*) #1

declare dso_local i32 @snd_rme32_setinputtype(%struct.rme32*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
