; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_pcm_lib.c_snd_interval_muldivk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_pcm_lib.c_snd_interval_muldivk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_interval = type { i32, i32, i64, i8*, i8*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_interval_muldivk(%struct.snd_interval* %0, %struct.snd_interval* %1, i32 %2, %struct.snd_interval* %3) #0 {
  %5 = alloca %struct.snd_interval*, align 8
  %6 = alloca %struct.snd_interval*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_interval*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_interval* %0, %struct.snd_interval** %5, align 8
  store %struct.snd_interval* %1, %struct.snd_interval** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.snd_interval* %3, %struct.snd_interval** %8, align 8
  %10 = load %struct.snd_interval*, %struct.snd_interval** %5, align 8
  %11 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %10, i32 0, i32 5
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %4
  %15 = load %struct.snd_interval*, %struct.snd_interval** %6, align 8
  %16 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %15, i32 0, i32 5
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14, %4
  %20 = load %struct.snd_interval*, %struct.snd_interval** %8, align 8
  %21 = call i32 @snd_interval_none(%struct.snd_interval* %20)
  br label %89

22:                                               ; preds = %14
  %23 = load %struct.snd_interval*, %struct.snd_interval** %8, align 8
  %24 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %23, i32 0, i32 5
  store i64 0, i64* %24, align 8
  %25 = load %struct.snd_interval*, %struct.snd_interval** %5, align 8
  %26 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %25, i32 0, i32 4
  %27 = load i8*, i8** %26, align 8
  %28 = load %struct.snd_interval*, %struct.snd_interval** %6, align 8
  %29 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %28, i32 0, i32 4
  %30 = load i8*, i8** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i8* @muldiv32(i8* %27, i8* %30, i32 %31, i32* %9)
  %33 = load %struct.snd_interval*, %struct.snd_interval** %8, align 8
  %34 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %33, i32 0, i32 4
  store i8* %32, i8** %34, align 8
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %47, label %37

37:                                               ; preds = %22
  %38 = load %struct.snd_interval*, %struct.snd_interval** %5, align 8
  %39 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = load %struct.snd_interval*, %struct.snd_interval** %6, align 8
  %44 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br label %47

47:                                               ; preds = %42, %37, %22
  %48 = phi i1 [ true, %37 ], [ true, %22 ], [ %46, %42 ]
  %49 = zext i1 %48 to i32
  %50 = load %struct.snd_interval*, %struct.snd_interval** %8, align 8
  %51 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.snd_interval*, %struct.snd_interval** %5, align 8
  %53 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %52, i32 0, i32 3
  %54 = load i8*, i8** %53, align 8
  %55 = load %struct.snd_interval*, %struct.snd_interval** %6, align 8
  %56 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %55, i32 0, i32 3
  %57 = load i8*, i8** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i8* @muldiv32(i8* %54, i8* %57, i32 %58, i32* %9)
  %60 = load %struct.snd_interval*, %struct.snd_interval** %8, align 8
  %61 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %60, i32 0, i32 3
  store i8* %59, i8** %61, align 8
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %47
  %65 = load %struct.snd_interval*, %struct.snd_interval** %8, align 8
  %66 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %65, i32 0, i32 3
  %67 = load i8*, i8** %66, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %66, align 8
  %69 = load %struct.snd_interval*, %struct.snd_interval** %8, align 8
  %70 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %69, i32 0, i32 1
  store i32 1, i32* %70, align 4
  br label %86

71:                                               ; preds = %47
  %72 = load %struct.snd_interval*, %struct.snd_interval** %5, align 8
  %73 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %71
  %77 = load %struct.snd_interval*, %struct.snd_interval** %6, align 8
  %78 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br label %81

81:                                               ; preds = %76, %71
  %82 = phi i1 [ true, %71 ], [ %80, %76 ]
  %83 = zext i1 %82 to i32
  %84 = load %struct.snd_interval*, %struct.snd_interval** %8, align 8
  %85 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  br label %86

86:                                               ; preds = %81, %64
  %87 = load %struct.snd_interval*, %struct.snd_interval** %8, align 8
  %88 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %87, i32 0, i32 2
  store i64 0, i64* %88, align 8
  br label %89

89:                                               ; preds = %86, %19
  ret void
}

declare dso_local i32 @snd_interval_none(%struct.snd_interval*) #1

declare dso_local i8* @muldiv32(i8*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
