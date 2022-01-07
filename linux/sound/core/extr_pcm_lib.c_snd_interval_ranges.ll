; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_pcm_lib.c_snd_interval_ranges.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_pcm_lib.c_snd_interval_ranges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_interval = type { i64, i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_interval_ranges(%struct.snd_interval* %0, i32 %1, %struct.snd_interval* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_interval*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_interval*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.snd_interval, align 8
  %12 = alloca %struct.snd_interval, align 8
  store %struct.snd_interval* %0, %struct.snd_interval** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.snd_interval* %2, %struct.snd_interval** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %4
  %16 = load %struct.snd_interval*, %struct.snd_interval** %6, align 8
  %17 = call i32 @snd_interval_none(%struct.snd_interval* %16)
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %106

20:                                               ; preds = %4
  %21 = call i32 @snd_interval_any(%struct.snd_interval* %11)
  %22 = load i64, i64* @UINT_MAX, align 8
  %23 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %11, i32 0, i32 0
  store i64 %22, i64* %23, align 8
  %24 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %11, i32 0, i32 1
  store i64 0, i64* %24, align 8
  store i32 0, i32* %10, align 4
  br label %25

25:                                               ; preds = %100, %20
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %29, label %103

29:                                               ; preds = %25
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %10, align 4
  %35 = shl i32 1, %34
  %36 = and i32 %33, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %32
  br label %100

39:                                               ; preds = %32, %29
  %40 = load %struct.snd_interval*, %struct.snd_interval** %8, align 8
  %41 = load i32, i32* %10, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %40, i64 %42
  %44 = call i32 @snd_interval_copy(%struct.snd_interval* %12, %struct.snd_interval* %43)
  %45 = load %struct.snd_interval*, %struct.snd_interval** %6, align 8
  %46 = call i32 @snd_interval_refine(%struct.snd_interval* %12, %struct.snd_interval* %45)
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  br label %100

49:                                               ; preds = %39
  %50 = call i64 @snd_interval_empty(%struct.snd_interval* %12)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  br label %100

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %12, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %11, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp slt i64 %55, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %12, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %11, i32 0, i32 0
  store i64 %61, i64* %62, align 8
  %63 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %11, i32 0, i32 2
  store i32 1, i32* %63, align 8
  br label %64

64:                                               ; preds = %59, %53
  %65 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %12, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %11, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %66, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %12, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %11, i32 0, i32 2
  store i32 0, i32* %75, align 8
  br label %76

76:                                               ; preds = %74, %70, %64
  %77 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %12, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %11, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp sgt i64 %78, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %12, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %11, i32 0, i32 1
  store i64 %84, i64* %85, align 8
  %86 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %11, i32 0, i32 3
  store i32 1, i32* %86, align 4
  br label %87

87:                                               ; preds = %82, %76
  %88 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %12, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %11, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %89, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %87
  %94 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %12, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %11, i32 0, i32 3
  store i32 0, i32* %98, align 4
  br label %99

99:                                               ; preds = %97, %93, %87
  br label %100

100:                                              ; preds = %99, %52, %48, %38
  %101 = load i32, i32* %10, align 4
  %102 = add i32 %101, 1
  store i32 %102, i32* %10, align 4
  br label %25

103:                                              ; preds = %25
  %104 = load %struct.snd_interval*, %struct.snd_interval** %6, align 8
  %105 = call i32 @snd_interval_refine(%struct.snd_interval* %104, %struct.snd_interval* %11)
  store i32 %105, i32* %5, align 4
  br label %106

106:                                              ; preds = %103, %15
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local i32 @snd_interval_none(%struct.snd_interval*) #1

declare dso_local i32 @snd_interval_any(%struct.snd_interval*) #1

declare dso_local i32 @snd_interval_copy(%struct.snd_interval*, %struct.snd_interval*) #1

declare dso_local i32 @snd_interval_refine(%struct.snd_interval*, %struct.snd_interval*) #1

declare dso_local i64 @snd_interval_empty(%struct.snd_interval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
