; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/gus/extr_gus_mixer.c_snd_gf1_put_single.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/gus/extr_gus_mixer.c_snd_gf1_put_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.snd_gus_card = type { i8, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8 }

@MIXCNTRLREG = common dso_local global i32 0, align 4
@GF1PAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_gf1_put_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_gf1_put_single(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_gus_card*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %12 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %13 = call %struct.snd_gus_card* @snd_kcontrol_chip(%struct.snd_kcontrol* %12)
  store %struct.snd_gus_card* %13, %struct.snd_gus_card** %5, align 8
  %14 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %15 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, 255
  store i32 %17, i32* %7, align 4
  %18 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %19 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = ashr i32 %20, 8
  %22 = and i32 %21, 1
  store i32 %22, i32* %8, align 4
  %23 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %24 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, 1
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %11, align 1
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %2
  %35 = load i8, i8* %11, align 1
  %36 = zext i8 %35 to i32
  %37 = xor i32 %36, 1
  %38 = trunc i32 %37 to i8
  store i8 %38, i8* %11, align 1
  br label %39

39:                                               ; preds = %34, %2
  %40 = load i32, i32* %7, align 4
  %41 = load i8, i8* %11, align 1
  %42 = zext i8 %41 to i32
  %43 = shl i32 %42, %40
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %11, align 1
  %45 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %46 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %45, i32 0, i32 1
  %47 = load i64, i64* %6, align 8
  %48 = call i32 @spin_lock_irqsave(i32* %46, i64 %47)
  %49 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %50 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %49, i32 0, i32 0
  %51 = load i8, i8* %50, align 4
  store i8 %51, i8* %10, align 1
  %52 = load i8, i8* %10, align 1
  %53 = zext i8 %52 to i32
  %54 = load i32, i32* %7, align 4
  %55 = shl i32 1, %54
  %56 = xor i32 %55, -1
  %57 = and i32 %53, %56
  %58 = load i8, i8* %11, align 1
  %59 = zext i8 %58 to i32
  %60 = or i32 %57, %59
  %61 = trunc i32 %60 to i8
  store i8 %61, i8* %11, align 1
  %62 = load i8, i8* %11, align 1
  %63 = zext i8 %62 to i32
  %64 = load i8, i8* %10, align 1
  %65 = zext i8 %64 to i32
  %66 = icmp ne i32 %63, %65
  %67 = zext i1 %66 to i32
  store i32 %67, i32* %9, align 4
  %68 = load i8, i8* %11, align 1
  %69 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %70 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %69, i32 0, i32 0
  store i8 %68, i8* %70, align 4
  %71 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %72 = load i32, i32* @MIXCNTRLREG, align 4
  %73 = call i32 @GUSP(%struct.snd_gus_card* %71, i32 %72)
  %74 = call i32 @outb(i8 zeroext %68, i32 %73)
  %75 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %76 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  store i8 0, i8* %77, align 4
  %78 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %79 = load i32, i32* @GF1PAGE, align 4
  %80 = call i32 @GUSP(%struct.snd_gus_card* %78, i32 %79)
  %81 = call i32 @outb(i8 zeroext 0, i32 %80)
  %82 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %83 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %82, i32 0, i32 1
  %84 = load i64, i64* %6, align 8
  %85 = call i32 @spin_unlock_irqrestore(i32* %83, i64 %84)
  %86 = load i32, i32* %9, align 4
  ret i32 %86
}

declare dso_local %struct.snd_gus_card* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outb(i8 zeroext, i32) #1

declare dso_local i32 @GUSP(%struct.snd_gus_card*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
