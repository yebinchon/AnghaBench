; ModuleID = '/home/carl/AnghaBench/linux/fs/verity/extr_verify.c_hash_at_level.c'
source_filename = "/home/carl/AnghaBench/linux/fs/verity/extr_verify.c_hash_at_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.merkle_tree_params = type { i32, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.merkle_tree_params*, i32, i32, i32*, i32*)* @hash_at_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hash_at_level(%struct.merkle_tree_params* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.merkle_tree_params*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.merkle_tree_params* %0, %struct.merkle_tree_params** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load %struct.merkle_tree_params*, %struct.merkle_tree_params** %6, align 8
  %15 = getelementptr inbounds %struct.merkle_tree_params, %struct.merkle_tree_params* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = mul i32 %13, %16
  %18 = lshr i32 %12, %17
  store i32 %18, i32* %11, align 4
  %19 = load %struct.merkle_tree_params*, %struct.merkle_tree_params** %6, align 8
  %20 = getelementptr inbounds %struct.merkle_tree_params, %struct.merkle_tree_params* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %8, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %11, align 4
  %27 = load %struct.merkle_tree_params*, %struct.merkle_tree_params** %6, align 8
  %28 = getelementptr inbounds %struct.merkle_tree_params, %struct.merkle_tree_params* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = lshr i32 %26, %29
  %31 = add i32 %25, %30
  %32 = load i32*, i32** %9, align 8
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load %struct.merkle_tree_params*, %struct.merkle_tree_params** %6, align 8
  %35 = getelementptr inbounds %struct.merkle_tree_params, %struct.merkle_tree_params* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = shl i32 1, %36
  %38 = sub nsw i32 %37, 1
  %39 = and i32 %33, %38
  %40 = load %struct.merkle_tree_params*, %struct.merkle_tree_params** %6, align 8
  %41 = getelementptr inbounds %struct.merkle_tree_params, %struct.merkle_tree_params* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.merkle_tree_params*, %struct.merkle_tree_params** %6, align 8
  %44 = getelementptr inbounds %struct.merkle_tree_params, %struct.merkle_tree_params* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sub i32 %42, %45
  %47 = shl i32 %39, %46
  %48 = load i32*, i32** %10, align 8
  store i32 %47, i32* %48, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
