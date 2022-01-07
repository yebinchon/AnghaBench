; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/dice/extr_dice-stream.c_snd_dice_stream_init_duplex.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/dice/extr_dice-stream.c_snd_dice_stream_init_duplex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_dice = type { i32 }

@MAX_STREAMS = common dso_local global i32 0, align 4
@AMDTP_IN_STREAM = common dso_local global i32 0, align 4
@AMDTP_OUT_STREAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_dice_stream_init_duplex(%struct.snd_dice* %0) #0 {
  %2 = alloca %struct.snd_dice*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.snd_dice* %0, %struct.snd_dice** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %30, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @MAX_STREAMS, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %33

9:                                                ; preds = %5
  %10 = load %struct.snd_dice*, %struct.snd_dice** %2, align 8
  %11 = load i32, i32* @AMDTP_IN_STREAM, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @init_stream(%struct.snd_dice* %10, i32 %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %9
  br label %17

17:                                               ; preds = %25, %16
  %18 = load i32, i32* %3, align 4
  %19 = icmp sge i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %17
  %21 = load %struct.snd_dice*, %struct.snd_dice** %2, align 8
  %22 = load i32, i32* @AMDTP_IN_STREAM, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @destroy_stream(%struct.snd_dice* %21, i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %20
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %3, align 4
  br label %17

28:                                               ; preds = %17
  br label %100

29:                                               ; preds = %9
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %5

33:                                               ; preds = %5
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %72, %33
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @MAX_STREAMS, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %75

38:                                               ; preds = %34
  %39 = load %struct.snd_dice*, %struct.snd_dice** %2, align 8
  %40 = load i32, i32* @AMDTP_OUT_STREAM, align 4
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @init_stream(%struct.snd_dice* %39, i32 %40, i32 %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %71

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %54, %45
  %47 = load i32, i32* %3, align 4
  %48 = icmp sge i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %46
  %50 = load %struct.snd_dice*, %struct.snd_dice** %2, align 8
  %51 = load i32, i32* @AMDTP_OUT_STREAM, align 4
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @destroy_stream(%struct.snd_dice* %50, i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %49
  %55 = load i32, i32* %3, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %3, align 4
  br label %46

57:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %67, %57
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* @MAX_STREAMS, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %58
  %63 = load %struct.snd_dice*, %struct.snd_dice** %2, align 8
  %64 = load i32, i32* @AMDTP_IN_STREAM, align 4
  %65 = load i32, i32* %3, align 4
  %66 = call i32 @destroy_stream(%struct.snd_dice* %63, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %62
  %68 = load i32, i32* %3, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %3, align 4
  br label %58

70:                                               ; preds = %58
  br label %100

71:                                               ; preds = %38
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %3, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %3, align 4
  br label %34

75:                                               ; preds = %34
  %76 = load %struct.snd_dice*, %struct.snd_dice** %2, align 8
  %77 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %76, i32 0, i32 0
  %78 = call i32 @amdtp_domain_init(i32* %77)
  store i32 %78, i32* %4, align 4
  %79 = load i32, i32* %4, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %99

81:                                               ; preds = %75
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %95, %81
  %83 = load i32, i32* %3, align 4
  %84 = load i32, i32* @MAX_STREAMS, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %98

86:                                               ; preds = %82
  %87 = load %struct.snd_dice*, %struct.snd_dice** %2, align 8
  %88 = load i32, i32* @AMDTP_OUT_STREAM, align 4
  %89 = load i32, i32* %3, align 4
  %90 = call i32 @destroy_stream(%struct.snd_dice* %87, i32 %88, i32 %89)
  %91 = load %struct.snd_dice*, %struct.snd_dice** %2, align 8
  %92 = load i32, i32* @AMDTP_IN_STREAM, align 4
  %93 = load i32, i32* %3, align 4
  %94 = call i32 @destroy_stream(%struct.snd_dice* %91, i32 %92, i32 %93)
  br label %95

95:                                               ; preds = %86
  %96 = load i32, i32* %3, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %3, align 4
  br label %82

98:                                               ; preds = %82
  br label %99

99:                                               ; preds = %98, %75
  br label %100

100:                                              ; preds = %99, %70, %28
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i32 @init_stream(%struct.snd_dice*, i32, i32) #1

declare dso_local i32 @destroy_stream(%struct.snd_dice*, i32, i32) #1

declare dso_local i32 @amdtp_domain_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
