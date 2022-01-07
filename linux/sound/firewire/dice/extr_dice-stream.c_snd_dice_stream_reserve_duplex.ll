; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/dice/extr_dice-stream.c_snd_dice_stream_reserve_duplex.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/dice/extr_dice-stream.c_snd_dice_stream_reserve_duplex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_dice = type { i64, i32 }
%struct.reg_params = type { i32 }

@AMDTP_IN_STREAM = common dso_local global i32 0, align 4
@AMDTP_OUT_STREAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_dice_stream_reserve_duplex(%struct.snd_dice* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_dice*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.reg_params, align 4
  %9 = alloca %struct.reg_params, align 4
  store %struct.snd_dice* %0, %struct.snd_dice** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.snd_dice*, %struct.snd_dice** %4, align 8
  %11 = call i32 @snd_dice_transaction_get_rate(%struct.snd_dice* %10, i32* %6)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %3, align 4
  br label %81

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %19, %16
  %22 = load %struct.snd_dice*, %struct.snd_dice** %4, align 8
  %23 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %76

30:                                               ; preds = %26, %21
  %31 = load %struct.snd_dice*, %struct.snd_dice** %4, align 8
  %32 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %31, i32 0, i32 1
  %33 = call i32 @amdtp_domain_stop(i32* %32)
  %34 = load %struct.snd_dice*, %struct.snd_dice** %4, align 8
  %35 = call i32 @get_register_params(%struct.snd_dice* %34, %struct.reg_params* %8, %struct.reg_params* %9)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %3, align 4
  br label %81

40:                                               ; preds = %30
  %41 = load %struct.snd_dice*, %struct.snd_dice** %4, align 8
  %42 = call i32 @finish_session(%struct.snd_dice* %41, %struct.reg_params* %8, %struct.reg_params* %9)
  %43 = load %struct.snd_dice*, %struct.snd_dice** %4, align 8
  %44 = call i32 @release_resources(%struct.snd_dice* %43)
  %45 = load %struct.snd_dice*, %struct.snd_dice** %4, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @ensure_phase_lock(%struct.snd_dice* %45, i32 %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %40
  %51 = load i32, i32* %7, align 4
  store i32 %51, i32* %3, align 4
  br label %81

52:                                               ; preds = %40
  %53 = load %struct.snd_dice*, %struct.snd_dice** %4, align 8
  %54 = call i32 @get_register_params(%struct.snd_dice* %53, %struct.reg_params* %8, %struct.reg_params* %9)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %3, align 4
  br label %81

59:                                               ; preds = %52
  %60 = load %struct.snd_dice*, %struct.snd_dice** %4, align 8
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @AMDTP_IN_STREAM, align 4
  %63 = call i32 @keep_dual_resources(%struct.snd_dice* %60, i32 %61, i32 %62, %struct.reg_params* %8)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  br label %77

67:                                               ; preds = %59
  %68 = load %struct.snd_dice*, %struct.snd_dice** %4, align 8
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @AMDTP_OUT_STREAM, align 4
  %71 = call i32 @keep_dual_resources(%struct.snd_dice* %68, i32 %69, i32 %70, %struct.reg_params* %9)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  br label %77

75:                                               ; preds = %67
  br label %76

76:                                               ; preds = %75, %26
  store i32 0, i32* %3, align 4
  br label %81

77:                                               ; preds = %74, %66
  %78 = load %struct.snd_dice*, %struct.snd_dice** %4, align 8
  %79 = call i32 @release_resources(%struct.snd_dice* %78)
  %80 = load i32, i32* %7, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %77, %76, %57, %50, %38, %14
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @snd_dice_transaction_get_rate(%struct.snd_dice*, i32*) #1

declare dso_local i32 @amdtp_domain_stop(i32*) #1

declare dso_local i32 @get_register_params(%struct.snd_dice*, %struct.reg_params*, %struct.reg_params*) #1

declare dso_local i32 @finish_session(%struct.snd_dice*, %struct.reg_params*, %struct.reg_params*) #1

declare dso_local i32 @release_resources(%struct.snd_dice*) #1

declare dso_local i32 @ensure_phase_lock(%struct.snd_dice*, i32) #1

declare dso_local i32 @keep_dual_resources(%struct.snd_dice*, i32, i32, %struct.reg_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
