; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_btree.c___btree_for_each.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_btree.c___btree_for_each.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btree_head = type { i32 }
%struct.btree_geo = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.btree_head*, %struct.btree_geo*, i64*, i64, void (i8*, i64, i64*, i64, i8*)*, i8*, i32, i32, i64)* @__btree_for_each to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__btree_for_each(%struct.btree_head* %0, %struct.btree_geo* %1, i64* %2, i64 %3, void (i8*, i64, i64*, i64, i8*)* %4, i8* %5, i32 %6, i32 %7, i64 %8) #0 {
  %10 = alloca %struct.btree_head*, align 8
  %11 = alloca %struct.btree_geo*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca void (i8*, i64, i64*, i64, i8*)*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64*, align 8
  store %struct.btree_head* %0, %struct.btree_head** %10, align 8
  store %struct.btree_geo* %1, %struct.btree_geo** %11, align 8
  store i64* %2, i64** %12, align 8
  store i64 %3, i64* %13, align 8
  store void (i8*, i64, i64*, i64, i8*)* %4, void (i8*, i64, i64*, i64, i8*)** %14, align 8
  store i8* %5, i8** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i64 %8, i64* %18, align 8
  store i32 0, i32* %19, align 4
  br label %21

21:                                               ; preds = %65, %9
  %22 = load i32, i32* %19, align 4
  %23 = load %struct.btree_geo*, %struct.btree_geo** %11, align 8
  %24 = getelementptr inbounds %struct.btree_geo, %struct.btree_geo* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %68

27:                                               ; preds = %21
  %28 = load %struct.btree_geo*, %struct.btree_geo** %11, align 8
  %29 = load i64*, i64** %12, align 8
  %30 = load i32, i32* %19, align 4
  %31 = call i64* @bval(%struct.btree_geo* %28, i64* %29, i32 %30)
  store i64* %31, i64** %20, align 8
  %32 = load i64*, i64** %20, align 8
  %33 = icmp ne i64* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  br label %68

35:                                               ; preds = %27
  %36 = load i32, i32* %17, align 4
  %37 = icmp sgt i32 %36, 1
  br i1 %37, label %38, label %50

38:                                               ; preds = %35
  %39 = load %struct.btree_head*, %struct.btree_head** %10, align 8
  %40 = load %struct.btree_geo*, %struct.btree_geo** %11, align 8
  %41 = load i64*, i64** %20, align 8
  %42 = load i64, i64* %13, align 8
  %43 = load void (i8*, i64, i64*, i64, i8*)*, void (i8*, i64, i64*, i64, i8*)** %14, align 8
  %44 = load i8*, i8** %15, align 8
  %45 = load i32, i32* %16, align 4
  %46 = load i32, i32* %17, align 4
  %47 = sub nsw i32 %46, 1
  %48 = load i64, i64* %18, align 8
  %49 = call i64 @__btree_for_each(%struct.btree_head* %39, %struct.btree_geo* %40, i64* %41, i64 %42, void (i8*, i64, i64*, i64, i8*)* %43, i8* %44, i32 %45, i32 %47, i64 %48)
  store i64 %49, i64* %18, align 8
  br label %64

50:                                               ; preds = %35
  %51 = load void (i8*, i64, i64*, i64, i8*)*, void (i8*, i64, i64*, i64, i8*)** %14, align 8
  %52 = load i64*, i64** %20, align 8
  %53 = bitcast i64* %52 to i8*
  %54 = load i64, i64* %13, align 8
  %55 = load %struct.btree_geo*, %struct.btree_geo** %11, align 8
  %56 = load i64*, i64** %12, align 8
  %57 = load i32, i32* %19, align 4
  %58 = call i32 @bkey(%struct.btree_geo* %55, i64* %56, i32 %57)
  %59 = sext i32 %58 to i64
  %60 = inttoptr i64 %59 to i64*
  %61 = load i64, i64* %18, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %18, align 8
  %63 = load i8*, i8** %15, align 8
  call void %51(i8* %53, i64 %54, i64* %60, i64 %61, i8* %63)
  br label %64

64:                                               ; preds = %50, %38
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %19, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %19, align 4
  br label %21

68:                                               ; preds = %34, %21
  %69 = load i32, i32* %16, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %68
  %72 = load i64*, i64** %12, align 8
  %73 = load %struct.btree_head*, %struct.btree_head** %10, align 8
  %74 = getelementptr inbounds %struct.btree_head, %struct.btree_head* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @mempool_free(i64* %72, i32 %75)
  br label %77

77:                                               ; preds = %71, %68
  %78 = load i64, i64* %18, align 8
  ret i64 %78
}

declare dso_local i64* @bval(%struct.btree_geo*, i64*, i32) #1

declare dso_local i32 @bkey(%struct.btree_geo*, i64*, i32) #1

declare dso_local i32 @mempool_free(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
