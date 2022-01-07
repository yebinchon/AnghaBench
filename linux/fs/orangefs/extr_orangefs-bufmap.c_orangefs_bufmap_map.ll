; ModuleID = '/home/carl/AnghaBench/linux/fs/orangefs/extr_orangefs-bufmap.c_orangefs_bufmap_map.c'
source_filename = "/home/carl/AnghaBench/linux/fs/orangefs/extr_orangefs-bufmap.c_orangefs_bufmap_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.orangefs_bufmap = type { i32, i32, i32, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32, i64, i32* }
%struct.ORANGEFS_dev_map_desc = type { i64 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@FOLL_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"orangefs error: asked for %d pages, only got %d.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.orangefs_bufmap*, %struct.ORANGEFS_dev_map_desc*)* @orangefs_bufmap_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @orangefs_bufmap_map(%struct.orangefs_bufmap* %0, %struct.ORANGEFS_dev_map_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.orangefs_bufmap*, align 8
  %5 = alloca %struct.ORANGEFS_dev_map_desc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.orangefs_bufmap* %0, %struct.orangefs_bufmap** %4, align 8
  store %struct.ORANGEFS_dev_map_desc* %1, %struct.ORANGEFS_dev_map_desc** %5, align 8
  %10 = load %struct.orangefs_bufmap*, %struct.orangefs_bufmap** %4, align 8
  %11 = getelementptr inbounds %struct.orangefs_bufmap, %struct.orangefs_bufmap* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @PAGE_SIZE, align 4
  %14 = sdiv i32 %12, %13
  store i32 %14, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %15 = load %struct.ORANGEFS_dev_map_desc*, %struct.ORANGEFS_dev_map_desc** %5, align 8
  %16 = getelementptr inbounds %struct.ORANGEFS_dev_map_desc, %struct.ORANGEFS_dev_map_desc* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.orangefs_bufmap*, %struct.orangefs_bufmap** %4, align 8
  %19 = getelementptr inbounds %struct.orangefs_bufmap, %struct.orangefs_bufmap* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @FOLL_WRITE, align 4
  %22 = load %struct.orangefs_bufmap*, %struct.orangefs_bufmap** %4, align 8
  %23 = getelementptr inbounds %struct.orangefs_bufmap, %struct.orangefs_bufmap* %22, i32 0, i32 4
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @get_user_pages_fast(i64 %17, i32 %20, i32 %21, i32* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %3, align 4
  br label %141

30:                                               ; preds = %2
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.orangefs_bufmap*, %struct.orangefs_bufmap** %4, align 8
  %33 = getelementptr inbounds %struct.orangefs_bufmap, %struct.orangefs_bufmap* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %31, %34
  br i1 %35, label %36, label %69

36:                                               ; preds = %30
  %37 = load %struct.orangefs_bufmap*, %struct.orangefs_bufmap** %4, align 8
  %38 = getelementptr inbounds %struct.orangefs_bufmap, %struct.orangefs_bufmap* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @gossip_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %40)
  store i32 0, i32* %9, align 4
  br label %42

42:                                               ; preds = %63, %36
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %66

46:                                               ; preds = %42
  %47 = load %struct.orangefs_bufmap*, %struct.orangefs_bufmap** %4, align 8
  %48 = getelementptr inbounds %struct.orangefs_bufmap, %struct.orangefs_bufmap* %47, i32 0, i32 4
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @SetPageError(i32 %53)
  %55 = load %struct.orangefs_bufmap*, %struct.orangefs_bufmap** %4, align 8
  %56 = getelementptr inbounds %struct.orangefs_bufmap, %struct.orangefs_bufmap* %55, i32 0, i32 4
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @put_page(i32 %61)
  br label %63

63:                                               ; preds = %46
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %9, align 4
  br label %42

66:                                               ; preds = %42
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %141

69:                                               ; preds = %30
  store i32 0, i32* %9, align 4
  br label %70

70:                                               ; preds = %85, %69
  %71 = load i32, i32* %9, align 4
  %72 = load %struct.orangefs_bufmap*, %struct.orangefs_bufmap** %4, align 8
  %73 = getelementptr inbounds %struct.orangefs_bufmap, %struct.orangefs_bufmap* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp slt i32 %71, %74
  br i1 %75, label %76, label %88

76:                                               ; preds = %70
  %77 = load %struct.orangefs_bufmap*, %struct.orangefs_bufmap** %4, align 8
  %78 = getelementptr inbounds %struct.orangefs_bufmap, %struct.orangefs_bufmap* %77, i32 0, i32 4
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @flush_dcache_page(i32 %83)
  br label %85

85:                                               ; preds = %76
  %86 = load i32, i32* %9, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %9, align 4
  br label %70

88:                                               ; preds = %70
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %89

89:                                               ; preds = %137, %88
  %90 = load i32, i32* %9, align 4
  %91 = load %struct.orangefs_bufmap*, %struct.orangefs_bufmap** %4, align 8
  %92 = getelementptr inbounds %struct.orangefs_bufmap, %struct.orangefs_bufmap* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = icmp slt i32 %90, %93
  br i1 %94, label %95, label %140

95:                                               ; preds = %89
  %96 = load %struct.orangefs_bufmap*, %struct.orangefs_bufmap** %4, align 8
  %97 = getelementptr inbounds %struct.orangefs_bufmap, %struct.orangefs_bufmap* %96, i32 0, i32 4
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %7, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load %struct.orangefs_bufmap*, %struct.orangefs_bufmap** %4, align 8
  %103 = getelementptr inbounds %struct.orangefs_bufmap, %struct.orangefs_bufmap* %102, i32 0, i32 3
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 2
  store i32* %101, i32** %108, align 8
  %109 = load i32, i32* %6, align 4
  %110 = load %struct.orangefs_bufmap*, %struct.orangefs_bufmap** %4, align 8
  %111 = getelementptr inbounds %struct.orangefs_bufmap, %struct.orangefs_bufmap* %110, i32 0, i32 3
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  store i32 %109, i32* %116, align 8
  %117 = load %struct.ORANGEFS_dev_map_desc*, %struct.ORANGEFS_dev_map_desc** %5, align 8
  %118 = getelementptr inbounds %struct.ORANGEFS_dev_map_desc, %struct.ORANGEFS_dev_map_desc* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* %6, align 4
  %122 = mul nsw i32 %120, %121
  %123 = load i32, i32* @PAGE_SIZE, align 4
  %124 = mul nsw i32 %122, %123
  %125 = sext i32 %124 to i64
  %126 = add nsw i64 %119, %125
  %127 = load %struct.orangefs_bufmap*, %struct.orangefs_bufmap** %4, align 8
  %128 = getelementptr inbounds %struct.orangefs_bufmap, %struct.orangefs_bufmap* %127, i32 0, i32 3
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = load i32, i32* %9, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 1
  store i64 %126, i64* %133, align 8
  %134 = load i32, i32* %6, align 4
  %135 = load i32, i32* %7, align 4
  %136 = add nsw i32 %135, %134
  store i32 %136, i32* %7, align 4
  br label %137

137:                                              ; preds = %95
  %138 = load i32, i32* %9, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %9, align 4
  br label %89

140:                                              ; preds = %89
  store i32 0, i32* %3, align 4
  br label %141

141:                                              ; preds = %140, %66, %28
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local i32 @get_user_pages_fast(i64, i32, i32, i32*) #1

declare dso_local i32 @gossip_err(i8*, i32, i32) #1

declare dso_local i32 @SetPageError(i32) #1

declare dso_local i32 @put_page(i32) #1

declare dso_local i32 @flush_dcache_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
