; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/ad1816a/extr_ad1816a_lib.c_snd_ad1816a_get_double.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/ad1816a/extr_ad1816a_lib.c_snd_ad1816a_get_double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i16* }
%struct.snd_ad1816a = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_ad1816a_get_double to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ad1816a_get_double(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_ad1816a*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i16, align 2
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %13 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %14 = call %struct.snd_ad1816a* @snd_kcontrol_chip(%struct.snd_kcontrol* %13)
  store %struct.snd_ad1816a* %14, %struct.snd_ad1816a** %5, align 8
  %15 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %16 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 255
  store i32 %18, i32* %7, align 4
  %19 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %20 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = ashr i32 %21, 8
  %23 = and i32 %22, 15
  store i32 %23, i32* %8, align 4
  %24 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %25 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = ashr i32 %26, 12
  %28 = and i32 %27, 15
  store i32 %28, i32* %9, align 4
  %29 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %30 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = ashr i32 %31, 16
  %33 = and i32 %32, 255
  store i32 %33, i32* %10, align 4
  %34 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %35 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = ashr i32 %36, 24
  %38 = and i32 %37, 255
  store i32 %38, i32* %11, align 4
  %39 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %5, align 8
  %40 = getelementptr inbounds %struct.snd_ad1816a, %struct.snd_ad1816a* %39, i32 0, i32 0
  %41 = load i64, i64* %6, align 8
  %42 = call i32 @spin_lock_irqsave(i32* %40, i64 %41)
  %43 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %5, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call zeroext i16 @snd_ad1816a_read(%struct.snd_ad1816a* %43, i32 %44)
  store i16 %45, i16* %12, align 2
  %46 = load i16, i16* %12, align 2
  %47 = zext i16 %46 to i32
  %48 = load i32, i32* %8, align 4
  %49 = ashr i32 %47, %48
  %50 = load i32, i32* %10, align 4
  %51 = and i32 %49, %50
  %52 = trunc i32 %51 to i16
  %53 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %54 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i16*, i16** %56, align 8
  %58 = getelementptr inbounds i16, i16* %57, i64 0
  store i16 %52, i16* %58, align 2
  %59 = load i16, i16* %12, align 2
  %60 = zext i16 %59 to i32
  %61 = load i32, i32* %9, align 4
  %62 = ashr i32 %60, %61
  %63 = load i32, i32* %10, align 4
  %64 = and i32 %62, %63
  %65 = trunc i32 %64 to i16
  %66 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %67 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i16*, i16** %69, align 8
  %71 = getelementptr inbounds i16, i16* %70, i64 1
  store i16 %65, i16* %71, align 2
  %72 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %5, align 8
  %73 = getelementptr inbounds %struct.snd_ad1816a, %struct.snd_ad1816a* %72, i32 0, i32 0
  %74 = load i64, i64* %6, align 8
  %75 = call i32 @spin_unlock_irqrestore(i32* %73, i64 %74)
  %76 = load i32, i32* %11, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %113

78:                                               ; preds = %2
  %79 = load i32, i32* %10, align 4
  %80 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %81 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i16*, i16** %83, align 8
  %85 = getelementptr inbounds i16, i16* %84, i64 0
  %86 = load i16, i16* %85, align 2
  %87 = zext i16 %86 to i32
  %88 = sub nsw i32 %79, %87
  %89 = trunc i32 %88 to i16
  %90 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %91 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i16*, i16** %93, align 8
  %95 = getelementptr inbounds i16, i16* %94, i64 0
  store i16 %89, i16* %95, align 2
  %96 = load i32, i32* %10, align 4
  %97 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %98 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i16*, i16** %100, align 8
  %102 = getelementptr inbounds i16, i16* %101, i64 1
  %103 = load i16, i16* %102, align 2
  %104 = zext i16 %103 to i32
  %105 = sub nsw i32 %96, %104
  %106 = trunc i32 %105 to i16
  %107 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %108 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  %111 = load i16*, i16** %110, align 8
  %112 = getelementptr inbounds i16, i16* %111, i64 1
  store i16 %106, i16* %112, align 2
  br label %113

113:                                              ; preds = %78, %2
  ret i32 0
}

declare dso_local %struct.snd_ad1816a* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local zeroext i16 @snd_ad1816a_read(%struct.snd_ad1816a*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
