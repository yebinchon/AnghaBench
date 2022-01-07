; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_core.c_rsnd_mod_next.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_core.c_rsnd_mod_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsnd_mod = type { i32 }
%struct.rsnd_dai_stream = type { i32 }

@RSND_MOD_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rsnd_mod* @rsnd_mod_next(i32* %0, %struct.rsnd_dai_stream* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.rsnd_mod*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.rsnd_dai_stream*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.rsnd_mod*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.rsnd_dai_stream* %1, %struct.rsnd_dai_stream** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32*, i32** %8, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = load i32, i32* %9, align 4
  br label %19

17:                                               ; preds = %4
  %18 = load i32, i32* @RSND_MOD_MAX, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  store i32 %20, i32* %12, align 4
  br label %21

21:                                               ; preds = %49, %19
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %53

26:                                               ; preds = %21
  %27 = load i32*, i32** %8, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load i32*, i32** %8, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  %35 = load i32, i32* %34, align 4
  br label %39

36:                                               ; preds = %26
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* %37, align 4
  br label %39

39:                                               ; preds = %36, %29
  %40 = phi i32 [ %35, %29 ], [ %38, %36 ]
  store i32 %40, i32* %11, align 4
  %41 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %7, align 8
  %42 = load i32, i32* %11, align 4
  %43 = call %struct.rsnd_mod* @rsnd_io_to_mod(%struct.rsnd_dai_stream* %41, i32 %42)
  store %struct.rsnd_mod* %43, %struct.rsnd_mod** %10, align 8
  %44 = load %struct.rsnd_mod*, %struct.rsnd_mod** %10, align 8
  %45 = icmp ne %struct.rsnd_mod* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load %struct.rsnd_mod*, %struct.rsnd_mod** %10, align 8
  store %struct.rsnd_mod* %47, %struct.rsnd_mod** %5, align 8
  br label %54

48:                                               ; preds = %39
  br label %49

49:                                               ; preds = %48
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 4
  br label %21

53:                                               ; preds = %21
  store %struct.rsnd_mod* null, %struct.rsnd_mod** %5, align 8
  br label %54

54:                                               ; preds = %53, %46
  %55 = load %struct.rsnd_mod*, %struct.rsnd_mod** %5, align 8
  ret %struct.rsnd_mod* %55
}

declare dso_local %struct.rsnd_mod* @rsnd_io_to_mod(%struct.rsnd_dai_stream*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
