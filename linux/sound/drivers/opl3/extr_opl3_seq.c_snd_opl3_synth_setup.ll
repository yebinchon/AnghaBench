; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/opl3/extr_opl3_seq.c_snd_opl3_synth_setup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/opl3/extr_opl3_seq.c_snd_opl3_synth_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_opl3 = type { i32, i64, i32, i32 (%struct.snd_opl3*, i32, i32)*, i64, %struct.TYPE_2__*, %struct.snd_hwdep* }
%struct.TYPE_2__ = type { i32, i64, i32 }
%struct.snd_hwdep = type { i32, i64 }

@EBUSY = common dso_local global i32 0, align 4
@MAX_OPL3_VOICES = common dso_local global i32 0, align 4
@SNDRV_OPL3_ST_OFF = common dso_local global i32 0, align 4
@OPL3_HW_OPL3 = common dso_local global i64 0, align 8
@OPL3_RIGHT = common dso_local global i32 0, align 4
@OPL3_REG_CONNECTION_SELECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_opl3_synth_setup(%struct.snd_opl3* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_opl3*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_hwdep*, align 8
  store %struct.snd_opl3* %0, %struct.snd_opl3** %3, align 8
  %6 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %7 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %6, i32 0, i32 6
  %8 = load %struct.snd_hwdep*, %struct.snd_hwdep** %7, align 8
  store %struct.snd_hwdep* %8, %struct.snd_hwdep** %5, align 8
  %9 = load %struct.snd_hwdep*, %struct.snd_hwdep** %5, align 8
  %10 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.snd_hwdep*, %struct.snd_hwdep** %5, align 8
  %13 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.snd_hwdep*, %struct.snd_hwdep** %5, align 8
  %18 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %17, i32 0, i32 0
  %19 = call i32 @mutex_unlock(i32* %18)
  %20 = load i32, i32* @EBUSY, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %88

22:                                               ; preds = %1
  %23 = load %struct.snd_hwdep*, %struct.snd_hwdep** %5, align 8
  %24 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, 1
  store i64 %26, i64* %24, align 8
  %27 = load %struct.snd_hwdep*, %struct.snd_hwdep** %5, align 8
  %28 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %27, i32 0, i32 0
  %29 = call i32 @mutex_unlock(i32* %28)
  %30 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %31 = call i32 @snd_opl3_reset(%struct.snd_opl3* %30)
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %59, %22
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @MAX_OPL3_VOICES, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %62

36:                                               ; preds = %32
  %37 = load i32, i32* @SNDRV_OPL3_ST_OFF, align 4
  %38 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %39 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %38, i32 0, i32 5
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  store i32 %37, i32* %44, align 8
  %45 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %46 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %45, i32 0, i32 5
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  store i64 0, i64* %51, align 8
  %52 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %53 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %52, i32 0, i32 5
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i32 0, i32* %58, align 8
  br label %59

59:                                               ; preds = %36
  %60 = load i32, i32* %4, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %4, align 4
  br label %32

62:                                               ; preds = %32
  %63 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %64 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %63, i32 0, i32 4
  store i64 0, i64* %64, align 8
  %65 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %66 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %65, i32 0, i32 0
  store i32 0, i32* %66, align 8
  %67 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %68 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @OPL3_HW_OPL3, align 8
  %71 = icmp sge i64 %69, %70
  br i1 %71, label %72, label %87

72:                                               ; preds = %62
  %73 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %74 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %73, i32 0, i32 3
  %75 = load i32 (%struct.snd_opl3*, i32, i32)*, i32 (%struct.snd_opl3*, i32, i32)** %74, align 8
  %76 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %77 = load i32, i32* @OPL3_RIGHT, align 4
  %78 = load i32, i32* @OPL3_REG_CONNECTION_SELECT, align 4
  %79 = or i32 %77, %78
  %80 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %81 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 %75(%struct.snd_opl3* %76, i32 %79, i32 %82)
  %84 = load i32, i32* @MAX_OPL3_VOICES, align 4
  %85 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %86 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 8
  br label %87

87:                                               ; preds = %72, %62
  store i32 0, i32* %2, align 4
  br label %88

88:                                               ; preds = %87, %16
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @snd_opl3_reset(%struct.snd_opl3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
