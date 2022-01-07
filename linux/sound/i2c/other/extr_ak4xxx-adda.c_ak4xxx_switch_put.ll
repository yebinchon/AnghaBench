; ModuleID = '/home/carl/AnghaBench/linux/sound/i2c/other/extr_ak4xxx-adda.c_ak4xxx_switch_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/i2c/other/extr_ak4xxx-adda.c_ak4xxx_switch_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }
%struct.snd_akm4xxx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @ak4xxx_switch_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ak4xxx_switch_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_akm4xxx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %14 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %15 = call %struct.snd_akm4xxx* @snd_kcontrol_chip(%struct.snd_kcontrol* %14)
  store %struct.snd_akm4xxx* %15, %struct.snd_akm4xxx** %5, align 8
  %16 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %17 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @AK_GET_CHIP(i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %21 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @AK_GET_ADDR(i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %25 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @AK_GET_SHIFT(i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %29 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @AK_GET_INVERT(i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %33 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %10, align 8
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %2
  %42 = load i64, i64* %10, align 8
  %43 = icmp ne i64 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = sext i32 %45 to i64
  store i64 %46, i64* %10, align 8
  br label %47

47:                                               ; preds = %41, %2
  %48 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %5, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call zeroext i8 @snd_akm4xxx_get(%struct.snd_akm4xxx* %48, i32 %49, i32 %50)
  store i8 %51, i8* %12, align 1
  %52 = load i64, i64* %10, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %47
  %55 = load i8, i8* %12, align 1
  %56 = zext i8 %55 to i32
  %57 = load i32, i32* %8, align 4
  %58 = shl i32 1, %57
  %59 = or i32 %56, %58
  %60 = trunc i32 %59 to i8
  store i8 %60, i8* %11, align 1
  br label %69

61:                                               ; preds = %47
  %62 = load i8, i8* %12, align 1
  %63 = zext i8 %62 to i32
  %64 = load i32, i32* %8, align 4
  %65 = shl i32 1, %64
  %66 = xor i32 %65, -1
  %67 = and i32 %63, %66
  %68 = trunc i32 %67 to i8
  store i8 %68, i8* %11, align 1
  br label %69

69:                                               ; preds = %61, %54
  %70 = load i8, i8* %12, align 1
  %71 = zext i8 %70 to i32
  %72 = load i8, i8* %11, align 1
  %73 = zext i8 %72 to i32
  %74 = icmp ne i32 %71, %73
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %13, align 4
  %76 = load i32, i32* %13, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %69
  %79 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %5, align 8
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %7, align 4
  %82 = load i8, i8* %11, align 1
  %83 = call i32 @snd_akm4xxx_write(%struct.snd_akm4xxx* %79, i32 %80, i32 %81, i8 zeroext %82)
  br label %84

84:                                               ; preds = %78, %69
  %85 = load i32, i32* %13, align 4
  ret i32 %85
}

declare dso_local %struct.snd_akm4xxx* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @AK_GET_CHIP(i32) #1

declare dso_local i32 @AK_GET_ADDR(i32) #1

declare dso_local i32 @AK_GET_SHIFT(i32) #1

declare dso_local i32 @AK_GET_INVERT(i32) #1

declare dso_local zeroext i8 @snd_akm4xxx_get(%struct.snd_akm4xxx*, i32, i32) #1

declare dso_local i32 @snd_akm4xxx_write(%struct.snd_akm4xxx*, i32, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
