; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_avtab.c_avtab_hash.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_avtab.c_avtab_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.avtab_key = type { i32, i32, i32 }

@avtab_hash.c1 = internal constant i32 -862048943, align 4
@avtab_hash.c2 = internal constant i32 461845907, align 4
@avtab_hash.r1 = internal constant i32 15, align 4
@avtab_hash.r2 = internal constant i32 13, align 4
@avtab_hash.m = internal constant i32 5, align 4
@avtab_hash.n = internal constant i32 -430675100, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.avtab_key*, i32)* @avtab_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @avtab_hash(%struct.avtab_key* %0, i32 %1) #0 {
  %3 = alloca %struct.avtab_key*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.avtab_key* %0, %struct.avtab_key** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %9 = load %struct.avtab_key*, %struct.avtab_key** %3, align 8
  %10 = getelementptr inbounds %struct.avtab_key, %struct.avtab_key* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = mul nsw i32 %12, -862048943
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = shl i32 %14, 15
  %16 = load i32, i32* %6, align 4
  %17 = ashr i32 %16, 17
  %18 = or i32 %15, %17
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = mul nsw i32 %19, 461845907
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %5, align 4
  %23 = xor i32 %22, %21
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = shl i32 %24, 13
  %26 = load i32, i32* %5, align 4
  %27 = ashr i32 %26, 19
  %28 = or i32 %25, %27
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = mul nsw i32 %29, 5
  %31 = add nsw i32 %30, -430675100
  store i32 %31, i32* %5, align 4
  %32 = load %struct.avtab_key*, %struct.avtab_key** %3, align 8
  %33 = getelementptr inbounds %struct.avtab_key, %struct.avtab_key* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = mul nsw i32 %35, -862048943
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = shl i32 %37, 15
  %39 = load i32, i32* %7, align 4
  %40 = ashr i32 %39, 17
  %41 = or i32 %38, %40
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = mul nsw i32 %42, 461845907
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %5, align 4
  %46 = xor i32 %45, %44
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = shl i32 %47, 13
  %49 = load i32, i32* %5, align 4
  %50 = ashr i32 %49, 19
  %51 = or i32 %48, %50
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = mul nsw i32 %52, 5
  %54 = add nsw i32 %53, -430675100
  store i32 %54, i32* %5, align 4
  %55 = load %struct.avtab_key*, %struct.avtab_key** %3, align 8
  %56 = getelementptr inbounds %struct.avtab_key, %struct.avtab_key* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = mul nsw i32 %58, -862048943
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = shl i32 %60, 15
  %62 = load i32, i32* %8, align 4
  %63 = ashr i32 %62, 17
  %64 = or i32 %61, %63
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = mul nsw i32 %65, 461845907
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %5, align 4
  %69 = xor i32 %68, %67
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = shl i32 %70, 13
  %72 = load i32, i32* %5, align 4
  %73 = ashr i32 %72, 19
  %74 = or i32 %71, %73
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* %5, align 4
  %76 = mul nsw i32 %75, 5
  %77 = add nsw i32 %76, -430675100
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* %5, align 4
  %79 = ashr i32 %78, 16
  %80 = load i32, i32* %5, align 4
  %81 = xor i32 %80, %79
  store i32 %81, i32* %5, align 4
  %82 = load i32, i32* %5, align 4
  %83 = mul i32 %82, -2048144789
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* %5, align 4
  %85 = ashr i32 %84, 13
  %86 = load i32, i32* %5, align 4
  %87 = xor i32 %86, %85
  store i32 %87, i32* %5, align 4
  %88 = load i32, i32* %5, align 4
  %89 = mul i32 %88, -1028477387
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* %5, align 4
  %91 = ashr i32 %90, 16
  %92 = load i32, i32* %5, align 4
  %93 = xor i32 %92, %91
  store i32 %93, i32* %5, align 4
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* %4, align 4
  %96 = and i32 %94, %95
  ret i32 %96
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
