; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ymfpci/extr_ymfpci_main.c_snd_ymfpci_put_single.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ymfpci/extr_ymfpci_main.c_snd_ymfpci_put_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_ymfpci = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_ymfpci_put_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ymfpci_put_single(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_ymfpci*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %13 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %14 = call %struct.snd_ymfpci* @snd_kcontrol_chip(%struct.snd_kcontrol* %13)
  store %struct.snd_ymfpci* %14, %struct.snd_ymfpci** %6, align 8
  %15 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %16 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 65535
  store i32 %18, i32* %7, align 4
  %19 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %20 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = ashr i32 %21, 16
  %23 = and i32 %22, 255
  store i32 %23, i32* %8, align 4
  store i32 1, i32* %9, align 4
  %24 = load i32, i32* %7, align 4
  switch i32 %24, label %27 [
    i32 128, label %25
    i32 129, label %26
  ]

25:                                               ; preds = %2
  br label %30

26:                                               ; preds = %2
  br label %30

27:                                               ; preds = %2
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %69

30:                                               ; preds = %26, %25
  %31 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %32 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %9, align 4
  %39 = and i32 %37, %38
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %11, align 4
  %42 = shl i32 %41, %40
  store i32 %42, i32* %11, align 4
  %43 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %6, align 8
  %44 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %43, i32 0, i32 0
  %45 = call i32 @spin_lock_irq(i32* %44)
  %46 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @snd_ymfpci_readl(%struct.snd_ymfpci* %46, i32 %47)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %8, align 4
  %52 = shl i32 %50, %51
  %53 = xor i32 %52, -1
  %54 = and i32 %49, %53
  %55 = load i32, i32* %11, align 4
  %56 = or i32 %54, %55
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %12, align 4
  %59 = icmp ne i32 %57, %58
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %10, align 4
  %61 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %6, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @snd_ymfpci_writel(%struct.snd_ymfpci* %61, i32 %62, i32 %63)
  %65 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %6, align 8
  %66 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %65, i32 0, i32 0
  %67 = call i32 @spin_unlock_irq(i32* %66)
  %68 = load i32, i32* %10, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %30, %27
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.snd_ymfpci* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @snd_ymfpci_readl(%struct.snd_ymfpci*, i32) #1

declare dso_local i32 @snd_ymfpci_writel(%struct.snd_ymfpci*, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
