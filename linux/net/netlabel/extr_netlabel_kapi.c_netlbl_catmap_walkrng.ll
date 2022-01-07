; ModuleID = '/home/carl/AnghaBench/linux/net/netlabel/extr_netlabel_kapi.c_netlbl_catmap_walkrng.c'
source_filename = "/home/carl/AnghaBench/linux/net/netlabel/extr_netlabel_kapi.c_netlbl_catmap_walkrng.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netlbl_lsm_catmap = type { i64, i32*, %struct.netlbl_lsm_catmap* }

@_CM_F_WALK = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@NETLBL_CATMAP_MAPSIZE = common dso_local global i64 0, align 8
@NETLBL_CATMAP_BIT = common dso_local global i64 0, align 8
@NETLBL_CATMAP_SIZE = common dso_local global i32 0, align 4
@NETLBL_CATMAP_MAPCNT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netlbl_catmap_walkrng(%struct.netlbl_lsm_catmap* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.netlbl_lsm_catmap*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.netlbl_lsm_catmap*, align 8
  %7 = alloca %struct.netlbl_lsm_catmap*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.netlbl_lsm_catmap* %0, %struct.netlbl_lsm_catmap** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.netlbl_lsm_catmap* null, %struct.netlbl_lsm_catmap** %7, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i32, i32* @_CM_F_WALK, align 4
  %14 = call %struct.netlbl_lsm_catmap* @_netlbl_catmap_getnode(%struct.netlbl_lsm_catmap** %4, i64 %12, i32 %13, i32 0)
  store %struct.netlbl_lsm_catmap* %14, %struct.netlbl_lsm_catmap** %6, align 8
  %15 = load %struct.netlbl_lsm_catmap*, %struct.netlbl_lsm_catmap** %6, align 8
  %16 = icmp eq %struct.netlbl_lsm_catmap* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOENT, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %128

20:                                               ; preds = %2
  %21 = load i64, i64* %5, align 8
  %22 = load %struct.netlbl_lsm_catmap*, %struct.netlbl_lsm_catmap** %6, align 8
  %23 = getelementptr inbounds %struct.netlbl_lsm_catmap, %struct.netlbl_lsm_catmap* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %21, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %20
  %27 = load %struct.netlbl_lsm_catmap*, %struct.netlbl_lsm_catmap** %6, align 8
  %28 = getelementptr inbounds %struct.netlbl_lsm_catmap, %struct.netlbl_lsm_catmap* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %5, align 8
  %31 = sub nsw i64 %30, %29
  store i64 %31, i64* %5, align 8
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* @NETLBL_CATMAP_MAPSIZE, align 8
  %34 = sdiv i64 %32, %33
  store i64 %34, i64* %8, align 8
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* @NETLBL_CATMAP_MAPSIZE, align 8
  %37 = srem i64 %35, %36
  store i64 %37, i64* %9, align 8
  br label %39

38:                                               ; preds = %20
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %39

39:                                               ; preds = %38, %26
  %40 = load i64, i64* @NETLBL_CATMAP_BIT, align 8
  %41 = load i64, i64* %9, align 8
  %42 = shl i64 %40, %41
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %10, align 4
  br label %44

44:                                               ; preds = %125, %39
  %45 = load %struct.netlbl_lsm_catmap*, %struct.netlbl_lsm_catmap** %6, align 8
  %46 = getelementptr inbounds %struct.netlbl_lsm_catmap, %struct.netlbl_lsm_catmap* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* %8, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %11, align 4
  br label %51

51:                                               ; preds = %61, %44
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %10, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br label %59

59:                                               ; preds = %54, %51
  %60 = phi i1 [ false, %51 ], [ %58, %54 ]
  br i1 %60, label %61, label %66

61:                                               ; preds = %59
  %62 = load i32, i32* %10, align 4
  %63 = shl i32 %62, 1
  store i32 %63, i32* %10, align 4
  %64 = load i64, i64* %9, align 8
  %65 = add nsw i64 %64, 1
  store i64 %65, i64* %9, align 8
  br label %51

66:                                               ; preds = %59
  %67 = load %struct.netlbl_lsm_catmap*, %struct.netlbl_lsm_catmap** %7, align 8
  %68 = icmp ne %struct.netlbl_lsm_catmap* %67, null
  br i1 %68, label %69, label %84

69:                                               ; preds = %66
  %70 = load i64, i64* %8, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %84

72:                                               ; preds = %69
  %73 = load i64, i64* %9, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %72
  %76 = load %struct.netlbl_lsm_catmap*, %struct.netlbl_lsm_catmap** %7, align 8
  %77 = getelementptr inbounds %struct.netlbl_lsm_catmap, %struct.netlbl_lsm_catmap* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* @NETLBL_CATMAP_SIZE, align 4
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %78, %80
  %82 = sub nsw i64 %81, 1
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %3, align 4
  br label %128

84:                                               ; preds = %72, %69, %66
  %85 = load i32, i32* %10, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %99

87:                                               ; preds = %84
  %88 = load %struct.netlbl_lsm_catmap*, %struct.netlbl_lsm_catmap** %6, align 8
  %89 = getelementptr inbounds %struct.netlbl_lsm_catmap, %struct.netlbl_lsm_catmap* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @NETLBL_CATMAP_MAPSIZE, align 8
  %92 = load i64, i64* %8, align 8
  %93 = mul nsw i64 %91, %92
  %94 = add nsw i64 %90, %93
  %95 = load i64, i64* %9, align 8
  %96 = add nsw i64 %94, %95
  %97 = sub nsw i64 %96, 1
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %3, align 4
  br label %128

99:                                               ; preds = %84
  %100 = load i64, i64* %8, align 8
  %101 = add nsw i64 %100, 1
  store i64 %101, i64* %8, align 8
  %102 = load i64, i64* @NETLBL_CATMAP_MAPCNT, align 8
  %103 = icmp sge i64 %101, %102
  br i1 %103, label %104, label %123

104:                                              ; preds = %99
  %105 = load %struct.netlbl_lsm_catmap*, %struct.netlbl_lsm_catmap** %6, align 8
  %106 = getelementptr inbounds %struct.netlbl_lsm_catmap, %struct.netlbl_lsm_catmap* %105, i32 0, i32 2
  %107 = load %struct.netlbl_lsm_catmap*, %struct.netlbl_lsm_catmap** %106, align 8
  %108 = icmp eq %struct.netlbl_lsm_catmap* %107, null
  br i1 %108, label %109, label %118

109:                                              ; preds = %104
  %110 = load %struct.netlbl_lsm_catmap*, %struct.netlbl_lsm_catmap** %6, align 8
  %111 = getelementptr inbounds %struct.netlbl_lsm_catmap, %struct.netlbl_lsm_catmap* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i32, i32* @NETLBL_CATMAP_SIZE, align 4
  %114 = sext i32 %113 to i64
  %115 = add nsw i64 %112, %114
  %116 = sub nsw i64 %115, 1
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %3, align 4
  br label %128

118:                                              ; preds = %104
  %119 = load %struct.netlbl_lsm_catmap*, %struct.netlbl_lsm_catmap** %6, align 8
  store %struct.netlbl_lsm_catmap* %119, %struct.netlbl_lsm_catmap** %7, align 8
  %120 = load %struct.netlbl_lsm_catmap*, %struct.netlbl_lsm_catmap** %6, align 8
  %121 = getelementptr inbounds %struct.netlbl_lsm_catmap, %struct.netlbl_lsm_catmap* %120, i32 0, i32 2
  %122 = load %struct.netlbl_lsm_catmap*, %struct.netlbl_lsm_catmap** %121, align 8
  store %struct.netlbl_lsm_catmap* %122, %struct.netlbl_lsm_catmap** %6, align 8
  store i64 0, i64* %8, align 8
  br label %123

123:                                              ; preds = %118, %99
  br label %124

124:                                              ; preds = %123
  br label %125

125:                                              ; preds = %124
  %126 = load i64, i64* @NETLBL_CATMAP_BIT, align 8
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %10, align 4
  store i64 0, i64* %9, align 8
  br label %44

128:                                              ; preds = %109, %87, %75, %17
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local %struct.netlbl_lsm_catmap* @_netlbl_catmap_getnode(%struct.netlbl_lsm_catmap**, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
