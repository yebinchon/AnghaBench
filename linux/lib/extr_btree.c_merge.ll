; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_btree.c_merge.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_btree.c_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btree_head = type { i32 }
%struct.btree_geo = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btree_head*, %struct.btree_geo*, i32, i64*, i32, i64*, i32, i64*, i32)* @merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @merge(%struct.btree_head* %0, %struct.btree_geo* %1, i32 %2, i64* %3, i32 %4, i64* %5, i32 %6, i64* %7, i32 %8) #0 {
  %10 = alloca %struct.btree_head*, align 8
  %11 = alloca %struct.btree_geo*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.btree_head* %0, %struct.btree_head** %10, align 8
  store %struct.btree_geo* %1, %struct.btree_geo** %11, align 8
  store i32 %2, i32* %12, align 4
  store i64* %3, i64** %13, align 8
  store i32 %4, i32* %14, align 4
  store i64* %5, i64** %15, align 8
  store i32 %6, i32* %16, align 4
  store i64* %7, i64** %17, align 8
  store i32 %8, i32* %18, align 4
  store i32 0, i32* %19, align 4
  br label %20

20:                                               ; preds = %45, %9
  %21 = load i32, i32* %19, align 4
  %22 = load i32, i32* %16, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %48

24:                                               ; preds = %20
  %25 = load %struct.btree_geo*, %struct.btree_geo** %11, align 8
  %26 = load i64*, i64** %13, align 8
  %27 = load i32, i32* %14, align 4
  %28 = load i32, i32* %19, align 4
  %29 = add nsw i32 %27, %28
  %30 = load %struct.btree_geo*, %struct.btree_geo** %11, align 8
  %31 = load i64*, i64** %15, align 8
  %32 = load i32, i32* %19, align 4
  %33 = call i32 @bkey(%struct.btree_geo* %30, i64* %31, i32 %32)
  %34 = call i32 @setkey(%struct.btree_geo* %25, i64* %26, i32 %29, i32 %33)
  %35 = load %struct.btree_geo*, %struct.btree_geo** %11, align 8
  %36 = load i64*, i64** %13, align 8
  %37 = load i32, i32* %14, align 4
  %38 = load i32, i32* %19, align 4
  %39 = add nsw i32 %37, %38
  %40 = load %struct.btree_geo*, %struct.btree_geo** %11, align 8
  %41 = load i64*, i64** %15, align 8
  %42 = load i32, i32* %19, align 4
  %43 = call i64* @bval(%struct.btree_geo* %40, i64* %41, i32 %42)
  %44 = call i32 @setval(%struct.btree_geo* %35, i64* %36, i32 %39, i64* %43)
  br label %45

45:                                               ; preds = %24
  %46 = load i32, i32* %19, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %19, align 4
  br label %20

48:                                               ; preds = %20
  %49 = load %struct.btree_geo*, %struct.btree_geo** %11, align 8
  %50 = load i64*, i64** %17, align 8
  %51 = load i32, i32* %18, align 4
  %52 = load i64*, i64** %15, align 8
  %53 = call i32 @setval(%struct.btree_geo* %49, i64* %50, i32 %51, i64* %52)
  %54 = load %struct.btree_geo*, %struct.btree_geo** %11, align 8
  %55 = load i64*, i64** %17, align 8
  %56 = load i32, i32* %18, align 4
  %57 = add nsw i32 %56, 1
  %58 = load i64*, i64** %13, align 8
  %59 = call i32 @setval(%struct.btree_geo* %54, i64* %55, i32 %57, i64* %58)
  %60 = load %struct.btree_head*, %struct.btree_head** %10, align 8
  %61 = load %struct.btree_geo*, %struct.btree_geo** %11, align 8
  %62 = load %struct.btree_geo*, %struct.btree_geo** %11, align 8
  %63 = load i64*, i64** %17, align 8
  %64 = load i32, i32* %18, align 4
  %65 = call i32 @bkey(%struct.btree_geo* %62, i64* %63, i32 %64)
  %66 = load i32, i32* %12, align 4
  %67 = add nsw i32 %66, 1
  %68 = call i32 @btree_remove_level(%struct.btree_head* %60, %struct.btree_geo* %61, i32 %65, i32 %67)
  %69 = load i64*, i64** %15, align 8
  %70 = load %struct.btree_head*, %struct.btree_head** %10, align 8
  %71 = getelementptr inbounds %struct.btree_head, %struct.btree_head* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @mempool_free(i64* %69, i32 %72)
  ret void
}

declare dso_local i32 @setkey(%struct.btree_geo*, i64*, i32, i32) #1

declare dso_local i32 @bkey(%struct.btree_geo*, i64*, i32) #1

declare dso_local i32 @setval(%struct.btree_geo*, i64*, i32, i64*) #1

declare dso_local i64* @bval(%struct.btree_geo*, i64*, i32) #1

declare dso_local i32 @btree_remove_level(%struct.btree_head*, %struct.btree_geo*, i32, i32) #1

declare dso_local i32 @mempool_free(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
