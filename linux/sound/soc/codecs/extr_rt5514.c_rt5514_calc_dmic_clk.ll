; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5514.c_rt5514_calc_dmic_clk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5514.c_rt5514_calc_dmic_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }

@__const.rt5514_calc_dmic_clk.div = private unnamed_addr constant [8 x i32] [i32 2, i32 3, i32 4, i32 8, i32 12, i32 16, i32 24, i32 32], align 16
@.str = private unnamed_addr constant [31 x i8] c"Base clock rate %d is too low\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Base clock rate %d is too high\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @rt5514_calc_dmic_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5514_calc_dmic_clk(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [8 x i32], align 16
  %7 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = bitcast [8 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 bitcast ([8 x i32]* @__const.rt5514_calc_dmic_clk.div to i8*), i64 32, i1 false)
  %9 = load i32, i32* %5, align 4
  %10 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  %11 = load i32, i32* %10, align 16
  %12 = mul nsw i32 1000000, %11
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @pr_warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %47

19:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %36, %19
  %21 = load i32, i32* %7, align 4
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  %23 = call i32 @ARRAY_SIZE(i32* %22)
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %20
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 3072000, %29
  %31 = load i32, i32* %5, align 4
  %32 = icmp sge i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %3, align 4
  br label %47

35:                                               ; preds = %25
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %7, align 4
  br label %20

39:                                               ; preds = %20
  %40 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %41 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @dev_warn(i32 %42, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %39, %33, %14
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @pr_warn(i8*, i32) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @dev_warn(i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
