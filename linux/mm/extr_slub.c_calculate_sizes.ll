; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_slub.c_calculate_sizes.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_slub.c_calculate_sizes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmem_cache = type { i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i32, i64 }

@SLAB_TYPESAFE_BY_RCU = common dso_local global i32 0, align 4
@SLAB_POISON = common dso_local global i32 0, align 4
@__GFP_COMP = common dso_local global i32 0, align 4
@SLAB_CACHE_DMA = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@SLAB_CACHE_DMA32 = common dso_local global i32 0, align 4
@GFP_DMA32 = common dso_local global i32 0, align 4
@SLAB_RECLAIM_ACCOUNT = common dso_local global i32 0, align 4
@__GFP_RECLAIMABLE = common dso_local global i32 0, align 4
@SLAB_RED_ZONE = common dso_local global i32 0, align 4
@SLAB_STORE_USER = common dso_local global i32 0, align 4
@__OBJECT_POISON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kmem_cache*, i32)* @calculate_sizes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calculate_sizes(%struct.kmem_cache* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kmem_cache*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.kmem_cache* %0, %struct.kmem_cache** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %10 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %6, align 4
  %12 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %13 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @ALIGN(i32 %15, i32 8)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %19 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @SLAB_TYPESAFE_BY_RCU, align 4
  %22 = load i32, i32* @SLAB_POISON, align 4
  %23 = or i32 %21, %22
  %24 = and i32 %20, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %2
  %27 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %28 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %27, i32 0, i32 11
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %26, %2
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %34 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %7, align 4
  %36 = zext i32 %35 to i64
  %37 = add i64 %36, 8
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %31, %26
  %40 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %41 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %42 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %41, i32 0, i32 0
  %43 = call i32 @kasan_cache_create(%struct.kmem_cache* %40, i32* %7, i32* %42)
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %46 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ALIGN(i32 %44, i32 %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %51 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %50, i32 0, i32 6
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* %5, align 4
  %53 = icmp sge i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %39
  %55 = load i32, i32* %5, align 4
  store i32 %55, i32* %8, align 4
  br label %59

56:                                               ; preds = %39
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @calculate_order(i32 %57)
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %56, %54
  %60 = load i32, i32* %8, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store i32 0, i32* %3, align 4
  br label %149

63:                                               ; preds = %59
  %64 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %65 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %64, i32 0, i32 10
  store i32 0, i32* %65, align 8
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = load i32, i32* @__GFP_COMP, align 4
  %70 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %71 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %70, i32 0, i32 10
  %72 = load i32, i32* %71, align 8
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 8
  br label %74

74:                                               ; preds = %68, %63
  %75 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %76 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @SLAB_CACHE_DMA, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %74
  %82 = load i32, i32* @GFP_DMA, align 4
  %83 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %84 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %83, i32 0, i32 10
  %85 = load i32, i32* %84, align 8
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 8
  br label %87

87:                                               ; preds = %81, %74
  %88 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %89 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @SLAB_CACHE_DMA32, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %87
  %95 = load i32, i32* @GFP_DMA32, align 4
  %96 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %97 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %96, i32 0, i32 10
  %98 = load i32, i32* %97, align 8
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 8
  br label %100

100:                                              ; preds = %94, %87
  %101 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %102 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @SLAB_RECLAIM_ACCOUNT, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %100
  %108 = load i32, i32* @__GFP_RECLAIMABLE, align 4
  %109 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %110 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %109, i32 0, i32 10
  %111 = load i32, i32* %110, align 8
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 8
  br label %113

113:                                              ; preds = %107, %100
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* %7, align 4
  %116 = call i8* @oo_make(i32 %114, i32 %115)
  %117 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %118 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %117, i32 0, i32 7
  store i8* %116, i8** %118, align 8
  %119 = load i32, i32* %7, align 4
  %120 = call i32 @get_order(i32 %119)
  %121 = load i32, i32* %7, align 4
  %122 = call i8* @oo_make(i32 %120, i32 %121)
  %123 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %124 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %123, i32 0, i32 9
  store i8* %122, i8** %124, align 8
  %125 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %126 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %125, i32 0, i32 7
  %127 = load i8*, i8** %126, align 8
  %128 = call i64 @oo_objects(i8* %127)
  %129 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %130 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %129, i32 0, i32 8
  %131 = load i8*, i8** %130, align 8
  %132 = call i64 @oo_objects(i8* %131)
  %133 = icmp sgt i64 %128, %132
  br i1 %133, label %134, label %140

134:                                              ; preds = %113
  %135 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %136 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %135, i32 0, i32 7
  %137 = load i8*, i8** %136, align 8
  %138 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %139 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %138, i32 0, i32 8
  store i8* %137, i8** %139, align 8
  br label %140

140:                                              ; preds = %134, %113
  %141 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %142 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %141, i32 0, i32 7
  %143 = load i8*, i8** %142, align 8
  %144 = call i64 @oo_objects(i8* %143)
  %145 = icmp ne i64 %144, 0
  %146 = xor i1 %145, true
  %147 = xor i1 %146, true
  %148 = zext i1 %147 to i32
  store i32 %148, i32* %3, align 4
  br label %149

149:                                              ; preds = %140, %62
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @kasan_cache_create(%struct.kmem_cache*, i32*, i32*) #1

declare dso_local i32 @calculate_order(i32) #1

declare dso_local i8* @oo_make(i32, i32) #1

declare dso_local i32 @get_order(i32) #1

declare dso_local i64 @oo_objects(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
