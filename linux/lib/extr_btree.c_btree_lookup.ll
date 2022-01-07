; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_btree.c_btree_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_btree.c_btree_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btree_head = type { i32, i64* }
%struct.btree_geo = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @btree_lookup(%struct.btree_head* %0, %struct.btree_geo* %1, i64* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.btree_head*, align 8
  %6 = alloca %struct.btree_geo*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  store %struct.btree_head* %0, %struct.btree_head** %5, align 8
  store %struct.btree_geo* %1, %struct.btree_geo** %6, align 8
  store i64* %2, i64** %7, align 8
  %11 = load %struct.btree_head*, %struct.btree_head** %5, align 8
  %12 = getelementptr inbounds %struct.btree_head, %struct.btree_head* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %9, align 4
  %14 = load %struct.btree_head*, %struct.btree_head** %5, align 8
  %15 = getelementptr inbounds %struct.btree_head, %struct.btree_head* %14, i32 0, i32 1
  %16 = load i64*, i64** %15, align 8
  store i64* %16, i64** %10, align 8
  %17 = load i32, i32* %9, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %91

20:                                               ; preds = %3
  br label %21

21:                                               ; preds = %60, %20
  %22 = load i32, i32* %9, align 4
  %23 = icmp sgt i32 %22, 1
  br i1 %23, label %24, label %63

24:                                               ; preds = %21
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %40, %24
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.btree_geo*, %struct.btree_geo** %6, align 8
  %28 = getelementptr inbounds %struct.btree_geo, %struct.btree_geo* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %25
  %32 = load %struct.btree_geo*, %struct.btree_geo** %6, align 8
  %33 = load i64*, i64** %10, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load i64*, i64** %7, align 8
  %36 = call i64 @keycmp(%struct.btree_geo* %32, i64* %33, i32 %34, i64* %35)
  %37 = icmp sle i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %43

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %8, align 4
  br label %25

43:                                               ; preds = %38, %25
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.btree_geo*, %struct.btree_geo** %6, align 8
  %46 = getelementptr inbounds %struct.btree_geo, %struct.btree_geo* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %44, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  store i8* null, i8** %4, align 8
  br label %91

50:                                               ; preds = %43
  %51 = load %struct.btree_geo*, %struct.btree_geo** %6, align 8
  %52 = load i64*, i64** %10, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i8* @bval(%struct.btree_geo* %51, i64* %52, i32 %53)
  %55 = bitcast i8* %54 to i64*
  store i64* %55, i64** %10, align 8
  %56 = load i64*, i64** %10, align 8
  %57 = icmp ne i64* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %50
  store i8* null, i8** %4, align 8
  br label %91

59:                                               ; preds = %50
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %9, align 4
  br label %21

63:                                               ; preds = %21
  %64 = load i64*, i64** %10, align 8
  %65 = icmp ne i64* %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %63
  store i8* null, i8** %4, align 8
  br label %91

67:                                               ; preds = %63
  store i32 0, i32* %8, align 4
  br label %68

68:                                               ; preds = %87, %67
  %69 = load i32, i32* %8, align 4
  %70 = load %struct.btree_geo*, %struct.btree_geo** %6, align 8
  %71 = getelementptr inbounds %struct.btree_geo, %struct.btree_geo* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %90

74:                                               ; preds = %68
  %75 = load %struct.btree_geo*, %struct.btree_geo** %6, align 8
  %76 = load i64*, i64** %10, align 8
  %77 = load i32, i32* %8, align 4
  %78 = load i64*, i64** %7, align 8
  %79 = call i64 @keycmp(%struct.btree_geo* %75, i64* %76, i32 %77, i64* %78)
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %74
  %82 = load %struct.btree_geo*, %struct.btree_geo** %6, align 8
  %83 = load i64*, i64** %10, align 8
  %84 = load i32, i32* %8, align 4
  %85 = call i8* @bval(%struct.btree_geo* %82, i64* %83, i32 %84)
  store i8* %85, i8** %4, align 8
  br label %91

86:                                               ; preds = %74
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %8, align 4
  br label %68

90:                                               ; preds = %68
  store i8* null, i8** %4, align 8
  br label %91

91:                                               ; preds = %90, %81, %66, %58, %49, %19
  %92 = load i8*, i8** %4, align 8
  ret i8* %92
}

declare dso_local i64 @keycmp(%struct.btree_geo*, i64*, i32, i64*) #1

declare dso_local i8* @bval(%struct.btree_geo*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
