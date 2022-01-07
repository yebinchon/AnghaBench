; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_inode.c___reiserfs_write_begin.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_inode.c___reiserfs_write_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.reiserfs_transaction_handle* }
%struct.reiserfs_transaction_handle = type { i32, i32 }
%struct.page = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i32 }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@reiserfs_get_block = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__reiserfs_write_begin(%struct.page* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.reiserfs_transaction_handle*, align 8
  %12 = alloca %struct.reiserfs_transaction_handle*, align 8
  %13 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load %struct.page*, %struct.page** %4, align 8
  %15 = getelementptr inbounds %struct.page, %struct.page* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.inode*, %struct.inode** %17, align 8
  store %struct.inode* %18, %struct.inode** %7, align 8
  store i32 0, i32* %9, align 4
  %19 = load %struct.inode*, %struct.inode** %7, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @reiserfs_write_unlock_nested(i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load %struct.inode*, %struct.inode** %7, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @reiserfs_wait_on_write_block(i32 %25)
  %27 = load %struct.inode*, %struct.inode** %7, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @reiserfs_write_lock_nested(i32 %29, i32 %30)
  %32 = load %struct.page*, %struct.page** %4, align 8
  %33 = call i32 @fix_tail_page_for_writing(%struct.page* %32)
  %34 = load %struct.inode*, %struct.inode** %7, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @reiserfs_transaction_running(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %64

39:                                               ; preds = %3
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %41, align 8
  store %struct.reiserfs_transaction_handle* %42, %struct.reiserfs_transaction_handle** %11, align 8
  %43 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %11, align 8
  %44 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i32 @BUG_ON(i32 %48)
  %50 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %11, align 8
  %51 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i32 @BUG_ON(i32 %55)
  %57 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %11, align 8
  %58 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %9, align 4
  %60 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %11, align 8
  %61 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %39, %3
  %65 = load %struct.page*, %struct.page** %4, align 8
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @reiserfs_get_block, align 4
  %69 = call i32 @__block_write_begin(%struct.page* %65, i32 %66, i32 %67, i32 %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %113

72:                                               ; preds = %64
  %73 = load %struct.inode*, %struct.inode** %7, align 8
  %74 = getelementptr inbounds %struct.inode, %struct.inode* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @reiserfs_transaction_running(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %113

78:                                               ; preds = %72
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %80, align 8
  store %struct.reiserfs_transaction_handle* %81, %struct.reiserfs_transaction_handle** %12, align 8
  %82 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %12, align 8
  %83 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp sgt i32 %84, %85
  br i1 %86, label %87, label %112

87:                                               ; preds = %78
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %87
  %91 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %12, align 8
  %92 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %92, align 4
  br label %111

95:                                               ; preds = %87
  %96 = load %struct.inode*, %struct.inode** %7, align 8
  %97 = getelementptr inbounds %struct.inode, %struct.inode* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @reiserfs_write_lock(i32 %98)
  %100 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %12, align 8
  %101 = call i32 @reiserfs_end_persistent_transaction(%struct.reiserfs_transaction_handle* %100)
  store i32 %101, i32* %13, align 4
  %102 = load %struct.inode*, %struct.inode** %7, align 8
  %103 = getelementptr inbounds %struct.inode, %struct.inode* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @reiserfs_write_unlock(i32 %104)
  %106 = load i32, i32* %13, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %95
  %109 = load i32, i32* %13, align 4
  store i32 %109, i32* %8, align 4
  br label %110

110:                                              ; preds = %108, %95
  br label %111

111:                                              ; preds = %110, %90
  br label %112

112:                                              ; preds = %111, %78
  br label %113

113:                                              ; preds = %112, %72, %64
  %114 = load i32, i32* %8, align 4
  ret i32 %114
}

declare dso_local i32 @reiserfs_write_unlock_nested(i32) #1

declare dso_local i32 @reiserfs_wait_on_write_block(i32) #1

declare dso_local i32 @reiserfs_write_lock_nested(i32, i32) #1

declare dso_local i32 @fix_tail_page_for_writing(%struct.page*) #1

declare dso_local i64 @reiserfs_transaction_running(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @__block_write_begin(%struct.page*, i32, i32, i32) #1

declare dso_local i32 @reiserfs_write_lock(i32) #1

declare dso_local i32 @reiserfs_end_persistent_transaction(%struct.reiserfs_transaction_handle*) #1

declare dso_local i32 @reiserfs_write_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
