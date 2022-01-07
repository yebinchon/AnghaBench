; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_stree.c_prepare_for_direntry_item.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_stree.c_prepare_for_direntry_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.treepath = type { i32 }
%struct.item_head = type { i32 }
%struct.inode = type { i32 }

@DOT_OFFSET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"PAP-5220: incorrect empty directory item (%h)\00", align 1
@IH_SIZE = common dso_local global i32 0, align 4
@M_DELETE = common dso_local global i32 0, align 4
@DEH_SIZE = common dso_local global i32 0, align 4
@M_CUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.treepath*, %struct.item_head*, %struct.inode*, i64, i32*)* @prepare_for_direntry_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prepare_for_direntry_item(%struct.treepath* %0, %struct.item_head* %1, %struct.inode* %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.treepath*, align 8
  %8 = alloca %struct.item_head*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  store %struct.treepath* %0, %struct.treepath** %7, align 8
  store %struct.item_head* %1, %struct.item_head** %8, align 8
  store %struct.inode* %2, %struct.inode** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %12 = load %struct.item_head*, %struct.item_head** %8, align 8
  %13 = call i64 @le_ih_k_offset(%struct.item_head* %12)
  %14 = load i64, i64* @DOT_OFFSET, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %35

16:                                               ; preds = %5
  %17 = load i64, i64* %10, align 8
  %18 = load %struct.inode*, %struct.inode** %9, align 8
  %19 = call i64 @max_reiserfs_offset(%struct.inode* %18)
  %20 = icmp eq i64 %17, %19
  br i1 %20, label %21, label %35

21:                                               ; preds = %16
  %22 = load %struct.item_head*, %struct.item_head** %8, align 8
  %23 = call i32 @ih_entry_count(%struct.item_head* %22)
  %24 = icmp ne i32 %23, 2
  %25 = zext i1 %24 to i32
  %26 = load %struct.item_head*, %struct.item_head** %8, align 8
  %27 = call i32 @RFALSE(i32 %25, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), %struct.item_head* %26)
  %28 = load i32, i32* @IH_SIZE, align 4
  %29 = load %struct.item_head*, %struct.item_head** %8, align 8
  %30 = call i32 @ih_item_len(%struct.item_head* %29)
  %31 = add nsw i32 %28, %30
  %32 = sub nsw i32 0, %31
  %33 = load i32*, i32** %11, align 8
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* @M_DELETE, align 4
  store i32 %34, i32* %6, align 4
  br label %59

35:                                               ; preds = %16, %5
  %36 = load %struct.item_head*, %struct.item_head** %8, align 8
  %37 = call i32 @ih_entry_count(%struct.item_head* %36)
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %47

39:                                               ; preds = %35
  %40 = load i32, i32* @IH_SIZE, align 4
  %41 = load %struct.item_head*, %struct.item_head** %8, align 8
  %42 = call i32 @ih_item_len(%struct.item_head* %41)
  %43 = add nsw i32 %40, %42
  %44 = sub nsw i32 0, %43
  %45 = load i32*, i32** %11, align 8
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* @M_DELETE, align 4
  store i32 %46, i32* %6, align 4
  br label %59

47:                                               ; preds = %35
  %48 = load i32, i32* @DEH_SIZE, align 4
  %49 = load %struct.treepath*, %struct.treepath** %7, align 8
  %50 = call i32 @get_last_bh(%struct.treepath* %49)
  %51 = load %struct.item_head*, %struct.item_head** %8, align 8
  %52 = load %struct.treepath*, %struct.treepath** %7, align 8
  %53 = call i32 @pos_in_item(%struct.treepath* %52)
  %54 = call i32 @entry_length(i32 %50, %struct.item_head* %51, i32 %53)
  %55 = add nsw i32 %48, %54
  %56 = sub nsw i32 0, %55
  %57 = load i32*, i32** %11, align 8
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* @M_CUT, align 4
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %47, %39, %21
  %60 = load i32, i32* %6, align 4
  ret i32 %60
}

declare dso_local i64 @le_ih_k_offset(%struct.item_head*) #1

declare dso_local i64 @max_reiserfs_offset(%struct.inode*) #1

declare dso_local i32 @RFALSE(i32, i8*, %struct.item_head*) #1

declare dso_local i32 @ih_entry_count(%struct.item_head*) #1

declare dso_local i32 @ih_item_len(%struct.item_head*) #1

declare dso_local i32 @entry_length(i32, %struct.item_head*, i32) #1

declare dso_local i32 @get_last_bh(%struct.treepath*) #1

declare dso_local i32 @pos_in_item(%struct.treepath*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
