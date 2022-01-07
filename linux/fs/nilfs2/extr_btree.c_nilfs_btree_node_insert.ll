; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_node_insert.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_node_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_btree_node = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nilfs_btree_node*, i32, i32, i32, i32)* @nilfs_btree_node_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nilfs_btree_node_insert(%struct.nilfs_btree_node* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.nilfs_btree_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.nilfs_btree_node* %0, %struct.nilfs_btree_node** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %6, align 8
  %15 = call i32* @nilfs_btree_node_dkeys(%struct.nilfs_btree_node* %14)
  store i32* %15, i32** %11, align 8
  %16 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %6, align 8
  %17 = load i32, i32* %10, align 4
  %18 = call i32* @nilfs_btree_node_dptrs(%struct.nilfs_btree_node* %16, i32 %17)
  store i32* %18, i32** %12, align 8
  %19 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %6, align 8
  %20 = call i32 @nilfs_btree_node_get_nchildren(%struct.nilfs_btree_node* %19)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %13, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %57

24:                                               ; preds = %5
  %25 = load i32*, i32** %11, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32*, i32** %11, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* %7, align 4
  %36 = sub nsw i32 %34, %35
  %37 = sext i32 %36 to i64
  %38 = mul i64 %37, 4
  %39 = trunc i64 %38 to i32
  %40 = call i32 @memmove(i32* %29, i32* %33, i32 %39)
  %41 = load i32*, i32** %12, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load i32*, i32** %12, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* %7, align 4
  %52 = sub nsw i32 %50, %51
  %53 = sext i32 %52 to i64
  %54 = mul i64 %53, 4
  %55 = trunc i64 %54 to i32
  %56 = call i32 @memmove(i32* %45, i32* %49, i32 %55)
  br label %57

57:                                               ; preds = %24, %5
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @cpu_to_le64(i32 %58)
  %60 = load i32*, i32** %11, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32 %59, i32* %63, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @cpu_to_le64(i32 %64)
  %66 = load i32*, i32** %12, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 %65, i32* %69, align 4
  %70 = load i32, i32* %13, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %13, align 4
  %72 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %6, align 8
  %73 = load i32, i32* %13, align 4
  %74 = call i32 @nilfs_btree_node_set_nchildren(%struct.nilfs_btree_node* %72, i32 %73)
  ret void
}

declare dso_local i32* @nilfs_btree_node_dkeys(%struct.nilfs_btree_node*) #1

declare dso_local i32* @nilfs_btree_node_dptrs(%struct.nilfs_btree_node*, i32) #1

declare dso_local i32 @nilfs_btree_node_get_nchildren(%struct.nilfs_btree_node*) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @nilfs_btree_node_set_nchildren(%struct.nilfs_btree_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
