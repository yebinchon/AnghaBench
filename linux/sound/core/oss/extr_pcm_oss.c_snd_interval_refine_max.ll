; ModuleID = '/home/carl/AnghaBench/linux/sound/core/oss/extr_pcm_oss.c_snd_interval_refine_max.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/oss/extr_pcm_oss.c_snd_interval_refine_max.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_interval = type { i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_interval*, i32, i32)* @snd_interval_refine_max to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_interval_refine_max(%struct.snd_interval* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_interval*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_interval* %0, %struct.snd_interval** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.snd_interval*, %struct.snd_interval** %5, align 8
  %10 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp ugt i32 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.snd_interval*, %struct.snd_interval** %5, align 8
  %17 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.snd_interval*, %struct.snd_interval** %5, align 8
  %20 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  store i32 1, i32* %8, align 4
  br label %39

21:                                               ; preds = %3
  %22 = load %struct.snd_interval*, %struct.snd_interval** %5, align 8
  %23 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %21
  %28 = load %struct.snd_interval*, %struct.snd_interval** %5, align 8
  %29 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load %struct.snd_interval*, %struct.snd_interval** %5, align 8
  %37 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %36, i32 0, i32 1
  store i32 1, i32* %37, align 4
  store i32 1, i32* %8, align 4
  br label %38

38:                                               ; preds = %35, %32, %27, %21
  br label %39

39:                                               ; preds = %38, %14
  %40 = load %struct.snd_interval*, %struct.snd_interval** %5, align 8
  %41 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %39
  %45 = load %struct.snd_interval*, %struct.snd_interval** %5, align 8
  %46 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %44
  %50 = load %struct.snd_interval*, %struct.snd_interval** %5, align 8
  %51 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = add i32 %52, -1
  store i32 %53, i32* %51, align 8
  %54 = load %struct.snd_interval*, %struct.snd_interval** %5, align 8
  %55 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %54, i32 0, i32 1
  store i32 0, i32* %55, align 4
  br label %56

56:                                               ; preds = %49, %44
  br label %57

57:                                               ; preds = %56, %39
  %58 = load %struct.snd_interval*, %struct.snd_interval** %5, align 8
  %59 = call i64 @snd_interval_checkempty(%struct.snd_interval* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = load %struct.snd_interval*, %struct.snd_interval** %5, align 8
  %63 = call i32 @snd_interval_none(%struct.snd_interval* %62)
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %68

66:                                               ; preds = %57
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %66, %61
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i64 @snd_interval_checkempty(%struct.snd_interval*) #1

declare dso_local i32 @snd_interval_none(%struct.snd_interval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
