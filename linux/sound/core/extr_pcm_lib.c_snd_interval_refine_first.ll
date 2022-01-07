; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_pcm_lib.c_snd_interval_refine_first.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_pcm_lib.c_snd_interval_refine_first.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_interval = type { i32, i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_interval*)* @snd_interval_refine_first to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_interval_refine_first(%struct.snd_interval* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_interval*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_interval* %0, %struct.snd_interval** %3, align 8
  %5 = load %struct.snd_interval*, %struct.snd_interval** %3, align 8
  %6 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  store i32 %7, i32* %4, align 4
  %8 = load %struct.snd_interval*, %struct.snd_interval** %3, align 8
  %9 = call i32 @snd_interval_empty(%struct.snd_interval* %8)
  %10 = call i64 @snd_BUG_ON(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %51

15:                                               ; preds = %1
  %16 = load %struct.snd_interval*, %struct.snd_interval** %3, align 8
  %17 = call i64 @snd_interval_single(%struct.snd_interval* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %51

20:                                               ; preds = %15
  %21 = load %struct.snd_interval*, %struct.snd_interval** %3, align 8
  %22 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.snd_interval*, %struct.snd_interval** %3, align 8
  %25 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.snd_interval*, %struct.snd_interval** %3, align 8
  %27 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %20
  %31 = load %struct.snd_interval*, %struct.snd_interval** %3, align 8
  %32 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = add i32 %33, 1
  store i32 %34, i32* %32, align 8
  br label %35

35:                                               ; preds = %30, %20
  %36 = load %struct.snd_interval*, %struct.snd_interval** %3, align 8
  %37 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load %struct.snd_interval*, %struct.snd_interval** %3, align 8
  %42 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = icmp uge i32 %43, %44
  br label %46

46:                                               ; preds = %40, %35
  %47 = phi i1 [ false, %35 ], [ %45, %40 ]
  %48 = zext i1 %47 to i32
  %49 = load %struct.snd_interval*, %struct.snd_interval** %3, align 8
  %50 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  store i32 1, i32* %2, align 4
  br label %51

51:                                               ; preds = %46, %19, %12
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @snd_interval_empty(%struct.snd_interval*) #1

declare dso_local i64 @snd_interval_single(%struct.snd_interval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
