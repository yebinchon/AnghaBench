; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_pcm_lib.c_snd_interval_mulkdiv.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_pcm_lib.c_snd_interval_mulkdiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_interval = type { i64, i64, i32, i32, i64, i64 }

@UINT_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_interval_mulkdiv(%struct.snd_interval* %0, i32 %1, %struct.snd_interval* %2, %struct.snd_interval* %3) #0 {
  %5 = alloca %struct.snd_interval*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_interval*, align 8
  %8 = alloca %struct.snd_interval*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_interval* %0, %struct.snd_interval** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.snd_interval* %2, %struct.snd_interval** %7, align 8
  store %struct.snd_interval* %3, %struct.snd_interval** %8, align 8
  %10 = load %struct.snd_interval*, %struct.snd_interval** %5, align 8
  %11 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %10, i32 0, i32 5
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %4
  %15 = load %struct.snd_interval*, %struct.snd_interval** %7, align 8
  %16 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %15, i32 0, i32 5
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14, %4
  %20 = load %struct.snd_interval*, %struct.snd_interval** %8, align 8
  %21 = call i32 @snd_interval_none(%struct.snd_interval* %20)
  br label %103

22:                                               ; preds = %14
  %23 = load %struct.snd_interval*, %struct.snd_interval** %8, align 8
  %24 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %23, i32 0, i32 5
  store i64 0, i64* %24, align 8
  %25 = load %struct.snd_interval*, %struct.snd_interval** %5, align 8
  %26 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.snd_interval*, %struct.snd_interval** %7, align 8
  %30 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = call i8* @muldiv32(i64 %27, i32 %28, i64 %31, i32* %9)
  %33 = ptrtoint i8* %32 to i64
  %34 = load %struct.snd_interval*, %struct.snd_interval** %8, align 8
  %35 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %48, label %38

38:                                               ; preds = %22
  %39 = load %struct.snd_interval*, %struct.snd_interval** %5, align 8
  %40 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %38
  %44 = load %struct.snd_interval*, %struct.snd_interval** %7, align 8
  %45 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br label %48

48:                                               ; preds = %43, %38, %22
  %49 = phi i1 [ true, %38 ], [ true, %22 ], [ %47, %43 ]
  %50 = zext i1 %49 to i32
  %51 = load %struct.snd_interval*, %struct.snd_interval** %8, align 8
  %52 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  %53 = load %struct.snd_interval*, %struct.snd_interval** %7, align 8
  %54 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp sgt i64 %55, 0
  br i1 %56, label %57, label %94

57:                                               ; preds = %48
  %58 = load %struct.snd_interval*, %struct.snd_interval** %5, align 8
  %59 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.snd_interval*, %struct.snd_interval** %7, align 8
  %63 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i8* @muldiv32(i64 %60, i32 %61, i64 %64, i32* %9)
  %66 = ptrtoint i8* %65 to i64
  %67 = load %struct.snd_interval*, %struct.snd_interval** %8, align 8
  %68 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %67, i32 0, i32 1
  store i64 %66, i64* %68, align 8
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %57
  %72 = load %struct.snd_interval*, %struct.snd_interval** %8, align 8
  %73 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %74, 1
  store i64 %75, i64* %73, align 8
  %76 = load %struct.snd_interval*, %struct.snd_interval** %8, align 8
  %77 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %76, i32 0, i32 3
  store i32 1, i32* %77, align 4
  br label %93

78:                                               ; preds = %57
  %79 = load %struct.snd_interval*, %struct.snd_interval** %5, align 8
  %80 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %78
  %84 = load %struct.snd_interval*, %struct.snd_interval** %7, align 8
  %85 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  br label %88

88:                                               ; preds = %83, %78
  %89 = phi i1 [ true, %78 ], [ %87, %83 ]
  %90 = zext i1 %89 to i32
  %91 = load %struct.snd_interval*, %struct.snd_interval** %8, align 8
  %92 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %91, i32 0, i32 3
  store i32 %90, i32* %92, align 4
  br label %93

93:                                               ; preds = %88, %71
  br label %100

94:                                               ; preds = %48
  %95 = load i64, i64* @UINT_MAX, align 8
  %96 = load %struct.snd_interval*, %struct.snd_interval** %8, align 8
  %97 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %96, i32 0, i32 1
  store i64 %95, i64* %97, align 8
  %98 = load %struct.snd_interval*, %struct.snd_interval** %8, align 8
  %99 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %98, i32 0, i32 3
  store i32 0, i32* %99, align 4
  br label %100

100:                                              ; preds = %94, %93
  %101 = load %struct.snd_interval*, %struct.snd_interval** %8, align 8
  %102 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %101, i32 0, i32 4
  store i64 0, i64* %102, align 8
  br label %103

103:                                              ; preds = %100, %19
  ret void
}

declare dso_local i32 @snd_interval_none(%struct.snd_interval*) #1

declare dso_local i8* @muldiv32(i64, i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
