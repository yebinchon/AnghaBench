; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_rme96.c_snd_rme96_put_loopback_control.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_rme96.c_snd_rme96_put_loopback_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }
%struct.rme96 = type { i32, i32, i64 }

@RME96_WCR_SEL = common dso_local global i32 0, align 4
@RME96_IO_CONTROL_REGISTER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_rme96_put_loopback_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_rme96_put_loopback_control(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.rme96*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %8 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %9 = call %struct.rme96* @snd_kcontrol_chip(%struct.snd_kcontrol* %8)
  store %struct.rme96* %9, %struct.rme96** %5, align 8
  %10 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %11 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @RME96_WCR_SEL, align 4
  br label %21

21:                                               ; preds = %19, %18
  %22 = phi i32 [ 0, %18 ], [ %20, %19 ]
  store i32 %22, i32* %6, align 4
  %23 = load %struct.rme96*, %struct.rme96** %5, align 8
  %24 = getelementptr inbounds %struct.rme96, %struct.rme96* %23, i32 0, i32 1
  %25 = call i32 @spin_lock_irq(i32* %24)
  %26 = load %struct.rme96*, %struct.rme96** %5, align 8
  %27 = getelementptr inbounds %struct.rme96, %struct.rme96* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @RME96_WCR_SEL, align 4
  %30 = xor i32 %29, -1
  %31 = and i32 %28, %30
  %32 = load i32, i32* %6, align 4
  %33 = or i32 %31, %32
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.rme96*, %struct.rme96** %5, align 8
  %36 = getelementptr inbounds %struct.rme96, %struct.rme96* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %34, %37
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.rme96*, %struct.rme96** %5, align 8
  %42 = getelementptr inbounds %struct.rme96, %struct.rme96* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.rme96*, %struct.rme96** %5, align 8
  %45 = getelementptr inbounds %struct.rme96, %struct.rme96* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @RME96_IO_CONTROL_REGISTER, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @writel(i32 %43, i64 %48)
  %50 = load %struct.rme96*, %struct.rme96** %5, align 8
  %51 = getelementptr inbounds %struct.rme96, %struct.rme96* %50, i32 0, i32 1
  %52 = call i32 @spin_unlock_irq(i32* %51)
  %53 = load i32, i32* %7, align 4
  ret i32 %53
}

declare dso_local %struct.rme96* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
