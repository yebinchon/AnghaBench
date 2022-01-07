; ModuleID = '/home/carl/AnghaBench/linux/fs/hpfs/extr_hpfs_fn.h_tstbits.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hpfs/extr_hpfs_fn.h_tstbits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32)* @tstbits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tstbits(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp uge i32 %9, 16384
  br i1 %10, label %17, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %7, align 4
  %14 = add i32 %12, %13
  %15 = sub i32 %14, 1
  %16 = icmp uge i32 %15, 16384
  br i1 %16, label %17, label %19

17:                                               ; preds = %11, %3
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %4, align 4
  br label %65

19:                                               ; preds = %11
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %21, 16383
  %23 = lshr i32 %22, 5
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %20, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @le32_to_cpu(i32 %26)
  %28 = load i32, i32* %6, align 4
  %29 = and i32 %28, 31
  %30 = lshr i32 %27, %29
  %31 = and i32 %30, 1
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %19
  store i32 1, i32* %4, align 4
  br label %65

34:                                               ; preds = %19
  store i32 1, i32* %8, align 4
  br label %35

35:                                               ; preds = %61, %34
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %39, label %64

39:                                               ; preds = %35
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %8, align 4
  %43 = add i32 %41, %42
  %44 = and i32 %43, 16383
  %45 = lshr i32 %44, 5
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %40, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @le32_to_cpu(i32 %48)
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %8, align 4
  %52 = add i32 %50, %51
  %53 = and i32 %52, 31
  %54 = lshr i32 %49, %53
  %55 = and i32 %54, 1
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %39
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %4, align 4
  br label %65

60:                                               ; preds = %39
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %8, align 4
  br label %35

64:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %64, %57, %33, %17
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
