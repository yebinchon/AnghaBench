; ModuleID = '/home/carl/AnghaBench/linux/net/netlabel/extr_netlabel_kapi.c__netlbl_catmap_getnode.c'
source_filename = "/home/carl/AnghaBench/linux/net/netlabel/extr_netlabel_kapi.c__netlbl_catmap_getnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netlbl_lsm_catmap = type { i64, %struct.netlbl_lsm_catmap* }

@NETLBL_CATMAP_SIZE = common dso_local global i64 0, align 8
@_CM_F_WALK = common dso_local global i32 0, align 4
@_CM_F_ALLOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.netlbl_lsm_catmap* (%struct.netlbl_lsm_catmap**, i64, i32, i32)* @_netlbl_catmap_getnode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.netlbl_lsm_catmap* @_netlbl_catmap_getnode(%struct.netlbl_lsm_catmap** %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.netlbl_lsm_catmap*, align 8
  %6 = alloca %struct.netlbl_lsm_catmap**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.netlbl_lsm_catmap*, align 8
  %11 = alloca %struct.netlbl_lsm_catmap*, align 8
  store %struct.netlbl_lsm_catmap** %0, %struct.netlbl_lsm_catmap*** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.netlbl_lsm_catmap**, %struct.netlbl_lsm_catmap*** %6, align 8
  %13 = load %struct.netlbl_lsm_catmap*, %struct.netlbl_lsm_catmap** %12, align 8
  store %struct.netlbl_lsm_catmap* %13, %struct.netlbl_lsm_catmap** %10, align 8
  store %struct.netlbl_lsm_catmap* null, %struct.netlbl_lsm_catmap** %11, align 8
  %14 = load %struct.netlbl_lsm_catmap*, %struct.netlbl_lsm_catmap** %10, align 8
  %15 = icmp eq %struct.netlbl_lsm_catmap* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  br label %63

17:                                               ; preds = %4
  %18 = load i64, i64* %7, align 8
  %19 = load %struct.netlbl_lsm_catmap*, %struct.netlbl_lsm_catmap** %10, align 8
  %20 = getelementptr inbounds %struct.netlbl_lsm_catmap, %struct.netlbl_lsm_catmap* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp slt i64 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %55

24:                                               ; preds = %17
  br label %25

25:                                               ; preds = %38, %24
  %26 = load %struct.netlbl_lsm_catmap*, %struct.netlbl_lsm_catmap** %10, align 8
  %27 = icmp ne %struct.netlbl_lsm_catmap* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = load i64, i64* %7, align 8
  %30 = load %struct.netlbl_lsm_catmap*, %struct.netlbl_lsm_catmap** %10, align 8
  %31 = getelementptr inbounds %struct.netlbl_lsm_catmap, %struct.netlbl_lsm_catmap* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @NETLBL_CATMAP_SIZE, align 8
  %34 = add nsw i64 %32, %33
  %35 = icmp sge i64 %29, %34
  br label %36

36:                                               ; preds = %28, %25
  %37 = phi i1 [ false, %25 ], [ %35, %28 ]
  br i1 %37, label %38, label %43

38:                                               ; preds = %36
  %39 = load %struct.netlbl_lsm_catmap*, %struct.netlbl_lsm_catmap** %10, align 8
  store %struct.netlbl_lsm_catmap* %39, %struct.netlbl_lsm_catmap** %11, align 8
  %40 = load %struct.netlbl_lsm_catmap*, %struct.netlbl_lsm_catmap** %10, align 8
  %41 = getelementptr inbounds %struct.netlbl_lsm_catmap, %struct.netlbl_lsm_catmap* %40, i32 0, i32 1
  %42 = load %struct.netlbl_lsm_catmap*, %struct.netlbl_lsm_catmap** %41, align 8
  store %struct.netlbl_lsm_catmap* %42, %struct.netlbl_lsm_catmap** %10, align 8
  br label %25

43:                                               ; preds = %36
  %44 = load %struct.netlbl_lsm_catmap*, %struct.netlbl_lsm_catmap** %10, align 8
  %45 = icmp eq %struct.netlbl_lsm_catmap* %44, null
  br i1 %45, label %52, label %46

46:                                               ; preds = %43
  %47 = load i64, i64* %7, align 8
  %48 = load %struct.netlbl_lsm_catmap*, %struct.netlbl_lsm_catmap** %10, align 8
  %49 = getelementptr inbounds %struct.netlbl_lsm_catmap, %struct.netlbl_lsm_catmap* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp slt i64 %47, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46, %43
  br label %55

53:                                               ; preds = %46
  %54 = load %struct.netlbl_lsm_catmap*, %struct.netlbl_lsm_catmap** %10, align 8
  store %struct.netlbl_lsm_catmap* %54, %struct.netlbl_lsm_catmap** %5, align 8
  br label %103

55:                                               ; preds = %52, %23
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @_CM_F_WALK, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load %struct.netlbl_lsm_catmap*, %struct.netlbl_lsm_catmap** %10, align 8
  store %struct.netlbl_lsm_catmap* %61, %struct.netlbl_lsm_catmap** %5, align 8
  br label %103

62:                                               ; preds = %55
  br label %63

63:                                               ; preds = %62, %16
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @_CM_F_ALLOC, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %63
  store %struct.netlbl_lsm_catmap* null, %struct.netlbl_lsm_catmap** %5, align 8
  br label %103

69:                                               ; preds = %63
  %70 = load i32, i32* %9, align 4
  %71 = call %struct.netlbl_lsm_catmap* @netlbl_catmap_alloc(i32 %70)
  store %struct.netlbl_lsm_catmap* %71, %struct.netlbl_lsm_catmap** %10, align 8
  %72 = load %struct.netlbl_lsm_catmap*, %struct.netlbl_lsm_catmap** %10, align 8
  %73 = icmp eq %struct.netlbl_lsm_catmap* %72, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  store %struct.netlbl_lsm_catmap* null, %struct.netlbl_lsm_catmap** %5, align 8
  br label %103

75:                                               ; preds = %69
  %76 = load i64, i64* %7, align 8
  %77 = load i64, i64* @NETLBL_CATMAP_SIZE, align 8
  %78 = sub nsw i64 %77, 1
  %79 = xor i64 %78, -1
  %80 = and i64 %76, %79
  %81 = load %struct.netlbl_lsm_catmap*, %struct.netlbl_lsm_catmap** %10, align 8
  %82 = getelementptr inbounds %struct.netlbl_lsm_catmap, %struct.netlbl_lsm_catmap* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  %83 = load %struct.netlbl_lsm_catmap*, %struct.netlbl_lsm_catmap** %11, align 8
  %84 = icmp eq %struct.netlbl_lsm_catmap* %83, null
  br i1 %84, label %85, label %92

85:                                               ; preds = %75
  %86 = load %struct.netlbl_lsm_catmap**, %struct.netlbl_lsm_catmap*** %6, align 8
  %87 = load %struct.netlbl_lsm_catmap*, %struct.netlbl_lsm_catmap** %86, align 8
  %88 = load %struct.netlbl_lsm_catmap*, %struct.netlbl_lsm_catmap** %10, align 8
  %89 = getelementptr inbounds %struct.netlbl_lsm_catmap, %struct.netlbl_lsm_catmap* %88, i32 0, i32 1
  store %struct.netlbl_lsm_catmap* %87, %struct.netlbl_lsm_catmap** %89, align 8
  %90 = load %struct.netlbl_lsm_catmap*, %struct.netlbl_lsm_catmap** %10, align 8
  %91 = load %struct.netlbl_lsm_catmap**, %struct.netlbl_lsm_catmap*** %6, align 8
  store %struct.netlbl_lsm_catmap* %90, %struct.netlbl_lsm_catmap** %91, align 8
  br label %101

92:                                               ; preds = %75
  %93 = load %struct.netlbl_lsm_catmap*, %struct.netlbl_lsm_catmap** %11, align 8
  %94 = getelementptr inbounds %struct.netlbl_lsm_catmap, %struct.netlbl_lsm_catmap* %93, i32 0, i32 1
  %95 = load %struct.netlbl_lsm_catmap*, %struct.netlbl_lsm_catmap** %94, align 8
  %96 = load %struct.netlbl_lsm_catmap*, %struct.netlbl_lsm_catmap** %10, align 8
  %97 = getelementptr inbounds %struct.netlbl_lsm_catmap, %struct.netlbl_lsm_catmap* %96, i32 0, i32 1
  store %struct.netlbl_lsm_catmap* %95, %struct.netlbl_lsm_catmap** %97, align 8
  %98 = load %struct.netlbl_lsm_catmap*, %struct.netlbl_lsm_catmap** %10, align 8
  %99 = load %struct.netlbl_lsm_catmap*, %struct.netlbl_lsm_catmap** %11, align 8
  %100 = getelementptr inbounds %struct.netlbl_lsm_catmap, %struct.netlbl_lsm_catmap* %99, i32 0, i32 1
  store %struct.netlbl_lsm_catmap* %98, %struct.netlbl_lsm_catmap** %100, align 8
  br label %101

101:                                              ; preds = %92, %85
  %102 = load %struct.netlbl_lsm_catmap*, %struct.netlbl_lsm_catmap** %10, align 8
  store %struct.netlbl_lsm_catmap* %102, %struct.netlbl_lsm_catmap** %5, align 8
  br label %103

103:                                              ; preds = %101, %74, %68, %60, %53
  %104 = load %struct.netlbl_lsm_catmap*, %struct.netlbl_lsm_catmap** %5, align 8
  ret %struct.netlbl_lsm_catmap* %104
}

declare dso_local %struct.netlbl_lsm_catmap* @netlbl_catmap_alloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
