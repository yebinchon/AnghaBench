; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_node_delete.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_node_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_btree_node = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nilfs_btree_node*, i32, i32*, i32*, i32)* @nilfs_btree_node_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nilfs_btree_node_delete(%struct.nilfs_btree_node* %0, i32 %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.nilfs_btree_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.nilfs_btree_node* %0, %struct.nilfs_btree_node** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %16 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %6, align 8
  %17 = call i32* @nilfs_btree_node_dkeys(%struct.nilfs_btree_node* %16)
  store i32* %17, i32** %13, align 8
  %18 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %6, align 8
  %19 = load i32, i32* %10, align 4
  %20 = call i32* @nilfs_btree_node_dptrs(%struct.nilfs_btree_node* %18, i32 %19)
  store i32* %20, i32** %14, align 8
  %21 = load i32*, i32** %13, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @le64_to_cpu(i32 %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32*, i32** %14, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @le64_to_cpu(i32 %31)
  store i32 %32, i32* %12, align 4
  %33 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %6, align 8
  %34 = call i32 @nilfs_btree_node_get_nchildren(%struct.nilfs_btree_node* %33)
  store i32 %34, i32* %15, align 4
  %35 = load i32*, i32** %8, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %5
  %38 = load i32, i32* %11, align 4
  %39 = load i32*, i32** %8, align 8
  store i32 %38, i32* %39, align 4
  br label %40

40:                                               ; preds = %37, %5
  %41 = load i32*, i32** %9, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i32, i32* %12, align 4
  %45 = load i32*, i32** %9, align 8
  store i32 %44, i32* %45, align 4
  br label %46

46:                                               ; preds = %43, %40
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %15, align 4
  %49 = sub nsw i32 %48, 1
  %50 = icmp slt i32 %47, %49
  br i1 %50, label %51, label %86

51:                                               ; preds = %46
  %52 = load i32*, i32** %13, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32*, i32** %13, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = load i32, i32* %15, align 4
  %62 = load i32, i32* %7, align 4
  %63 = sub nsw i32 %61, %62
  %64 = sub nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = mul i64 %65, 4
  %67 = trunc i64 %66 to i32
  %68 = call i32 @memmove(i32* %55, i32* %60, i32 %67)
  %69 = load i32*, i32** %14, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32*, i32** %14, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  %78 = load i32, i32* %15, align 4
  %79 = load i32, i32* %7, align 4
  %80 = sub nsw i32 %78, %79
  %81 = sub nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = mul i64 %82, 4
  %84 = trunc i64 %83 to i32
  %85 = call i32 @memmove(i32* %72, i32* %77, i32 %84)
  br label %86

86:                                               ; preds = %51, %46
  %87 = load i32, i32* %15, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %15, align 4
  %89 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %6, align 8
  %90 = load i32, i32* %15, align 4
  %91 = call i32 @nilfs_btree_node_set_nchildren(%struct.nilfs_btree_node* %89, i32 %90)
  ret void
}

declare dso_local i32* @nilfs_btree_node_dkeys(%struct.nilfs_btree_node*) #1

declare dso_local i32* @nilfs_btree_node_dptrs(%struct.nilfs_btree_node*, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @nilfs_btree_node_get_nchildren(%struct.nilfs_btree_node*) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local i32 @nilfs_btree_node_set_nchildren(%struct.nilfs_btree_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
