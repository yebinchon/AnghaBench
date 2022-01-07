; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_codec.c_snd_ac97_cmix_new_stereo.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_codec.c_snd_ac97_cmix_new_stereo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { i32 }
%struct.snd_ac97 = type { i32 }

@SNDRV_CTL_ELEM_ID_NAME_MAXLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%s Switch\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%s Volume\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_card*, i8*, i32, i32, i32, %struct.snd_ac97*)* @snd_ac97_cmix_new_stereo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ac97_cmix_new_stereo(%struct.snd_card* %0, i8* %1, i32 %2, i32 %3, i32 %4, %struct.snd_ac97* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_card*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.snd_ac97*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  %19 = alloca i32, align 4
  store %struct.snd_card* %0, %struct.snd_card** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.snd_ac97* %5, %struct.snd_ac97** %13, align 8
  %20 = load i32, i32* @SNDRV_CTL_ELEM_ID_NAME_MAXLEN, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %15, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %16, align 8
  %24 = load %struct.snd_ac97*, %struct.snd_ac97** %13, align 8
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @snd_ac97_valid_reg(%struct.snd_ac97* %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  store i32 1, i32* %19, align 4
  br label %67

29:                                               ; preds = %6
  %30 = load %struct.snd_ac97*, %struct.snd_ac97** %13, align 8
  %31 = load i32, i32* %10, align 4
  %32 = call i64 @snd_ac97_try_bit(%struct.snd_ac97* %30, i32 %31, i32 15)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %29
  %35 = load i8*, i8** %9, align 8
  %36 = call i32 @sprintf(i8* %23, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %35)
  %37 = load %struct.snd_card*, %struct.snd_card** %8, align 8
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %12, align 4
  %41 = load %struct.snd_ac97*, %struct.snd_ac97** %13, align 8
  %42 = call i32 @snd_ac97_cmute_new_stereo(%struct.snd_card* %37, i8* %23, i32 %38, i32 %39, i32 %40, %struct.snd_ac97* %41)
  store i32 %42, i32* %14, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %34
  %45 = load i32, i32* %14, align 4
  store i32 %45, i32* %7, align 4
  store i32 1, i32* %19, align 4
  br label %67

46:                                               ; preds = %34
  br label %47

47:                                               ; preds = %46, %29
  %48 = load %struct.snd_ac97*, %struct.snd_ac97** %13, align 8
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @check_volume_resolution(%struct.snd_ac97* %48, i32 %49, i8* %17, i8* %18)
  %51 = load i8, i8* %17, align 1
  %52 = icmp ne i8 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %47
  %54 = load i8*, i8** %9, align 8
  %55 = call i32 @sprintf(i8* %23, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %54)
  %56 = load %struct.snd_card*, %struct.snd_card** %8, align 8
  %57 = load i32, i32* %10, align 4
  %58 = load i8, i8* %17, align 1
  %59 = load i8, i8* %18, align 1
  %60 = load %struct.snd_ac97*, %struct.snd_ac97** %13, align 8
  %61 = call i32 @snd_ac97_cvol_new(%struct.snd_card* %56, i8* %23, i32 %57, i8 zeroext %58, i8 zeroext %59, %struct.snd_ac97* %60)
  store i32 %61, i32* %14, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %53
  %64 = load i32, i32* %14, align 4
  store i32 %64, i32* %7, align 4
  store i32 1, i32* %19, align 4
  br label %67

65:                                               ; preds = %53
  br label %66

66:                                               ; preds = %65, %47
  store i32 0, i32* %7, align 4
  store i32 1, i32* %19, align 4
  br label %67

67:                                               ; preds = %66, %63, %44, %28
  %68 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %68)
  %69 = load i32, i32* %7, align 4
  ret i32 %69
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snd_ac97_valid_reg(%struct.snd_ac97*, i32) #2

declare dso_local i64 @snd_ac97_try_bit(%struct.snd_ac97*, i32, i32) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*) #2

declare dso_local i32 @snd_ac97_cmute_new_stereo(%struct.snd_card*, i8*, i32, i32, i32, %struct.snd_ac97*) #2

declare dso_local i32 @check_volume_resolution(%struct.snd_ac97*, i32, i8*, i8*) #2

declare dso_local i32 @snd_ac97_cvol_new(%struct.snd_card*, i8*, i32, i8 zeroext, i8 zeroext, %struct.snd_ac97*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
