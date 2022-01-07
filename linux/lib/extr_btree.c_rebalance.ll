; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_btree.c_rebalance.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_btree.c_rebalance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btree_head = type { i32 }
%struct.btree_geo = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btree_head*, %struct.btree_geo*, i64*, i32, i64*, i32)* @rebalance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rebalance(%struct.btree_head* %0, %struct.btree_geo* %1, i64* %2, i32 %3, i64* %4, i32 %5) #0 {
  %7 = alloca %struct.btree_head*, align 8
  %8 = alloca %struct.btree_geo*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.btree_head* %0, %struct.btree_head** %7, align 8
  store %struct.btree_geo* %1, %struct.btree_geo** %8, align 8
  store i64* %2, i64** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  store i32 %5, i32* %12, align 4
  store i64* null, i64** %14, align 8
  store i64* null, i64** %15, align 8
  %19 = load i32, i32* %12, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %6
  %22 = load %struct.btree_head*, %struct.btree_head** %7, align 8
  %23 = load %struct.btree_geo*, %struct.btree_geo** %8, align 8
  %24 = load i64*, i64** %9, align 8
  %25 = load i32, i32* %10, align 4
  %26 = add nsw i32 %25, 1
  %27 = call i32 @btree_remove_level(%struct.btree_head* %22, %struct.btree_geo* %23, i64* %24, i32 %26)
  %28 = load i64*, i64** %11, align 8
  %29 = load %struct.btree_head*, %struct.btree_head** %7, align 8
  %30 = getelementptr inbounds %struct.btree_head, %struct.btree_head* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @mempool_free(i64* %28, i32 %31)
  br label %119

33:                                               ; preds = %6
  %34 = load %struct.btree_head*, %struct.btree_head** %7, align 8
  %35 = load %struct.btree_geo*, %struct.btree_geo** %8, align 8
  %36 = load i64*, i64** %9, align 8
  %37 = load i32, i32* %10, align 4
  %38 = add nsw i32 %37, 1
  %39 = call i64* @find_level(%struct.btree_head* %34, %struct.btree_geo* %35, i64* %36, i32 %38)
  store i64* %39, i64** %13, align 8
  %40 = load %struct.btree_geo*, %struct.btree_geo** %8, align 8
  %41 = load i64*, i64** %13, align 8
  %42 = load i64*, i64** %9, align 8
  %43 = call i32 @getpos(%struct.btree_geo* %40, i64* %41, i64* %42)
  store i32 %43, i32* %16, align 4
  %44 = load %struct.btree_geo*, %struct.btree_geo** %8, align 8
  %45 = load i64*, i64** %13, align 8
  %46 = load i32, i32* %16, align 4
  %47 = call i64* @bval(%struct.btree_geo* %44, i64* %45, i32 %46)
  %48 = load i64*, i64** %11, align 8
  %49 = icmp ne i64* %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @BUG_ON(i32 %50)
  %52 = load i32, i32* %16, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %83

54:                                               ; preds = %33
  %55 = load %struct.btree_geo*, %struct.btree_geo** %8, align 8
  %56 = load i64*, i64** %13, align 8
  %57 = load i32, i32* %16, align 4
  %58 = sub nsw i32 %57, 1
  %59 = call i64* @bval(%struct.btree_geo* %55, i64* %56, i32 %58)
  store i64* %59, i64** %14, align 8
  %60 = load %struct.btree_geo*, %struct.btree_geo** %8, align 8
  %61 = load i64*, i64** %14, align 8
  %62 = call i32 @getfill(%struct.btree_geo* %60, i64* %61, i32 0)
  store i32 %62, i32* %17, align 4
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %17, align 4
  %65 = add nsw i32 %63, %64
  %66 = load %struct.btree_geo*, %struct.btree_geo** %8, align 8
  %67 = getelementptr inbounds %struct.btree_geo, %struct.btree_geo* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp sle i32 %65, %68
  br i1 %69, label %70, label %82

