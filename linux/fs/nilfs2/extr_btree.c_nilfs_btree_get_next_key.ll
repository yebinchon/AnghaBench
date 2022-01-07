; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_get_next_key.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_get_next_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_bmap = type { i32 }
%struct.nilfs_btree_path = type { i32 }
%struct.nilfs_btree_node = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nilfs_bmap*, %struct.nilfs_btree_path*, i32, i32*)* @nilfs_btree_get_next_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_btree_get_next_key(%struct.nilfs_bmap* %0, %struct.nilfs_btree_path* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nilfs_bmap*, align 8
  %7 = alloca %struct.nilfs_btree_path*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.nilfs_btree_node*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.nilfs_bmap* %0, %struct.nilfs_bmap** %6, align 8
  store %struct.nilfs_btree_path* %1, %struct.nilfs_btree_path** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %15 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %6, align 8
  %16 = call i32 @nilfs_btree_height(%struct.nilfs_bmap* %15)
  %17 = sub nsw i32 %16, 1
  store i32 %17, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %14, align 4
  br label %19

19:                                               ; preds = %53, %4
  %20 = load i32, i32* %14, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp sle i32 %20, %21
  br i1 %22, label %23, label %56

23:                                               ; preds = %19
  %24 = load i32, i32* %14, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %6, align 8
  %29 = call %struct.nilfs_btree_node* @nilfs_btree_get_root(%struct.nilfs_bmap* %28)
  store %struct.nilfs_btree_node* %29, %struct.nilfs_btree_node** %10, align 8
  br label %34

30:                                               ; preds = %23
  %31 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %32 = load i32, i32* %14, align 4
  %33 = call %struct.nilfs_btree_node* @nilfs_btree_get_nonroot_node(%struct.nilfs_btree_path* %31, i32 %32)
  store %struct.nilfs_btree_node* %33, %struct.nilfs_btree_node** %10, align 8
  br label %34

34:                                               ; preds = %30, %27
  %35 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %36 = load i32, i32* %14, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %35, i64 %37
  %39 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %13, align 4
  %42 = add nsw i32 %40, %41
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %10, align 8
  %45 = call i32 @nilfs_btree_node_get_nchildren(%struct.nilfs_btree_node* %44)
  %46 = icmp slt i32 %43, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %34
  %48 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %10, align 8
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @nilfs_btree_node_get_key(%struct.nilfs_btree_node* %48, i32 %49)
  %51 = load i32*, i32** %9, align 8
  store i32 %50, i32* %51, align 4
  store i32 0, i32* %5, align 4
  br label %59

52:                                               ; preds = %34
  store i32 1, i32* %13, align 4
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %14, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %14, align 4
  br label %19

56:                                               ; preds = %19
  %57 = load i32, i32* @ENOENT, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %56, %47
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @nilfs_btree_height(%struct.nilfs_bmap*) #1

declare dso_local %struct.nilfs_btree_node* @nilfs_btree_get_root(%struct.nilfs_bmap*) #1

declare dso_local %struct.nilfs_btree_node* @nilfs_btree_get_nonroot_node(%struct.nilfs_btree_path*, i32) #1

declare dso_local i32 @nilfs_btree_node_get_nchildren(%struct.nilfs_btree_node*) #1

declare dso_local i32 @nilfs_btree_node_get_key(%struct.nilfs_btree_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
