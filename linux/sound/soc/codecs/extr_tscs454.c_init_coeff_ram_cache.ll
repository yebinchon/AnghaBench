; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tscs454.c_init_coeff_ram_cache.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tscs454.c_init_coeff_ram_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@init_coeff_ram_cache.norm_addrs = internal constant [45 x i32] [i32 0, i32 5, i32 10, i32 15, i32 20, i32 25, i32 31, i32 32, i32 37, i32 42, i32 47, i32 52, i32 57, i32 63, i32 64, i32 69, i32 74, i32 79, i32 84, i32 89, i32 95, i32 96, i32 101, i32 106, i32 111, i32 116, i32 121, i32 127, i32 128, i32 133, i32 140, i32 145, i32 150, i32 151, i32 156, i32 163, i32 168, i32 173, i32 175, i32 176, i32 181, i32 186, i32 191, i32 196, i32 201], align 16
@COEFF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @init_coeff_ram_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_coeff_ram_cache(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %20, %1
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([45 x i32], [45 x i32]* @init_coeff_ram_cache.norm_addrs, i64 0, i64 0))
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %23

8:                                                ; preds = %4
  %9 = load i32*, i32** %2, align 8
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [45 x i32], [45 x i32]* @init_coeff_ram_cache.norm_addrs, i64 0, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, 1
  %15 = load i32, i32* @COEFF_SIZE, align 4
  %16 = mul nsw i32 %14, %15
  %17 = sub nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %9, i64 %18
  store i32 64, i32* %19, align 4
  br label %20

20:                                               ; preds = %8
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %3, align 4
  br label %4

23:                                               ; preds = %4
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
