; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/opl3/extr_opl3_midi.c_snd_opl3_timer_func.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/opl3/extr_opl3_midi.c_snd_opl3_timer_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_opl3 = type { i32, i32, i64, i32, i32, %struct.snd_opl3_voice* }
%struct.snd_opl3_voice = type { i64, i64, i32, i32, i64 }
%struct.timer_list = type { i32 }

@tlist = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@opl3 = common dso_local global %struct.snd_opl3* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_opl3_timer_func(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.snd_opl3*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_opl3_voice*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %8 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %9 = ptrtoint %struct.snd_opl3* %8 to i32
  %10 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %11 = load i32, i32* @tlist, align 4
  %12 = call %struct.snd_opl3* @from_timer(i32 %9, %struct.timer_list* %10, i32 %11)
  store %struct.snd_opl3* %12, %struct.snd_opl3** %3, align 8
  store i32 0, i32* %5, align 4
  %13 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %14 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %13, i32 0, i32 4
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %59, %1
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %20 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %62

23:                                               ; preds = %17
  %24 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %25 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %24, i32 0, i32 5
  %26 = load %struct.snd_opl3_voice*, %struct.snd_opl3_voice** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.snd_opl3_voice, %struct.snd_opl3_voice* %26, i64 %28
  store %struct.snd_opl3_voice* %29, %struct.snd_opl3_voice** %7, align 8
  %30 = load %struct.snd_opl3_voice*, %struct.snd_opl3_voice** %7, align 8
  %31 = getelementptr inbounds %struct.snd_opl3_voice, %struct.snd_opl3_voice* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %32, 0
  br i1 %33, label %34, label %58

34:                                               ; preds = %23
  %35 = load %struct.snd_opl3_voice*, %struct.snd_opl3_voice** %7, align 8
  %36 = getelementptr inbounds %struct.snd_opl3_voice, %struct.snd_opl3_voice* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %58

39:                                               ; preds = %34
  %40 = load %struct.snd_opl3_voice*, %struct.snd_opl3_voice** %7, align 8
  %41 = getelementptr inbounds %struct.snd_opl3_voice, %struct.snd_opl3_voice* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @jiffies, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %39
  %46 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %47 = load %struct.snd_opl3_voice*, %struct.snd_opl3_voice** %7, align 8
  %48 = getelementptr inbounds %struct.snd_opl3_voice, %struct.snd_opl3_voice* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.snd_opl3_voice*, %struct.snd_opl3_voice** %7, align 8
  %51 = getelementptr inbounds %struct.snd_opl3_voice, %struct.snd_opl3_voice* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @snd_opl3_note_off_unsafe(%struct.snd_opl3* %46, i32 %49, i32 0, i32 %52)
  br label %57

54:                                               ; preds = %39
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %54, %45
  br label %58

58:                                               ; preds = %57, %34, %23
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %17

62:                                               ; preds = %17
  %63 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %64 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %63, i32 0, i32 4
  %65 = load i64, i64* %4, align 8
  %66 = call i32 @spin_unlock_irqrestore(i32* %64, i64 %65)
  %67 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %68 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %67, i32 0, i32 1
  %69 = load i64, i64* %4, align 8
  %70 = call i32 @spin_lock_irqsave(i32* %68, i64 %69)
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %62
  %74 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %75 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %74, i32 0, i32 3
  %76 = load i64, i64* @jiffies, align 8
  %77 = add nsw i64 %76, 1
  %78 = call i32 @mod_timer(i32* %75, i64 %77)
  br label %82

79:                                               ; preds = %62
  %80 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %81 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %80, i32 0, i32 2
  store i64 0, i64* %81, align 8
  br label %82

82:                                               ; preds = %79, %73
  %83 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %84 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %83, i32 0, i32 1
  %85 = load i64, i64* %4, align 8
  %86 = call i32 @spin_unlock_irqrestore(i32* %84, i64 %85)
  ret void
}

declare dso_local %struct.snd_opl3* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_opl3_note_off_unsafe(%struct.snd_opl3*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
