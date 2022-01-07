; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_btree.c_xfs_btree_visit_blocks.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_btree.c_xfs_btree_visit_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_btree_cur = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.xfs_btree_cur*, %union.xfs_btree_ptr*)* }
%union.xfs_btree_ptr = type { i32 }
%struct.xfs_btree_block = type { i32 }

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_btree_visit_blocks(%struct.xfs_btree_cur* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfs_btree_cur*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %union.xfs_btree_ptr, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.xfs_btree_block*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %union.xfs_btree_ptr*, align 8
  store %struct.xfs_btree_cur* %0, %struct.xfs_btree_cur** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store %struct.xfs_btree_block* null, %struct.xfs_btree_block** %10, align 8
  store i32 0, i32* %11, align 4
  %13 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %5, align 8
  %14 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (%struct.xfs_btree_cur*, %union.xfs_btree_ptr*)*, i32 (%struct.xfs_btree_cur*, %union.xfs_btree_ptr*)** %16, align 8
  %18 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %5, align 8
  %19 = call i32 %17(%struct.xfs_btree_cur* %18, %union.xfs_btree_ptr* %8)
  %20 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %5, align 8
  %21 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sub nsw i32 %22, 1
  store i32 %23, i32* %9, align 4
  br label %24

24:                                               ; preds = %67, %3
  %25 = load i32, i32* %9, align 4
  %26 = icmp sge i32 %25, 0
  br i1 %26, label %27, label %70

27:                                               ; preds = %24
  %28 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %5, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @xfs_btree_lookup_get_block(%struct.xfs_btree_cur* %28, i32 %29, %union.xfs_btree_ptr* %8, %struct.xfs_btree_block** %10)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* %11, align 4
  store i32 %34, i32* %4, align 4
  br label %71

35:                                               ; preds = %27
  %36 = load i32, i32* %9, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %35
  %39 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %5, align 8
  %40 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %10, align 8
  %41 = call %union.xfs_btree_ptr* @xfs_btree_ptr_addr(%struct.xfs_btree_cur* %39, i32 1, %struct.xfs_btree_block* %40)
  store %union.xfs_btree_ptr* %41, %union.xfs_btree_ptr** %12, align 8
  %42 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %5, align 8
  %43 = load %union.xfs_btree_ptr*, %union.xfs_btree_ptr** %12, align 8
  %44 = call i32 @xfs_btree_readahead_ptr(%struct.xfs_btree_cur* %42, %union.xfs_btree_ptr* %43, i32 1)
  %45 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %5, align 8
  %46 = load %union.xfs_btree_ptr*, %union.xfs_btree_ptr** %12, align 8
  %47 = call i32 @xfs_btree_copy_ptrs(%struct.xfs_btree_cur* %45, %union.xfs_btree_ptr* %8, %union.xfs_btree_ptr* %46, i32 1)
  br label %48

48:                                               ; preds = %38, %35
  br label %49

49:                                               ; preds = %55, %48
  %50 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %5, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load i8*, i8** %7, align 8
  %54 = call i32 @xfs_btree_visit_block(%struct.xfs_btree_cur* %50, i32 %51, i32 %52, i8* %53)
  store i32 %54, i32* %11, align 4
  br label %55

55:                                               ; preds = %49
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  br i1 %58, label %49, label %59

59:                                               ; preds = %55
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* @ENOENT, align 4
  %62 = sub nsw i32 0, %61
  %63 = icmp ne i32 %60, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load i32, i32* %11, align 4
  store i32 %65, i32* %4, align 4
  br label %71

66:                                               ; preds = %59
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %9, align 4
  br label %24

70:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %70, %64, %33
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @xfs_btree_lookup_get_block(%struct.xfs_btree_cur*, i32, %union.xfs_btree_ptr*, %struct.xfs_btree_block**) #1

declare dso_local %union.xfs_btree_ptr* @xfs_btree_ptr_addr(%struct.xfs_btree_cur*, i32, %struct.xfs_btree_block*) #1

declare dso_local i32 @xfs_btree_readahead_ptr(%struct.xfs_btree_cur*, %union.xfs_btree_ptr*, i32) #1

declare dso_local i32 @xfs_btree_copy_ptrs(%struct.xfs_btree_cur*, %union.xfs_btree_ptr*, %union.xfs_btree_ptr*, i32) #1

declare dso_local i32 @xfs_btree_visit_block(%struct.xfs_btree_cur*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
