; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_ssi.c_rsnd_ssi_multi_slaves.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_ssi.c_rsnd_ssi_multi_slaves.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsnd_dai_stream = type { i32 }
%struct.rsnd_mod = type { i32 }

@RSND_MOD_SSIM1 = common dso_local global i32 0, align 4
@RSND_MOD_SSIM2 = common dso_local global i32 0, align 4
@RSND_MOD_SSIM3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsnd_dai_stream*)* @rsnd_ssi_multi_slaves to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsnd_ssi_multi_slaves(%struct.rsnd_dai_stream* %0) #0 {
  %2 = alloca %struct.rsnd_dai_stream*, align 8
  %3 = alloca %struct.rsnd_mod*, align 8
  %4 = alloca [3 x i32], align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rsnd_dai_stream* %0, %struct.rsnd_dai_stream** %2, align 8
  %7 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %8 = load i32, i32* @RSND_MOD_SSIM1, align 4
  store i32 %8, i32* %7, align 4
  %9 = getelementptr inbounds i32, i32* %7, i64 1
  %10 = load i32, i32* @RSND_MOD_SSIM2, align 4
  store i32 %10, i32* %9, align 4
  %11 = getelementptr inbounds i32, i32* %9, i64 1
  %12 = load i32, i32* @RSND_MOD_SSIM3, align 4
  store i32 %12, i32* %11, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %34, %1
  %14 = load i32, i32* %5, align 4
  %15 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %16 = call i32 @ARRAY_SIZE(i32* %15)
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %37

18:                                               ; preds = %13
  %19 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %2, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.rsnd_mod* @rsnd_io_to_mod(%struct.rsnd_dai_stream* %19, i32 %23)
  store %struct.rsnd_mod* %24, %struct.rsnd_mod** %3, align 8
  %25 = load %struct.rsnd_mod*, %struct.rsnd_mod** %3, align 8
  %26 = icmp ne %struct.rsnd_mod* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %18
  br label %34

28:                                               ; preds = %18
  %29 = load %struct.rsnd_mod*, %struct.rsnd_mod** %3, align 8
  %30 = call i32 @rsnd_mod_id(%struct.rsnd_mod* %29)
  %31 = shl i32 1, %30
  %32 = load i32, i32* %6, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %28, %27
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %13

37:                                               ; preds = %13
  %38 = load i32, i32* %6, align 4
  ret i32 %38
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local %struct.rsnd_mod* @rsnd_io_to_mod(%struct.rsnd_dai_stream*, i32) #1

declare dso_local i32 @rsnd_mod_id(%struct.rsnd_mod*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
