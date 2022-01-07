; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_btree.c_btree_update.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_btree.c_btree_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btree_head = type { i32, i64* }
%struct.btree_geo = type { i32 }

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btree_update(%struct.btree_head* %0, %struct.btree_geo* %1, i64* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.btree_head*, align 8
  %7 = alloca %struct.btree_geo*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  store %struct.btree_head* %0, %struct.btree_head** %6, align 8
  store %struct.btree_geo* %1, %struct.btree_geo** %7, align 8
  store i64* %2, i64** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.btree_head*, %struct.btree_head** %6, align 8
  %14 = getelementptr inbounds %struct.btree_head, %struct.btree_head* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %11, align 4
  %16 = load %struct.btree_head*, %struct.btree_head** %6, align 8
  %17 = getelementptr inbounds %struct.btree_head, %struct.btree_head* %16, i32 0, i32 1
  %18 = load i64*, i64** %17, align 8
  store i64* %18, i64** %12, align 8
  %19 = load i32, i32* %11, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* @ENOENT, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %103

24:                                               ; preds = %4
  br label %25

25:                                               ; preds = %67, %24
  %26 = load i32, i32* %11, align 4
  %27 = icmp sgt i32 %26, 1
  br i1 %27, label %28, label %70

28:                                               ; preds = %25
  store i32 0, i32* %10, align 4
  br label %29

29:                                               ; preds = %44, %28
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.btree_geo*, %struct.btree_geo** %7, align 8
  %32 = getelementptr inbounds %struct.btree_geo, %struct.btree_geo* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %47

35:                                               ; preds = %29
  %36 = load %struct.btree_geo*, %struct.btree_geo** %7, align 8
  %37 = load i64*, i64** %12, align 8
  %38 = load i32, i32* %10, align 4
  %39 = load i64*, i64** %8, align 8
  %40 = call i64 @keycmp(%struct.btree_geo* %36, i64* %37, i32 %38, i64* %39)
  %41 = icmp sle i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %47

43:                                               ; preds = %35
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %10, align 4
  br label %29

47:                                               ; preds = %42, %29
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.btree_geo*, %struct.btree_geo** %7, align 8
  %50 = getelementptr inbounds %struct.btree_geo, %struct.btree_geo* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %48, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i32, i32* @ENOENT, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %5, align 4
  br label %103

56:                                               ; preds = %47
  %57 = load %struct.btree_geo*, %struct.btree_geo** %7, align 8
  %58 = load i64*, i64** %12, align 8
  %59 = load i32, i32* %10, align 4
  %60 = call i64* @bval(%struct.btree_geo* %57, i64* %58, i32 %59)
  store i64* %60, i64** %12, align 8
  %61 = load i64*, i64** %12, align 8
  %62 = icmp ne i64* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %56
  %64 = load i32, i32* @ENOENT, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %5, align 4
  br label %103

66:                                               ; preds = %56
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %11, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %11, align 4
  br label %25

70:                                               ; preds = %25
  %71 = load i64*, i64** %12, align 8
  %72 = icmp ne i64* %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %70
  %74 = load i32, i32* @ENOENT, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %5, align 4
  br label %103

76:                                               ; preds = %70
  store i32 0, i32* %10, align 4
  br label %77

77:                                               ; preds = %97, %76
  %78 = load i32, i32* %10, align 4
  %79 = load %struct.btree_geo*, %struct.btree_geo** %7, align 8
  %80 = getelementptr inbounds %struct.btree_geo, %struct.btree_geo* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp slt i32 %78, %81
  br i1 %82, label %83, label %100

83:                                               ; preds = %77
  %84 = load %struct.btree_geo*, %struct.btree_geo** %7, align 8
  %85 = load i64*, i64** %12, align 8
  %86 = load i32, i32* %10, align 4
  %87 = load i64*, i64** %8, align 8
  %88 = call i64 @keycmp(%struct.btree_geo* %84, i64* %85, i32 %86, i64* %87)
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %83
  %91 = load %struct.btree_geo*, %struct.btree_geo** %7, align 8
  %92 = load i64*, i64** %12, align 8
  %93 = load i32, i32* %10, align 4
  %94 = load i8*, i8** %9, align 8
  %95 = call i32 @setval(%struct.btree_geo* %91, i64* %92, i32 %93, i8* %94)
  store i32 0, i32* %5, align 4
  br label %103

96:                                               ; preds = %83
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %10, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %10, align 4
  br label %77

100:                                              ; preds = %77
  %101 = load i32, i32* @ENOENT, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %5, align 4
  br label %103

103:                                              ; preds = %100, %90, %73, %63, %53, %21
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local i64 @keycmp(%struct.btree_geo*, i64*, i32, i64*) #1

declare dso_local i64* @bval(%struct.btree_geo*, i64*, i32) #1

declare dso_local i32 @setval(%struct.btree_geo*, i64*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
