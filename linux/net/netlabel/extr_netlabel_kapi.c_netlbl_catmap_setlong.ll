; ModuleID = '/home/carl/AnghaBench/linux/net/netlabel/extr_netlabel_kapi.c_netlbl_catmap_setlong.c'
source_filename = "/home/carl/AnghaBench/linux/net/netlabel/extr_netlabel_kapi.c_netlbl_catmap_setlong.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netlbl_lsm_catmap = type { i64*, i64 }

@BITS_PER_LONG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@_CM_F_ALLOC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NETLBL_CATMAP_MAPSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netlbl_catmap_setlong(%struct.netlbl_lsm_catmap** %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.netlbl_lsm_catmap**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.netlbl_lsm_catmap*, align 8
  %11 = alloca i32, align 4
  store %struct.netlbl_lsm_catmap** %0, %struct.netlbl_lsm_catmap*** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @BITS_PER_LONG, align 4
  %14 = sub nsw i32 %13, 1
  %15 = and i32 %12, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %56

20:                                               ; preds = %4
  %21 = load %struct.netlbl_lsm_catmap**, %struct.netlbl_lsm_catmap*** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @_CM_F_ALLOC, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call %struct.netlbl_lsm_catmap* @_netlbl_catmap_getnode(%struct.netlbl_lsm_catmap** %21, i32 %22, i32 %23, i32 %24)
  store %struct.netlbl_lsm_catmap* %25, %struct.netlbl_lsm_catmap** %10, align 8
  %26 = load %struct.netlbl_lsm_catmap*, %struct.netlbl_lsm_catmap** %10, align 8
  %27 = icmp eq %struct.netlbl_lsm_catmap* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %56

31:                                               ; preds = %20
  %32 = load %struct.netlbl_lsm_catmap*, %struct.netlbl_lsm_catmap** %10, align 8
  %33 = getelementptr inbounds %struct.netlbl_lsm_catmap, %struct.netlbl_lsm_catmap* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = sub nsw i64 %36, %34
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @NETLBL_CATMAP_MAPSIZE, align 4
  %41 = sdiv i32 %39, %40
  store i32 %41, i32* %11, align 4
  %42 = load i64, i64* %8, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @NETLBL_CATMAP_MAPSIZE, align 4
  %45 = srem i32 %43, %44
  %46 = zext i32 %45 to i64
  %47 = shl i64 %42, %46
  %48 = load %struct.netlbl_lsm_catmap*, %struct.netlbl_lsm_catmap** %10, align 8
  %49 = getelementptr inbounds %struct.netlbl_lsm_catmap, %struct.netlbl_lsm_catmap* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = or i64 %54, %47
  store i64 %55, i64* %53, align 8
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %31, %28, %17
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local %struct.netlbl_lsm_catmap* @_netlbl_catmap_getnode(%struct.netlbl_lsm_catmap**, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
