; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dir.c_ocfs2_dx_dir_find_leaf_split.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dir.c_ocfs2_dx_dir_find_leaf_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_dx_leaf = type { %struct.ocfs2_dx_entry_list }
%struct.ocfs2_dx_entry_list = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_dx_leaf*, i64, i64, i64*)* @ocfs2_dx_dir_find_leaf_split to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_dx_dir_find_leaf_split(%struct.ocfs2_dx_leaf* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ocfs2_dx_leaf*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.ocfs2_dx_entry_list*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.ocfs2_dx_leaf* %0, %struct.ocfs2_dx_leaf** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %15 = load %struct.ocfs2_dx_leaf*, %struct.ocfs2_dx_leaf** %6, align 8
  %16 = getelementptr inbounds %struct.ocfs2_dx_leaf, %struct.ocfs2_dx_leaf* %15, i32 0, i32 0
  store %struct.ocfs2_dx_entry_list* %16, %struct.ocfs2_dx_entry_list** %10, align 8
  %17 = load %struct.ocfs2_dx_entry_list*, %struct.ocfs2_dx_entry_list** %10, align 8
  %18 = getelementptr inbounds %struct.ocfs2_dx_entry_list, %struct.ocfs2_dx_entry_list* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @le16_to_cpu(i32 %19)
  store i32 %20, i32* %12, align 4
  %21 = load %struct.ocfs2_dx_leaf*, %struct.ocfs2_dx_leaf** %6, align 8
  %22 = call i32 @ocfs2_dx_leaf_same_major(%struct.ocfs2_dx_leaf* %21)
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %57

25:                                               ; preds = %4
  %26 = load %struct.ocfs2_dx_entry_list*, %struct.ocfs2_dx_entry_list** %10, align 8
  %27 = getelementptr inbounds %struct.ocfs2_dx_entry_list, %struct.ocfs2_dx_entry_list* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @le32_to_cpu(i32 %31)
  store i64 %32, i64* %14, align 8
  %33 = load i64, i64* %14, align 8
  %34 = load i64, i64* %8, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %25
  %37 = load i32, i32* @ENOSPC, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %97

39:                                               ; preds = %25
  %40 = load i64, i64* %14, align 8
  %41 = load i64, i64* %7, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i64, i64* %7, align 8
  %45 = add nsw i64 %44, 1
  %46 = load i64*, i64** %9, align 8
  store i64 %45, i64* %46, align 8
  store i32 0, i32* %5, align 4
  br label %97

47:                                               ; preds = %39
  %48 = load i64, i64* %14, align 8
  %49 = load i64, i64* %8, align 8
  %50 = icmp sgt i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i64, i64* %14, align 8
  %53 = load i64*, i64** %9, align 8
  store i64 %52, i64* %53, align 8
  store i32 0, i32* %5, align 4
  br label %97

54:                                               ; preds = %47
  %55 = load i64, i64* %8, align 8
  %56 = load i64*, i64** %9, align 8
  store i64 %55, i64* %56, align 8
  store i32 0, i32* %5, align 4
  br label %97

57:                                               ; preds = %4
  %58 = load i32, i32* %12, align 4
  %59 = sdiv i32 %58, 2
  store i32 %59, i32* %11, align 4
  br label %60

60:                                               ; preds = %78, %57
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %81

64:                                               ; preds = %60
  %65 = load %struct.ocfs2_dx_entry_list*, %struct.ocfs2_dx_entry_list** %10, align 8
  %66 = getelementptr inbounds %struct.ocfs2_dx_entry_list, %struct.ocfs2_dx_entry_list* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @le32_to_cpu(i32 %72)
  %74 = load i64, i64* %7, align 8
  %75 = icmp sgt i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %64
  br label %81

77:                                               ; preds = %64
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %11, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %11, align 4
  br label %60

81:                                               ; preds = %76, %60
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* %12, align 4
  %84 = icmp eq i32 %82, %83
  %85 = zext i1 %84 to i32
  %86 = call i32 @BUG_ON(i32 %85)
  %87 = load %struct.ocfs2_dx_entry_list*, %struct.ocfs2_dx_entry_list** %10, align 8
  %88 = getelementptr inbounds %struct.ocfs2_dx_entry_list, %struct.ocfs2_dx_entry_list* %87, i32 0, i32 0
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = load i32, i32* %11, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i64 @le32_to_cpu(i32 %94)
  %96 = load i64*, i64** %9, align 8
  store i64 %95, i64* %96, align 8
  store i32 0, i32* %5, align 4
  br label %97

97:                                               ; preds = %81, %54, %51, %43, %36
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ocfs2_dx_leaf_same_major(%struct.ocfs2_dx_leaf*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
