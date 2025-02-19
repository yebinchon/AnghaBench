; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/es1688/extr_es1688_lib.c_snd_es1688_put_mux.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/es1688/extr_es1688_lib.c_snd_es1688_put_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.snd_es1688 = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ES1688_REC_DEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_es1688_put_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_es1688_put_mux(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_es1688*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %11 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %12 = call %struct.snd_es1688* @snd_kcontrol_chip(%struct.snd_kcontrol* %11)
  store %struct.snd_es1688* %12, %struct.snd_es1688** %6, align 8
  %13 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %14 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp sgt i32 %19, 8
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %64

24:                                               ; preds = %2
  %25 = load %struct.snd_es1688*, %struct.snd_es1688** %6, align 8
  %26 = getelementptr inbounds %struct.snd_es1688, %struct.snd_es1688* %25, i32 0, i32 0
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @spin_lock_irqsave(i32* %26, i64 %27)
  %29 = load %struct.snd_es1688*, %struct.snd_es1688** %6, align 8
  %30 = load i32, i32* @ES1688_REC_DEV, align 4
  %31 = call zeroext i8 @snd_es1688_mixer_read(%struct.snd_es1688* %29, i32 %30)
  store i8 %31, i8* %8, align 1
  %32 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %33 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, 7
  %40 = load i8, i8* %8, align 1
  %41 = zext i8 %40 to i32
  %42 = and i32 %41, -16
  %43 = or i32 %39, %42
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %9, align 1
  %45 = load i8, i8* %9, align 1
  %46 = zext i8 %45 to i32
  %47 = load i8, i8* %8, align 1
  %48 = zext i8 %47 to i32
  %49 = icmp ne i32 %46, %48
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %24
  %54 = load %struct.snd_es1688*, %struct.snd_es1688** %6, align 8
  %55 = load i32, i32* @ES1688_REC_DEV, align 4
  %56 = load i8, i8* %9, align 1
  %57 = call i32 @snd_es1688_mixer_write(%struct.snd_es1688* %54, i32 %55, i8 zeroext %56)
  br label %58

58:                                               ; preds = %53, %24
  %59 = load %struct.snd_es1688*, %struct.snd_es1688** %6, align 8
  %60 = getelementptr inbounds %struct.snd_es1688, %struct.snd_es1688* %59, i32 0, i32 0
  %61 = load i64, i64* %7, align 8
  %62 = call i32 @spin_unlock_irqrestore(i32* %60, i64 %61)
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %58, %21
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local %struct.snd_es1688* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local zeroext i8 @snd_es1688_mixer_read(%struct.snd_es1688*, i32) #1

declare dso_local i32 @snd_es1688_mixer_write(%struct.snd_es1688*, i32, i8 zeroext) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
