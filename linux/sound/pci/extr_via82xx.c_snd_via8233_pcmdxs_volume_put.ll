; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_via82xx.c_snd_via8233_pcmdxs_volume_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_via82xx.c_snd_via8233_pcmdxs_volume_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }
%struct.via82xx = type { i8*, i32, i8** }

@VIA_DXS_MAX_VOLUME = common dso_local global i8 0, align 1
@VIA_REG_OFS_PLAYBACK_VOLUME_L = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_via8233_pcmdxs_volume_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_via8233_pcmdxs_volume_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.via82xx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %11 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %12 = call %struct.via82xx* @snd_kcontrol_chip(%struct.snd_kcontrol* %11)
  store %struct.via82xx* %12, %struct.via82xx** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %94, %2
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 2
  br i1 %15, label %16, label %97

16:                                               ; preds = %13
  %17 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %18 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = load i8, i8* %24, align 1
  store i8 %25, i8* %7, align 1
  %26 = load i8, i8* %7, align 1
  %27 = zext i8 %26 to i32
  %28 = load i8, i8* @VIA_DXS_MAX_VOLUME, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp sgt i32 %27, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %16
  %32 = load i8, i8* @VIA_DXS_MAX_VOLUME, align 1
  store i8 %32, i8* %7, align 1
  br label %33

33:                                               ; preds = %31, %16
  %34 = load i8, i8* @VIA_DXS_MAX_VOLUME, align 1
  %35 = zext i8 %34 to i32
  %36 = load i8, i8* %7, align 1
  %37 = zext i8 %36 to i32
  %38 = sub nsw i32 %35, %37
  %39 = trunc i32 %38 to i8
  store i8 %39, i8* %7, align 1
  %40 = load i8, i8* %7, align 1
  %41 = zext i8 %40 to i32
  %42 = load %struct.via82xx*, %struct.via82xx** %5, align 8
  %43 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = icmp ne i32 %41, %49
  br i1 %50, label %51, label %93

51:                                               ; preds = %33
  store i32 1, i32* %9, align 4
  %52 = load i8, i8* %7, align 1
  %53 = load %struct.via82xx*, %struct.via82xx** %5, align 8
  %54 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  store i8 %52, i8* %58, align 1
  store i32 0, i32* %6, align 4
  br label %59

59:                                               ; preds = %89, %51
  %60 = load i32, i32* %6, align 4
  %61 = icmp ult i32 %60, 4
  br i1 %61, label %62, label %92

62:                                               ; preds = %59
  %63 = load %struct.via82xx*, %struct.via82xx** %5, align 8
  %64 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = mul i32 16, %66
  %68 = add i32 %65, %67
  %69 = zext i32 %68 to i64
  store i64 %69, i64* %10, align 8
  %70 = load i8, i8* %7, align 1
  %71 = load %struct.via82xx*, %struct.via82xx** %5, align 8
  %72 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %71, i32 0, i32 2
  %73 = load i8**, i8*** %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i8*, i8** %73, i64 %75
  %77 = load i8*, i8** %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  store i8 %70, i8* %80, align 1
  %81 = load i8, i8* %7, align 1
  %82 = load i64, i64* %10, align 8
  %83 = load i64, i64* @VIA_REG_OFS_PLAYBACK_VOLUME_L, align 8
  %84 = add i64 %82, %83
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = add i64 %84, %86
  %88 = call i32 @outb(i8 zeroext %81, i64 %87)
  br label %89

89:                                               ; preds = %62
  %90 = load i32, i32* %6, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %6, align 4
  br label %59

92:                                               ; preds = %59
  br label %93

93:                                               ; preds = %92, %33
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %8, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %8, align 4
  br label %13

97:                                               ; preds = %13
  %98 = load i32, i32* %9, align 4
  ret i32 %98
}

declare dso_local %struct.via82xx* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @outb(i8 zeroext, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
