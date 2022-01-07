; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_bch.c_load_ecc8.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_bch.c_load_ecc8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bch_control = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bch_control*, i32*, i32*)* @load_ecc8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_ecc8(%struct.bch_control* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.bch_control*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [4 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bch_control* %0, %struct.bch_control** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = bitcast [4 x i32]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 16, i1 false)
  %11 = load %struct.bch_control*, %struct.bch_control** %4, align 8
  %12 = call i32 @BCH_ECC_WORDS(%struct.bch_control* %11)
  %13 = sub nsw i32 %12, 1
  store i32 %13, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %41, %3
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %46

18:                                               ; preds = %14
  %19 = load i32*, i32** %6, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = shl i32 %21, 24
  %23 = load i32*, i32** %6, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 %25, 16
  %27 = or i32 %22, %26
  %28 = load i32*, i32** %6, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 2
  %30 = load i32, i32* %29, align 4
  %31 = shl i32 %30, 8
  %32 = or i32 %27, %31
  %33 = load i32*, i32** %6, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 3
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %32, %35
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* %8, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 %36, i32* %40, align 4
  br label %41

41:                                               ; preds = %18
  %42 = load i32, i32* %8, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %8, align 4
  %44 = load i32*, i32** %6, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 4
  store i32* %45, i32** %6, align 8
  br label %14

46:                                               ; preds = %14
  %47 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %48 = load i32*, i32** %6, align 8
  %49 = load %struct.bch_control*, %struct.bch_control** %4, align 8
  %50 = call i64 @BCH_ECC_BYTES(%struct.bch_control* %49)
  %51 = load i32, i32* %9, align 4
  %52 = mul i32 4, %51
  %53 = zext i32 %52 to i64
  %54 = sub nsw i64 %50, %53
  %55 = call i32 @memcpy(i32* %47, i32* %48, i64 %54)
  %56 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %57 = load i32, i32* %56, align 16
  %58 = shl i32 %57, 24
  %59 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = shl i32 %60, 16
  %62 = or i32 %58, %61
  %63 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %64 = load i32, i32* %63, align 8
  %65 = shl i32 %64, 8
  %66 = or i32 %62, %65
  %67 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %66, %68
  %70 = load i32*, i32** %5, align 8
  %71 = load i32, i32* %9, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32 %69, i32* %73, align 4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @BCH_ECC_WORDS(%struct.bch_control*) #2

declare dso_local i32 @memcpy(i32*, i32*, i64) #2

declare dso_local i64 @BCH_ECC_BYTES(%struct.bch_control*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
