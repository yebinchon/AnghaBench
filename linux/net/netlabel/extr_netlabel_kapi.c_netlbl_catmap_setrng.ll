; ModuleID = '/home/carl/AnghaBench/linux/net/netlabel/extr_netlabel_kapi.c_netlbl_catmap_setrng.c'
source_filename = "/home/carl/AnghaBench/linux/net/netlabel/extr_netlabel_kapi.c_netlbl_catmap_setrng.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netlbl_lsm_catmap = type { i32 }

@BITS_PER_LONG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netlbl_catmap_setrng(%struct.netlbl_lsm_catmap** %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.netlbl_lsm_catmap**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.netlbl_lsm_catmap** %0, %struct.netlbl_lsm_catmap*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* %6, align 4
  store i32 %11, i32* %10, align 4
  br label %12

12:                                               ; preds = %47, %4
  %13 = load i32, i32* %9, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp sle i32 %16, %17
  br label %19

19:                                               ; preds = %15, %12
  %20 = phi i1 [ false, %12 ], [ %18, %15 ]
  br i1 %20, label %21, label %48

21:                                               ; preds = %19
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @BITS_PER_LONG, align 4
  %24 = sub nsw i32 %23, 1
  %25 = and i32 %22, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %21
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %10, align 4
  %30 = sub nsw i32 %28, %29
  %31 = load i32, i32* @BITS_PER_LONG, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %27
  %34 = load %struct.netlbl_lsm_catmap**, %struct.netlbl_lsm_catmap*** %5, align 8
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @netlbl_catmap_setlong(%struct.netlbl_lsm_catmap** %34, i32 %35, i64 -1, i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* @BITS_PER_LONG, align 4
  %39 = load i32, i32* %10, align 4
  %40 = add nsw i32 %39, %38
  store i32 %40, i32* %10, align 4
  br label %47

41:                                               ; preds = %27, %21
  %42 = load %struct.netlbl_lsm_catmap**, %struct.netlbl_lsm_catmap*** %5, align 8
  %43 = load i32, i32* %10, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @netlbl_catmap_setbit(%struct.netlbl_lsm_catmap** %42, i32 %43, i32 %45)
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %41, %33
  br label %12

48:                                               ; preds = %19
  %49 = load i32, i32* %9, align 4
  ret i32 %49
}

declare dso_local i32 @netlbl_catmap_setlong(%struct.netlbl_lsm_catmap**, i32, i64, i32) #1

declare dso_local i32 @netlbl_catmap_setbit(%struct.netlbl_lsm_catmap**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
