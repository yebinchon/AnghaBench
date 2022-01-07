; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ali5451/extr_ali5451.c_snd_ali_stimer_ready.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ali5451/extr_ali5451.c_snd_ali_stimer_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ali = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ALI_STIMER = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"ali_stimer_read: stimer is not ready.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ali*)* @snd_ali_stimer_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ali_stimer_ready(%struct.snd_ali* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_ali*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.snd_ali* %0, %struct.snd_ali** %3, align 8
  %7 = load %struct.snd_ali*, %struct.snd_ali** %3, align 8
  %8 = load i32, i32* @ALI_STIMER, align 4
  %9 = call i64 @snd_ali_5451_peek(%struct.snd_ali* %7, i32 %8)
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* @jiffies, align 8
  %11 = call i64 @msecs_to_jiffies(i32 250)
  %12 = add i64 %10, %11
  store i64 %12, i64* %4, align 8
  br label %13

13:                                               ; preds = %27, %1
  %14 = load %struct.snd_ali*, %struct.snd_ali** %3, align 8
  %15 = load i32, i32* @ALI_STIMER, align 4
  %16 = call i64 @snd_ali_5451_peek(%struct.snd_ali* %14, i32 %15)
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* %5, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %38

21:                                               ; preds = %13
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* @jiffies, align 8
  %24 = call i32 @time_after_eq(i64 %22, i64 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  br label %29

27:                                               ; preds = %21
  %28 = call i32 @schedule_timeout_uninterruptible(i32 1)
  br label %13

29:                                               ; preds = %26
  %30 = load %struct.snd_ali*, %struct.snd_ali** %3, align 8
  %31 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @dev_err(i32 %34, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @EIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %29, %20
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i64 @snd_ali_5451_peek(%struct.snd_ali*, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @time_after_eq(i64, i64) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