70:                                               ; preds = %54
  %71 = load %struct.btree_head*, %struct.btree_head** %7, align 8
  %72 = load %struct.btree_geo*, %struct.btree_geo** %8, align 8
  %73 = load i32, i32* %10, align 4
  %74 = load i64*, i64** %14, align 8
  %75 = load i32, i32* %17, align 4
  %76 = load i64*, i64** %11, align 8
  %77 = load i32, i32* %12, align 4
  %78 = load i64*, i64** %13, align 8
  %79 = load i32, i32* %16, align 4
  %80 = sub nsw i32 %79, 1
  %81 = call i32 @merge(%struct.btree_head* %71, %struct.btree_geo* %72, i32 %73, i64* %74, i32 %75, i64* %76, i32 %77, i64* %78, i32 %80)
  br label %119

82:                                               ; preds = %54
  br label %83

83:                                               ; preds = %82, %33
  %84 = load i32, i32* %16, align 4
  %85 = add nsw i32 %84, 1
  %86 = load %struct.btree_geo*, %struct.btree_geo** %8, align 8
  %87 = load i64*, i64** %13, align 8
  %88 = load i32, i32* %16, align 4
  %89 = call i32 @getfill(%struct.btree_geo* %86, i64* %87, i32 %88)
  %90 = icmp slt i32 %85, %89
  br i1 %90, label %91, label %119

91:                                               ; preds = %83
  %92 = load %struct.btree_geo*, %struct.btree_geo** %8, align 8
  %93 = load i64*, i64** %13, align 8
  %94 = load i32, i32* %16, align 4
  %95 = add nsw i32 %94, 1
  %96 = call i64* @bval(%struct.btree_geo* %92, i64* %93, i32 %95)
  store i64* %96, i64** %15, align 8
  %97 = load %struct.btree_geo*, %struct.btree_geo** %8, align 8
  %98 = load i64*, i64** %15, align 8
  %99 = call i32 @getfill(%struct.btree_geo* %97, i64* %98, i32 0)
  store i32 %99, i32* %18, align 4
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* %18, align 4
  %102 = add nsw i32 %100, %101
  %103 = load %struct.btree_geo*, %struct.btree_geo** %8, align 8
  %104 = getelementptr inbounds %struct.btree_geo, %struct.btree_geo* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp sle i32 %102, %105
  br i1 %106, label %107, label %118

107:                                              ; preds = %91
  %108 = load %struct.btree_head*, %struct.btree_head** %7, align 8
  %109 = load %struct.btree_geo*, %struct.btree_geo** %8, align 8
  %110 = load i32, i32* %10, align 4
  %111 = load i64*, i64** %11, align 8
  %112 = load i32, i32* %12, align 4
  %113 = load i64*, i64** %15, align 8
  %114 = load i32, i32* %18, align 4
  %115 = load i64*, i64** %13, align 8
  %116 = load i32, i32* %16, align 4
  %117 = call i32 @merge(%struct.btree_head* %108, %struct.btree_geo* %109, i32 %110, i64* %111, i32 %112, i64* %113, i32 %114, i64* %115, i32 %116)
  br label %119

118:                                              ; preds = %91
  br label %119

119:                                              ; preds = %21, %70, %107, %118, %83
  ret void
}

declare dso_local i32 @btree_remove_level(%struct.btree_head*, %struct.btree_geo*, i64*, i32) #1

declare dso_local i32 @mempool_free(i64*, i32) #1

declare dso_local i64* @find_level(%struct.btree_head*, %struct.btree_geo*, i64*, i32) #1

declare dso_local i32 @getpos(%struct.btree_geo*, i64*, i64*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64* @bval(%struct.btree_geo*, i64*, i32) #1

declare dso_local i32 @getfill(%struct.btree_geo*, i64*, i32) #1

declare dso_local i32 @merge(%struct.btree_head*, %struct.btree_geo*, i32, i64*, i32, i64*, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
