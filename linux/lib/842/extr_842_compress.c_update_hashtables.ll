; ModuleID = '/home/carl/AnghaBench/linux/lib/842/extr_842_compress.c_update_hashtables.c'
source_filename = "/home/carl/AnghaBench/linux/lib/842/extr_842_compress.c_update_hashtables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sw842_param = type { i32, i32 }

@I8_BITS = common dso_local global i32 0, align 4
@I4_BITS = common dso_local global i32 0, align 4
@I2_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sw842_param*)* @update_hashtables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_hashtables(%struct.sw842_param* %0) #0 {
  %2 = alloca %struct.sw842_param*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sw842_param* %0, %struct.sw842_param** %2, align 8
  %7 = load %struct.sw842_param*, %struct.sw842_param** %2, align 8
  %8 = getelementptr inbounds %struct.sw842_param, %struct.sw842_param* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.sw842_param*, %struct.sw842_param** %2, align 8
  %11 = getelementptr inbounds %struct.sw842_param, %struct.sw842_param* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = sub nsw i32 %9, %12
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = ashr i32 %14, 3
  %16 = load i32, i32* @I8_BITS, align 4
  %17 = shl i32 1, %16
  %18 = srem i32 %15, %17
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %3, align 4
  %20 = ashr i32 %19, 2
  %21 = load i32, i32* @I4_BITS, align 4
  %22 = shl i32 1, %21
  %23 = srem i32 %20, %22
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %3, align 4
  %25 = ashr i32 %24, 1
  %26 = load i32, i32* @I2_BITS, align 4
  %27 = shl i32 1, %26
  %28 = srem i32 %25, %27
  store i32 %28, i32* %6, align 4
  %29 = load %struct.sw842_param*, %struct.sw842_param** %2, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @replace_hash(%struct.sw842_param* %29, i32 8, i32 %30, i32 0)
  %32 = load %struct.sw842_param*, %struct.sw842_param** %2, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @replace_hash(%struct.sw842_param* %32, i32 4, i32 %33, i32 0)
  %35 = load %struct.sw842_param*, %struct.sw842_param** %2, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @replace_hash(%struct.sw842_param* %35, i32 4, i32 %36, i32 1)
  %38 = load %struct.sw842_param*, %struct.sw842_param** %2, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @replace_hash(%struct.sw842_param* %38, i32 2, i32 %39, i32 0)
  %41 = load %struct.sw842_param*, %struct.sw842_param** %2, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @replace_hash(%struct.sw842_param* %41, i32 2, i32 %42, i32 1)
  %44 = load %struct.sw842_param*, %struct.sw842_param** %2, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @replace_hash(%struct.sw842_param* %44, i32 2, i32 %45, i32 2)
  %47 = load %struct.sw842_param*, %struct.sw842_param** %2, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @replace_hash(%struct.sw842_param* %47, i32 2, i32 %48, i32 3)
  ret void
}

declare dso_local i32 @replace_hash(%struct.sw842_param*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
