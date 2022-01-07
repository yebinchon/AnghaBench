; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sti/extr_uniperif_player.c_uni_player_clk_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sti/extr_uniperif_player.c_uni_player_clk_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uniperif = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uniperif*, i64)* @uni_player_clk_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uni_player_clk_set_rate(%struct.uniperif* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uniperif*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.uniperif* %0, %struct.uniperif** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.uniperif*, %struct.uniperif** %4, align 8
  %12 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  store i32 -1, i32* %8, align 4
  %17 = load i32, i32* %10, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %10, align 4
  br label %20

19:                                               ; preds = %2
  store i32 1, i32* %8, align 4
  br label %20

20:                                               ; preds = %19, %16
  %21 = load i64, i64* %5, align 8
  %22 = trunc i64 %21 to i32
  %23 = load i32, i32* %10, align 4
  %24 = mul nsw i32 %22, %23
  %25 = add nsw i32 %24, 500000
  %26 = call i64 @div64_u64(i32 %25, i64 1000000)
  %27 = trunc i64 %26 to i32
  %28 = load i32, i32* %8, align 4
  %29 = mul nsw i32 %28, %27
  store i32 %29, i32* %8, align 4
  %30 = load i64, i64* %5, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = add i64 %30, %32
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %20
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %88

40:                                               ; preds = %20
  %41 = load %struct.uniperif*, %struct.uniperif** %4, align 8
  %42 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @clk_set_rate(i32 %43, i32 %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %3, align 4
  br label %88

50:                                               ; preds = %40
  %51 = load %struct.uniperif*, %struct.uniperif** %4, align 8
  %52 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @clk_get_rate(i32 %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %50
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %88

60:                                               ; preds = %50
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = load i64, i64* %5, align 8
  %64 = sub i64 %62, %63
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %60
  %69 = load i32, i32* %8, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %8, align 4
  store i32 -1, i32* %10, align 4
  br label %72

71:                                               ; preds = %60
  store i32 1, i32* %10, align 4
  br label %72

72:                                               ; preds = %71, %68
  %73 = load i32, i32* %8, align 4
  %74 = mul nsw i32 %73, 1000000
  %75 = sext i32 %74 to i64
  %76 = load i64, i64* %5, align 8
  %77 = udiv i64 %76, 2
  %78 = add i64 %75, %77
  %79 = trunc i64 %78 to i32
  %80 = load i64, i64* %5, align 8
  %81 = call i64 @div64_u64(i32 %79, i64 %80)
  %82 = trunc i64 %81 to i32
  %83 = load i32, i32* %10, align 4
  %84 = mul nsw i32 %83, %82
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %10, align 4
  %86 = load %struct.uniperif*, %struct.uniperif** %4, align 8
  %87 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 4
  store i32 0, i32* %3, align 4
  br label %88

88:                                               ; preds = %72, %57, %48, %37
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i64 @div64_u64(i32, i64) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
