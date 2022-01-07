; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_inode.c_udf_evict_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_inode.c_udf_evict_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32, i32, i32, i32, i32 }
%struct.udf_inode_info = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@ICBTAG_FLAG_AD_IN_ICB = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [120 x i8] c"Inode %lu (mode %o) has inode size %llu different from extent length %llu. Filesystem need not be standards compliant.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @udf_evict_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.udf_inode_info*, align 8
  %4 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %2, align 8
  %5 = load %struct.inode*, %struct.inode** %2, align 8
  %6 = call %struct.udf_inode_info* @UDF_I(%struct.inode* %5)
  store %struct.udf_inode_info* %6, %struct.udf_inode_info** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.inode*, %struct.inode** %2, align 8
  %8 = getelementptr inbounds %struct.inode, %struct.inode* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %1
  %12 = load %struct.inode*, %struct.inode** %2, align 8
  %13 = call i32 @is_bad_inode(%struct.inode* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %11
  store i32 1, i32* %4, align 4
  %16 = load %struct.inode*, %struct.inode** %2, align 8
  %17 = call i32 @udf_setsize(%struct.inode* %16, i32 0)
  %18 = load %struct.inode*, %struct.inode** %2, align 8
  %19 = load %struct.inode*, %struct.inode** %2, align 8
  %20 = call i32 @IS_SYNC(%struct.inode* %19)
  %21 = call i32 @udf_update_inode(%struct.inode* %18, i32 %20)
  br label %22

22:                                               ; preds = %15, %11, %1
  %23 = load %struct.inode*, %struct.inode** %2, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 4
  %25 = call i32 @truncate_inode_pages_final(i32* %24)
  %26 = load %struct.inode*, %struct.inode** %2, align 8
  %27 = call i32 @invalidate_inode_buffers(%struct.inode* %26)
  %28 = load %struct.inode*, %struct.inode** %2, align 8
  %29 = call i32 @clear_inode(%struct.inode* %28)
  %30 = load %struct.udf_inode_info*, %struct.udf_inode_info** %3, align 8
  %31 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @ICBTAG_FLAG_AD_IN_ICB, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %60

35:                                               ; preds = %22
  %36 = load %struct.inode*, %struct.inode** %2, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.udf_inode_info*, %struct.udf_inode_info** %3, align 8
  %40 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %38, %41
  br i1 %42, label %43, label %60

43:                                               ; preds = %35
  %44 = load %struct.inode*, %struct.inode** %2, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.inode*, %struct.inode** %2, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.inode*, %struct.inode** %2, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.inode*, %struct.inode** %2, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.udf_inode_info*, %struct.udf_inode_info** %3, align 8
  %57 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @udf_warn(i32 %46, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %52, i64 %55, i64 %58)
  br label %60

60:                                               ; preds = %43, %35, %22
  %61 = load %struct.udf_inode_info*, %struct.udf_inode_info** %3, align 8
  %62 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @kfree(i32* %64)
  %66 = load %struct.udf_inode_info*, %struct.udf_inode_info** %3, align 8
  %67 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  store i32* null, i32** %68, align 8
  %69 = load %struct.inode*, %struct.inode** %2, align 8
  %70 = call i32 @udf_clear_extent_cache(%struct.inode* %69)
  %71 = load i32, i32* %4, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %60
  %74 = load %struct.inode*, %struct.inode** %2, align 8
  %75 = call i32 @udf_free_inode(%struct.inode* %74)
  br label %76

76:                                               ; preds = %73, %60
  ret void
}

declare dso_local %struct.udf_inode_info* @UDF_I(%struct.inode*) #1

declare dso_local i32 @is_bad_inode(%struct.inode*) #1

declare dso_local i32 @udf_setsize(%struct.inode*, i32) #1

declare dso_local i32 @udf_update_inode(%struct.inode*, i32) #1

declare dso_local i32 @IS_SYNC(%struct.inode*) #1

declare dso_local i32 @truncate_inode_pages_final(i32*) #1

declare dso_local i32 @invalidate_inode_buffers(%struct.inode*) #1

declare dso_local i32 @clear_inode(%struct.inode*) #1

declare dso_local i32 @udf_warn(i32, i8*, i32, i32, i64, i64) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @udf_clear_extent_cache(%struct.inode*) #1

declare dso_local i32 @udf_free_inode(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
