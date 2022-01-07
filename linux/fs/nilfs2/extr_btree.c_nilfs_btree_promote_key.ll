; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_promote_key.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_promote_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_bmap = type { i32 }
%struct.nilfs_btree_path = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nilfs_bmap*, %struct.nilfs_btree_path*, i32, i32)* @nilfs_btree_promote_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nilfs_btree_promote_key(%struct.nilfs_bmap* %0, %struct.nilfs_btree_path* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nilfs_bmap*, align 8
  %6 = alloca %struct.nilfs_btree_path*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nilfs_bmap* %0, %struct.nilfs_bmap** %5, align 8
  store %struct.nilfs_btree_path* %1, %struct.nilfs_btree_path** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %7, align 4
  %10 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %5, align 8
  %11 = call i32 @nilfs_btree_height(%struct.nilfs_bmap* %10)
  %12 = sub nsw i32 %11, 1
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %62

14:                                               ; preds = %4
  br label %15

15:                                               ; preds = %59, %14
  %16 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @nilfs_btree_get_nonroot_node(%struct.nilfs_btree_path* %16, i32 %17)
  %19 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %19, i64 %21
  %23 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @nilfs_btree_node_set_key(i32 %18, i64 %24, i32 %25)
  %27 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %27, i64 %29
  %31 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @buffer_dirty(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %15
  %36 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %36, i64 %38
  %40 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @mark_buffer_dirty(i32 %41)
  br label %43

43:                                               ; preds = %35, %15
  br label %44

44:                                               ; preds = %43
  %45 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %45, i64 %47
  %49 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %44
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  %55 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %5, align 8
  %56 = call i32 @nilfs_btree_height(%struct.nilfs_bmap* %55)
  %57 = sub nsw i32 %56, 1
  %58 = icmp slt i32 %54, %57
  br label %59

59:                                               ; preds = %52, %44
  %60 = phi i1 [ false, %44 ], [ %58, %52 ]
  br i1 %60, label %15, label %61

61:                                               ; preds = %59
  br label %62

62:                                               ; preds = %61, %4
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %5, align 8
  %65 = call i32 @nilfs_btree_height(%struct.nilfs_bmap* %64)
  %66 = sub nsw i32 %65, 1
  %67 = icmp eq i32 %63, %66
  br i1 %67, label %68, label %79

68:                                               ; preds = %62
  %69 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %5, align 8
  %70 = call i32 @nilfs_btree_get_root(%struct.nilfs_bmap* %69)
  %71 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %6, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %71, i64 %73
  %75 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @nilfs_btree_node_set_key(i32 %70, i64 %76, i32 %77)
  br label %79

79:                                               ; preds = %68, %62
  ret void
}

declare dso_local i32 @nilfs_btree_height(%struct.nilfs_bmap*) #1

declare dso_local i32 @nilfs_btree_node_set_key(i32, i64, i32) #1

declare dso_local i32 @nilfs_btree_get_nonroot_node(%struct.nilfs_btree_path*, i32) #1

declare dso_local i32 @buffer_dirty(i32) #1

declare dso_local i32 @mark_buffer_dirty(i32) #1

declare dso_local i32 @nilfs_btree_get_root(%struct.nilfs_bmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
