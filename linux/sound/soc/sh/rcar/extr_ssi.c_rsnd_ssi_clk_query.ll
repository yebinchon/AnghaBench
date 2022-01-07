; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_ssi.c_rsnd_ssi_clk_query.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_ssi.c_rsnd_ssi_clk_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsnd_dai = type { i32 }
%struct.rsnd_priv = type { i32 }

@__const.rsnd_ssi_clk_query.ssi_clk_mul_table = private unnamed_addr constant [7 x i32] [i32 1, i32 2, i32 4, i32 8, i32 16, i32 6, i32 12], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rsnd_ssi_clk_query(%struct.rsnd_dai* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rsnd_dai*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.rsnd_priv*, align 8
  %11 = alloca [7 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.rsnd_dai* %0, %struct.rsnd_dai** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %16 = load %struct.rsnd_dai*, %struct.rsnd_dai** %6, align 8
  %17 = call %struct.rsnd_priv* @rsnd_rdai_to_priv(%struct.rsnd_dai* %16)
  store %struct.rsnd_priv* %17, %struct.rsnd_priv** %10, align 8
  %18 = bitcast [7 x i32]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %18, i8* align 16 bitcast ([7 x i32]* @__const.rsnd_ssi_clk_query.ssi_clk_mul_table to i8*), i64 28, i1 false)
  %19 = load %struct.rsnd_dai*, %struct.rsnd_dai** %6, align 8
  %20 = call i32 @rsnd_rdai_width_get(%struct.rsnd_dai* %19)
  store i32 %20, i32* %15, align 4
  store i32 0, i32* %12, align 4
  br label %21

21:                                               ; preds = %55, %4
  %22 = load i32, i32* %12, align 4
  %23 = getelementptr inbounds [7 x i32], [7 x i32]* %11, i64 0, i64 0
  %24 = call i32 @ARRAY_SIZE(i32* %23)
  %25 = icmp slt i32 %22, %24
  br i1 %25, label %26, label %58

26:                                               ; preds = %21
  %27 = load i32, i32* %12, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  br label %55

30:                                               ; preds = %26
  %31 = load i32, i32* %15, align 4
  %32 = load i32, i32* %7, align 4
  %33 = mul nsw i32 %31, %32
  %34 = load i32, i32* %8, align 4
  %35 = mul nsw i32 %33, %34
  %36 = load i32, i32* %12, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [7 x i32], [7 x i32]* %11, i64 0, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 %35, %39
  store i32 %40, i32* %14, align 4
  %41 = load %struct.rsnd_priv*, %struct.rsnd_priv** %10, align 8
  %42 = load i32, i32* %14, align 4
  %43 = call i32 @rsnd_adg_clk_query(%struct.rsnd_priv* %41, i32 %42)
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %30
  br label %55

47:                                               ; preds = %30
  %48 = load i32*, i32** %9, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32, i32* %12, align 4
  %52 = load i32*, i32** %9, align 8
  store i32 %51, i32* %52, align 4
  br label %53

53:                                               ; preds = %50, %47
  %54 = load i32, i32* %14, align 4
  store i32 %54, i32* %5, align 4
  br label %59

55:                                               ; preds = %46, %29
  %56 = load i32, i32* %12, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %12, align 4
  br label %21

58:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %58, %53
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local %struct.rsnd_priv* @rsnd_rdai_to_priv(%struct.rsnd_dai*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @rsnd_rdai_width_get(%struct.rsnd_dai*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @rsnd_adg_clk_query(%struct.rsnd_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
