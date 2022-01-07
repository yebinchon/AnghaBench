; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/ad1816a/extr_ad1816a_lib.c_snd_ad1816a_put_double.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/ad1816a/extr_ad1816a_lib.c_snd_ad1816a_put_double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_ad1816a = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_ad1816a_put_double to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ad1816a_put_double(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_ad1816a*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  %15 = alloca i16, align 2
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %16 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %17 = call %struct.snd_ad1816a* @snd_kcontrol_chip(%struct.snd_kcontrol* %16)
  store %struct.snd_ad1816a* %17, %struct.snd_ad1816a** %5, align 8
  %18 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %19 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 255
  store i32 %21, i32* %7, align 4
  %22 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %23 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = ashr i32 %24, 8
  %26 = and i32 %25, 15
  store i32 %26, i32* %8, align 4
  %27 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %28 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = ashr i32 %29, 12
  %31 = and i32 %30, 15
  store i32 %31, i32* %9, align 4
  %32 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %33 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = ashr i32 %34, 16
  %36 = and i32 %35, 255
  store i32 %36, i32* %10, align 4
  %37 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %38 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = ashr i32 %39, 24
  %41 = and i32 %40, 255
  store i32 %41, i32* %11, align 4
  %42 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %43 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %10, align 4
  %50 = and i32 %48, %49
  %51 = trunc i32 %50 to i16
  store i16 %51, i16* %14, align 2
  %52 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %53 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %10, align 4
  %60 = and i32 %58, %59
  %61 = trunc i32 %60 to i16
  store i16 %61, i16* %15, align 2
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %2
  %65 = load i32, i32* %10, align 4
  %66 = load i16, i16* %14, align 2
  %67 = zext i16 %66 to i32
  %68 = sub nsw i32 %65, %67
  %69 = trunc i32 %68 to i16
  store i16 %69, i16* %14, align 2
  %70 = load i32, i32* %10, align 4
  %71 = load i16, i16* %15, align 2
  %72 = zext i16 %71 to i32
  %73 = sub nsw i32 %70, %72
  %74 = trunc i32 %73 to i16
  store i16 %74, i16* %15, align 2
  br label %75

75:                                               ; preds = %64, %2
  %76 = load i32, i32* %8, align 4
  %77 = load i16, i16* %14, align 2
  %78 = zext i16 %77 to i32
  %79 = shl i32 %78, %76
  %80 = trunc i32 %79 to i16
  store i16 %80, i16* %14, align 2
  %81 = load i32, i32* %9, align 4
  %82 = load i16, i16* %15, align 2
  %83 = zext i16 %82 to i32
  %84 = shl i32 %83, %81
  %85 = trunc i32 %84 to i16
  store i16 %85, i16* %15, align 2
  %86 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %5, align 8
  %87 = getelementptr inbounds %struct.snd_ad1816a, %struct.snd_ad1816a* %86, i32 0, i32 0
  %88 = load i64, i64* %6, align 8
  %89 = call i32 @spin_lock_irqsave(i32* %87, i64 %88)
  %90 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %5, align 8
  %91 = load i32, i32* %7, align 4
  %92 = call zeroext i16 @snd_ad1816a_read(%struct.snd_ad1816a* %90, i32 %91)
  store i16 %92, i16* %13, align 2
  %93 = load i16, i16* %13, align 2
  %94 = zext i16 %93 to i32
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* %8, align 4
  %97 = shl i32 %95, %96
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* %9, align 4
  %100 = shl i32 %98, %99
  %101 = or i32 %97, %100
  %102 = xor i32 %101, -1
  %103 = and i32 %94, %102
  %104 = load i16, i16* %14, align 2
  %105 = zext i16 %104 to i32
  %106 = or i32 %103, %105
  %107 = load i16, i16* %15, align 2
  %108 = zext i16 %107 to i32
  %109 = or i32 %106, %108
  %110 = trunc i32 %109 to i16
  store i16 %110, i16* %14, align 2
  %111 = load i16, i16* %14, align 2
  %112 = zext i16 %111 to i32
  %113 = load i16, i16* %13, align 2
  %114 = zext i16 %113 to i32
  %115 = icmp ne i32 %112, %114
  %116 = zext i1 %115 to i32
  store i32 %116, i32* %12, align 4
  %117 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %5, align 8
  %118 = load i32, i32* %7, align 4
  %119 = load i16, i16* %14, align 2
  %120 = call i32 @snd_ad1816a_write(%struct.snd_ad1816a* %117, i32 %118, i16 zeroext %119)
  %121 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %5, align 8
  %122 = getelementptr inbounds %struct.snd_ad1816a, %struct.snd_ad1816a* %121, i32 0, i32 0
  %123 = load i64, i64* %6, align 8
  %124 = call i32 @spin_unlock_irqrestore(i32* %122, i64 %123)
  %125 = load i32, i32* %12, align 4
  ret i32 %125
}

declare dso_local %struct.snd_ad1816a* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local zeroext i16 @snd_ad1816a_read(%struct.snd_ad1816a*, i32) #1

declare dso_local i32 @snd_ad1816a_write(%struct.snd_ad1816a*, i32, i16 zeroext) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
