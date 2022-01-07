; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_super.c_remove_save_link.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_super.c_remove_save_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.reiserfs_transaction_handle = type { i32 }
%struct.reiserfs_key = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@JOURNAL_PER_BALANCE_CNT = common dso_local global i32 0, align 4
@MAX_KEY_OBJECTID = common dso_local global i32 0, align 4
@KEY_FORMAT_3_5 = common dso_local global i32 0, align 4
@TYPE_DIRECT = common dso_local global i32 0, align 4
@TYPE_INDIRECT = common dso_local global i32 0, align 4
@i_link_saved_truncate_mask = common dso_local global i32 0, align 4
@i_link_saved_unlink_mask = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @remove_save_link(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.reiserfs_transaction_handle, align 4
  %7 = alloca %struct.reiserfs_key, align 4
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = load i32, i32* @JOURNAL_PER_BALANCE_CNT, align 4
  %13 = call i32 @journal_begin(%struct.reiserfs_transaction_handle* %6, %struct.TYPE_4__* %11, i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %3, align 4
  br label %96

18:                                               ; preds = %2
  %19 = load i32, i32* @MAX_KEY_OBJECTID, align 4
  %20 = call i32 @cpu_to_le32(i32 %19)
  %21 = getelementptr inbounds %struct.reiserfs_key, %struct.reiserfs_key* %7, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = load %struct.inode*, %struct.inode** %4, align 8
  %23 = call %struct.TYPE_6__* @INODE_PKEY(%struct.inode* %22)
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.reiserfs_key, %struct.reiserfs_key* %7, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %41, label %29

29:                                               ; preds = %18
  %30 = load i32, i32* @KEY_FORMAT_3_5, align 4
  %31 = load %struct.inode*, %struct.inode** %4, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 1, %35
  %37 = call i32 @set_le_key_k_offset(i32 %30, %struct.reiserfs_key* %7, i32 %36)
  %38 = load i32, i32* @KEY_FORMAT_3_5, align 4
  %39 = load i32, i32* @TYPE_DIRECT, align 4
  %40 = call i32 @set_le_key_k_type(i32 %38, %struct.reiserfs_key* %7, i32 %39)
  br label %47

41:                                               ; preds = %18
  %42 = load i32, i32* @KEY_FORMAT_3_5, align 4
  %43 = call i32 @set_le_key_k_offset(i32 %42, %struct.reiserfs_key* %7, i32 1)
  %44 = load i32, i32* @KEY_FORMAT_3_5, align 4
  %45 = load i32, i32* @TYPE_INDIRECT, align 4
  %46 = call i32 @set_le_key_k_type(i32 %44, %struct.reiserfs_key* %7, i32 %45)
  br label %47

47:                                               ; preds = %41, %29
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %47
  %51 = load %struct.inode*, %struct.inode** %4, align 8
  %52 = call %struct.TYPE_5__* @REISERFS_I(%struct.inode* %51)
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @i_link_saved_truncate_mask, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %69, label %58

58:                                               ; preds = %50, %47
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %71, label %61

61:                                               ; preds = %58
  %62 = load %struct.inode*, %struct.inode** %4, align 8
  %63 = call %struct.TYPE_5__* @REISERFS_I(%struct.inode* %62)
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @i_link_saved_unlink_mask, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %61, %50
  %70 = call i32 @reiserfs_delete_solid_item(%struct.reiserfs_transaction_handle* %6, i32* null, %struct.reiserfs_key* %7)
  br label %71

71:                                               ; preds = %69, %61, %58
  %72 = load i32, i32* %5, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %86, label %74

74:                                               ; preds = %71
  %75 = load %struct.inode*, %struct.inode** %4, align 8
  %76 = getelementptr inbounds %struct.inode, %struct.inode* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @reiserfs_release_objectid(%struct.reiserfs_transaction_handle* %6, i32 %77)
  %79 = load i32, i32* @i_link_saved_unlink_mask, align 4
  %80 = xor i32 %79, -1
  %81 = load %struct.inode*, %struct.inode** %4, align 8
  %82 = call %struct.TYPE_5__* @REISERFS_I(%struct.inode* %81)
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %84, %80
  store i32 %85, i32* %83, align 4
  br label %94

86:                                               ; preds = %71
  %87 = load i32, i32* @i_link_saved_truncate_mask, align 4
  %88 = xor i32 %87, -1
  %89 = load %struct.inode*, %struct.inode** %4, align 8
  %90 = call %struct.TYPE_5__* @REISERFS_I(%struct.inode* %89)
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %92, %88
  store i32 %93, i32* %91, align 4
  br label %94

94:                                               ; preds = %86, %74
  %95 = call i32 @journal_end(%struct.reiserfs_transaction_handle* %6)
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %94, %16
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @journal_begin(%struct.reiserfs_transaction_handle*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local %struct.TYPE_6__* @INODE_PKEY(%struct.inode*) #1

declare dso_local i32 @set_le_key_k_offset(i32, %struct.reiserfs_key*, i32) #1

declare dso_local i32 @set_le_key_k_type(i32, %struct.reiserfs_key*, i32) #1

declare dso_local %struct.TYPE_5__* @REISERFS_I(%struct.inode*) #1

declare dso_local i32 @reiserfs_delete_solid_item(%struct.reiserfs_transaction_handle*, i32*, %struct.reiserfs_key*) #1

declare dso_local i32 @reiserfs_release_objectid(%struct.reiserfs_transaction_handle*, i32) #1

declare dso_local i32 @journal_end(%struct.reiserfs_transaction_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
