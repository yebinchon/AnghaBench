; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_btree.c_find_level.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_btree.c_find_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btree_head = type { i64*, i32 }
%struct.btree_geo = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (%struct.btree_head*, %struct.btree_geo*, i64*, i32)* @find_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @find_level(%struct.btree_head* %0, %struct.btree_geo* %1, i64* %2, i32 %3) #0 {
  %5 = alloca %struct.btree_head*, align 8
  %6 = alloca %struct.btree_geo*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.btree_head* %0, %struct.btree_head** %5, align 8
  store %struct.btree_geo* %1, %struct.btree_geo** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.btree_head*, %struct.btree_head** %5, align 8
  %13 = getelementptr inbounds %struct.btree_head, %struct.btree_head* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  store i64* %14, i64** %9, align 8
  %15 = load %struct.btree_head*, %struct.btree_head** %5, align 8
  %16 = getelementptr inbounds %struct.btree_head, %struct.btree_head* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %11, align 4
  br label %18

18:                                               ; preds = %70, %4
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %73

22:                                               ; preds = %18
  store i32 0, i32* %10, align 4
  br label %23

23:                                               ; preds = %38, %22
  %24 = load i32, i32* %10, align 4
  %25 = load %struct.btree_geo*, %struct.btree_geo** %6, align 8
  %26 = getelementptr inbounds %struct.btree_geo, %struct.btree_geo* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %23
  %30 = load %struct.btree_geo*, %struct.btree_geo** %6, align 8
  %31 = load i64*, i64** %9, align 8
  %32 = load i32, i32* %10, align 4
  %33 = load i64*, i64** %7, align 8
  %34 = call i64 @keycmp(%struct.btree_geo* %30, i64* %31, i32 %32, i64* %33)
  %35 = icmp sle i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %41

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %10, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %10, align 4
  br label %23

41:                                               ; preds = %36, %23
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.btree_geo*, %struct.btree_geo** %6, align 8
  %44 = getelementptr inbounds %struct.btree_geo, %struct.btree_geo* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %42, %45
  br i1 %46, label %53, label %47

47:                                               ; preds = %41
  %48 = load %struct.btree_geo*, %struct.btree_geo** %6, align 8
  %49 = load i64*, i64** %9, align 8
  %50 = load i32, i32* %10, align 4
  %51 = call i64* @bval(%struct.btree_geo* %48, i64* %49, i32 %50)
  %52 = icmp ne i64* %51, null
  br i1 %52, label %61, label %53

53:                                               ; preds = %47, %41
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %10, align 4
  %56 = load %struct.btree_geo*, %struct.btree_geo** %6, align 8
  %57 = load i64*, i64** %9, align 8
  %58 = load i32, i32* %10, align 4
  %59 = load i64*, i64** %7, align 8
  %60 = call i32 @setkey(%struct.btree_geo* %56, i64* %57, i32 %58, i64* %59)
  br label %61

61:                                               ; preds = %53, %47
  %62 = load i32, i32* %10, align 4
  %63 = icmp slt i32 %62, 0
  %64 = zext i1 %63 to i32
  %65 = call i32 @BUG_ON(i32 %64)
  %66 = load %struct.btree_geo*, %struct.btree_geo** %6, align 8
  %67 = load i64*, i64** %9, align 8
  %68 = load i32, i32* %10, align 4
  %69 = call i64* @bval(%struct.btree_geo* %66, i64* %67, i32 %68)
  store i64* %69, i64** %9, align 8
  br label %70

70:                                               ; preds = %61
  %71 = load i32, i32* %11, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %11, align 4
  br label %18

73:                                               ; preds = %18
  %74 = load i64*, i64** %9, align 8
  %75 = icmp ne i64* %74, null
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  %78 = call i32 @BUG_ON(i32 %77)
  %79 = load i64*, i64** %9, align 8
  ret i64* %79
}

declare dso_local i64 @keycmp(%struct.btree_geo*, i64*, i32, i64*) #1

declare dso_local i64* @bval(%struct.btree_geo*, i64*, i32) #1

declare dso_local i32 @setkey(%struct.btree_geo*, i64*, i32, i64*) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
