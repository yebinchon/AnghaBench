; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/extr_es18xx.c_snd_es18xx_put_mux.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/extr_es18xx.c_snd_es18xx_put_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }
%struct.snd_es18xx = type { i32 }

@snd_es18xx_put_mux.map4Source = internal global [4 x i8] c"\00\02\06\07", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_es18xx_put_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_es18xx_put_mux(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_es18xx*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %9 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %10 = call %struct.snd_es18xx* @snd_kcontrol_chip(%struct.snd_kcontrol* %9)
  store %struct.snd_es18xx* %10, %struct.snd_es18xx** %6, align 8
  %11 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %12 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  store i8 %17, i8* %7, align 1
  store i8 0, i8* %8, align 1
  %18 = load %struct.snd_es18xx*, %struct.snd_es18xx** %6, align 8
  %19 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %67 [
    i32 6279, label %21
    i32 6280, label %21
    i32 6248, label %47
    i32 6264, label %47
    i32 6249, label %59
    i32 6265, label %59
  ]

21:                                               ; preds = %2, %2
  %22 = load i8, i8* %7, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp sgt i32 %23, 4
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %85

28:                                               ; preds = %21
  %29 = load i8, i8* %7, align 1
  %30 = zext i8 %29 to i32
  %31 = icmp eq i32 %30, 4
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = load %struct.snd_es18xx*, %struct.snd_es18xx** %6, align 8
  %34 = call zeroext i8 @snd_es18xx_mixer_bits(%struct.snd_es18xx* %33, i32 122, i32 8, i8 zeroext 8)
  %35 = zext i8 %34 to i32
  %36 = icmp ne i32 %35, 8
  %37 = zext i1 %36 to i32
  %38 = trunc i32 %37 to i8
  store i8 %38, i8* %8, align 1
  store i8 3, i8* %7, align 1
  br label %46

39:                                               ; preds = %28
  %40 = load %struct.snd_es18xx*, %struct.snd_es18xx** %6, align 8
  %41 = call zeroext i8 @snd_es18xx_mixer_bits(%struct.snd_es18xx* %40, i32 122, i32 8, i8 zeroext 0)
  %42 = zext i8 %41 to i32
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i32
  %45 = trunc i32 %44 to i8
  store i8 %45, i8* %8, align 1
  br label %46

46:                                               ; preds = %39, %32
  br label %47

47:                                               ; preds = %2, %2, %46
  %48 = load i8, i8* %7, align 1
  %49 = zext i8 %48 to i32
  %50 = icmp sgt i32 %49, 3
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %85

54:                                               ; preds = %47
  %55 = load i8, i8* %7, align 1
  %56 = zext i8 %55 to i64
  %57 = getelementptr inbounds [4 x i8], [4 x i8]* @snd_es18xx_put_mux.map4Source, i64 0, i64 %56
  %58 = load i8, i8* %57, align 1
  store i8 %58, i8* %7, align 1
  br label %70

59:                                               ; preds = %2, %2
  %60 = load i8, i8* %7, align 1
  %61 = zext i8 %60 to i32
  %62 = icmp sgt i32 %61, 7
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %85

66:                                               ; preds = %59
  br label %70

67:                                               ; preds = %2
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %85

70:                                               ; preds = %66, %54
  %71 = load %struct.snd_es18xx*, %struct.snd_es18xx** %6, align 8
  %72 = load i8, i8* %7, align 1
  %73 = call zeroext i8 @snd_es18xx_mixer_bits(%struct.snd_es18xx* %71, i32 28, i32 7, i8 zeroext %72)
  %74 = zext i8 %73 to i32
  %75 = load i8, i8* %7, align 1
  %76 = zext i8 %75 to i32
  %77 = icmp ne i32 %74, %76
  br i1 %77, label %82, label %78

78:                                               ; preds = %70
  %79 = load i8, i8* %8, align 1
  %80 = zext i8 %79 to i32
  %81 = icmp ne i32 %80, 0
  br label %82

82:                                               ; preds = %78, %70
  %83 = phi i1 [ true, %70 ], [ %81, %78 ]
  %84 = zext i1 %83 to i32
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %82, %67, %63, %51, %25
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local %struct.snd_es18xx* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local zeroext i8 @snd_es18xx_mixer_bits(%struct.snd_es18xx*, i32, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
