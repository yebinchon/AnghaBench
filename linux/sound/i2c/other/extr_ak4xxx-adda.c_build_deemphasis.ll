; ModuleID = '/home/carl/AnghaBench/linux/sound/i2c/other/extr_ak4xxx-adda.c_build_deemphasis.c'
source_filename = "/home/carl/AnghaBench/linux/sound/i2c/other/extr_ak4xxx-adda.c_build_deemphasis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_akm4xxx = type { i32, i32, i64 }
%struct.snd_kcontrol_new = type { i8*, i32, i8*, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [11 x i8] c"Deemphasis\00", align 1
@SNDRV_CTL_ELEM_IFACE_MIXER = common dso_local global i32 0, align 4
@snd_akm4xxx_deemphasis_info = common dso_local global i32 0, align 4
@snd_akm4xxx_deemphasis_get = common dso_local global i32 0, align 4
@snd_akm4xxx_deemphasis_put = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_akm4xxx*, i32)* @build_deemphasis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_deemphasis(%struct.snd_akm4xxx* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_akm4xxx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_kcontrol_new, align 8
  %9 = alloca i32, align 4
  store %struct.snd_akm4xxx* %0, %struct.snd_akm4xxx** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %76, %2
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %79

14:                                               ; preds = %10
  %15 = call i32 @memset(%struct.snd_kcontrol_new* %8, i32 0, i32 48)
  %16 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %8, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %16, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %4, align 8
  %20 = getelementptr inbounds %struct.snd_akm4xxx, %struct.snd_akm4xxx* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %18, %21
  %23 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %8, i32 0, i32 7
  store i64 %22, i64* %23, align 8
  %24 = load i32, i32* @SNDRV_CTL_ELEM_IFACE_MIXER, align 4
  %25 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %8, i32 0, i32 6
  store i32 %24, i32* %25, align 4
  %26 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %8, i32 0, i32 1
  store i32 1, i32* %26, align 8
  %27 = load i32, i32* @snd_akm4xxx_deemphasis_info, align 4
  %28 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %8, i32 0, i32 5
  store i32 %27, i32* %28, align 8
  %29 = load i32, i32* @snd_akm4xxx_deemphasis_get, align 4
  %30 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %8, i32 0, i32 4
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* @snd_akm4xxx_deemphasis_put, align 4
  %32 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %8, i32 0, i32 3
  store i32 %31, i32* %32, align 8
  %33 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %4, align 8
  %34 = getelementptr inbounds %struct.snd_akm4xxx, %struct.snd_akm4xxx* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  switch i32 %35, label %61 [
    i32 131, label %36
    i32 130, label %36
    i32 128, label %36
    i32 129, label %40
    i32 134, label %53
    i32 133, label %53
    i32 132, label %57
  ]

36:                                               ; preds = %14, %14, %14
  %37 = load i32, i32* %6, align 4
  %38 = call i8* @AK_COMPOSE(i32 %37, i32 3, i32 0, i32 0)
  %39 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %8, i32 0, i32 2
  store i8* %38, i8** %39, align 8
  br label %64

40:                                               ; preds = %14
  %41 = load i32, i32* %6, align 4
  %42 = icmp eq i32 %41, 3
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  br label %48

44:                                               ; preds = %40
  %45 = load i32, i32* %6, align 4
  %46 = sub nsw i32 2, %45
  %47 = mul nsw i32 %46, 2
  br label %48

48:                                               ; preds = %44, %43
  %49 = phi i32 [ 6, %43 ], [ %47, %44 ]
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i8* @AK_COMPOSE(i32 0, i32 8, i32 %50, i32 0)
  %52 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %8, i32 0, i32 2
  store i8* %51, i8** %52, align 8
  br label %64

53:                                               ; preds = %14, %14
  %54 = load i32, i32* %6, align 4
  %55 = call i8* @AK_COMPOSE(i32 %54, i32 3, i32 0, i32 0)
  %56 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %8, i32 0, i32 2
  store i8* %55, i8** %56, align 8
  br label %64

57:                                               ; preds = %14
  %58 = load i32, i32* %6, align 4
  %59 = call i8* @AK_COMPOSE(i32 %58, i32 1, i32 1, i32 0)
  %60 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %8, i32 0, i32 2
  store i8* %59, i8** %60, align 8
  br label %64

61:                                               ; preds = %14
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %80

64:                                               ; preds = %57, %53, %48, %36
  %65 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %4, align 8
  %66 = getelementptr inbounds %struct.snd_akm4xxx, %struct.snd_akm4xxx* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %4, align 8
  %69 = call i32 @snd_ctl_new1(%struct.snd_kcontrol_new* %8, %struct.snd_akm4xxx* %68)
  %70 = call i32 @snd_ctl_add(i32 %67, i32 %69)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %64
  %74 = load i32, i32* %7, align 4
  store i32 %74, i32* %3, align 4
  br label %80

75:                                               ; preds = %64
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %6, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %6, align 4
  br label %10

79:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %79, %73, %61
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @memset(%struct.snd_kcontrol_new*, i32, i32) #1

declare dso_local i8* @AK_COMPOSE(i32, i32, i32, i32) #1

declare dso_local i32 @snd_ctl_add(i32, i32) #1

declare dso_local i32 @snd_ctl_new1(%struct.snd_kcontrol_new*, %struct.snd_akm4xxx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
