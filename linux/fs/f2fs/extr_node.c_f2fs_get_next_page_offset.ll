; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_f2fs_get_next_page_offset.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_f2fs_get_next_page_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dnode_of_data = type { i32, i32, i32 }

@NIDS_PER_BLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f2fs_get_next_page_offset(%struct.dnode_of_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dnode_of_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.dnode_of_data* %0, %struct.dnode_of_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.dnode_of_data*, %struct.dnode_of_data** %4, align 8
  %14 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @ADDRS_PER_INODE(i32 %15)
  store i64 %16, i64* %6, align 8
  %17 = load %struct.dnode_of_data*, %struct.dnode_of_data** %4, align 8
  %18 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ADDRS_PER_BLOCK(i32 %19)
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %7, align 8
  %22 = load %struct.dnode_of_data*, %struct.dnode_of_data** %4, align 8
  %23 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ADDRS_PER_BLOCK(i32 %24)
  %26 = load i32, i32* @NIDS_PER_BLOCK, align 4
  %27 = mul i32 %25, %26
  %28 = zext i32 %27 to i64
  store i64 %28, i64* %8, align 8
  %29 = load %struct.dnode_of_data*, %struct.dnode_of_data** %4, align 8
  %30 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ADDRS_PER_BLOCK(i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load %struct.dnode_of_data*, %struct.dnode_of_data** %4, align 8
  %34 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %10, align 4
  %36 = load %struct.dnode_of_data*, %struct.dnode_of_data** %4, align 8
  %37 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %39 = load %struct.dnode_of_data*, %struct.dnode_of_data** %4, align 8
  %40 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %2
  %44 = load i32, i32* %5, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %3, align 4
  br label %97

46:                                               ; preds = %2
  br label %47

47:                                               ; preds = %52, %46
  %48 = load i32, i32* %11, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp sgt i32 %48, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load i32, i32* @NIDS_PER_BLOCK, align 4
  %54 = load i32, i32* %9, align 4
  %55 = mul i32 %54, %53
  store i32 %55, i32* %9, align 4
  br label %47

56:                                               ; preds = %47
  %57 = load %struct.dnode_of_data*, %struct.dnode_of_data** %4, align 8
  %58 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  switch i32 %59, label %80 [
    i32 3, label %60
    i32 2, label %67
    i32 1, label %74
  ]

60:                                               ; preds = %56
  %61 = load i64, i64* %8, align 8
  %62 = mul nsw i64 2, %61
  %63 = load i32, i32* %12, align 4
  %64 = zext i32 %63 to i64
  %65 = add nsw i64 %64, %62
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %12, align 4
  br label %67

67:                                               ; preds = %56, %60
  %68 = load i64, i64* %7, align 8
  %69 = mul nsw i64 2, %68
  %70 = load i32, i32* %12, align 4
  %71 = zext i32 %70 to i64
  %72 = add nsw i64 %71, %69
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %12, align 4
  br label %74

74:                                               ; preds = %56, %67
  %75 = load i64, i64* %6, align 8
  %76 = load i32, i32* %12, align 4
  %77 = zext i32 %76 to i64
  %78 = add nsw i64 %77, %75
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %12, align 4
  br label %86

80:                                               ; preds = %56
  %81 = load %struct.dnode_of_data*, %struct.dnode_of_data** %4, align 8
  %82 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @F2FS_I_SB(i32 %83)
  %85 = call i32 @f2fs_bug_on(i32 %84, i32 1)
  br label %86

86:                                               ; preds = %80, %74
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* %12, align 4
  %89 = sub i32 %87, %88
  %90 = load i32, i32* %9, align 4
  %91 = udiv i32 %89, %90
  %92 = add i32 %91, 1
  %93 = load i32, i32* %9, align 4
  %94 = mul i32 %92, %93
  %95 = load i32, i32* %12, align 4
  %96 = add i32 %94, %95
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %86, %43
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i64 @ADDRS_PER_INODE(i32) #1

declare dso_local i32 @ADDRS_PER_BLOCK(i32) #1

declare dso_local i32 @f2fs_bug_on(i32, i32) #1

declare dso_local i32 @F2FS_I_SB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
