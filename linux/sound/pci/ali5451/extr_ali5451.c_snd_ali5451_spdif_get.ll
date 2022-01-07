; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ali5451/extr_ali5451.c_snd_ali5451_spdif_get.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ali5451/extr_ali5451.c_snd_ali5451_spdif_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32, %struct.snd_ali* }
%struct.snd_ali = type { i32, i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_ali5451_spdif_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ali5451_spdif_get(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_ali*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %7 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %8 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %7, i32 0, i32 1
  %9 = load %struct.snd_ali*, %struct.snd_ali** %8, align 8
  store %struct.snd_ali* %9, %struct.snd_ali** %5, align 8
  %10 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %11 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 1, i32 0
  store i32 %19, i32* %6, align 4
  %20 = load %struct.snd_ali*, %struct.snd_ali** %5, align 8
  %21 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %20, i32 0, i32 1
  %22 = call i32 @spin_lock_irq(i32* %21)
  %23 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %24 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %58 [
    i32 0, label %26
    i32 1, label %34
    i32 2, label %50
  ]

26:                                               ; preds = %2
  %27 = load %struct.snd_ali*, %struct.snd_ali** %5, align 8
  %28 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, 2
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 1, i32 0
  store i32 %33, i32* %6, align 4
  br label %59

34:                                               ; preds = %2
  %35 = load %struct.snd_ali*, %struct.snd_ali** %5, align 8
  %36 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 2
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load %struct.snd_ali*, %struct.snd_ali** %5, align 8
  %42 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, 4
  %45 = icmp ne i32 %44, 0
  br label %46

46:                                               ; preds = %40, %34
  %47 = phi i1 [ false, %34 ], [ %45, %40 ]
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 1, i32 0
  store i32 %49, i32* %6, align 4
  br label %59

50:                                               ; preds = %2
  %51 = load %struct.snd_ali*, %struct.snd_ali** %5, align 8
  %52 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, 1
  %55 = icmp ne i32 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 1, i32 0
  store i32 %57, i32* %6, align 4
  br label %59

58:                                               ; preds = %2
  br label %59

59:                                               ; preds = %58, %50, %46, %26
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %62 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  store i32 %60, i32* %66, align 4
  %67 = load %struct.snd_ali*, %struct.snd_ali** %5, align 8
  %68 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %67, i32 0, i32 1
  %69 = call i32 @spin_unlock_irq(i32* %68)
  ret i32 0
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
