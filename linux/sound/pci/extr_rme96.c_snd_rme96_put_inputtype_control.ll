; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_rme96.c_snd_rme96_put_inputtype_control.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_rme96.c_snd_rme96_put_inputtype_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.rme96 = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@RME96_INPUT_XLR = common dso_local global i32 0, align 4
@RME96_INPUT_ANALOG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_rme96_put_inputtype_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_rme96_put_inputtype_control(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.rme96*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %9 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %10 = call %struct.rme96* @snd_kcontrol_chip(%struct.snd_kcontrol* %9)
  store %struct.rme96* %10, %struct.rme96** %5, align 8
  store i32 3, i32* %8, align 4
  %11 = load %struct.rme96*, %struct.rme96** %5, align 8
  %12 = getelementptr inbounds %struct.rme96, %struct.rme96* %11, i32 0, i32 2
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %26 [
    i32 131, label %16
    i32 130, label %16
    i32 128, label %17
    i32 129, label %18
  ]

16:                                               ; preds = %2, %2
  store i32 3, i32* %8, align 4
  br label %28

17:                                               ; preds = %2
  store i32 4, i32* %8, align 4
  br label %28

18:                                               ; preds = %2
  %19 = load %struct.rme96*, %struct.rme96** %5, align 8
  %20 = getelementptr inbounds %struct.rme96, %struct.rme96* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp sgt i32 %21, 4
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 4, i32* %8, align 4
  br label %25

24:                                               ; preds = %18
  store i32 5, i32* %8, align 4
  br label %25

25:                                               ; preds = %24, %23
  br label %28

26:                                               ; preds = %2
  %27 = call i32 (...) @snd_BUG()
  br label %28

28:                                               ; preds = %26, %25, %17, %16
  %29 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %30 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %8, align 4
  %37 = srem i32 %35, %36
  store i32 %37, i32* %6, align 4
  %38 = load %struct.rme96*, %struct.rme96** %5, align 8
  %39 = getelementptr inbounds %struct.rme96, %struct.rme96* %38, i32 0, i32 2
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 129
  br i1 %43, label %44, label %56

44:                                               ; preds = %28
  %45 = load %struct.rme96*, %struct.rme96** %5, align 8
  %46 = getelementptr inbounds %struct.rme96, %struct.rme96* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp sgt i32 %47, 4
  br i1 %48, label %49, label %56

49:                                               ; preds = %44
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @RME96_INPUT_XLR, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i32, i32* @RME96_INPUT_ANALOG, align 4
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %53, %49
  br label %56

56:                                               ; preds = %55, %44, %28
  %57 = load %struct.rme96*, %struct.rme96** %5, align 8
  %58 = getelementptr inbounds %struct.rme96, %struct.rme96* %57, i32 0, i32 1
  %59 = call i32 @spin_lock_irq(i32* %58)
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.rme96*, %struct.rme96** %5, align 8
  %62 = call i32 @snd_rme96_getinputtype(%struct.rme96* %61)
  %63 = icmp ne i32 %60, %62
  %64 = zext i1 %63 to i32
  store i32 %64, i32* %7, align 4
  %65 = load %struct.rme96*, %struct.rme96** %5, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @snd_rme96_setinputtype(%struct.rme96* %65, i32 %66)
  %68 = load %struct.rme96*, %struct.rme96** %5, align 8
  %69 = getelementptr inbounds %struct.rme96, %struct.rme96* %68, i32 0, i32 1
  %70 = call i32 @spin_unlock_irq(i32* %69)
  %71 = load i32, i32* %7, align 4
  ret i32 %71
}

declare dso_local %struct.rme96* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_BUG(...) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @snd_rme96_getinputtype(%struct.rme96*) #1

declare dso_local i32 @snd_rme96_setinputtype(%struct.rme96*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
