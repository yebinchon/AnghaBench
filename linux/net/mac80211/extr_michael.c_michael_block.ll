; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_michael.c_michael_block.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_michael.c_michael_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.michael_mic_ctx = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.michael_mic_ctx*, i32)* @michael_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @michael_block(%struct.michael_mic_ctx* %0, i32 %1) #0 {
  %3 = alloca %struct.michael_mic_ctx*, align 8
  %4 = alloca i32, align 4
  store %struct.michael_mic_ctx* %0, %struct.michael_mic_ctx** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.michael_mic_ctx*, %struct.michael_mic_ctx** %3, align 8
  %7 = getelementptr inbounds %struct.michael_mic_ctx, %struct.michael_mic_ctx* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = xor i32 %8, %5
  store i32 %9, i32* %7, align 4
  %10 = load %struct.michael_mic_ctx*, %struct.michael_mic_ctx** %3, align 8
  %11 = getelementptr inbounds %struct.michael_mic_ctx, %struct.michael_mic_ctx* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @rol32(i32 %12, i32 17)
  %14 = load %struct.michael_mic_ctx*, %struct.michael_mic_ctx** %3, align 8
  %15 = getelementptr inbounds %struct.michael_mic_ctx, %struct.michael_mic_ctx* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = xor i32 %16, %13
  store i32 %17, i32* %15, align 4
  %18 = load %struct.michael_mic_ctx*, %struct.michael_mic_ctx** %3, align 8
  %19 = getelementptr inbounds %struct.michael_mic_ctx, %struct.michael_mic_ctx* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.michael_mic_ctx*, %struct.michael_mic_ctx** %3, align 8
  %22 = getelementptr inbounds %struct.michael_mic_ctx, %struct.michael_mic_ctx* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, %20
  store i32 %24, i32* %22, align 4
  %25 = load %struct.michael_mic_ctx*, %struct.michael_mic_ctx** %3, align 8
  %26 = getelementptr inbounds %struct.michael_mic_ctx, %struct.michael_mic_ctx* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, -16711936
  %29 = lshr i32 %28, 8
  %30 = load %struct.michael_mic_ctx*, %struct.michael_mic_ctx** %3, align 8
  %31 = getelementptr inbounds %struct.michael_mic_ctx, %struct.michael_mic_ctx* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, 16711935
  %34 = shl i32 %33, 8
  %35 = or i32 %29, %34
  %36 = load %struct.michael_mic_ctx*, %struct.michael_mic_ctx** %3, align 8
  %37 = getelementptr inbounds %struct.michael_mic_ctx, %struct.michael_mic_ctx* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = xor i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = load %struct.michael_mic_ctx*, %struct.michael_mic_ctx** %3, align 8
  %41 = getelementptr inbounds %struct.michael_mic_ctx, %struct.michael_mic_ctx* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.michael_mic_ctx*, %struct.michael_mic_ctx** %3, align 8
  %44 = getelementptr inbounds %struct.michael_mic_ctx, %struct.michael_mic_ctx* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, %42
  store i32 %46, i32* %44, align 4
  %47 = load %struct.michael_mic_ctx*, %struct.michael_mic_ctx** %3, align 8
  %48 = getelementptr inbounds %struct.michael_mic_ctx, %struct.michael_mic_ctx* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @rol32(i32 %49, i32 3)
  %51 = load %struct.michael_mic_ctx*, %struct.michael_mic_ctx** %3, align 8
  %52 = getelementptr inbounds %struct.michael_mic_ctx, %struct.michael_mic_ctx* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = xor i32 %53, %50
  store i32 %54, i32* %52, align 4
  %55 = load %struct.michael_mic_ctx*, %struct.michael_mic_ctx** %3, align 8
  %56 = getelementptr inbounds %struct.michael_mic_ctx, %struct.michael_mic_ctx* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.michael_mic_ctx*, %struct.michael_mic_ctx** %3, align 8
  %59 = getelementptr inbounds %struct.michael_mic_ctx, %struct.michael_mic_ctx* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, %57
  store i32 %61, i32* %59, align 4
  %62 = load %struct.michael_mic_ctx*, %struct.michael_mic_ctx** %3, align 8
  %63 = getelementptr inbounds %struct.michael_mic_ctx, %struct.michael_mic_ctx* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @ror32(i32 %64, i32 2)
  %66 = load %struct.michael_mic_ctx*, %struct.michael_mic_ctx** %3, align 8
  %67 = getelementptr inbounds %struct.michael_mic_ctx, %struct.michael_mic_ctx* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = xor i32 %68, %65
  store i32 %69, i32* %67, align 4
  %70 = load %struct.michael_mic_ctx*, %struct.michael_mic_ctx** %3, align 8
  %71 = getelementptr inbounds %struct.michael_mic_ctx, %struct.michael_mic_ctx* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.michael_mic_ctx*, %struct.michael_mic_ctx** %3, align 8
  %74 = getelementptr inbounds %struct.michael_mic_ctx, %struct.michael_mic_ctx* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, %72
  store i32 %76, i32* %74, align 4
  ret void
}

declare dso_local i32 @rol32(i32, i32) #1

declare dso_local i32 @ror32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
