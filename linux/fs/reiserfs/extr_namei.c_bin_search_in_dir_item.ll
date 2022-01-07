; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_namei.c_bin_search_in_dir_item.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_namei.c_bin_search_in_dir_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reiserfs_dir_entry = type { i32, %struct.reiserfs_de_head*, %struct.item_head* }
%struct.reiserfs_de_head = type { i32 }
%struct.item_head = type { i32 }

@NAME_FOUND = common dso_local global i32 0, align 4
@NAME_NOT_FOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.reiserfs_dir_entry*, i64)* @bin_search_in_dir_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bin_search_in_dir_item(%struct.reiserfs_dir_entry* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.reiserfs_dir_entry*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.item_head*, align 8
  %7 = alloca %struct.reiserfs_de_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.reiserfs_dir_entry* %0, %struct.reiserfs_dir_entry** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.reiserfs_dir_entry*, %struct.reiserfs_dir_entry** %4, align 8
  %12 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %11, i32 0, i32 2
  %13 = load %struct.item_head*, %struct.item_head** %12, align 8
  store %struct.item_head* %13, %struct.item_head** %6, align 8
  %14 = load %struct.reiserfs_dir_entry*, %struct.reiserfs_dir_entry** %4, align 8
  %15 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %14, i32 0, i32 1
  %16 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %15, align 8
  store %struct.reiserfs_de_head* %16, %struct.reiserfs_de_head** %7, align 8
  store i32 0, i32* %9, align 4
  %17 = load %struct.item_head*, %struct.item_head** %6, align 8
  %18 = call i32 @ih_entry_count(%struct.item_head* %17)
  %19 = sub nsw i32 %18, 1
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %9, align 4
  %22 = add nsw i32 %20, %21
  %23 = sdiv i32 %22, 2
  store i32 %23, i32* %10, align 4
  br label %24

24:                                               ; preds = %55, %2
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp sle i32 %25, %26
  br i1 %27, label %28, label %60

28:                                               ; preds = %24
  %29 = load i64, i64* %5, align 8
  %30 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %7, align 8
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.reiserfs_de_head, %struct.reiserfs_de_head* %30, i64 %32
  %34 = call i64 @deh_offset(%struct.reiserfs_de_head* %33)
  %35 = icmp slt i64 %29, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = load i32, i32* %10, align 4
  %38 = sub nsw i32 %37, 1
  store i32 %38, i32* %8, align 4
  br label %55

39:                                               ; preds = %28
  %40 = load i64, i64* %5, align 8
  %41 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %7, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.reiserfs_de_head, %struct.reiserfs_de_head* %41, i64 %43
  %45 = call i64 @deh_offset(%struct.reiserfs_de_head* %44)
  %46 = icmp sgt i64 %40, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %9, align 4
  br label %55

50:                                               ; preds = %39
  %51 = load i32, i32* %10, align 4
  %52 = load %struct.reiserfs_dir_entry*, %struct.reiserfs_dir_entry** %4, align 8
  %53 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* @NAME_FOUND, align 4
  store i32 %54, i32* %3, align 4
  br label %65

55:                                               ; preds = %47, %36
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %56, %57
  %59 = sdiv i32 %58, 2
  store i32 %59, i32* %10, align 4
  br label %24

60:                                               ; preds = %24
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.reiserfs_dir_entry*, %struct.reiserfs_dir_entry** %4, align 8
  %63 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* @NAME_NOT_FOUND, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %60, %50
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @ih_entry_count(%struct.item_head*) #1

declare dso_local i64 @deh_offset(%struct.reiserfs_de_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
