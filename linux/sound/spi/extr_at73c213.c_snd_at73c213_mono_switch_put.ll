; ModuleID = '/home/carl/AnghaBench/linux/sound/spi/extr_at73c213.c_snd_at73c213_mono_switch_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/spi/extr_at73c213.c_snd_at73c213_mono_switch_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }
%struct.snd_at73c213 = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_at73c213_mono_switch_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_at73c213_mono_switch_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_at73c213*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i16, align 2
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %14 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %15 = call %struct.snd_at73c213* @snd_kcontrol_chip(%struct.snd_kcontrol* %14)
  store %struct.snd_at73c213* %15, %struct.snd_at73c213** %6, align 8
  %16 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %17 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, 255
  store i32 %19, i32* %7, align 4
  %20 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %21 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = ashr i32 %22, 8
  %24 = and i32 %23, 255
  store i32 %24, i32* %8, align 4
  %25 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %26 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = ashr i32 %27, 16
  %29 = and i32 %28, 255
  store i32 %29, i32* %9, align 4
  %30 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %31 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = ashr i32 %32, 24
  %34 = and i32 %33, 255
  store i32 %34, i32* %10, align 4
  %35 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %36 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %2
  %44 = load i32, i32* %9, align 4
  %45 = trunc i32 %44 to i16
  store i16 %45, i16* %13, align 2
  br label %47

46:                                               ; preds = %2
  store i16 0, i16* %13, align 2
  br label %47

47:                                               ; preds = %46, %43
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load i32, i32* %9, align 4
  %52 = load i16, i16* %13, align 2
  %53 = zext i16 %52 to i32
  %54 = sub nsw i32 %51, %53
  %55 = trunc i32 %54 to i16
  store i16 %55, i16* %13, align 2
  br label %56

56:                                               ; preds = %50, %47
  %57 = load i32, i32* %8, align 4
  %58 = load i16, i16* %13, align 2
  %59 = zext i16 %58 to i32
  %60 = shl i32 %59, %57
  %61 = trunc i32 %60 to i16
  store i16 %61, i16* %13, align 2
  %62 = load %struct.snd_at73c213*, %struct.snd_at73c213** %6, align 8
  %63 = getelementptr inbounds %struct.snd_at73c213, %struct.snd_at73c213* %62, i32 0, i32 1
  %64 = call i32 @mutex_lock(i32* %63)
  %65 = load %struct.snd_at73c213*, %struct.snd_at73c213** %6, align 8
  %66 = getelementptr inbounds %struct.snd_at73c213, %struct.snd_at73c213* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %8, align 4
  %74 = shl i32 %72, %73
  %75 = xor i32 %74, -1
  %76 = and i32 %71, %75
  %77 = load i16, i16* %13, align 2
  %78 = zext i16 %77 to i32
  %79 = or i32 %78, %76
  %80 = trunc i32 %79 to i16
  store i16 %80, i16* %13, align 2
  %81 = load i16, i16* %13, align 2
  %82 = zext i16 %81 to i32
  %83 = load %struct.snd_at73c213*, %struct.snd_at73c213** %6, align 8
  %84 = getelementptr inbounds %struct.snd_at73c213, %struct.snd_at73c213* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %82, %89
  %91 = zext i1 %90 to i32
  store i32 %91, i32* %11, align 4
  %92 = load %struct.snd_at73c213*, %struct.snd_at73c213** %6, align 8
  %93 = load i32, i32* %7, align 4
  %94 = load i16, i16* %13, align 2
  %95 = call i32 @snd_at73c213_write_reg(%struct.snd_at73c213* %92, i32 %93, i16 zeroext %94)
  store i32 %95, i32* %12, align 4
  %96 = load %struct.snd_at73c213*, %struct.snd_at73c213** %6, align 8
  %97 = getelementptr inbounds %struct.snd_at73c213, %struct.snd_at73c213* %96, i32 0, i32 1
  %98 = call i32 @mutex_unlock(i32* %97)
  %99 = load i32, i32* %12, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %56
  %102 = load i32, i32* %12, align 4
  store i32 %102, i32* %3, align 4
  br label %105

103:                                              ; preds = %56
  %104 = load i32, i32* %11, align 4
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %103, %101
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local %struct.snd_at73c213* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @snd_at73c213_write_reg(%struct.snd_at73c213*, i32, i16 zeroext) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
