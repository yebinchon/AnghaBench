; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_rme9652.c_rme9652_spdif_sample_rate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_rme9652.c_rme9652_spdif_sample_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rme9652 = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@RME9652_status_register = common dso_local global i32 0, align 4
@RME9652_ERF = common dso_local global i32 0, align 4
@RME9652_F = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"%s: unknown S/PDIF input rate (bits = 0x%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_rme9652*)* @rme9652_spdif_sample_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rme9652_spdif_sample_rate(%struct.snd_rme9652* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_rme9652*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_rme9652* %0, %struct.snd_rme9652** %3, align 8
  %8 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %9 = load i32, i32* @RME9652_status_register, align 4
  %10 = call i32 @rme9652_read(%struct.snd_rme9652* %8, i32 %9)
  %11 = load i32, i32* @RME9652_ERF, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %104

15:                                               ; preds = %1
  %16 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %17 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, 15
  br i1 %19, label %20, label %79

20:                                               ; preds = %15
  %21 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %22 = call i32 @rme9652_spdif_read_codec(%struct.snd_rme9652* %21, i32 30)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* %5, align 4
  %27 = sdiv i32 3072000, %26
  store i32 %27, i32* %6, align 4
  br label %29

28:                                               ; preds = %20
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %28, %25
  %30 = load i32, i32* %6, align 4
  %31 = icmp sgt i32 %30, 30400
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %33, 33600
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 32000, i32* %7, align 4
  br label %77

36:                                               ; preds = %32, %29
  %37 = load i32, i32* %6, align 4
  %38 = icmp sgt i32 %37, 41900
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %40, 46000
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 44100, i32* %7, align 4
  br label %76

43:                                               ; preds = %39, %36
  %44 = load i32, i32* %6, align 4
  %45 = icmp sgt i32 %44, 46000
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %47, 50400
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i32 48000, i32* %7, align 4
  br label %75

50:                                               ; preds = %46, %43
  %51 = load i32, i32* %6, align 4
  %52 = icmp sgt i32 %51, 60800
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load i32, i32* %6, align 4
  %55 = icmp slt i32 %54, 67200
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i32 64000, i32* %7, align 4
  br label %74

57:                                               ; preds = %53, %50
  %58 = load i32, i32* %6, align 4
  %59 = icmp sgt i32 %58, 83700
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load i32, i32* %6, align 4
  %62 = icmp slt i32 %61, 92000
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  store i32 88200, i32* %7, align 4
  br label %73

64:                                               ; preds = %60, %57
  %65 = load i32, i32* %6, align 4
  %66 = icmp sgt i32 %65, 92000
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = load i32, i32* %6, align 4
  %69 = icmp slt i32 %68, 100000
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  store i32 96000, i32* %7, align 4
  br label %72

71:                                               ; preds = %67, %64
  store i32 0, i32* %7, align 4
  br label %72

72:                                               ; preds = %71, %70
  br label %73

73:                                               ; preds = %72, %63
  br label %74

74:                                               ; preds = %73, %56
  br label %75

75:                                               ; preds = %74, %49
  br label %76

76:                                               ; preds = %75, %42
  br label %77

77:                                               ; preds = %76, %35
  %78 = load i32, i32* %7, align 4
  store i32 %78, i32* %2, align 4
  br label %104

79:                                               ; preds = %15
  %80 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %81 = load i32, i32* @RME9652_status_register, align 4
  %82 = call i32 @rme9652_read(%struct.snd_rme9652* %80, i32 %81)
  %83 = load i32, i32* @RME9652_F, align 4
  %84 = and i32 %82, %83
  store i32 %84, i32* %4, align 4
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @rme9652_decode_spdif_rate(i32 %85)
  switch i32 %86, label %93 [
    i32 7, label %87
    i32 6, label %88
    i32 5, label %89
    i32 4, label %90
    i32 3, label %91
    i32 0, label %92
  ]

87:                                               ; preds = %79
  store i32 32000, i32* %2, align 4
  br label %104

88:                                               ; preds = %79
  store i32 44100, i32* %2, align 4
  br label %104

89:                                               ; preds = %79
  store i32 48000, i32* %2, align 4
  br label %104

90:                                               ; preds = %79
  store i32 88200, i32* %2, align 4
  br label %104

91:                                               ; preds = %79
  store i32 96000, i32* %2, align 4
  br label %104

92:                                               ; preds = %79
  store i32 64000, i32* %2, align 4
  br label %104

93:                                               ; preds = %79
  %94 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %95 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %94, i32 0, i32 2
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %100 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %4, align 4
  %103 = call i32 @dev_err(i32 %98, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %101, i32 %102)
  store i32 0, i32* %2, align 4
  br label %104

104:                                              ; preds = %93, %92, %91, %90, %89, %88, %87, %77, %14
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local i32 @rme9652_read(%struct.snd_rme9652*, i32) #1

declare dso_local i32 @rme9652_spdif_read_codec(%struct.snd_rme9652*, i32) #1

declare dso_local i32 @rme9652_decode_spdif_rate(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
