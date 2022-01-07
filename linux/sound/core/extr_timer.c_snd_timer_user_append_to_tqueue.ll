; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_timer.c_snd_timer_user_append_to_tqueue.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_timer.c_snd_timer_user_append_to_tqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_timer_user = type { i32, i32, i32, i32*, i32 }
%struct.snd_timer_tread = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_timer_user*, %struct.snd_timer_tread*)* @snd_timer_user_append_to_tqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_timer_user_append_to_tqueue(%struct.snd_timer_user* %0, %struct.snd_timer_tread* %1) #0 {
  %3 = alloca %struct.snd_timer_user*, align 8
  %4 = alloca %struct.snd_timer_tread*, align 8
  store %struct.snd_timer_user* %0, %struct.snd_timer_user** %3, align 8
  store %struct.snd_timer_tread* %1, %struct.snd_timer_tread** %4, align 8
  %5 = load %struct.snd_timer_user*, %struct.snd_timer_user** %3, align 8
  %6 = getelementptr inbounds %struct.snd_timer_user, %struct.snd_timer_user* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.snd_timer_user*, %struct.snd_timer_user** %3, align 8
  %9 = getelementptr inbounds %struct.snd_timer_user, %struct.snd_timer_user* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp sge i32 %7, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.snd_timer_user*, %struct.snd_timer_user** %3, align 8
  %14 = getelementptr inbounds %struct.snd_timer_user, %struct.snd_timer_user* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 8
  br label %40

17:                                               ; preds = %2
  %18 = load %struct.snd_timer_user*, %struct.snd_timer_user** %3, align 8
  %19 = getelementptr inbounds %struct.snd_timer_user, %struct.snd_timer_user* %18, i32 0, i32 3
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.snd_timer_user*, %struct.snd_timer_user** %3, align 8
  %22 = getelementptr inbounds %struct.snd_timer_user, %struct.snd_timer_user* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 8
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds i32, i32* %20, i64 %25
  %27 = load %struct.snd_timer_tread*, %struct.snd_timer_tread** %4, align 8
  %28 = call i32 @memcpy(i32* %26, %struct.snd_timer_tread* %27, i32 4)
  %29 = load %struct.snd_timer_user*, %struct.snd_timer_user** %3, align 8
  %30 = getelementptr inbounds %struct.snd_timer_user, %struct.snd_timer_user* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.snd_timer_user*, %struct.snd_timer_user** %3, align 8
  %33 = getelementptr inbounds %struct.snd_timer_user, %struct.snd_timer_user* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = srem i32 %34, %31
  store i32 %35, i32* %33, align 8
  %36 = load %struct.snd_timer_user*, %struct.snd_timer_user** %3, align 8
  %37 = getelementptr inbounds %struct.snd_timer_user, %struct.snd_timer_user* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 8
  br label %40

40:                                               ; preds = %17, %12
  ret void
}

declare dso_local i32 @memcpy(i32*, %struct.snd_timer_tread*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
