; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_codec.c_snd_ac97_valid_reg.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_codec.c_snd_ac97_valid_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ac97*, i16)* @snd_ac97_valid_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ac97_valid_reg(%struct.snd_ac97* %0, i16 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_ac97*, align 8
  %5 = alloca i16, align 2
  store %struct.snd_ac97* %0, %struct.snd_ac97** %4, align 8
  store i16 %1, i16* %5, align 2
  %6 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %7 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %78 [
    i32 128, label %9
    i32 136, label %15
    i32 138, label %25
    i32 137, label %25
    i32 145, label %43
    i32 144, label %43
    i32 143, label %43
    i32 142, label %53
    i32 141, label %53
    i32 140, label %53
    i32 139, label %53
    i32 135, label %68
    i32 134, label %68
    i32 133, label %68
    i32 132, label %68
    i32 131, label %68
    i32 130, label %68
    i32 129, label %68
  ]

9:                                                ; preds = %2
  %10 = load i16, i16* %5, align 2
  %11 = zext i16 %10 to i32
  %12 = icmp eq i32 %11, 8
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %79

14:                                               ; preds = %9
  br label %15

15:                                               ; preds = %2, %14
  %16 = load i16, i16* %5, align 2
  %17 = zext i16 %16 to i32
  %18 = icmp eq i32 %17, 34
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load i16, i16* %5, align 2
  %21 = zext i16 %20 to i32
  %22 = icmp eq i32 %21, 122
  br i1 %22, label %23, label %24

23:                                               ; preds = %19, %15
  store i32 1, i32* %3, align 4
  br label %79

24:                                               ; preds = %19
  br label %25

25:                                               ; preds = %2, %2, %24
  %26 = load i16, i16* %5, align 2
  %27 = zext i16 %26 to i32
  %28 = icmp sle i32 %27, 28
  br i1 %28, label %41, label %29

29:                                               ; preds = %25
  %30 = load i16, i16* %5, align 2
  %31 = zext i16 %30 to i32
  %32 = icmp eq i32 %31, 32
  br i1 %32, label %41, label %33

33:                                               ; preds = %29
  %34 = load i16, i16* %5, align 2
  %35 = zext i16 %34 to i32
  %36 = icmp eq i32 %35, 38
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load i16, i16* %5, align 2
  %39 = zext i16 %38 to i32
  %40 = icmp sge i32 %39, 124
  br i1 %40, label %41, label %42

41:                                               ; preds = %37, %33, %29, %25
  store i32 1, i32* %3, align 4
  br label %79

42:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %79

43:                                               ; preds = %2, %2, %2
  %44 = load i16, i16* %5, align 2
  %45 = zext i16 %44 to i32
  %46 = icmp sge i32 %45, 58
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = load i16, i16* %5, align 2
  %49 = zext i16 %48 to i32
  %50 = icmp sle i32 %49, 110
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %79

52:                                               ; preds = %47, %43
  store i32 1, i32* %3, align 4
  br label %79

53:                                               ; preds = %2, %2, %2, %2
  %54 = load i16, i16* %5, align 2
  %55 = zext i16 %54 to i32
  %56 = icmp eq i32 %55, 90
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store i32 1, i32* %3, align 4
  br label %79

58:                                               ; preds = %53
  %59 = load i16, i16* %5, align 2
  %60 = zext i16 %59 to i32
  %61 = icmp sge i32 %60, 60
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  %63 = load i16, i16* %5, align 2
  %64 = zext i16 %63 to i32
  %65 = icmp sle i32 %64, 110
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  store i32 0, i32* %3, align 4
  br label %79

67:                                               ; preds = %62, %58
  store i32 1, i32* %3, align 4
  br label %79

68:                                               ; preds = %2, %2, %2, %2, %2, %2, %2
  %69 = load i16, i16* %5, align 2
  %70 = zext i16 %69 to i32
  %71 = icmp sle i32 %70, 58
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = load i16, i16* %5, align 2
  %74 = zext i16 %73 to i32
  %75 = icmp sge i32 %74, 90
  br i1 %75, label %76, label %77

76:                                               ; preds = %72, %68
  store i32 1, i32* %3, align 4
  br label %79

77:                                               ; preds = %72
  store i32 0, i32* %3, align 4
  br label %79

78:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %79

79:                                               ; preds = %78, %77, %76, %67, %66, %57, %52, %51, %42, %41, %23, %13
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
