; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_timer.c_snd_timer_start1.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_timer.c_snd_timer_start1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_timer_instance = type { i32, i64, i64, i32, i64, %struct.snd_timer* }
%struct.snd_timer = type { i64, i32, i64, %struct.TYPE_4__, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 (%struct.snd_timer*)* }
%struct.TYPE_3__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@SNDRV_TIMER_IFLG_DEAD = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@SNDRV_TIMER_IFLG_RUNNING = common dso_local global i32 0, align 4
@SNDRV_TIMER_IFLG_START = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@SNDRV_TIMER_HW_SLAVE = common dso_local global i32 0, align 4
@SNDRV_TIMER_FLG_RESCHED = common dso_local global i32 0, align 4
@SNDRV_TIMER_EVENT_START = common dso_local global i32 0, align 4
@SNDRV_TIMER_EVENT_CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_timer_instance*, i32, i64)* @snd_timer_start1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_timer_start1(%struct.snd_timer_instance* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_timer_instance*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.snd_timer*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.snd_timer_instance* %0, %struct.snd_timer_instance** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %11 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %5, align 8
  %12 = getelementptr inbounds %struct.snd_timer_instance, %struct.snd_timer_instance* %11, i32 0, i32 5
  %13 = load %struct.snd_timer*, %struct.snd_timer** %12, align 8
  store %struct.snd_timer* %13, %struct.snd_timer** %8, align 8
  %14 = load %struct.snd_timer*, %struct.snd_timer** %8, align 8
  %15 = icmp ne %struct.snd_timer* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %151

19:                                               ; preds = %3
  %20 = load %struct.snd_timer*, %struct.snd_timer** %8, align 8
  %21 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %20, i32 0, i32 1
  %22 = load i64, i64* %10, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %5, align 8
  %25 = getelementptr inbounds %struct.snd_timer_instance, %struct.snd_timer_instance* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @SNDRV_TIMER_IFLG_DEAD, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %19
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %9, align 4
  br label %145

33:                                               ; preds = %19
  %34 = load %struct.snd_timer*, %struct.snd_timer** %8, align 8
  %35 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %34, i32 0, i32 6
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = icmp ne %struct.TYPE_3__* %36, null
  br i1 %37, label %38, label %48

38:                                               ; preds = %33
  %39 = load %struct.snd_timer*, %struct.snd_timer** %8, align 8
  %40 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %39, i32 0, i32 6
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load i32, i32* @ENODEV, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %9, align 4
  br label %145

48:                                               ; preds = %38, %33
  %49 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %5, align 8
  %50 = getelementptr inbounds %struct.snd_timer_instance, %struct.snd_timer_instance* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @SNDRV_TIMER_IFLG_RUNNING, align 4
  %53 = load i32, i32* @SNDRV_TIMER_IFLG_START, align 4
  %54 = or i32 %52, %53
  %55 = and i32 %51, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %48
  %58 = load i32, i32* @EBUSY, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %9, align 4
  br label %145

60:                                               ; preds = %48
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load i64, i64* %7, align 8
  %65 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %5, align 8
  %66 = getelementptr inbounds %struct.snd_timer_instance, %struct.snd_timer_instance* %65, i32 0, i32 2
  store i64 %64, i64* %66, align 8
  %67 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %5, align 8
  %68 = getelementptr inbounds %struct.snd_timer_instance, %struct.snd_timer_instance* %67, i32 0, i32 1
  store i64 %64, i64* %68, align 8
  br label %78

69:                                               ; preds = %60
  %70 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %5, align 8
  %71 = getelementptr inbounds %struct.snd_timer_instance, %struct.snd_timer_instance* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %69
  %75 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %5, align 8
  %76 = getelementptr inbounds %struct.snd_timer_instance, %struct.snd_timer_instance* %75, i32 0, i32 2
  store i64 1, i64* %76, align 8
  br label %77

77:                                               ; preds = %74, %69
  br label %78

78:                                               ; preds = %77, %63
  %79 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %5, align 8
  %80 = getelementptr inbounds %struct.snd_timer_instance, %struct.snd_timer_instance* %79, i32 0, i32 4
  store i64 0, i64* %80, align 8
  %81 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %5, align 8
  %82 = getelementptr inbounds %struct.snd_timer_instance, %struct.snd_timer_instance* %81, i32 0, i32 3
  %83 = load %struct.snd_timer*, %struct.snd_timer** %8, align 8
  %84 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %83, i32 0, i32 5
  %85 = call i32 @list_move_tail(i32* %82, i32* %84)
  %86 = load %struct.snd_timer*, %struct.snd_timer** %8, align 8
  %87 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %110

90:                                               ; preds = %78
  %91 = load %struct.snd_timer*, %struct.snd_timer** %8, align 8
  %92 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @SNDRV_TIMER_HW_SLAVE, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %90
  br label %124

99:                                               ; preds = %90
  %100 = load i32, i32* @SNDRV_TIMER_FLG_RESCHED, align 4
  %101 = load %struct.snd_timer*, %struct.snd_timer** %8, align 8
  %102 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 8
  %105 = load i32, i32* @SNDRV_TIMER_IFLG_START, align 4
  %106 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %5, align 8
  %107 = getelementptr inbounds %struct.snd_timer_instance, %struct.snd_timer_instance* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 8
  store i32 1, i32* %9, align 4
  br label %134

110:                                              ; preds = %78
  %111 = load i32, i32* %6, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %110
  %114 = load i64, i64* %7, align 8
  %115 = load %struct.snd_timer*, %struct.snd_timer** %8, align 8
  %116 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %115, i32 0, i32 0
  store i64 %114, i64* %116, align 8
  br label %117

117:                                              ; preds = %113, %110
  %118 = load %struct.snd_timer*, %struct.snd_timer** %8, align 8
  %119 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 1
  %121 = load i32 (%struct.snd_timer*)*, i32 (%struct.snd_timer*)** %120, align 8
  %122 = load %struct.snd_timer*, %struct.snd_timer** %8, align 8
  %123 = call i32 %121(%struct.snd_timer* %122)
  br label %124

124:                                              ; preds = %117, %98
  %125 = load %struct.snd_timer*, %struct.snd_timer** %8, align 8
  %126 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = add nsw i64 %127, 1
  store i64 %128, i64* %126, align 8
  %129 = load i32, i32* @SNDRV_TIMER_IFLG_RUNNING, align 4
  %130 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %5, align 8
  %131 = getelementptr inbounds %struct.snd_timer_instance, %struct.snd_timer_instance* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = or i32 %132, %129
  store i32 %133, i32* %131, align 8
  store i32 0, i32* %9, align 4
  br label %134

134:                                              ; preds = %124, %99
  %135 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %5, align 8
  %136 = load i32, i32* %6, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %134
  %139 = load i32, i32* @SNDRV_TIMER_EVENT_START, align 4
  br label %142

140:                                              ; preds = %134
  %141 = load i32, i32* @SNDRV_TIMER_EVENT_CONTINUE, align 4
  br label %142

142:                                              ; preds = %140, %138
  %143 = phi i32 [ %139, %138 ], [ %141, %140 ]
  %144 = call i32 @snd_timer_notify1(%struct.snd_timer_instance* %135, i32 %143)
  br label %145

145:                                              ; preds = %142, %57, %45, %30
  %146 = load %struct.snd_timer*, %struct.snd_timer** %8, align 8
  %147 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %146, i32 0, i32 1
  %148 = load i64, i64* %10, align 8
  %149 = call i32 @spin_unlock_irqrestore(i32* %147, i64 %148)
  %150 = load i32, i32* %9, align 4
  store i32 %150, i32* %4, align 4
  br label %151

151:                                              ; preds = %145, %16
  %152 = load i32, i32* %4, align 4
  ret i32 %152
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_move_tail(i32*, i32*) #1

declare dso_local i32 @snd_timer_notify1(%struct.snd_timer_instance*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
