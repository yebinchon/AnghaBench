; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_cubic.c_cubic_root.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_cubic.c_cubic_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cubic_root.v = internal constant [64 x i32] [i32 0, i32 54, i32 54, i32 54, i32 118, i32 118, i32 118, i32 118, i32 123, i32 129, i32 134, i32 138, i32 143, i32 147, i32 151, i32 156, i32 157, i32 161, i32 164, i32 168, i32 170, i32 173, i32 176, i32 179, i32 181, i32 185, i32 187, i32 190, i32 192, i32 194, i32 197, i32 199, i32 200, i32 202, i32 204, i32 206, i32 209, i32 211, i32 213, i32 215, i32 217, i32 219, i32 221, i32 222, i32 224, i32 225, i32 227, i32 229, i32 231, i32 232, i32 234, i32 236, i32 237, i32 239, i32 240, i32 242, i32 244, i32 245, i32 246, i32 248, i32 250, i32 251, i32 252, i32 254], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cubic_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cubic_root(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @fls64(i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 7
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [64 x i32], [64 x i32]* @cubic_root.v, i64 0, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, 35
  %17 = ashr i32 %16, 6
  store i32 %17, i32* %2, align 4
  br label %49

18:                                               ; preds = %1
  %19 = load i32, i32* %5, align 4
  %20 = mul nsw i32 %19, 84
  %21 = ashr i32 %20, 8
  %22 = sub nsw i32 %21, 1
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* %5, align 4
  %25 = mul nsw i32 %24, 3
  %26 = ashr i32 %23, %25
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [64 x i32], [64 x i32]* @cubic_root.v, i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 10
  %32 = load i32, i32* %5, align 4
  %33 = shl i32 %31, %32
  %34 = ashr i32 %33, 6
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = mul nsw i32 2, %35
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = sub nsw i32 %39, 1
  %41 = mul nsw i32 %38, %40
  %42 = call i64 @div64_u64(i32 %37, i32 %41)
  %43 = trunc i64 %42 to i32
  %44 = add nsw i32 %36, %43
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = mul nsw i32 %45, 341
  %47 = ashr i32 %46, 10
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %18, %11
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @fls64(i32) #1

declare dso_local i64 @div64_u64(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
