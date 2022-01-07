; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_btnode.c_nilfs_btnode_prepare_change_key.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_btnode.c_nilfs_btnode_prepare_change_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i32 }
%struct.nilfs_btnode_chkey_ctxt = type { i64, i64, %struct.buffer_head*, %struct.buffer_head* }
%struct.buffer_head = type { %struct.page* }
%struct.page = type { i64 }
%struct.inode = type { i64 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"invalid oldkey %lld (newkey=%lld)\00", align 1
@GFP_NOFS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_btnode_prepare_change_key(%struct.address_space* %0, %struct.nilfs_btnode_chkey_ctxt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.address_space*, align 8
  %5 = alloca %struct.nilfs_btnode_chkey_ctxt*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.page*, align 8
  store %struct.address_space* %0, %struct.address_space** %4, align 8
  store %struct.nilfs_btnode_chkey_ctxt* %1, %struct.nilfs_btnode_chkey_ctxt** %5, align 8
  %13 = load %struct.address_space*, %struct.address_space** %4, align 8
  %14 = call %struct.inode* @NILFS_BTNC_I(%struct.address_space* %13)
  store %struct.inode* %14, %struct.inode** %8, align 8
  %15 = load %struct.nilfs_btnode_chkey_ctxt*, %struct.nilfs_btnode_chkey_ctxt** %5, align 8
  %16 = getelementptr inbounds %struct.nilfs_btnode_chkey_ctxt, %struct.nilfs_btnode_chkey_ctxt* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %9, align 8
  %18 = load %struct.nilfs_btnode_chkey_ctxt*, %struct.nilfs_btnode_chkey_ctxt** %5, align 8
  %19 = getelementptr inbounds %struct.nilfs_btnode_chkey_ctxt, %struct.nilfs_btnode_chkey_ctxt* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %10, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* %10, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %114

25:                                               ; preds = %2
  %26 = load %struct.nilfs_btnode_chkey_ctxt*, %struct.nilfs_btnode_chkey_ctxt** %5, align 8
  %27 = getelementptr inbounds %struct.nilfs_btnode_chkey_ctxt, %struct.nilfs_btnode_chkey_ctxt* %26, i32 0, i32 3
  %28 = load %struct.buffer_head*, %struct.buffer_head** %27, align 8
  store %struct.buffer_head* %28, %struct.buffer_head** %6, align 8
  %29 = load %struct.nilfs_btnode_chkey_ctxt*, %struct.nilfs_btnode_chkey_ctxt** %5, align 8
  %30 = getelementptr inbounds %struct.nilfs_btnode_chkey_ctxt, %struct.nilfs_btnode_chkey_ctxt* %29, i32 0, i32 2
  store %struct.buffer_head* null, %struct.buffer_head** %30, align 8
  %31 = load %struct.inode*, %struct.inode** %8, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @PAGE_SHIFT, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %90

36:                                               ; preds = %25
  %37 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %38 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %37, i32 0, i32 0
  %39 = load %struct.page*, %struct.page** %38, align 8
  store %struct.page* %39, %struct.page** %12, align 8
  %40 = load %struct.page*, %struct.page** %12, align 8
  %41 = call i32 @lock_page(%struct.page* %40)
  br label %42

42:                                               ; preds = %86, %36
  %43 = load i64, i64* %9, align 8
  %44 = load %struct.page*, %struct.page** %12, align 8
  %45 = getelementptr inbounds %struct.page, %struct.page* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %43, %46
  %48 = zext i1 %47 to i32
  %49 = call i64 @unlikely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %42
  %52 = load %struct.page*, %struct.page** %12, align 8
  %53 = load i64, i64* %9, align 8
  %54 = load i64, i64* %10, align 8
  %55 = call i32 @NILFS_PAGE_BUG(%struct.page* %52, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %53, i64 %54)
  br label %56

56:                                               ; preds = %51, %42
  %57 = load %struct.address_space*, %struct.address_space** %4, align 8
  %58 = getelementptr inbounds %struct.address_space, %struct.address_space* %57, i32 0, i32 0
  %59 = call i32 @xa_lock_irq(i32* %58)
  %60 = load %struct.address_space*, %struct.address_space** %4, align 8
  %61 = getelementptr inbounds %struct.address_space, %struct.address_space* %60, i32 0, i32 0
  %62 = load i64, i64* %10, align 8
  %63 = load %struct.page*, %struct.page** %12, align 8
  %64 = load i32, i32* @GFP_NOFS, align 4
  %65 = call i32 @__xa_insert(i32* %61, i64 %62, %struct.page* %63, i32 %64)
  store i32 %65, i32* %11, align 4
  %66 = load %struct.address_space*, %struct.address_space** %4, align 8
  %67 = getelementptr inbounds %struct.address_space, %struct.address_space* %66, i32 0, i32 0
  %68 = call i32 @xa_unlock_irq(i32* %67)
  %69 = load i32, i32* %11, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  br label %114

72:                                               ; preds = %56
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* @EBUSY, align 4
  %75 = sub nsw i32 0, %74
  %76 = icmp ne i32 %73, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %108

78:                                               ; preds = %72
  br label %79

79:                                               ; preds = %78
  %80 = load %struct.address_space*, %struct.address_space** %4, align 8
  %81 = load i64, i64* %10, align 8
  %82 = load i64, i64* %10, align 8
  %83 = call i32 @invalidate_inode_pages2_range(%struct.address_space* %80, i64 %81, i64 %82)
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %11, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %79
  br label %42

87:                                               ; preds = %79
  %88 = load %struct.page*, %struct.page** %12, align 8
  %89 = call i32 @unlock_page(%struct.page* %88)
  br label %90

90:                                               ; preds = %87, %25
  %91 = load %struct.address_space*, %struct.address_space** %4, align 8
  %92 = load i64, i64* %10, align 8
  %93 = call %struct.buffer_head* @nilfs_btnode_create_block(%struct.address_space* %91, i64 %92)
  store %struct.buffer_head* %93, %struct.buffer_head** %7, align 8
  %94 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %95 = icmp ne %struct.buffer_head* %94, null
  br i1 %95, label %99, label %96

96:                                               ; preds = %90
  %97 = load i32, i32* @ENOMEM, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %3, align 4
  br label %114

99:                                               ; preds = %90
  %100 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %101 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %102 = icmp eq %struct.buffer_head* %100, %101
  %103 = zext i1 %102 to i32
  %104 = call i32 @BUG_ON(i32 %103)
  %105 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %106 = load %struct.nilfs_btnode_chkey_ctxt*, %struct.nilfs_btnode_chkey_ctxt** %5, align 8
  %107 = getelementptr inbounds %struct.nilfs_btnode_chkey_ctxt, %struct.nilfs_btnode_chkey_ctxt* %106, i32 0, i32 2
  store %struct.buffer_head* %105, %struct.buffer_head** %107, align 8
  store i32 0, i32* %3, align 4
  br label %114

108:                                              ; preds = %77
  %109 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %110 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %109, i32 0, i32 0
  %111 = load %struct.page*, %struct.page** %110, align 8
  %112 = call i32 @unlock_page(%struct.page* %111)
  %113 = load i32, i32* %11, align 4
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %108, %99, %96, %71, %24
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local %struct.inode* @NILFS_BTNC_I(%struct.address_space*) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @NILFS_PAGE_BUG(%struct.page*, i8*, i64, i64) #1

declare dso_local i32 @xa_lock_irq(i32*) #1

declare dso_local i32 @__xa_insert(i32*, i64, %struct.page*, i32) #1

declare dso_local i32 @xa_unlock_irq(i32*) #1

declare dso_local i32 @invalidate_inode_pages2_range(%struct.address_space*, i64, i64) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local %struct.buffer_head* @nilfs_btnode_create_block(%struct.address_space*, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
