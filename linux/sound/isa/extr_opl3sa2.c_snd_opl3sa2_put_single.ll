; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/extr_opl3sa2.c_snd_opl3sa2_put_single.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/extr_opl3sa2.c_snd_opl3sa2_put_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_opl3sa2 = type { i16*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_opl3sa2_put_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_opl3sa2_put_single(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_opl3sa2*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %14 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %15 = call %struct.snd_opl3sa2* @snd_kcontrol_chip(%struct.snd_kcontrol* %14)
  store %struct.snd_opl3sa2* %15, %struct.snd_opl3sa2** %5, align 8
  %16 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %17 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, 255
  store i32 %19, i32* %7, align 4
  %20 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %21 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = ashr i32 %22, 8
  %24 = and i32 %23, 255
  store i32 %24, i32* %8, align 4
  %25 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %26 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = ashr i32 %27, 16
  %29 = and i32 %28, 255
  store i32 %29, i32* %9, align 4
  %30 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %31 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = ashr i32 %32, 24
  %34 = and i32 %33, 255
  store i32 %34, i32* %10, align 4
  %35 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %36 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %9, align 4
  %43 = and i32 %41, %42
  %44 = trunc i32 %43 to i16
  store i16 %44, i16* %12, align 2
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %2
  %48 = load i32, i32* %9, align 4
  %49 = load i16, i16* %12, align 2
  %50 = zext i16 %49 to i32
  %51 = sub nsw i32 %48, %50
  %52 = trunc i32 %51 to i16
  store i16 %52, i16* %12, align 2
  br label %53

53:                                               ; preds = %47, %2
  %54 = load i32, i32* %8, align 4
  %55 = load i16, i16* %12, align 2
  %56 = zext i16 %55 to i32
  %57 = shl i32 %56, %54
  %58 = trunc i32 %57 to i16
  store i16 %58, i16* %12, align 2
  %59 = load %struct.snd_opl3sa2*, %struct.snd_opl3sa2** %5, align 8
  %60 = getelementptr inbounds %struct.snd_opl3sa2, %struct.snd_opl3sa2* %59, i32 0, i32 1
  %61 = load i64, i64* %6, align 8
  %62 = call i32 @spin_lock_irqsave(i32* %60, i64 %61)
  %63 = load %struct.snd_opl3sa2*, %struct.snd_opl3sa2** %5, align 8
  %64 = getelementptr inbounds %struct.snd_opl3sa2, %struct.snd_opl3sa2* %63, i32 0, i32 0
  %65 = load i16*, i16** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i16, i16* %65, i64 %67
  %69 = load i16, i16* %68, align 2
  store i16 %69, i16* %13, align 2
  %70 = load i16, i16* %13, align 2
  %71 = zext i16 %70 to i32
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %8, align 4
  %74 = shl i32 %72, %73
  %75 = xor i32 %74, -1
  %76 = and i32 %71, %75
  %77 = load i16, i16* %12, align 2
  %78 = zext i16 %77 to i32
  %79 = or i32 %76, %78
  %80 = trunc i32 %79 to i16
  store i16 %80, i16* %12, align 2
  %81 = load i16, i16* %12, align 2
  %82 = zext i16 %81 to i32
  %83 = load i16, i16* %13, align 2
  %84 = zext i16 %83 to i32
  %85 = icmp ne i32 %82, %84
  %86 = zext i1 %85 to i32
  store i32 %86, i32* %11, align 4
  %87 = load %struct.snd_opl3sa2*, %struct.snd_opl3sa2** %5, align 8
  %88 = load i32, i32* %7, align 4
  %89 = load i16, i16* %12, align 2
  %90 = call i32 @__snd_opl3sa2_write(%struct.snd_opl3sa2* %87, i32 %88, i16 zeroext %89)
  %91 = load %struct.snd_opl3sa2*, %struct.snd_opl3sa2** %5, align 8
  %92 = getelementptr inbounds %struct.snd_opl3sa2, %struct.snd_opl3sa2* %91, i32 0, i32 1
  %93 = load i64, i64* %6, align 8
  %94 = call i32 @spin_unlock_irqrestore(i32* %92, i64 %93)
  %95 = load i32, i32* %11, align 4
  ret i32 %95
}

declare dso_local %struct.snd_opl3sa2* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__snd_opl3sa2_write(%struct.snd_opl3sa2*, i32, i16 zeroext) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
