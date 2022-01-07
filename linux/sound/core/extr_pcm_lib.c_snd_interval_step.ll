; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_pcm_lib.c_snd_interval_step.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_pcm_lib.c_snd_interval_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_interval = type { i32, i32, i32, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_interval*, i32)* @snd_interval_step to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_interval_step(%struct.snd_interval* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_interval*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_interval* %0, %struct.snd_interval** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.snd_interval*, %struct.snd_interval** %4, align 8
  %9 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = urem i32 %10, %11
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %2
  %16 = load %struct.snd_interval*, %struct.snd_interval** %4, align 8
  %17 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %15, %2
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = sub i32 %21, %22
  %24 = load %struct.snd_interval*, %struct.snd_interval** %4, align 8
  %25 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = add i32 %26, %23
  store i32 %27, i32* %25, align 8
  %28 = load %struct.snd_interval*, %struct.snd_interval** %4, align 8
  %29 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %28, i32 0, i32 4
  store i64 0, i64* %29, align 8
  store i32 1, i32* %7, align 4
  br label %30

30:                                               ; preds = %20, %15
  %31 = load %struct.snd_interval*, %struct.snd_interval** %4, align 8
  %32 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %5, align 4
  %35 = urem i32 %33, %34
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %30
  %39 = load %struct.snd_interval*, %struct.snd_interval** %4, align 8
  %40 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %38, %30
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.snd_interval*, %struct.snd_interval** %4, align 8
  %46 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = sub i32 %47, %44
  store i32 %48, i32* %46, align 4
  %49 = load %struct.snd_interval*, %struct.snd_interval** %4, align 8
  %50 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %49, i32 0, i32 3
  store i64 0, i64* %50, align 8
  store i32 1, i32* %7, align 4
  br label %51

51:                                               ; preds = %43, %38
  %52 = load %struct.snd_interval*, %struct.snd_interval** %4, align 8
  %53 = call i64 @snd_interval_checkempty(%struct.snd_interval* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = load %struct.snd_interval*, %struct.snd_interval** %4, align 8
  %57 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %56, i32 0, i32 2
  store i32 1, i32* %57, align 8
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %62

60:                                               ; preds = %51
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %60, %55
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i64 @snd_interval_checkempty(%struct.snd_interval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
