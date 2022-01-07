; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_page_alloc.c___zone_watermark_ok.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_page_alloc.c___zone_watermark_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zone = type { i64*, %struct.free_area*, i64 }
%struct.free_area = type { i32*, i32 }

@ALLOC_HARDER = common dso_local global i32 0, align 4
@ALLOC_OOM = common dso_local global i32 0, align 4
@ALLOC_HIGH = common dso_local global i32 0, align 4
@MAX_ORDER = common dso_local global i32 0, align 4
@MIGRATE_PCPTYPES = common dso_local global i32 0, align 4
@MIGRATE_HIGHATOMIC = common dso_local global i64 0, align 8
@ALLOC_CMA = common dso_local global i32 0, align 4
@MIGRATE_CMA = common dso_local global i32 0, align 4
@NR_FREE_CMA_PAGES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__zone_watermark_ok(%struct.zone* %0, i32 %1, i64 %2, i32 %3, i32 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.zone*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.free_area*, align 8
  %18 = alloca i32, align 4
  store %struct.zone* %0, %struct.zone** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %19 = load i64, i64* %10, align 8
  store i64 %19, i64* %14, align 8
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* @ALLOC_HARDER, align 4
  %22 = load i32, i32* @ALLOC_OOM, align 4
  %23 = or i32 %21, %22
  %24 = and i32 %20, %23
  store i32 %24, i32* %16, align 4
  %25 = load i32, i32* %9, align 4
  %26 = shl i32 1, %25
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = load i64, i64* %13, align 8
  %30 = sub nsw i64 %29, %28
  store i64 %30, i64* %13, align 8
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* @ALLOC_HIGH, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %6
  %36 = load i64, i64* %14, align 8
  %37 = sdiv i64 %36, 2
  %38 = load i64, i64* %14, align 8
  %39 = sub nsw i64 %38, %37
  store i64 %39, i64* %14, align 8
  br label %40

40:                                               ; preds = %35, %6
  %41 = load i32, i32* %16, align 4
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i64 @likely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %40
  %48 = load %struct.zone*, %struct.zone** %8, align 8
  %49 = getelementptr inbounds %struct.zone, %struct.zone* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %13, align 8
  %52 = sub nsw i64 %51, %50
  store i64 %52, i64* %13, align 8
  br label %69

53:                                               ; preds = %40
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* @ALLOC_OOM, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load i64, i64* %14, align 8
  %60 = sdiv i64 %59, 2
  %61 = load i64, i64* %14, align 8
  %62 = sub nsw i64 %61, %60
  store i64 %62, i64* %14, align 8
  br label %68

63:                                               ; preds = %53
  %64 = load i64, i64* %14, align 8
  %65 = sdiv i64 %64, 4
  %66 = load i64, i64* %14, align 8
  %67 = sub nsw i64 %66, %65
  store i64 %67, i64* %14, align 8
  br label %68

68:                                               ; preds = %63, %58
  br label %69

69:                                               ; preds = %68, %47
  %70 = load i64, i64* %13, align 8
  %71 = load i64, i64* %14, align 8
  %72 = load %struct.zone*, %struct.zone** %8, align 8
  %73 = getelementptr inbounds %struct.zone, %struct.zone* %72, i32 0, i32 0
  %74 = load i64*, i64** %73, align 8
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %71, %78
  %80 = icmp sle i64 %70, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %69
  store i32 0, i32* %7, align 4
  br label %136

82:                                               ; preds = %69
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %82
  store i32 1, i32* %7, align 4
  br label %136

86:                                               ; preds = %82
  %87 = load i32, i32* %9, align 4
  store i32 %87, i32* %15, align 4
  br label %88

88:                                               ; preds = %132, %86
  %89 = load i32, i32* %15, align 4
  %90 = load i32, i32* @MAX_ORDER, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %135

92:                                               ; preds = %88
  %93 = load %struct.zone*, %struct.zone** %8, align 8
  %94 = getelementptr inbounds %struct.zone, %struct.zone* %93, i32 0, i32 1
  %95 = load %struct.free_area*, %struct.free_area** %94, align 8
  %96 = load i32, i32* %15, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.free_area, %struct.free_area* %95, i64 %97
  store %struct.free_area* %98, %struct.free_area** %17, align 8
  %99 = load %struct.free_area*, %struct.free_area** %17, align 8
  %100 = getelementptr inbounds %struct.free_area, %struct.free_area* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %92
  br label %132

104:                                              ; preds = %92
  store i32 0, i32* %18, align 4
  br label %105

105:                                              ; preds = %116, %104
  %106 = load i32, i32* %18, align 4
  %107 = load i32, i32* @MIGRATE_PCPTYPES, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %119

109:                                              ; preds = %105
  %110 = load %struct.free_area*, %struct.free_area** %17, align 8
  %111 = load i32, i32* %18, align 4
  %112 = call i32 @free_area_empty(%struct.free_area* %110, i32 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %109
  store i32 1, i32* %7, align 4
  br label %136

115:                                              ; preds = %109
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %18, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %18, align 4
  br label %105

119:                                              ; preds = %105
  %120 = load i32, i32* %16, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %131

122:                                              ; preds = %119
  %123 = load %struct.free_area*, %struct.free_area** %17, align 8
  %124 = getelementptr inbounds %struct.free_area, %struct.free_area* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = load i64, i64* @MIGRATE_HIGHATOMIC, align 8
  %127 = getelementptr inbounds i32, i32* %125, i64 %126
  %128 = call i32 @list_empty(i32* %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %122
  store i32 1, i32* %7, align 4
  br label %136

131:                                              ; preds = %122, %119
  br label %132

132:                                              ; preds = %131, %103
  %133 = load i32, i32* %15, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %15, align 4
  br label %88

135:                                              ; preds = %88
  store i32 0, i32* %7, align 4
  br label %136

136:                                              ; preds = %135, %130, %114, %85, %81
  %137 = load i32, i32* %7, align 4
  ret i32 %137
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @free_area_empty(%struct.free_area*, i32) #1

declare dso_local i32 @list_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
