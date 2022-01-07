; ModuleID = '/home/carl/AnghaBench/linux/fs/kernfs/extr_dir.c_kernfs_common_ancestor.c'
source_filename = "/home/carl/AnghaBench/linux/fs/kernfs/extr_dir.c_kernfs_common_ancestor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernfs_node = type { %struct.kernfs_node* }
%struct.kernfs_root = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kernfs_node* (%struct.kernfs_node*, %struct.kernfs_node*)* @kernfs_common_ancestor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kernfs_node* @kernfs_common_ancestor(%struct.kernfs_node* %0, %struct.kernfs_node* %1) #0 {
  %3 = alloca %struct.kernfs_node*, align 8
  %4 = alloca %struct.kernfs_node*, align 8
  %5 = alloca %struct.kernfs_node*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.kernfs_root*, align 8
  %9 = alloca %struct.kernfs_root*, align 8
  store %struct.kernfs_node* %0, %struct.kernfs_node** %4, align 8
  store %struct.kernfs_node* %1, %struct.kernfs_node** %5, align 8
  %10 = load %struct.kernfs_node*, %struct.kernfs_node** %4, align 8
  %11 = call %struct.kernfs_root* @kernfs_root(%struct.kernfs_node* %10)
  store %struct.kernfs_root* %11, %struct.kernfs_root** %8, align 8
  %12 = load %struct.kernfs_node*, %struct.kernfs_node** %5, align 8
  %13 = call %struct.kernfs_root* @kernfs_root(%struct.kernfs_node* %12)
  store %struct.kernfs_root* %13, %struct.kernfs_root** %9, align 8
  %14 = load %struct.kernfs_root*, %struct.kernfs_root** %8, align 8
  %15 = load %struct.kernfs_root*, %struct.kernfs_root** %9, align 8
  %16 = icmp ne %struct.kernfs_root* %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store %struct.kernfs_node* null, %struct.kernfs_node** %3, align 8
  br label %64

18:                                               ; preds = %2
  %19 = load %struct.kernfs_root*, %struct.kernfs_root** %8, align 8
  %20 = getelementptr inbounds %struct.kernfs_root, %struct.kernfs_root* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.kernfs_node*, %struct.kernfs_node** %4, align 8
  %23 = call i64 @kernfs_depth(i32 %21, %struct.kernfs_node* %22)
  store i64 %23, i64* %6, align 8
  %24 = load %struct.kernfs_root*, %struct.kernfs_root** %9, align 8
  %25 = getelementptr inbounds %struct.kernfs_root, %struct.kernfs_root* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.kernfs_node*, %struct.kernfs_node** %5, align 8
  %28 = call i64 @kernfs_depth(i32 %26, %struct.kernfs_node* %27)
  store i64 %28, i64* %7, align 8
  br label %29

29:                                               ; preds = %33, %18
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* %7, align 8
  %32 = icmp ugt i64 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load %struct.kernfs_node*, %struct.kernfs_node** %4, align 8
  %35 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %34, i32 0, i32 0
  %36 = load %struct.kernfs_node*, %struct.kernfs_node** %35, align 8
  store %struct.kernfs_node* %36, %struct.kernfs_node** %4, align 8
  %37 = load i64, i64* %6, align 8
  %38 = add i64 %37, -1
  store i64 %38, i64* %6, align 8
  br label %29

39:                                               ; preds = %29
  br label %40

40:                                               ; preds = %44, %39
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* %6, align 8
  %43 = icmp ugt i64 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = load %struct.kernfs_node*, %struct.kernfs_node** %5, align 8
  %46 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %45, i32 0, i32 0
  %47 = load %struct.kernfs_node*, %struct.kernfs_node** %46, align 8
  store %struct.kernfs_node* %47, %struct.kernfs_node** %5, align 8
  %48 = load i64, i64* %7, align 8
  %49 = add i64 %48, -1
  store i64 %49, i64* %7, align 8
  br label %40

50:                                               ; preds = %40
  br label %51

51:                                               ; preds = %55, %50
  %52 = load %struct.kernfs_node*, %struct.kernfs_node** %5, align 8
  %53 = load %struct.kernfs_node*, %struct.kernfs_node** %4, align 8
  %54 = icmp ne %struct.kernfs_node* %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %51
  %56 = load %struct.kernfs_node*, %struct.kernfs_node** %5, align 8
  %57 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %56, i32 0, i32 0
  %58 = load %struct.kernfs_node*, %struct.kernfs_node** %57, align 8
  store %struct.kernfs_node* %58, %struct.kernfs_node** %5, align 8
  %59 = load %struct.kernfs_node*, %struct.kernfs_node** %4, align 8
  %60 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %59, i32 0, i32 0
  %61 = load %struct.kernfs_node*, %struct.kernfs_node** %60, align 8
  store %struct.kernfs_node* %61, %struct.kernfs_node** %4, align 8
  br label %51

62:                                               ; preds = %51
  %63 = load %struct.kernfs_node*, %struct.kernfs_node** %4, align 8
  store %struct.kernfs_node* %63, %struct.kernfs_node** %3, align 8
  br label %64

64:                                               ; preds = %62, %17
  %65 = load %struct.kernfs_node*, %struct.kernfs_node** %3, align 8
  ret %struct.kernfs_node* %65
}

declare dso_local %struct.kernfs_root* @kernfs_root(%struct.kernfs_node*) #1

declare dso_local i64 @kernfs_depth(i32, %struct.kernfs_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
