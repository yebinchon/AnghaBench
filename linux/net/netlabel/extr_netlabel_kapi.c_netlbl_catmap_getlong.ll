; ModuleID = '/home/carl/AnghaBench/linux/net/netlabel/extr_netlabel_kapi.c_netlbl_catmap_getlong.c'
source_filename = "/home/carl/AnghaBench/linux/net/netlabel/extr_netlabel_kapi.c_netlbl_catmap_getlong.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netlbl_lsm_catmap = type { i32, i32* }

@BITS_PER_LONG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@_CM_F_WALK = common dso_local global i32 0, align 4
@NETLBL_CATMAP_MAPSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netlbl_catmap_getlong(%struct.netlbl_lsm_catmap* %0, i32* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.netlbl_lsm_catmap*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.netlbl_lsm_catmap*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.netlbl_lsm_catmap* %0, %struct.netlbl_lsm_catmap** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64* %2, i64** %7, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* @BITS_PER_LONG, align 4
  %15 = sub nsw i32 %14, 1
  %16 = and i32 %13, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %75

21:                                               ; preds = %3
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.netlbl_lsm_catmap*, %struct.netlbl_lsm_catmap** %5, align 8
  %24 = getelementptr inbounds %struct.netlbl_lsm_catmap, %struct.netlbl_lsm_catmap* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load %struct.netlbl_lsm_catmap*, %struct.netlbl_lsm_catmap** %5, align 8
  %29 = getelementptr inbounds %struct.netlbl_lsm_catmap, %struct.netlbl_lsm_catmap* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32*, i32** %6, align 8
  store i32 %31, i32* %32, align 4
  br label %33

33:                                               ; preds = %27, %21
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @_CM_F_WALK, align 4
  %36 = call %struct.netlbl_lsm_catmap* @_netlbl_catmap_getnode(%struct.netlbl_lsm_catmap** %5, i32 %34, i32 %35, i32 0)
  store %struct.netlbl_lsm_catmap* %36, %struct.netlbl_lsm_catmap** %8, align 8
  %37 = load %struct.netlbl_lsm_catmap*, %struct.netlbl_lsm_catmap** %8, align 8
  %38 = icmp eq %struct.netlbl_lsm_catmap* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32*, i32** %6, align 8
  store i32 -1, i32* %40, align 4
  store i32 0, i32* %4, align 4
  br label %75

41:                                               ; preds = %33
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.netlbl_lsm_catmap*, %struct.netlbl_lsm_catmap** %8, align 8
  %44 = getelementptr inbounds %struct.netlbl_lsm_catmap, %struct.netlbl_lsm_catmap* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %41
  %48 = load %struct.netlbl_lsm_catmap*, %struct.netlbl_lsm_catmap** %8, align 8
  %49 = getelementptr inbounds %struct.netlbl_lsm_catmap, %struct.netlbl_lsm_catmap* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32*, i32** %6, align 8
  store i32 %50, i32* %51, align 4
  store i32 0, i32* %9, align 4
  br label %58

52:                                               ; preds = %41
  %53 = load %struct.netlbl_lsm_catmap*, %struct.netlbl_lsm_catmap** %8, align 8
  %54 = getelementptr inbounds %struct.netlbl_lsm_catmap, %struct.netlbl_lsm_catmap* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sub nsw i32 %56, %55
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %52, %47
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @NETLBL_CATMAP_MAPSIZE, align 4
  %61 = sdiv i32 %59, %60
  store i32 %61, i32* %10, align 4
  %62 = load %struct.netlbl_lsm_catmap*, %struct.netlbl_lsm_catmap** %8, align 8
  %63 = getelementptr inbounds %struct.netlbl_lsm_catmap, %struct.netlbl_lsm_catmap* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @NETLBL_CATMAP_MAPSIZE, align 4
  %71 = srem i32 %69, %70
  %72 = ashr i32 %68, %71
  %73 = sext i32 %72 to i64
  %74 = load i64*, i64** %7, align 8
  store i64 %73, i64* %74, align 8
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %58, %39, %18
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local %struct.netlbl_lsm_catmap* @_netlbl_catmap_getnode(%struct.netlbl_lsm_catmap**, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
