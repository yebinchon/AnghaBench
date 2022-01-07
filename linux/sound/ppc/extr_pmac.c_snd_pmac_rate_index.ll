; ModuleID = '/home/carl/AnghaBench/linux/sound/ppc/extr_pmac.c_snd_pmac_rate_index.c'
source_filename = "/home/carl/AnghaBench/linux/sound/ppc/extr_pmac.c_snd_pmac_rate_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pmac = type { i32*, i32 }
%struct.pmac_stream = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_pmac_rate_index(%struct.snd_pmac* %0, %struct.pmac_stream* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pmac*, align 8
  %6 = alloca %struct.pmac_stream*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_pmac* %0, %struct.snd_pmac** %5, align 8
  store %struct.pmac_stream* %1, %struct.pmac_stream** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.pmac_stream*, %struct.pmac_stream** %6, align 8
  %12 = getelementptr inbounds %struct.pmac_stream, %struct.pmac_stream* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.snd_pmac*, %struct.snd_pmac** %5, align 8
  %16 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ugt i32 %14, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %54

22:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %47, %22
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.snd_pmac*, %struct.snd_pmac** %5, align 8
  %26 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %52

29:                                               ; preds = %23
  %30 = load i32, i32* %9, align 4
  %31 = and i32 %30, 1
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  br label %47

34:                                               ; preds = %29
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.snd_pmac*, %struct.snd_pmac** %5, align 8
  %38 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = icmp uge i32 %36, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %34
  br label %52

46:                                               ; preds = %34
  br label %47

47:                                               ; preds = %46, %33
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = ashr i32 %50, 1
  store i32 %51, i32* %9, align 4
  br label %23

52:                                               ; preds = %45, %23
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %52, %21
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
