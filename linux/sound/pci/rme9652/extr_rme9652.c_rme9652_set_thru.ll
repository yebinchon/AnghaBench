; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_rme9652.c_rme9652_set_thru.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_rme9652.c_rme9652_set_thru.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rme9652 = type { i32, i32*, i64 }

@RME9652_NCHANNELS = common dso_local global i32 0, align 4
@RME9652_thru_base = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_rme9652*, i32, i32)* @rme9652_set_thru to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rme9652_set_thru(%struct.snd_rme9652* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.snd_rme9652*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_rme9652* %0, %struct.snd_rme9652** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.snd_rme9652*, %struct.snd_rme9652** %4, align 8
  %10 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %9, i32 0, i32 2
  store i64 0, i64* %10, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %64

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %39

16:                                               ; preds = %13
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %35, %16
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @RME9652_NCHANNELS, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %38

21:                                               ; preds = %17
  %22 = load i32, i32* %7, align 4
  %23 = shl i32 1, %22
  %24 = load %struct.snd_rme9652*, %struct.snd_rme9652** %4, align 8
  %25 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 8
  %28 = load %struct.snd_rme9652*, %struct.snd_rme9652** %4, align 8
  %29 = load i64, i64* @RME9652_thru_base, align 8
  %30 = load i32, i32* %7, align 4
  %31 = mul nsw i32 %30, 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %29, %32
  %34 = call i32 @rme9652_write(%struct.snd_rme9652* %28, i64 %33, i32 1)
  br label %35

35:                                               ; preds = %21
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %7, align 4
  br label %17

38:                                               ; preds = %17
  br label %63

39:                                               ; preds = %13
  store i32 0, i32* %7, align 4
  br label %40

40:                                               ; preds = %59, %39
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @RME9652_NCHANNELS, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %62

44:                                               ; preds = %40
  %45 = load i32, i32* %7, align 4
  %46 = shl i32 1, %45
  %47 = xor i32 %46, -1
  %48 = load %struct.snd_rme9652*, %struct.snd_rme9652** %4, align 8
  %49 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = and i32 %50, %47
  store i32 %51, i32* %49, align 8
  %52 = load %struct.snd_rme9652*, %struct.snd_rme9652** %4, align 8
  %53 = load i64, i64* @RME9652_thru_base, align 8
  %54 = load i32, i32* %7, align 4
  %55 = mul nsw i32 %54, 4
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %53, %56
  %58 = call i32 @rme9652_write(%struct.snd_rme9652* %52, i64 %57, i32 0)
  br label %59

59:                                               ; preds = %44
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %40

62:                                               ; preds = %40
  br label %63

63:                                               ; preds = %62, %38
  br label %101

64:                                               ; preds = %3
  %65 = load %struct.snd_rme9652*, %struct.snd_rme9652** %4, align 8
  %66 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %64
  %75 = load i32, i32* %8, align 4
  %76 = shl i32 1, %75
  %77 = load %struct.snd_rme9652*, %struct.snd_rme9652** %4, align 8
  %78 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 8
  br label %89

81:                                               ; preds = %64
  %82 = load i32, i32* %8, align 4
  %83 = shl i32 1, %82
  %84 = xor i32 %83, -1
  %85 = load %struct.snd_rme9652*, %struct.snd_rme9652** %4, align 8
  %86 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = and i32 %87, %84
  store i32 %88, i32* %86, align 8
  br label %89

89:                                               ; preds = %81, %74
  %90 = load %struct.snd_rme9652*, %struct.snd_rme9652** %4, align 8
  %91 = load i64, i64* @RME9652_thru_base, align 8
  %92 = load i32, i32* %8, align 4
  %93 = mul nsw i32 %92, 4
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %91, %94
  %96 = load i32, i32* %6, align 4
  %97 = icmp ne i32 %96, 0
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i32 1, i32 0
  %100 = call i32 @rme9652_write(%struct.snd_rme9652* %90, i64 %95, i32 %99)
  br label %101

101:                                              ; preds = %89, %63
  ret void
}

declare dso_local i32 @rme9652_write(%struct.snd_rme9652*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
