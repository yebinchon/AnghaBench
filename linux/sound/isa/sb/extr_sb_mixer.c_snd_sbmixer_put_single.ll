; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/sb/extr_sb_mixer.c_snd_sbmixer_put_single.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/sb/extr_sb_mixer.c_snd_sbmixer_put_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_sb = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_sbmixer_put_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_sbmixer_put_single(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_sb*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %13 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %14 = call %struct.snd_sb* @snd_kcontrol_chip(%struct.snd_kcontrol* %13)
  store %struct.snd_sb* %14, %struct.snd_sb** %5, align 8
  %15 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %16 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 255
  store i32 %18, i32* %7, align 4
  %19 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %20 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = ashr i32 %21, 16
  %23 = and i32 %22, 7
  store i32 %23, i32* %8, align 4
  %24 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %25 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = ashr i32 %26, 24
  %28 = and i32 %27, 255
  store i32 %28, i32* %9, align 4
  %29 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %30 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %9, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* %8, align 4
  %39 = shl i32 %37, %38
  %40 = trunc i32 %39 to i8
  store i8 %40, i8* %11, align 1
  %41 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %42 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %41, i32 0, i32 0
  %43 = load i64, i64* %6, align 8
  %44 = call i32 @spin_lock_irqsave(i32* %42, i64 %43)
  %45 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call zeroext i8 @snd_sbmixer_read(%struct.snd_sb* %45, i32 %46)
  store i8 %47, i8* %12, align 1
  %48 = load i8, i8* %12, align 1
  %49 = zext i8 %48 to i32
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %8, align 4
  %52 = shl i32 %50, %51
  %53 = xor i32 %52, -1
  %54 = and i32 %49, %53
  %55 = load i8, i8* %11, align 1
  %56 = zext i8 %55 to i32
  %57 = or i32 %54, %56
  %58 = trunc i32 %57 to i8
  store i8 %58, i8* %11, align 1
  %59 = load i8, i8* %11, align 1
  %60 = zext i8 %59 to i32
  %61 = load i8, i8* %12, align 1
  %62 = zext i8 %61 to i32
  %63 = icmp ne i32 %60, %62
  %64 = zext i1 %63 to i32
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %2
  %68 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %69 = load i32, i32* %7, align 4
  %70 = load i8, i8* %11, align 1
  %71 = call i32 @snd_sbmixer_write(%struct.snd_sb* %68, i32 %69, i8 zeroext %70)
  br label %72

72:                                               ; preds = %67, %2
  %73 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %74 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %73, i32 0, i32 0
  %75 = load i64, i64* %6, align 8
  %76 = call i32 @spin_unlock_irqrestore(i32* %74, i64 %75)
  %77 = load i32, i32* %10, align 4
  ret i32 %77
}

declare dso_local %struct.snd_sb* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local zeroext i8 @snd_sbmixer_read(%struct.snd_sb*, i32) #1

declare dso_local i32 @snd_sbmixer_write(%struct.snd_sb*, i32, i8 zeroext) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
