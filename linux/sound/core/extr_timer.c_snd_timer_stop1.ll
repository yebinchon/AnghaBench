; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_timer.c_snd_timer_stop1.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_timer.c_snd_timer_stop1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_timer_instance = type { i32, i64, i32, i32, i32, i32, %struct.snd_timer* }
%struct.snd_timer = type { i32, i32, %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (%struct.snd_timer*)*, i32 (%struct.snd_timer*)* }
%struct.TYPE_3__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@SNDRV_TIMER_IFLG_RUNNING = common dso_local global i32 0, align 4
@SNDRV_TIMER_IFLG_START = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@SNDRV_TIMER_FLG_RESCHED = common dso_local global i32 0, align 4
@SNDRV_TIMER_FLG_CHANGE = common dso_local global i32 0, align 4
@SNDRV_TIMER_IFLG_PAUSED = common dso_local global i32 0, align 4
@SNDRV_TIMER_EVENT_STOP = common dso_local global i32 0, align 4
@SNDRV_TIMER_EVENT_PAUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_timer_instance*, i32)* @snd_timer_stop1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_timer_stop1(%struct.snd_timer_instance* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_timer_instance*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_timer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.snd_timer_instance* %0, %struct.snd_timer_instance** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %4, align 8
  %10 = getelementptr inbounds %struct.snd_timer_instance, %struct.snd_timer_instance* %9, i32 0, i32 6
  %11 = load %struct.snd_timer*, %struct.snd_timer** %10, align 8
  store %struct.snd_timer* %11, %struct.snd_timer** %6, align 8
  %12 = load %struct.snd_timer*, %struct.snd_timer** %6, align 8
  %13 = icmp ne %struct.snd_timer* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %160

17:                                               ; preds = %2
  %18 = load %struct.snd_timer*, %struct.snd_timer** %6, align 8
  %19 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %18, i32 0, i32 1
  %20 = load i64, i64* %8, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %4, align 8
  %23 = getelementptr inbounds %struct.snd_timer_instance, %struct.snd_timer_instance* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @SNDRV_TIMER_IFLG_RUNNING, align 4
  %26 = load i32, i32* @SNDRV_TIMER_IFLG_START, align 4
  %27 = or i32 %25, %26
  %28 = and i32 %24, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %17
  %31 = load i32, i32* @EBUSY, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %7, align 4
  br label %154

33:                                               ; preds = %17
  %34 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %4, align 8
  %35 = getelementptr inbounds %struct.snd_timer_instance, %struct.snd_timer_instance* %34, i32 0, i32 5
  %36 = call i32 @list_del_init(i32* %35)
  %37 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %4, align 8
  %38 = getelementptr inbounds %struct.snd_timer_instance, %struct.snd_timer_instance* %37, i32 0, i32 4
  %39 = call i32 @list_del_init(i32* %38)
  %40 = load %struct.snd_timer*, %struct.snd_timer** %6, align 8
  %41 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %40, i32 0, i32 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = icmp ne %struct.TYPE_3__* %42, null
  br i1 %43, label %44, label %52

44:                                               ; preds = %33
  %45 = load %struct.snd_timer*, %struct.snd_timer** %6, align 8
  %46 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %45, i32 0, i32 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %154

52:                                               ; preds = %44, %33
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %52
  %56 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %4, align 8
  %57 = getelementptr inbounds %struct.snd_timer_instance, %struct.snd_timer_instance* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %4, align 8
  %60 = getelementptr inbounds %struct.snd_timer_instance, %struct.snd_timer_instance* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 4
  %61 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %4, align 8
  %62 = getelementptr inbounds %struct.snd_timer_instance, %struct.snd_timer_instance* %61, i32 0, i32 1
  store i64 0, i64* %62, align 8
  br label %63

63:                                               ; preds = %55, %52
  %64 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %4, align 8
  %65 = getelementptr inbounds %struct.snd_timer_instance, %struct.snd_timer_instance* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @SNDRV_TIMER_IFLG_RUNNING, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %119

70:                                               ; preds = %63
  %71 = load %struct.snd_timer*, %struct.snd_timer** %6, align 8
  %72 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %72, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %119, label %76

76:                                               ; preds = %70
  %77 = load %struct.snd_timer*, %struct.snd_timer** %6, align 8
  %78 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i32 (%struct.snd_timer*)*, i32 (%struct.snd_timer*)** %79, align 8
  %81 = load %struct.snd_timer*, %struct.snd_timer** %6, align 8
  %82 = call i32 %80(%struct.snd_timer* %81)
  %83 = load %struct.snd_timer*, %struct.snd_timer** %6, align 8
  %84 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @SNDRV_TIMER_FLG_RESCHED, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %118

89:                                               ; preds = %76
  %90 = load i32, i32* @SNDRV_TIMER_FLG_RESCHED, align 4
  %91 = xor i32 %90, -1
  %92 = load %struct.snd_timer*, %struct.snd_timer** %6, align 8
  %93 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = and i32 %94, %91
  store i32 %95, i32* %93, align 8
  %96 = load %struct.snd_timer*, %struct.snd_timer** %6, align 8
  %97 = call i32 @snd_timer_reschedule(%struct.snd_timer* %96, i32 0)
  %98 = load %struct.snd_timer*, %struct.snd_timer** %6, align 8
  %99 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @SNDRV_TIMER_FLG_CHANGE, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %117

104:                                              ; preds = %89
  %105 = load i32, i32* @SNDRV_TIMER_FLG_CHANGE, align 4
  %106 = xor i32 %105, -1
  %107 = load %struct.snd_timer*, %struct.snd_timer** %6, align 8
  %108 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = and i32 %109, %106
  store i32 %110, i32* %108, align 8
  %111 = load %struct.snd_timer*, %struct.snd_timer** %6, align 8
  %112 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i32 (%struct.snd_timer*)*, i32 (%struct.snd_timer*)** %113, align 8
  %115 = load %struct.snd_timer*, %struct.snd_timer** %6, align 8
  %116 = call i32 %114(%struct.snd_timer* %115)
  br label %117

117:                                              ; preds = %104, %89
  br label %118

118:                                              ; preds = %117, %76
  br label %119

119:                                              ; preds = %118, %70, %63
  %120 = load i32, i32* @SNDRV_TIMER_IFLG_RUNNING, align 4
  %121 = load i32, i32* @SNDRV_TIMER_IFLG_START, align 4
  %122 = or i32 %120, %121
  %123 = xor i32 %122, -1
  %124 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %4, align 8
  %125 = getelementptr inbounds %struct.snd_timer_instance, %struct.snd_timer_instance* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = and i32 %126, %123
  store i32 %127, i32* %125, align 8
  %128 = load i32, i32* %5, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %119
  %131 = load i32, i32* @SNDRV_TIMER_IFLG_PAUSED, align 4
  %132 = xor i32 %131, -1
  %133 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %4, align 8
  %134 = getelementptr inbounds %struct.snd_timer_instance, %struct.snd_timer_instance* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = and i32 %135, %132
  store i32 %136, i32* %134, align 8
  br label %143

137:                                              ; preds = %119
  %138 = load i32, i32* @SNDRV_TIMER_IFLG_PAUSED, align 4
  %139 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %4, align 8
  %140 = getelementptr inbounds %struct.snd_timer_instance, %struct.snd_timer_instance* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = or i32 %141, %138
  store i32 %142, i32* %140, align 8
  br label %143

143:                                              ; preds = %137, %130
  %144 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %4, align 8
  %145 = load i32, i32* %5, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %143
  %148 = load i32, i32* @SNDRV_TIMER_EVENT_STOP, align 4
  br label %151

149:                                              ; preds = %143
  %150 = load i32, i32* @SNDRV_TIMER_EVENT_PAUSE, align 4
  br label %151

151:                                              ; preds = %149, %147
  %152 = phi i32 [ %148, %147 ], [ %150, %149 ]
  %153 = call i32 @snd_timer_notify1(%struct.snd_timer_instance* %144, i32 %152)
  br label %154

154:                                              ; preds = %151, %51, %30
  %155 = load %struct.snd_timer*, %struct.snd_timer** %6, align 8
  %156 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %155, i32 0, i32 1
  %157 = load i64, i64* %8, align 8
  %158 = call i32 @spin_unlock_irqrestore(i32* %156, i64 %157)
  %159 = load i32, i32* %7, align 4
  store i32 %159, i32* %3, align 4
  br label %160

160:                                              ; preds = %154, %14
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @snd_timer_reschedule(%struct.snd_timer*, i32) #1

declare dso_local i32 @snd_timer_notify1(%struct.snd_timer_instance*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
