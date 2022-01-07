; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_rme96.c_snd_rme96_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_rme96.c_snd_rme96_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rme96 = type { i32, i64, i32 }

@RME96_TB_RESET_PLAYPOS = common dso_local global i32 0, align 4
@RME96_IO_RESET_PLAY_POS = common dso_local global i64 0, align 8
@RME96_TB_RESET_CAPTUREPOS = common dso_local global i32 0, align 4
@RME96_IO_RESET_REC_POS = common dso_local global i64 0, align 8
@RME96_TB_CLEAR_PLAYBACK_IRQ = common dso_local global i32 0, align 4
@RME96_IO_CONTROL_REGISTER = common dso_local global i64 0, align 8
@RME96_RCR_IRQ = common dso_local global i32 0, align 4
@RME96_IO_CONFIRM_PLAY_IRQ = common dso_local global i64 0, align 8
@RME96_TB_CLEAR_CAPTURE_IRQ = common dso_local global i32 0, align 4
@RME96_RCR_IRQ_2 = common dso_local global i32 0, align 4
@RME96_IO_CONFIRM_REC_IRQ = common dso_local global i64 0, align 8
@RME96_TB_START_PLAYBACK = common dso_local global i32 0, align 4
@RME96_WCR_START = common dso_local global i32 0, align 4
@RME96_TB_STOP_PLAYBACK = common dso_local global i32 0, align 4
@RME96_TB_START_CAPTURE = common dso_local global i32 0, align 4
@RME96_WCR_START_2 = common dso_local global i32 0, align 4
@RME96_TB_STOP_CAPTURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rme96*, i32)* @snd_rme96_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_rme96_trigger(%struct.rme96* %0, i32 %1) #0 {
  %3 = alloca %struct.rme96*, align 8
  %4 = alloca i32, align 4
  store %struct.rme96* %0, %struct.rme96** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @RME96_TB_RESET_PLAYPOS, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = load %struct.rme96*, %struct.rme96** %3, align 8
  %11 = getelementptr inbounds %struct.rme96, %struct.rme96* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @RME96_IO_RESET_PLAY_POS, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @writel(i32 0, i64 %14)
  br label %16

16:                                               ; preds = %9, %2
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @RME96_TB_RESET_CAPTUREPOS, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = load %struct.rme96*, %struct.rme96** %3, align 8
  %23 = getelementptr inbounds %struct.rme96, %struct.rme96* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @RME96_IO_RESET_REC_POS, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @writel(i32 0, i64 %26)
  br label %28

28:                                               ; preds = %21, %16
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @RME96_TB_CLEAR_PLAYBACK_IRQ, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %57

33:                                               ; preds = %28
  %34 = load %struct.rme96*, %struct.rme96** %3, align 8
  %35 = getelementptr inbounds %struct.rme96, %struct.rme96* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @RME96_IO_CONTROL_REGISTER, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i8* @readl(i64 %38)
  %40 = ptrtoint i8* %39 to i32
  %41 = load %struct.rme96*, %struct.rme96** %3, align 8
  %42 = getelementptr inbounds %struct.rme96, %struct.rme96* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.rme96*, %struct.rme96** %3, align 8
  %44 = getelementptr inbounds %struct.rme96, %struct.rme96* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @RME96_RCR_IRQ, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %33
  %50 = load %struct.rme96*, %struct.rme96** %3, align 8
  %51 = getelementptr inbounds %struct.rme96, %struct.rme96* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @RME96_IO_CONFIRM_PLAY_IRQ, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @writel(i32 0, i64 %54)
  br label %56

56:                                               ; preds = %49, %33
  br label %57

57:                                               ; preds = %56, %28
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @RME96_TB_CLEAR_CAPTURE_IRQ, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %86

62:                                               ; preds = %57
  %63 = load %struct.rme96*, %struct.rme96** %3, align 8
  %64 = getelementptr inbounds %struct.rme96, %struct.rme96* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @RME96_IO_CONTROL_REGISTER, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i8* @readl(i64 %67)
  %69 = ptrtoint i8* %68 to i32
  %70 = load %struct.rme96*, %struct.rme96** %3, align 8
  %71 = getelementptr inbounds %struct.rme96, %struct.rme96* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.rme96*, %struct.rme96** %3, align 8
  %73 = getelementptr inbounds %struct.rme96, %struct.rme96* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @RME96_RCR_IRQ_2, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %62
  %79 = load %struct.rme96*, %struct.rme96** %3, align 8
  %80 = getelementptr inbounds %struct.rme96, %struct.rme96* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @RME96_IO_CONFIRM_REC_IRQ, align 8
  %83 = add nsw i64 %81, %82
  %84 = call i32 @writel(i32 0, i64 %83)
  br label %85

85:                                               ; preds = %78, %62
  br label %86

86:                                               ; preds = %85, %57
  %87 = load i32, i32* %4, align 4
  %88 = load i32, i32* @RME96_TB_START_PLAYBACK, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %86
  %92 = load i32, i32* @RME96_WCR_START, align 4
  %93 = load %struct.rme96*, %struct.rme96** %3, align 8
  %94 = getelementptr inbounds %struct.rme96, %struct.rme96* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 8
  br label %97

97:                                               ; preds = %91, %86
  %98 = load i32, i32* %4, align 4
  %99 = load i32, i32* @RME96_TB_STOP_PLAYBACK, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %97
  %103 = load i32, i32* @RME96_WCR_START, align 4
  %104 = xor i32 %103, -1
  %105 = load %struct.rme96*, %struct.rme96** %3, align 8
  %106 = getelementptr inbounds %struct.rme96, %struct.rme96* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = and i32 %107, %104
  store i32 %108, i32* %106, align 8
  br label %109

109:                                              ; preds = %102, %97
  %110 = load i32, i32* %4, align 4
  %111 = load i32, i32* @RME96_TB_START_CAPTURE, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %109
  %115 = load i32, i32* @RME96_WCR_START_2, align 4
  %116 = load %struct.rme96*, %struct.rme96** %3, align 8
  %117 = getelementptr inbounds %struct.rme96, %struct.rme96* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = or i32 %118, %115
  store i32 %119, i32* %117, align 8
  br label %120

120:                                              ; preds = %114, %109
  %121 = load i32, i32* %4, align 4
  %122 = load i32, i32* @RME96_TB_STOP_CAPTURE, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %120
  %126 = load i32, i32* @RME96_WCR_START_2, align 4
  %127 = xor i32 %126, -1
  %128 = load %struct.rme96*, %struct.rme96** %3, align 8
  %129 = getelementptr inbounds %struct.rme96, %struct.rme96* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = and i32 %130, %127
  store i32 %131, i32* %129, align 8
  br label %132

132:                                              ; preds = %125, %120
  %133 = load %struct.rme96*, %struct.rme96** %3, align 8
  %134 = getelementptr inbounds %struct.rme96, %struct.rme96* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.rme96*, %struct.rme96** %3, align 8
  %137 = getelementptr inbounds %struct.rme96, %struct.rme96* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @RME96_IO_CONTROL_REGISTER, align 8
  %140 = add nsw i64 %138, %139
  %141 = call i32 @writel(i32 %135, i64 %140)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i8* @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
