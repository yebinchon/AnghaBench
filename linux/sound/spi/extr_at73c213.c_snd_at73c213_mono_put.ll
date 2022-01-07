; ModuleID = '/home/carl/AnghaBench/linux/sound/spi/extr_at73c213.c_snd_at73c213_mono_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/spi/extr_at73c213.c_snd_at73c213_mono_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_at73c213 = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_at73c213_mono_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_at73c213_mono_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
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
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %9, align 4
  %43 = and i32 %41, %42
  %44 = trunc i32 %43 to i16
  store i16 %44, i16* %13, align 2
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %2
  %48 = load i32, i32* %9, align 4
  %49 = load i16, i16* %13, align 2
  %50 = zext i16 %49 to i32
  %51 = sub nsw i32 %48, %50
  %52 = trunc i32 %51 to i16
  store i16 %52, i16* %13, align 2
  br label %53

53:                                               ; preds = %47, %2
  %54 = load i32, i32* %8, align 4
  %55 = load i16, i16* %13, align 2
  %56 = zext i16 %55 to i32
  %57 = shl i32 %56, %54
  %58 = trunc i32 %57 to i16
  store i16 %58, i16* %13, align 2
  %59 = load %struct.snd_at73c213*, %struct.snd_at73c213** %6, align 8
  %60 = getelementptr inbounds %struct.snd_at73c213, %struct.snd_at73c213* %59, i32 0, i32 1
  %61 = call i32 @mutex_lock(i32* %60)
  %62 = load %struct.snd_at73c213*, %struct.snd_at73c213** %6, align 8
  %63 = getelementptr inbounds %struct.snd_at73c213, %struct.snd_at73c213* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %8, align 4
  %71 = shl i32 %69, %70
  %72 = xor i32 %71, -1
  %73 = and i32 %68, %72
  %74 = load i16, i16* %13, align 2
  %75 = zext i16 %74 to i32
  %76 = or i32 %73, %75
  %77 = trunc i32 %76 to i16
  store i16 %77, i16* %13, align 2
  %78 = load i16, i16* %13, align 2
  %79 = zext i16 %78 to i32
  %80 = load %struct.snd_at73c213*, %struct.snd_at73c213** %6, align 8
  %81 = getelementptr inbounds %struct.snd_at73c213, %struct.snd_at73c213* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %79, %86
  %88 = zext i1 %87 to i32
  store i32 %88, i32* %11, align 4
  %89 = load %struct.snd_at73c213*, %struct.snd_at73c213** %6, align 8
  %90 = load i32, i32* %7, align 4
  %91 = load i16, i16* %13, align 2
  %92 = call i32 @snd_at73c213_write_reg(%struct.snd_at73c213* %89, i32 %90, i16 zeroext %91)
  store i32 %92, i32* %12, align 4
  %93 = load %struct.snd_at73c213*, %struct.snd_at73c213** %6, align 8
  %94 = getelementptr inbounds %struct.snd_at73c213, %struct.snd_at73c213* %93, i32 0, i32 1
  %95 = call i32 @mutex_unlock(i32* %94)
  %96 = load i32, i32* %12, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %53
  %99 = load i32, i32* %12, align 4
  store i32 %99, i32* %3, align 4
  br label %102

100:                                              ; preds = %53
  %101 = load i32, i32* %11, align 4
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %100, %98
  %103 = load i32, i32* %3, align 4
  ret i32 %103
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
