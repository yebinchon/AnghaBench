; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctresource.c_get_resource.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctresource.c_get_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32*)* @get_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_resource(i32* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %14 = load i32, i32* %8, align 4
  store i32 %14, i32* %13, align 4
  br label %15

15:                                               ; preds = %41, %4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %44

19:                                               ; preds = %15
  %20 = load i32, i32* %10, align 4
  %21 = sdiv i32 %20, 8
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %10, align 4
  %23 = srem i32 %22, 8
  store i32 %23, i32* %12, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %11, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %12, align 4
  %30 = shl i32 1, %29
  %31 = and i32 %28, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %19
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %13, align 4
  br label %41

35:                                               ; preds = %19
  %36 = load i32, i32* %13, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %13, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  br label %44

40:                                               ; preds = %35
  br label %41

41:                                               ; preds = %40, %33
  %42 = load i32, i32* %10, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %10, align 4
  br label %15

44:                                               ; preds = %39, %15
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp uge i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i32, i32* @ENOENT, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %78

51:                                               ; preds = %44
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %13, align 4
  br label %53

53:                                               ; preds = %71, %51
  %54 = load i32, i32* %13, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %74

56:                                               ; preds = %53
  %57 = load i32, i32* %10, align 4
  %58 = sdiv i32 %57, 8
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %10, align 4
  %60 = srem i32 %59, 8
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = shl i32 1, %61
  %63 = load i32*, i32** %6, align 8
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %62
  store i32 %68, i32* %66, align 4
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %10, align 4
  br label %71

71:                                               ; preds = %56
  %72 = load i32, i32* %13, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %13, align 4
  br label %53

74:                                               ; preds = %53
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, 1
  %77 = load i32*, i32** %9, align 8
  store i32 %76, i32* %77, align 4
  store i32 0, i32* %5, align 4
  br label %78

78:                                               ; preds = %74, %48
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
