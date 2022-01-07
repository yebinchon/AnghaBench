; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_bch.c_encode_bch_unaligned.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_bch.c_encode_bch_unaligned.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bch_control = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bch_control*, i8*, i32, i32*)* @encode_bch_unaligned to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_bch_unaligned(%struct.bch_control* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.bch_control*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.bch_control* %0, %struct.bch_control** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %12 = load %struct.bch_control*, %struct.bch_control** %5, align 8
  %13 = call i32 @BCH_ECC_WORDS(%struct.bch_control* %12)
  %14 = sub nsw i32 %13, 1
  store i32 %14, i32* %11, align 4
  br label %15

15:                                               ; preds = %68, %4
  %16 = load i32, i32* %7, align 4
  %17 = add i32 %16, -1
  store i32 %17, i32* %7, align 4
  %18 = icmp ne i32 %16, 0
  br i1 %18, label %19, label %82

19:                                               ; preds = %15
  %20 = load %struct.bch_control*, %struct.bch_control** %5, align 8
  %21 = getelementptr inbounds %struct.bch_control, %struct.bch_control* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %11, align 4
  %24 = add nsw i32 %23, 1
  %25 = load i32*, i32** %8, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = ashr i32 %27, 24
  %29 = load i8*, i8** %6, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %6, align 8
  %31 = load i8, i8* %29, align 1
  %32 = zext i8 %31 to i32
  %33 = xor i32 %28, %32
  %34 = and i32 %33, 255
  %35 = mul nsw i32 %24, %34
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %22, i64 %36
  store i32* %37, i32** %10, align 8
  store i32 0, i32* %9, align 4
  br label %38

38:                                               ; preds = %65, %19
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %68

42:                                               ; preds = %38
  %43 = load i32*, i32** %8, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 %47, 8
  %49 = load i32*, i32** %8, align 8
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = ashr i32 %54, 24
  %56 = or i32 %48, %55
  %57 = load i32*, i32** %10, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %10, align 8
  %59 = load i32, i32* %57, align 4
  %60 = xor i32 %56, %59
  %61 = load i32*, i32** %8, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  store i32 %60, i32* %64, align 4
  br label %65

65:                                               ; preds = %42
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %9, align 4
  br label %38

68:                                               ; preds = %38
  %69 = load i32*, i32** %8, align 8
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = shl i32 %73, 8
  %75 = load i32*, i32** %10, align 8
  %76 = load i32, i32* %75, align 4
  %77 = xor i32 %74, %76
  %78 = load i32*, i32** %8, align 8
  %79 = load i32, i32* %11, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32 %77, i32* %81, align 4
  br label %15

82:                                               ; preds = %15
  ret void
}

declare dso_local i32 @BCH_ECC_WORDS(%struct.bch_control*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
