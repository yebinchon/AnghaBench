; ModuleID = '/home/carl/AnghaBench/linux/net/netlabel/extr_netlabel_kapi.c_netlbl_catmap_walk.c'
source_filename = "/home/carl/AnghaBench/linux/net/netlabel/extr_netlabel_kapi.c_netlbl_catmap_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netlbl_lsm_catmap = type { i64, i64*, %struct.netlbl_lsm_catmap* }

@_CM_F_WALK = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@NETLBL_CATMAP_MAPSIZE = common dso_local global i64 0, align 8
@NETLBL_CATMAP_BIT = common dso_local global i32 0, align 4
@NETLBL_CATMAP_MAPCNT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netlbl_catmap_walk(%struct.netlbl_lsm_catmap* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.netlbl_lsm_catmap*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.netlbl_lsm_catmap*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.netlbl_lsm_catmap* %0, %struct.netlbl_lsm_catmap** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i32, i32* @_CM_F_WALK, align 4
  %12 = call %struct.netlbl_lsm_catmap* @_netlbl_catmap_getnode(%struct.netlbl_lsm_catmap** %4, i64 %10, i32 %11, i32 0)
  store %struct.netlbl_lsm_catmap* %12, %struct.netlbl_lsm_catmap** %6, align 8
  %13 = load %struct.netlbl_lsm_catmap*, %struct.netlbl_lsm_catmap** %6, align 8
  %14 = icmp eq %struct.netlbl_lsm_catmap* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOENT, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %98

18:                                               ; preds = %2
  %19 = load i64, i64* %5, align 8
  %20 = load %struct.netlbl_lsm_catmap*, %struct.netlbl_lsm_catmap** %6, align 8
  %21 = getelementptr inbounds %struct.netlbl_lsm_catmap, %struct.netlbl_lsm_catmap* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %19, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %18
  %25 = load %struct.netlbl_lsm_catmap*, %struct.netlbl_lsm_catmap** %6, align 8
  %26 = getelementptr inbounds %struct.netlbl_lsm_catmap, %struct.netlbl_lsm_catmap* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %5, align 8
  %29 = sub nsw i64 %28, %27
  store i64 %29, i64* %5, align 8
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* @NETLBL_CATMAP_MAPSIZE, align 8
  %32 = sdiv i64 %30, %31
  store i64 %32, i64* %7, align 8
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* @NETLBL_CATMAP_MAPSIZE, align 8
  %35 = srem i64 %33, %34
  store i64 %35, i64* %8, align 8
  br label %37

36:                                               ; preds = %18
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %37

37:                                               ; preds = %36, %24
  %38 = load %struct.netlbl_lsm_catmap*, %struct.netlbl_lsm_catmap** %6, align 8
  %39 = getelementptr inbounds %struct.netlbl_lsm_catmap, %struct.netlbl_lsm_catmap* %38, i32 0, i32 1
  %40 = load i64*, i64** %39, align 8
  %41 = load i64, i64* %7, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %8, align 8
  %45 = ashr i64 %43, %44
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %90, %37
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %72

50:                                               ; preds = %47
  br label %51

51:                                               ; preds = %56, %50
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @NETLBL_CATMAP_BIT, align 4
  %54 = and i32 %52, %53
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load i32, i32* %9, align 4
  %58 = ashr i32 %57, 1
  store i32 %58, i32* %9, align 4
  %59 = load i64, i64* %8, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %8, align 8
  br label %51

61:                                               ; preds = %51
  %62 = load %struct.netlbl_lsm_catmap*, %struct.netlbl_lsm_catmap** %6, align 8
  %63 = getelementptr inbounds %struct.netlbl_lsm_catmap, %struct.netlbl_lsm_catmap* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @NETLBL_CATMAP_MAPSIZE, align 8
  %66 = load i64, i64* %7, align 8
  %67 = mul nsw i64 %65, %66
  %68 = add nsw i64 %64, %67
  %69 = load i64, i64* %8, align 8
  %70 = add nsw i64 %68, %69
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %3, align 4
  br label %98

72:                                               ; preds = %47
  %73 = load i64, i64* %7, align 8
  %74 = add nsw i64 %73, 1
  store i64 %74, i64* %7, align 8
  %75 = load i64, i64* @NETLBL_CATMAP_MAPCNT, align 8
  %76 = icmp sge i64 %74, %75
  br i1 %76, label %77, label %90

77:                                               ; preds = %72
  %78 = load %struct.netlbl_lsm_catmap*, %struct.netlbl_lsm_catmap** %6, align 8
  %79 = getelementptr inbounds %struct.netlbl_lsm_catmap, %struct.netlbl_lsm_catmap* %78, i32 0, i32 2
  %80 = load %struct.netlbl_lsm_catmap*, %struct.netlbl_lsm_catmap** %79, align 8
  %81 = icmp ne %struct.netlbl_lsm_catmap* %80, null
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = load %struct.netlbl_lsm_catmap*, %struct.netlbl_lsm_catmap** %6, align 8
  %84 = getelementptr inbounds %struct.netlbl_lsm_catmap, %struct.netlbl_lsm_catmap* %83, i32 0, i32 2
  %85 = load %struct.netlbl_lsm_catmap*, %struct.netlbl_lsm_catmap** %84, align 8
  store %struct.netlbl_lsm_catmap* %85, %struct.netlbl_lsm_catmap** %6, align 8
  store i64 0, i64* %7, align 8
  br label %89

86:                                               ; preds = %77
  %87 = load i32, i32* @ENOENT, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %3, align 4
  br label %98

89:                                               ; preds = %82
  br label %90

90:                                               ; preds = %89, %72
  %91 = load %struct.netlbl_lsm_catmap*, %struct.netlbl_lsm_catmap** %6, align 8
  %92 = getelementptr inbounds %struct.netlbl_lsm_catmap, %struct.netlbl_lsm_catmap* %91, i32 0, i32 1
  %93 = load i64*, i64** %92, align 8
  %94 = load i64, i64* %7, align 8
  %95 = getelementptr inbounds i64, i64* %93, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %9, align 4
  store i64 0, i64* %8, align 8
  br label %47

98:                                               ; preds = %86, %61, %15
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local %struct.netlbl_lsm_catmap* @_netlbl_catmap_getnode(%struct.netlbl_lsm_catmap**, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
