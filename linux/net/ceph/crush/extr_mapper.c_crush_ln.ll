; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/crush/extr_mapper.c_crush_ln.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/crush/extr_mapper.c_crush_ln.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__RH_LH_tbl = common dso_local global i32* null, align 8
@__LL_tbl = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @crush_ln to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crush_ln(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %13 = load i32, i32* %2, align 4
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = add i32 %14, 1
  store i32 %15, i32* %3, align 4
  store i32 15, i32* %4, align 4
  %16 = load i32, i32* %3, align 4
  %17 = and i32 %16, 98304
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* %3, align 4
  %21 = and i32 %20, 131071
  %22 = call i32 @llvm.ctlz.i32(i32 %21, i1 true)
  %23 = sub nsw i32 %22, 16
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* %3, align 4
  %26 = shl i32 %25, %24
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %12, align 4
  %28 = sub nsw i32 15, %27
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %19, %1
  %30 = load i32, i32* %3, align 4
  %31 = lshr i32 %30, 8
  %32 = shl i32 %31, 1
  store i32 %32, i32* %5, align 4
  %33 = load i32*, i32** @__RH_LH_tbl, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sub nsw i32 %34, 256
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %7, align 4
  %39 = load i32*, i32** @__RH_LH_tbl, align 8
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  %42 = sub nsw i32 %41, 256
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %39, i64 %43
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* %7, align 4
  %48 = mul nsw i32 %46, %47
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = ashr i32 %49, 48
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %4, align 4
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = shl i32 %52, 44
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %10, align 4
  %55 = and i32 %54, 255
  store i32 %55, i32* %6, align 4
  %56 = load i32*, i32** @__LL_tbl, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %61, %62
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = ashr i32 %64, 4
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %11, align 4
  %68 = add nsw i32 %67, %66
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %11, align 4
  ret i32 %69
}

; Function Attrs: nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
