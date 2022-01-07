; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_sonicvibes.c_snd_sonicvibes_put_double.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_sonicvibes.c_snd_sonicvibes_put_double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.sonicvibes = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_sonicvibes_put_double to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_sonicvibes_put_double(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.sonicvibes*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  %15 = alloca i16, align 2
  %16 = alloca i16, align 2
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %17 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %18 = call %struct.sonicvibes* @snd_kcontrol_chip(%struct.snd_kcontrol* %17)
  store %struct.sonicvibes* %18, %struct.sonicvibes** %5, align 8
  %19 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %20 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 255
  store i32 %22, i32* %6, align 4
  %23 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %24 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = ashr i32 %25, 8
  %27 = and i32 %26, 255
  store i32 %27, i32* %7, align 4
  %28 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %29 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = ashr i32 %30, 16
  %32 = and i32 %31, 7
  store i32 %32, i32* %8, align 4
  %33 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %34 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = ashr i32 %35, 19
  %37 = and i32 %36, 7
  store i32 %37, i32* %9, align 4
  %38 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %39 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = ashr i32 %40, 24
  %42 = and i32 %41, 255
  store i32 %42, i32* %10, align 4
  %43 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %44 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = ashr i32 %45, 22
  %47 = and i32 %46, 1
  store i32 %47, i32* %11, align 4
  %48 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %49 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %10, align 4
  %56 = and i32 %54, %55
  %57 = trunc i32 %56 to i16
  store i16 %57, i16* %13, align 2
  %58 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %59 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %10, align 4
  %66 = and i32 %64, %65
  %67 = trunc i32 %66 to i16
  store i16 %67, i16* %14, align 2
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %2
  %71 = load i32, i32* %10, align 4
  %72 = load i16, i16* %13, align 2
  %73 = zext i16 %72 to i32
  %74 = sub nsw i32 %71, %73
  %75 = trunc i32 %74 to i16
  store i16 %75, i16* %13, align 2
  %76 = load i32, i32* %10, align 4
  %77 = load i16, i16* %14, align 2
  %78 = zext i16 %77 to i32
  %79 = sub nsw i32 %76, %78
  %80 = trunc i32 %79 to i16
  store i16 %80, i16* %14, align 2
  br label %81

81:                                               ; preds = %70, %2
  %82 = load i32, i32* %8, align 4
  %83 = load i16, i16* %13, align 2
  %84 = zext i16 %83 to i32
  %85 = shl i32 %84, %82
  %86 = trunc i32 %85 to i16
  store i16 %86, i16* %13, align 2
  %87 = load i32, i32* %9, align 4
  %88 = load i16, i16* %14, align 2
  %89 = zext i16 %88 to i32
  %90 = shl i32 %89, %87
  %91 = trunc i32 %90 to i16
  store i16 %91, i16* %14, align 2
  %92 = load %struct.sonicvibes*, %struct.sonicvibes** %5, align 8
  %93 = getelementptr inbounds %struct.sonicvibes, %struct.sonicvibes* %92, i32 0, i32 0
  %94 = call i32 @spin_lock_irq(i32* %93)
  %95 = load %struct.sonicvibes*, %struct.sonicvibes** %5, align 8
  %96 = load i32, i32* %6, align 4
  %97 = call zeroext i16 @snd_sonicvibes_in1(%struct.sonicvibes* %95, i32 %96)
  store i16 %97, i16* %15, align 2
  %98 = load %struct.sonicvibes*, %struct.sonicvibes** %5, align 8
  %99 = load i32, i32* %7, align 4
  %100 = call zeroext i16 @snd_sonicvibes_in1(%struct.sonicvibes* %98, i32 %99)
  store i16 %100, i16* %16, align 2
  %101 = load i16, i16* %15, align 2
  %102 = zext i16 %101 to i32
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* %8, align 4
  %105 = shl i32 %103, %104
  %106 = xor i32 %105, -1
  %107 = and i32 %102, %106
  %108 = load i16, i16* %13, align 2
  %109 = zext i16 %108 to i32
  %110 = or i32 %107, %109
  %111 = trunc i32 %110 to i16
  store i16 %111, i16* %13, align 2
  %112 = load i16, i16* %16, align 2
  %113 = zext i16 %112 to i32
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* %9, align 4
  %116 = shl i32 %114, %115
  %117 = xor i32 %116, -1
  %118 = and i32 %113, %117
  %119 = load i16, i16* %14, align 2
  %120 = zext i16 %119 to i32
  %121 = or i32 %118, %120
  %122 = trunc i32 %121 to i16
  store i16 %122, i16* %14, align 2
  %123 = load i16, i16* %13, align 2
  %124 = zext i16 %123 to i32
  %125 = load i16, i16* %15, align 2
  %126 = zext i16 %125 to i32
  %127 = icmp ne i32 %124, %126
  br i1 %127, label %134, label %128

128:                                              ; preds = %81
  %129 = load i16, i16* %14, align 2
  %130 = zext i16 %129 to i32
  %131 = load i16, i16* %16, align 2
  %132 = zext i16 %131 to i32
  %133 = icmp ne i32 %130, %132
  br label %134

134:                                              ; preds = %128, %81
  %135 = phi i1 [ true, %81 ], [ %133, %128 ]
  %136 = zext i1 %135 to i32
  store i32 %136, i32* %12, align 4
  %137 = load %struct.sonicvibes*, %struct.sonicvibes** %5, align 8
  %138 = load i32, i32* %6, align 4
  %139 = load i16, i16* %13, align 2
  %140 = call i32 @snd_sonicvibes_out1(%struct.sonicvibes* %137, i32 %138, i16 zeroext %139)
  %141 = load %struct.sonicvibes*, %struct.sonicvibes** %5, align 8
  %142 = load i32, i32* %7, align 4
  %143 = load i16, i16* %14, align 2
  %144 = call i32 @snd_sonicvibes_out1(%struct.sonicvibes* %141, i32 %142, i16 zeroext %143)
  %145 = load %struct.sonicvibes*, %struct.sonicvibes** %5, align 8
  %146 = getelementptr inbounds %struct.sonicvibes, %struct.sonicvibes* %145, i32 0, i32 0
  %147 = call i32 @spin_unlock_irq(i32* %146)
  %148 = load i32, i32* %12, align 4
  ret i32 %148
}

declare dso_local %struct.sonicvibes* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local zeroext i16 @snd_sonicvibes_in1(%struct.sonicvibes*, i32) #1

declare dso_local i32 @snd_sonicvibes_out1(%struct.sonicvibes*, i32, i16 zeroext) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
