; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_fm801.c_snd_fm801_put_single.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_fm801.c_snd_fm801_put_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.fm801 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_fm801_put_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_fm801_put_single(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.fm801*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %11 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %12 = call %struct.fm801* @snd_kcontrol_chip(%struct.snd_kcontrol* %11)
  store %struct.fm801* %12, %struct.fm801** %5, align 8
  %13 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %14 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, 255
  store i32 %16, i32* %6, align 4
  %17 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %18 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = ashr i32 %19, 8
  %21 = and i32 %20, 255
  store i32 %21, i32* %7, align 4
  %22 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %23 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = ashr i32 %24, 16
  %26 = and i32 %25, 255
  store i32 %26, i32* %8, align 4
  %27 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %28 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = ashr i32 %29, 24
  %31 = and i32 %30, 255
  store i32 %31, i32* %9, align 4
  %32 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %33 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %8, align 4
  %40 = and i32 %38, %39
  %41 = trunc i32 %40 to i16
  store i16 %41, i16* %10, align 2
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %2
  %45 = load i32, i32* %8, align 4
  %46 = load i16, i16* %10, align 2
  %47 = zext i16 %46 to i32
  %48 = sub nsw i32 %45, %47
  %49 = trunc i32 %48 to i16
  store i16 %49, i16* %10, align 2
  br label %50

50:                                               ; preds = %44, %2
  %51 = load %struct.fm801*, %struct.fm801** %5, align 8
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %7, align 4
  %55 = shl i32 %53, %54
  %56 = load i16, i16* %10, align 2
  %57 = zext i16 %56 to i32
  %58 = load i32, i32* %7, align 4
  %59 = shl i32 %57, %58
  %60 = trunc i32 %59 to i16
  %61 = call i32 @snd_fm801_update_bits(%struct.fm801* %51, i32 %52, i32 %55, i16 zeroext %60)
  ret i32 %61
}

declare dso_local %struct.fm801* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_fm801_update_bits(%struct.fm801*, i32, i32, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
