; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_fm801.c_snd_fm801_get_double.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_fm801.c_snd_fm801_get_double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }
%struct.fm801 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_fm801_get_double to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_fm801_get_double(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.fm801*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %12 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %13 = call %struct.fm801* @snd_kcontrol_chip(%struct.snd_kcontrol* %12)
  store %struct.fm801* %13, %struct.fm801** %5, align 8
  %14 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %15 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, 255
  store i32 %17, i32* %6, align 4
  %18 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %19 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = ashr i32 %20, 8
  %22 = and i32 %21, 15
  store i32 %22, i32* %7, align 4
  %23 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %24 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = ashr i32 %25, 12
  %27 = and i32 %26, 15
  store i32 %27, i32* %8, align 4
  %28 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %29 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = ashr i32 %30, 16
  %32 = and i32 %31, 255
  store i32 %32, i32* %9, align 4
  %33 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %34 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = ashr i32 %35, 24
  %37 = and i32 %36, 255
  store i32 %37, i32* %10, align 4
  %38 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %39 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  store i64* %42, i64** %11, align 8
  %43 = load %struct.fm801*, %struct.fm801** %5, align 8
  %44 = getelementptr inbounds %struct.fm801, %struct.fm801* %43, i32 0, i32 0
  %45 = call i32 @spin_lock_irq(i32* %44)
  %46 = load %struct.fm801*, %struct.fm801** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @fm801_ioread16(%struct.fm801* %46, i32 %47)
  %49 = load i32, i32* %7, align 4
  %50 = ashr i32 %48, %49
  %51 = load i32, i32* %9, align 4
  %52 = and i32 %50, %51
  %53 = sext i32 %52 to i64
  %54 = load i64*, i64** %11, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 0
  store i64 %53, i64* %55, align 8
  %56 = load %struct.fm801*, %struct.fm801** %5, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @fm801_ioread16(%struct.fm801* %56, i32 %57)
  %59 = load i32, i32* %8, align 4
  %60 = ashr i32 %58, %59
  %61 = load i32, i32* %9, align 4
  %62 = and i32 %60, %61
  %63 = sext i32 %62 to i64
  %64 = load i64*, i64** %11, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 1
  store i64 %63, i64* %65, align 8
  %66 = load %struct.fm801*, %struct.fm801** %5, align 8
  %67 = getelementptr inbounds %struct.fm801, %struct.fm801* %66, i32 0, i32 0
  %68 = call i32 @spin_unlock_irq(i32* %67)
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %88

71:                                               ; preds = %2
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = load i64*, i64** %11, align 8
  %75 = getelementptr inbounds i64, i64* %74, i64 0
  %76 = load i64, i64* %75, align 8
  %77 = sub nsw i64 %73, %76
  %78 = load i64*, i64** %11, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 0
  store i64 %77, i64* %79, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = load i64*, i64** %11, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 1
  %84 = load i64, i64* %83, align 8
  %85 = sub nsw i64 %81, %84
  %86 = load i64*, i64** %11, align 8
  %87 = getelementptr inbounds i64, i64* %86, i64 1
  store i64 %85, i64* %87, align 8
  br label %88

88:                                               ; preds = %71, %2
  ret i32 0
}

declare dso_local %struct.fm801* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @fm801_ioread16(%struct.fm801*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
