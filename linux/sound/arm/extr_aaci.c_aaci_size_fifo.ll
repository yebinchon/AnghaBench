; ModuleID = '/home/carl/AnghaBench/linux/sound/arm/extr_aaci.c_aaci_size_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/sound/arm/extr_aaci.c_aaci_size_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aaci = type { i32, i64, %struct.aaci_runtime }
%struct.aaci_runtime = type { i64, i64 }

@CR_FEN = common dso_local global i32 0, align 4
@CR_SZ16 = common dso_local global i32 0, align 4
@CR_EN = common dso_local global i32 0, align 4
@AACI_TXCR = common dso_local global i64 0, align 8
@AACI_SR = common dso_local global i64 0, align 8
@SR_TXFF = common dso_local global i32 0, align 4
@MAINCR_IE = common dso_local global i32 0, align 4
@AACI_MAINCR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aaci*)* @aaci_size_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aaci_size_fifo(%struct.aaci* %0) #0 {
  %2 = alloca %struct.aaci*, align 8
  %3 = alloca %struct.aaci_runtime*, align 8
  %4 = alloca i32, align 4
  store %struct.aaci* %0, %struct.aaci** %2, align 8
  %5 = load %struct.aaci*, %struct.aaci** %2, align 8
  %6 = getelementptr inbounds %struct.aaci, %struct.aaci* %5, i32 0, i32 2
  store %struct.aaci_runtime* %6, %struct.aaci_runtime** %3, align 8
  %7 = load i32, i32* @CR_FEN, align 4
  %8 = load i32, i32* @CR_SZ16, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @CR_EN, align 4
  %11 = or i32 %9, %10
  %12 = load %struct.aaci_runtime*, %struct.aaci_runtime** %3, align 8
  %13 = getelementptr inbounds %struct.aaci_runtime, %struct.aaci_runtime* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @AACI_TXCR, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @writel(i32 %11, i64 %16)
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %38, %1
  %19 = load %struct.aaci_runtime*, %struct.aaci_runtime** %3, align 8
  %20 = getelementptr inbounds %struct.aaci_runtime, %struct.aaci_runtime* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @AACI_SR, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @readl(i64 %23)
  %25 = load i32, i32* @SR_TXFF, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %18
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %29, 4096
  br label %31

31:                                               ; preds = %28, %18
  %32 = phi i1 [ false, %18 ], [ %30, %28 ]
  br i1 %32, label %33, label %41

33:                                               ; preds = %31
  %34 = load %struct.aaci_runtime*, %struct.aaci_runtime** %3, align 8
  %35 = getelementptr inbounds %struct.aaci_runtime, %struct.aaci_runtime* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @writel(i32 0, i64 %36)
  br label %38

38:                                               ; preds = %33
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %18

41:                                               ; preds = %31
  %42 = load %struct.aaci_runtime*, %struct.aaci_runtime** %3, align 8
  %43 = getelementptr inbounds %struct.aaci_runtime, %struct.aaci_runtime* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @AACI_TXCR, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @writel(i32 0, i64 %46)
  %48 = load %struct.aaci*, %struct.aaci** %2, align 8
  %49 = getelementptr inbounds %struct.aaci, %struct.aaci* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @MAINCR_IE, align 4
  %52 = xor i32 %51, -1
  %53 = and i32 %50, %52
  %54 = load %struct.aaci*, %struct.aaci** %2, align 8
  %55 = getelementptr inbounds %struct.aaci, %struct.aaci* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @AACI_MAINCR, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @writel(i32 %53, i64 %58)
  %60 = load %struct.aaci*, %struct.aaci** %2, align 8
  %61 = getelementptr inbounds %struct.aaci, %struct.aaci* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @AACI_MAINCR, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @readl(i64 %64)
  %66 = call i32 @udelay(i32 1)
  %67 = load %struct.aaci*, %struct.aaci** %2, align 8
  %68 = getelementptr inbounds %struct.aaci, %struct.aaci* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.aaci*, %struct.aaci** %2, align 8
  %71 = getelementptr inbounds %struct.aaci, %struct.aaci* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @AACI_MAINCR, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @writel(i32 %69, i64 %74)
  %76 = load i32, i32* %4, align 4
  %77 = icmp eq i32 %76, 4096
  br i1 %77, label %78, label %79

78:                                               ; preds = %41
  store i32 8, i32* %4, align 4
  br label %79

79:                                               ; preds = %78, %41
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
