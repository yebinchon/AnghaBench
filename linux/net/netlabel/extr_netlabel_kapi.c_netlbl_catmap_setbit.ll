; ModuleID = '/home/carl/AnghaBench/linux/net/netlabel/extr_netlabel_kapi.c_netlbl_catmap_setbit.c'
source_filename = "/home/carl/AnghaBench/linux/net/netlabel/extr_netlabel_kapi.c_netlbl_catmap_setbit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netlbl_lsm_catmap = type { i64*, i64 }

@_CM_F_ALLOC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NETLBL_CATMAP_MAPSIZE = common dso_local global i64 0, align 8
@NETLBL_CATMAP_BIT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netlbl_catmap_setbit(%struct.netlbl_lsm_catmap** %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.netlbl_lsm_catmap**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.netlbl_lsm_catmap*, align 8
  %9 = alloca i64, align 8
  store %struct.netlbl_lsm_catmap** %0, %struct.netlbl_lsm_catmap*** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.netlbl_lsm_catmap**, %struct.netlbl_lsm_catmap*** %5, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i32, i32* @_CM_F_ALLOC, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call %struct.netlbl_lsm_catmap* @_netlbl_catmap_getnode(%struct.netlbl_lsm_catmap** %10, i64 %11, i32 %12, i32 %13)
  store %struct.netlbl_lsm_catmap* %14, %struct.netlbl_lsm_catmap** %8, align 8
  %15 = load %struct.netlbl_lsm_catmap*, %struct.netlbl_lsm_catmap** %8, align 8
  %16 = icmp eq %struct.netlbl_lsm_catmap* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %41

20:                                               ; preds = %3
  %21 = load %struct.netlbl_lsm_catmap*, %struct.netlbl_lsm_catmap** %8, align 8
  %22 = getelementptr inbounds %struct.netlbl_lsm_catmap, %struct.netlbl_lsm_catmap* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %6, align 8
  %25 = sub i64 %24, %23
  store i64 %25, i64* %6, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* @NETLBL_CATMAP_MAPSIZE, align 8
  %28 = udiv i64 %26, %27
  store i64 %28, i64* %9, align 8
  %29 = load i64, i64* @NETLBL_CATMAP_BIT, align 8
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* @NETLBL_CATMAP_MAPSIZE, align 8
  %32 = urem i64 %30, %31
  %33 = shl i64 %29, %32
  %34 = load %struct.netlbl_lsm_catmap*, %struct.netlbl_lsm_catmap** %8, align 8
  %35 = getelementptr inbounds %struct.netlbl_lsm_catmap, %struct.netlbl_lsm_catmap* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = load i64, i64* %9, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = or i64 %39, %33
  store i64 %40, i64* %38, align 8
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %20, %17
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local %struct.netlbl_lsm_catmap* @_netlbl_catmap_getnode(%struct.netlbl_lsm_catmap**, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
