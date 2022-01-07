; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/extr_es18xx.c_snd_es18xx_put_single.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/extr_es18xx.c_snd_es18xx_put_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_es18xx = type { i64 }

@ES18XX_FL_INVERT = common dso_local global i32 0, align 4
@ES18XX_FL_PMPORT = common dso_local global i32 0, align 4
@ES18XX_PM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_es18xx_put_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_es18xx_put_single(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_es18xx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %14 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %15 = call %struct.snd_es18xx* @snd_kcontrol_chip(%struct.snd_kcontrol* %14)
  store %struct.snd_es18xx* %15, %struct.snd_es18xx** %6, align 8
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
  %34 = load i32, i32* @ES18XX_FL_INVERT, align 4
  %35 = and i32 %33, %34
  store i32 %35, i32* %10, align 4
  %36 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %37 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = ashr i32 %38, 24
  %40 = load i32, i32* @ES18XX_FL_PMPORT, align 4
  %41 = and i32 %39, %40
  store i32 %41, i32* %11, align 4
  %42 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %43 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %9, align 4
  %50 = and i32 %48, %49
  %51 = trunc i32 %50 to i8
  store i8 %51, i8* %12, align 1
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %2
  %55 = load i32, i32* %9, align 4
  %56 = load i8, i8* %12, align 1
  %57 = zext i8 %56 to i32
  %58 = sub nsw i32 %55, %57
  %59 = trunc i32 %58 to i8
  store i8 %59, i8* %12, align 1
  br label %60

60:                                               ; preds = %54, %2
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %9, align 4
  %63 = shl i32 %62, %61
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load i8, i8* %12, align 1
  %66 = zext i8 %65 to i32
  %67 = shl i32 %66, %64
  %68 = trunc i32 %67 to i8
  store i8 %68, i8* %12, align 1
  %69 = load i32, i32* %11, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %102

71:                                               ; preds = %60
  %72 = load %struct.snd_es18xx*, %struct.snd_es18xx** %6, align 8
  %73 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @ES18XX_PM, align 8
  %76 = add nsw i64 %74, %75
  %77 = call zeroext i8 @inb(i64 %76)
  store i8 %77, i8* %13, align 1
  %78 = load i8, i8* %13, align 1
  %79 = zext i8 %78 to i32
  %80 = load i32, i32* %9, align 4
  %81 = and i32 %79, %80
  %82 = load i8, i8* %12, align 1
  %83 = zext i8 %82 to i32
  %84 = icmp eq i32 %81, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %71
  store i32 0, i32* %3, align 4
  br label %113

86:                                               ; preds = %71
  %87 = load i8, i8* %13, align 1
  %88 = zext i8 %87 to i32
  %89 = load i32, i32* %9, align 4
  %90 = xor i32 %89, -1
  %91 = and i32 %88, %90
  %92 = load i8, i8* %12, align 1
  %93 = zext i8 %92 to i32
  %94 = or i32 %91, %93
  %95 = trunc i32 %94 to i8
  %96 = load %struct.snd_es18xx*, %struct.snd_es18xx** %6, align 8
  %97 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @ES18XX_PM, align 8
  %100 = add nsw i64 %98, %99
  %101 = call i32 @outb(i8 zeroext %95, i64 %100)
  store i32 1, i32* %3, align 4
  br label %113

102:                                              ; preds = %60
  %103 = load %struct.snd_es18xx*, %struct.snd_es18xx** %6, align 8
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* %9, align 4
  %106 = load i8, i8* %12, align 1
  %107 = call zeroext i8 @snd_es18xx_reg_bits(%struct.snd_es18xx* %103, i32 %104, i32 %105, i8 zeroext %106)
  %108 = zext i8 %107 to i32
  %109 = load i8, i8* %12, align 1
  %110 = zext i8 %109 to i32
  %111 = icmp ne i32 %108, %110
  %112 = zext i1 %111 to i32
  store i32 %112, i32* %3, align 4
  br label %113

113:                                              ; preds = %102, %86, %85
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local %struct.snd_es18xx* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local zeroext i8 @inb(i64) #1

declare dso_local i32 @outb(i8 zeroext, i64) #1

declare dso_local zeroext i8 @snd_es18xx_reg_bits(%struct.snd_es18xx*, i32, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
