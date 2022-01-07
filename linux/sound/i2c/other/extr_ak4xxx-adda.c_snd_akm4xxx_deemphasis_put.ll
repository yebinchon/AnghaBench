; ModuleID = '/home/carl/AnghaBench/linux/sound/i2c/other/extr_ak4xxx-adda.c_snd_akm4xxx_deemphasis_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/i2c/other/extr_ak4xxx-adda.c_snd_akm4xxx_deemphasis_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_akm4xxx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_akm4xxx_deemphasis_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_akm4xxx_deemphasis_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_akm4xxx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %11 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %12 = call %struct.snd_akm4xxx* @snd_kcontrol_chip(%struct.snd_kcontrol* %11)
  store %struct.snd_akm4xxx* %12, %struct.snd_akm4xxx** %5, align 8
  %13 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %14 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @AK_GET_CHIP(i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %18 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @AK_GET_ADDR(i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %22 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @AK_GET_SHIFT(i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %26 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 3
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* %9, align 1
  %34 = load i8, i8* %9, align 1
  %35 = zext i8 %34 to i32
  %36 = load i32, i32* %8, align 4
  %37 = shl i32 %35, %36
  %38 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call zeroext i8 @snd_akm4xxx_get(%struct.snd_akm4xxx* %38, i32 %39, i32 %40)
  %42 = zext i8 %41 to i32
  %43 = load i32, i32* %8, align 4
  %44 = shl i32 3, %43
  %45 = xor i32 %44, -1
  %46 = and i32 %42, %45
  %47 = or i32 %37, %46
  %48 = trunc i32 %47 to i8
  store i8 %48, i8* %9, align 1
  %49 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %5, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call zeroext i8 @snd_akm4xxx_get(%struct.snd_akm4xxx* %49, i32 %50, i32 %51)
  %53 = zext i8 %52 to i32
  %54 = load i8, i8* %9, align 1
  %55 = zext i8 %54 to i32
  %56 = icmp ne i32 %53, %55
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %2
  %61 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %5, align 8
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load i8, i8* %9, align 1
  %65 = call i32 @snd_akm4xxx_write(%struct.snd_akm4xxx* %61, i32 %62, i32 %63, i8 zeroext %64)
  br label %66

66:                                               ; preds = %60, %2
  %67 = load i32, i32* %10, align 4
  ret i32 %67
}

declare dso_local %struct.snd_akm4xxx* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @AK_GET_CHIP(i32) #1

declare dso_local i32 @AK_GET_ADDR(i32) #1

declare dso_local i32 @AK_GET_SHIFT(i32) #1

declare dso_local zeroext i8 @snd_akm4xxx_get(%struct.snd_akm4xxx*, i32, i32) #1

declare dso_local i32 @snd_akm4xxx_write(%struct.snd_akm4xxx*, i32, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
