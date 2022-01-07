; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_node_move_left.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_node_move_left.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_btree_node = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nilfs_btree_node*, %struct.nilfs_btree_node*, i32, i32, i32)* @nilfs_btree_node_move_left to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nilfs_btree_node_move_left(%struct.nilfs_btree_node* %0, %struct.nilfs_btree_node* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.nilfs_btree_node*, align 8
  %7 = alloca %struct.nilfs_btree_node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.nilfs_btree_node* %0, %struct.nilfs_btree_node** %6, align 8
  store %struct.nilfs_btree_node* %1, %struct.nilfs_btree_node** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %6, align 8
  %18 = call i32* @nilfs_btree_node_dkeys(%struct.nilfs_btree_node* %17)
  store i32* %18, i32** %11, align 8
  %19 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %6, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call i32* @nilfs_btree_node_dptrs(%struct.nilfs_btree_node* %19, i32 %20)
  store i32* %21, i32** %13, align 8
  %22 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %6, align 8
  %23 = call i32 @nilfs_btree_node_get_nchildren(%struct.nilfs_btree_node* %22)
  store i32 %23, i32* %15, align 4
  %24 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %7, align 8
  %25 = call i32* @nilfs_btree_node_dkeys(%struct.nilfs_btree_node* %24)
  store i32* %25, i32** %12, align 8
  %26 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %7, align 8
  %27 = load i32, i32* %10, align 4
  %28 = call i32* @nilfs_btree_node_dptrs(%struct.nilfs_btree_node* %26, i32 %27)
  store i32* %28, i32** %14, align 8
  %29 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %7, align 8
  %30 = call i32 @nilfs_btree_node_get_nchildren(%struct.nilfs_btree_node* %29)
  store i32 %30, i32* %16, align 4
  %31 = load i32*, i32** %11, align 8
  %32 = load i32, i32* %15, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32*, i32** %12, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = mul i64 %37, 4
  %39 = trunc i64 %38 to i32
  %40 = call i32 @memcpy(i32* %34, i32* %35, i32 %39)
  %41 = load i32*, i32** %13, align 8
  %42 = load i32, i32* %15, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32*, i32** %14, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = mul i64 %47, 4
  %49 = trunc i64 %48 to i32
  %50 = call i32 @memcpy(i32* %44, i32* %45, i32 %49)
  %51 = load i32*, i32** %12, align 8
  %52 = load i32*, i32** %12, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %16, align 4
  %57 = load i32, i32* %8, align 4
  %58 = sub nsw i32 %56, %57
  %59 = sext i32 %58 to i64
  %60 = mul i64 %59, 4
  %61 = trunc i64 %60 to i32
  %62 = call i32 @memmove(i32* %51, i32* %55, i32 %61)
  %63 = load i32*, i32** %14, align 8
  %64 = load i32*, i32** %14, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %16, align 4
  %69 = load i32, i32* %8, align 4
  %70 = sub nsw i32 %68, %69
  %71 = sext i32 %70 to i64
  %72 = mul i64 %71, 4
  %73 = trunc i64 %72 to i32
  %74 = call i32 @memmove(i32* %63, i32* %67, i32 %73)
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %15, align 4
  %77 = add nsw i32 %76, %75
  store i32 %77, i32* %15, align 4
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %16, align 4
  %80 = sub nsw i32 %79, %78
  store i32 %80, i32* %16, align 4
  %81 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %6, align 8
  %82 = load i32, i32* %15, align 4
  %83 = call i32 @nilfs_btree_node_set_nchildren(%struct.nilfs_btree_node* %81, i32 %82)
  %84 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %7, align 8
  %85 = load i32, i32* %16, align 4
  %86 = call i32 @nilfs_btree_node_set_nchildren(%struct.nilfs_btree_node* %84, i32 %85)
  ret void
}

declare dso_local i32* @nilfs_btree_node_dkeys(%struct.nilfs_btree_node*) #1

declare dso_local i32* @nilfs_btree_node_dptrs(%struct.nilfs_btree_node*, i32) #1

declare dso_local i32 @nilfs_btree_node_get_nchildren(%struct.nilfs_btree_node*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local i32 @nilfs_btree_node_set_nchildren(%struct.nilfs_btree_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
