; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_cs4281.c_snd_cs4281_ac97_read.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_cs4281.c_snd_cs4281_ac97_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { i32, %struct.cs4281* }
%struct.cs4281 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@BA0_ACSDA2 = common dso_local global i32 0, align 4
@BA0_ACSDA = common dso_local global i32 0, align 4
@BA0_ACCAD = common dso_local global i32 0, align 4
@BA0_ACCDA = common dso_local global i32 0, align 4
@BA0_ACCTL = common dso_local global i32 0, align 4
@BA0_ACCTL_DCV = common dso_local global i32 0, align 4
@BA0_ACCTL_CRW = common dso_local global i32 0, align 4
@BA0_ACCTL_VFRM = common dso_local global i32 0, align 4
@BA0_ACCTL_ESYN = common dso_local global i32 0, align 4
@BA0_ACCTL_TC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"AC'97 read problem (ACCTL_DCV), reg = 0x%x\0A\00", align 1
@BA0_ACSTS2 = common dso_local global i32 0, align 4
@BA0_ACSTS = common dso_local global i32 0, align 4
@BA0_ACSTS_VSTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"AC'97 read problem (ACSTS_VSTS), reg = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.snd_ac97*, i16)* @snd_cs4281_ac97_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @snd_cs4281_ac97_read(%struct.snd_ac97* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.snd_ac97*, align 8
  %4 = alloca i16, align 2
  %5 = alloca %struct.cs4281*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  store %struct.snd_ac97* %0, %struct.snd_ac97** %3, align 8
  store i16 %1, i16* %4, align 2
  %9 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %10 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %9, i32 0, i32 1
  %11 = load %struct.cs4281*, %struct.cs4281** %10, align 8
  store %struct.cs4281* %11, %struct.cs4281** %5, align 8
  %12 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %13 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %12, i32 0, i32 0
  %14 = load volatile i32, i32* %13, align 8
  store volatile i32 %14, i32* %8, align 4
  %15 = load %struct.cs4281*, %struct.cs4281** %5, align 8
  %16 = load volatile i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @BA0_ACSDA2, align 4
  br label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @BA0_ACSDA, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  %24 = call i32 @snd_cs4281_peekBA0(%struct.cs4281* %15, i32 %23)
  %25 = load %struct.cs4281*, %struct.cs4281** %5, align 8
  %26 = load i32, i32* @BA0_ACCAD, align 4
  %27 = load i16, i16* %4, align 2
  %28 = zext i16 %27 to i32
  %29 = call i32 @snd_cs4281_pokeBA0(%struct.cs4281* %25, i32 %26, i32 %28)
  %30 = load %struct.cs4281*, %struct.cs4281** %5, align 8
  %31 = load i32, i32* @BA0_ACCDA, align 4
  %32 = call i32 @snd_cs4281_pokeBA0(%struct.cs4281* %30, i32 %31, i32 0)
  %33 = load %struct.cs4281*, %struct.cs4281** %5, align 8
  %34 = load i32, i32* @BA0_ACCTL, align 4
  %35 = load i32, i32* @BA0_ACCTL_DCV, align 4
  %36 = load i32, i32* @BA0_ACCTL_CRW, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @BA0_ACCTL_VFRM, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @BA0_ACCTL_ESYN, align 4
  %41 = or i32 %39, %40
  %42 = load volatile i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %22
  %45 = load i32, i32* @BA0_ACCTL_TC, align 4
  br label %47

46:                                               ; preds = %22
  br label %47

47:                                               ; preds = %46, %44
  %48 = phi i32 [ %45, %44 ], [ 0, %46 ]
  %49 = or i32 %41, %48
  %50 = call i32 @snd_cs4281_pokeBA0(%struct.cs4281* %33, i32 %34, i32 %49)
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %64, %47
  %52 = load i32, i32* %6, align 4
  %53 = icmp slt i32 %52, 500
  br i1 %53, label %54, label %67

54:                                               ; preds = %51
  %55 = call i32 @udelay(i32 10)
  %56 = load %struct.cs4281*, %struct.cs4281** %5, align 8
  %57 = load i32, i32* @BA0_ACCTL, align 4
  %58 = call i32 @snd_cs4281_peekBA0(%struct.cs4281* %56, i32 %57)
  %59 = load i32, i32* @BA0_ACCTL_DCV, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %54
  br label %75

63:                                               ; preds = %54
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %6, align 4
  br label %51

67:                                               ; preds = %51
  %68 = load %struct.cs4281*, %struct.cs4281** %5, align 8
  %69 = getelementptr inbounds %struct.cs4281, %struct.cs4281* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i16, i16* %4, align 2
  %74 = call i32 @dev_err(i32 %72, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i16 zeroext %73)
  store i16 -1, i16* %7, align 2
  br label %119

75:                                               ; preds = %62
  store i32 0, i32* %6, align 4
  br label %76

76:                                               ; preds = %96, %75
  %77 = load i32, i32* %6, align 4
  %78 = icmp slt i32 %77, 100
  br i1 %78, label %79, label %99

79:                                               ; preds = %76
  %80 = load %struct.cs4281*, %struct.cs4281** %5, align 8
  %81 = load volatile i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  %84 = load i32, i32* @BA0_ACSTS2, align 4
  br label %87

85:                                               ; preds = %79
  %86 = load i32, i32* @BA0_ACSTS, align 4
  br label %87

87:                                               ; preds = %85, %83
  %88 = phi i32 [ %84, %83 ], [ %86, %85 ]
  %89 = call i32 @snd_cs4281_peekBA0(%struct.cs4281* %80, i32 %88)
  %90 = load i32, i32* @BA0_ACSTS_VSTS, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  br label %107

94:                                               ; preds = %87
  %95 = call i32 @udelay(i32 10)
  br label %96

96:                                               ; preds = %94
  %97 = load i32, i32* %6, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %6, align 4
  br label %76

99:                                               ; preds = %76
  %100 = load %struct.cs4281*, %struct.cs4281** %5, align 8
  %101 = getelementptr inbounds %struct.cs4281, %struct.cs4281* %100, i32 0, i32 0
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i16, i16* %4, align 2
  %106 = call i32 @dev_err(i32 %104, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i16 zeroext %105)
  store i16 -1, i16* %7, align 2
  br label %119

107:                                              ; preds = %93
  %108 = load %struct.cs4281*, %struct.cs4281** %5, align 8
  %109 = load volatile i32, i32* %8, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %107
  %112 = load i32, i32* @BA0_ACSDA2, align 4
  br label %115

113:                                              ; preds = %107
  %114 = load i32, i32* @BA0_ACSDA, align 4
  br label %115

115:                                              ; preds = %113, %111
  %116 = phi i32 [ %112, %111 ], [ %114, %113 ]
  %117 = call i32 @snd_cs4281_peekBA0(%struct.cs4281* %108, i32 %116)
  %118 = trunc i32 %117 to i16
  store i16 %118, i16* %7, align 2
  br label %119

119:                                              ; preds = %115, %99, %67
  %120 = load i16, i16* %7, align 2
  ret i16 %120
}

declare dso_local i32 @snd_cs4281_peekBA0(%struct.cs4281*, i32) #1

declare dso_local i32 @snd_cs4281_pokeBA0(%struct.cs4281*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
