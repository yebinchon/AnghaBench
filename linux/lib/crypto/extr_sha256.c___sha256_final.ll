; ModuleID = '/home/carl/AnghaBench/linux/lib/crypto/extr_sha256.c___sha256_final.c'
source_filename = "/home/carl/AnghaBench/linux/lib/crypto/extr_sha256.c___sha256_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sha256_state = type { i32, i32* }

@__sha256_final.padding = internal constant <{ i32, [63 x i32] }> <{ i32 128, [63 x i32] zeroinitializer }>, align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sha256_state*, i32*, i32)* @__sha256_final to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__sha256_final(%struct.sha256_state* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.sha256_state*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sha256_state* %0, %struct.sha256_state** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i32*, i32** %5, align 8
  store i32* %12, i32** %7, align 8
  %13 = load %struct.sha256_state*, %struct.sha256_state** %4, align 8
  %14 = getelementptr inbounds %struct.sha256_state, %struct.sha256_state* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = shl i32 %15, 3
  %17 = call i32 @cpu_to_be64(i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load %struct.sha256_state*, %struct.sha256_state** %4, align 8
  %19 = getelementptr inbounds %struct.sha256_state, %struct.sha256_state* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = and i32 %20, 63
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ult i32 %22, 56
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* %9, align 4
  %26 = sub i32 56, %25
  br label %30

27:                                               ; preds = %3
  %28 = load i32, i32* %9, align 4
  %29 = sub i32 120, %28
  br label %30

30:                                               ; preds = %27, %24
  %31 = phi i32 [ %26, %24 ], [ %29, %27 ]
  store i32 %31, i32* %10, align 4
  %32 = load %struct.sha256_state*, %struct.sha256_state** %4, align 8
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @sha256_update(%struct.sha256_state* %32, i32* getelementptr inbounds ([64 x i32], [64 x i32]* bitcast (<{ i32, [63 x i32] }>* @__sha256_final.padding to [64 x i32]*), i64 0, i64 0), i32 %33)
  %35 = load %struct.sha256_state*, %struct.sha256_state** %4, align 8
  %36 = call i32 @sha256_update(%struct.sha256_state* %35, i32* %8, i32 4)
  store i32 0, i32* %11, align 4
  br label %37

37:                                               ; preds = %54, %30
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %57

41:                                               ; preds = %37
  %42 = load %struct.sha256_state*, %struct.sha256_state** %4, align 8
  %43 = getelementptr inbounds %struct.sha256_state, %struct.sha256_state* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %7, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = call i32 @put_unaligned_be32(i32 %48, i32* %52)
  br label %54

54:                                               ; preds = %41
  %55 = load i32, i32* %11, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %11, align 4
  br label %37

57:                                               ; preds = %37
  %58 = load %struct.sha256_state*, %struct.sha256_state** %4, align 8
  %59 = call i32 @memset(%struct.sha256_state* %58, i32 0, i32 16)
  ret i32 0
}

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @sha256_update(%struct.sha256_state*, i32*, i32) #1

declare dso_local i32 @put_unaligned_be32(i32, i32*) #1

declare dso_local i32 @memset(%struct.sha256_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
