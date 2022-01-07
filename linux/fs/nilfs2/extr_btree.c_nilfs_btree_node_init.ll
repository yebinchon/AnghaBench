; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_node_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_node_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_btree_node = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nilfs_btree_node*, i32, i32, i32, i32, i32*, i32*)* @nilfs_btree_node_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nilfs_btree_node_init(%struct.nilfs_btree_node* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.nilfs_btree_node*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store %struct.nilfs_btree_node* %0, %struct.nilfs_btree_node** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %18 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %8, align 8
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @nilfs_btree_node_set_flags(%struct.nilfs_btree_node* %18, i32 %19)
  %21 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %8, align 8
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @nilfs_btree_node_set_level(%struct.nilfs_btree_node* %21, i32 %22)
  %24 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %8, align 8
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @nilfs_btree_node_set_nchildren(%struct.nilfs_btree_node* %24, i32 %25)
  %27 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %8, align 8
  %28 = call i32* @nilfs_btree_node_dkeys(%struct.nilfs_btree_node* %27)
  store i32* %28, i32** %15, align 8
  %29 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %8, align 8
  %30 = load i32, i32* %12, align 4
  %31 = call i32* @nilfs_btree_node_dptrs(%struct.nilfs_btree_node* %29, i32 %30)
  store i32* %31, i32** %16, align 8
  store i32 0, i32* %17, align 4
  br label %32

32:                                               ; preds = %57, %7
  %33 = load i32, i32* %17, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %60

36:                                               ; preds = %32
  %37 = load i32*, i32** %13, align 8
  %38 = load i32, i32* %17, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @cpu_to_le64(i32 %41)
  %43 = load i32*, i32** %15, align 8
  %44 = load i32, i32* %17, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32 %42, i32* %46, align 4
  %47 = load i32*, i32** %14, align 8
  %48 = load i32, i32* %17, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @cpu_to_le64(i32 %51)
  %53 = load i32*, i32** %16, align 8
  %54 = load i32, i32* %17, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32 %52, i32* %56, align 4
  br label %57

57:                                               ; preds = %36
  %58 = load i32, i32* %17, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %17, align 4
  br label %32

60:                                               ; preds = %32
  ret void
}

declare dso_local i32 @nilfs_btree_node_set_flags(%struct.nilfs_btree_node*, i32) #1

declare dso_local i32 @nilfs_btree_node_set_level(%struct.nilfs_btree_node*, i32) #1

declare dso_local i32 @nilfs_btree_node_set_nchildren(%struct.nilfs_btree_node*, i32) #1

declare dso_local i32* @nilfs_btree_node_dkeys(%struct.nilfs_btree_node*) #1

declare dso_local i32* @nilfs_btree_node_dptrs(%struct.nilfs_btree_node*, i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
