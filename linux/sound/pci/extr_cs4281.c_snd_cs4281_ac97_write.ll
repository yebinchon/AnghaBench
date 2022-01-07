; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_cs4281.c_snd_cs4281_ac97_write.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_cs4281.c_snd_cs4281_ac97_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { i64, %struct.cs4281* }
%struct.cs4281 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@BA0_ACCAD = common dso_local global i32 0, align 4
@BA0_ACCDA = common dso_local global i32 0, align 4
@BA0_ACCTL = common dso_local global i32 0, align 4
@BA0_ACCTL_DCV = common dso_local global i16 0, align 2
@BA0_ACCTL_VFRM = common dso_local global i16 0, align 2
@BA0_ACCTL_ESYN = common dso_local global i16 0, align 2
@BA0_ACCTL_TC = common dso_local global i16 0, align 2
@.str = private unnamed_addr constant [45 x i8] c"AC'97 write problem, reg = 0x%x, val = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ac97*, i16, i16)* @snd_cs4281_ac97_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_cs4281_ac97_write(%struct.snd_ac97* %0, i16 zeroext %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.snd_ac97*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca %struct.cs4281*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_ac97* %0, %struct.snd_ac97** %4, align 8
  store i16 %1, i16* %5, align 2
  store i16 %2, i16* %6, align 2
  %9 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %10 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %9, i32 0, i32 1
  %11 = load %struct.cs4281*, %struct.cs4281** %10, align 8
  store %struct.cs4281* %11, %struct.cs4281** %7, align 8
  %12 = load %struct.cs4281*, %struct.cs4281** %7, align 8
  %13 = load i32, i32* @BA0_ACCAD, align 4
  %14 = load i16, i16* %5, align 2
  %15 = call i32 @snd_cs4281_pokeBA0(%struct.cs4281* %12, i32 %13, i16 zeroext %14)
  %16 = load %struct.cs4281*, %struct.cs4281** %7, align 8
  %17 = load i32, i32* @BA0_ACCDA, align 4
  %18 = load i16, i16* %6, align 2
  %19 = call i32 @snd_cs4281_pokeBA0(%struct.cs4281* %16, i32 %17, i16 zeroext %18)
  %20 = load %struct.cs4281*, %struct.cs4281** %7, align 8
  %21 = load i32, i32* @BA0_ACCTL, align 4
  %22 = load i16, i16* @BA0_ACCTL_DCV, align 2
  %23 = zext i16 %22 to i32
  %24 = load i16, i16* @BA0_ACCTL_VFRM, align 2
  %25 = zext i16 %24 to i32
  %26 = or i32 %23, %25
  %27 = load i16, i16* @BA0_ACCTL_ESYN, align 2
  %28 = zext i16 %27 to i32
  %29 = or i32 %26, %28
  %30 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %31 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %3
  %35 = load i16, i16* @BA0_ACCTL_TC, align 2
  %36 = zext i16 %35 to i32
  br label %38

37:                                               ; preds = %3
  br label %38

38:                                               ; preds = %37, %34
  %39 = phi i32 [ %36, %34 ], [ 0, %37 ]
  %40 = or i32 %29, %39
  %41 = trunc i32 %40 to i16
  %42 = call i32 @snd_cs4281_pokeBA0(%struct.cs4281* %20, i32 %21, i16 zeroext %41)
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %58, %38
  %44 = load i32, i32* %8, align 4
  %45 = icmp slt i32 %44, 2000
  br i1 %45, label %46, label %61

46:                                               ; preds = %43
  %47 = call i32 @udelay(i32 10)
  %48 = load %struct.cs4281*, %struct.cs4281** %7, align 8
  %49 = load i32, i32* @BA0_ACCTL, align 4
  %50 = call zeroext i16 @snd_cs4281_peekBA0(%struct.cs4281* %48, i32 %49)
  %51 = zext i16 %50 to i32
  %52 = load i16, i16* @BA0_ACCTL_DCV, align 2
  %53 = zext i16 %52 to i32
  %54 = and i32 %51, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %46
  br label %70

57:                                               ; preds = %46
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %43

61:                                               ; preds = %43
  %62 = load %struct.cs4281*, %struct.cs4281** %7, align 8
  %63 = getelementptr inbounds %struct.cs4281, %struct.cs4281* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i16, i16* %5, align 2
  %68 = load i16, i16* %6, align 2
  %69 = call i32 @dev_err(i32 %66, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i16 zeroext %67, i16 zeroext %68)
  br label %70

70:                                               ; preds = %61, %56
  ret void
}

declare dso_local i32 @snd_cs4281_pokeBA0(%struct.cs4281*, i32, i16 zeroext) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local zeroext i16 @snd_cs4281_peekBA0(%struct.cs4281*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i16 zeroext, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
