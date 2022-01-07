; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_inode.c_reiserfs_truncate_file.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_inode.c_reiserfs_truncate_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.reiserfs_transaction_handle = type { i32 }
%struct.page = type { i32 }
%struct.buffer_head = type { i64 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"clm-6001\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"grab_tail_page failed %d\00", align 1
@JOURNAL_PER_BALANCE_CNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reiserfs_truncate_file(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.reiserfs_transaction_handle, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.page*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @PAGE_SIZE, align 4
  %18 = sub nsw i32 %17, 1
  %19 = and i32 %16, %18
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %7, align 8
  %21 = load %struct.inode*, %struct.inode** %4, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 1
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %8, align 4
  store %struct.page* null, %struct.page** %10, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %12, align 8
  %26 = load %struct.inode*, %struct.inode** %4, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 1
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = call i32 @reiserfs_write_lock(%struct.TYPE_5__* %28)
  %30 = load %struct.inode*, %struct.inode** %4, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %52

34:                                               ; preds = %2
  %35 = load %struct.inode*, %struct.inode** %4, align 8
  %36 = call i32 @grab_tail_page(%struct.inode* %35, %struct.page** %10, %struct.buffer_head** %12)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %34
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* @ENOENT, align 4
  %42 = sub nsw i32 0, %41
  %43 = icmp ne i32 %40, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load %struct.inode*, %struct.inode** %4, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 1
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @reiserfs_error(%struct.TYPE_5__* %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %44, %39
  store %struct.page* null, %struct.page** %10, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %12, align 8
  br label %51

51:                                               ; preds = %50, %34
  br label %52

52:                                               ; preds = %51, %2
  %53 = load %struct.inode*, %struct.inode** %4, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 1
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = load i32, i32* @JOURNAL_PER_BALANCE_CNT, align 4
  %57 = mul nsw i32 %56, 2
  %58 = add nsw i32 %57, 1
  %59 = call i32 @journal_begin(%struct.reiserfs_transaction_handle* %6, %struct.TYPE_5__* %55, i32 %58)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %52
  br label %137

63:                                               ; preds = %52
  %64 = load %struct.inode*, %struct.inode** %4, align 8
  %65 = call i32 @reiserfs_update_inode_transaction(%struct.inode* %64)
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load %struct.inode*, %struct.inode** %4, align 8
  %70 = call i32 @add_save_link(%struct.reiserfs_transaction_handle* %6, %struct.inode* %69, i32 1)
  br label %71

71:                                               ; preds = %68, %63
  %72 = load %struct.inode*, %struct.inode** %4, align 8
  %73 = load %struct.page*, %struct.page** %10, align 8
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @reiserfs_do_truncate(%struct.reiserfs_transaction_handle* %6, %struct.inode* %72, %struct.page* %73, i32 %74)
  store i32 %75, i32* %13, align 4
  %76 = call i32 @journal_end(%struct.reiserfs_transaction_handle* %6)
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %11, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  br label %137

80:                                               ; preds = %71
  %81 = load i32, i32* %13, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = load i32, i32* %13, align 4
  store i32 %84, i32* %11, align 4
  br label %137

85:                                               ; preds = %80
  %86 = load i32, i32* %5, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %85
  %89 = load %struct.inode*, %struct.inode** %4, align 8
  %90 = call i32 @remove_save_link(%struct.inode* %89, i32 1)
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %11, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  br label %137

94:                                               ; preds = %88
  br label %95

95:                                               ; preds = %94, %85
  %96 = load %struct.page*, %struct.page** %10, align 8
  %97 = icmp ne %struct.page* %96, null
  br i1 %97, label %98, label %132

98:                                               ; preds = %95
  %99 = load i64, i64* %7, align 8
  %100 = load i32, i32* %8, align 4
  %101 = sub i32 %100, 1
  %102 = zext i32 %101 to i64
  %103 = and i64 %99, %102
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %9, align 4
  %105 = load i32, i32* %9, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %127

107:                                              ; preds = %98
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* %9, align 4
  %110 = sub i32 %108, %109
  store i32 %110, i32* %9, align 4
  %111 = load %struct.page*, %struct.page** %10, align 8
  %112 = load i64, i64* %7, align 8
  %113 = load i32, i32* %9, align 4
  %114 = call i32 @zero_user(%struct.page* %111, i64 %112, i32 %113)
  %115 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %116 = call i64 @buffer_mapped(%struct.buffer_head* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %126

118:                                              ; preds = %107
  %119 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %120 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %118
  %124 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %125 = call i32 @mark_buffer_dirty(%struct.buffer_head* %124)
  br label %126

126:                                              ; preds = %123, %118, %107
  br label %127

127:                                              ; preds = %126, %98
  %128 = load %struct.page*, %struct.page** %10, align 8
  %129 = call i32 @unlock_page(%struct.page* %128)
  %130 = load %struct.page*, %struct.page** %10, align 8
  %131 = call i32 @put_page(%struct.page* %130)
  br label %132

132:                                              ; preds = %127, %95
  %133 = load %struct.inode*, %struct.inode** %4, align 8
  %134 = getelementptr inbounds %struct.inode, %struct.inode* %133, i32 0, i32 1
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %134, align 8
  %136 = call i32 @reiserfs_write_unlock(%struct.TYPE_5__* %135)
  store i32 0, i32* %3, align 4
  br label %151

137:                                              ; preds = %93, %83, %79, %62
  %138 = load %struct.page*, %struct.page** %10, align 8
  %139 = icmp ne %struct.page* %138, null
  br i1 %139, label %140, label %145

140:                                              ; preds = %137
  %141 = load %struct.page*, %struct.page** %10, align 8
  %142 = call i32 @unlock_page(%struct.page* %141)
  %143 = load %struct.page*, %struct.page** %10, align 8
  %144 = call i32 @put_page(%struct.page* %143)
  br label %145

145:                                              ; preds = %140, %137
  %146 = load %struct.inode*, %struct.inode** %4, align 8
  %147 = getelementptr inbounds %struct.inode, %struct.inode* %146, i32 0, i32 1
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %147, align 8
  %149 = call i32 @reiserfs_write_unlock(%struct.TYPE_5__* %148)
  %150 = load i32, i32* %11, align 4
  store i32 %150, i32* %3, align 4
  br label %151

151:                                              ; preds = %145, %132
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local i32 @reiserfs_write_lock(%struct.TYPE_5__*) #1

declare dso_local i32 @grab_tail_page(%struct.inode*, %struct.page**, %struct.buffer_head**) #1

declare dso_local i32 @reiserfs_error(%struct.TYPE_5__*, i8*, i8*, i32) #1

declare dso_local i32 @journal_begin(%struct.reiserfs_transaction_handle*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @reiserfs_update_inode_transaction(%struct.inode*) #1

declare dso_local i32 @add_save_link(%struct.reiserfs_transaction_handle*, %struct.inode*, i32) #1

declare dso_local i32 @reiserfs_do_truncate(%struct.reiserfs_transaction_handle*, %struct.inode*, %struct.page*, i32) #1

declare dso_local i32 @journal_end(%struct.reiserfs_transaction_handle*) #1

declare dso_local i32 @remove_save_link(%struct.inode*, i32) #1

declare dso_local i32 @zero_user(%struct.page*, i64, i32) #1

declare dso_local i64 @buffer_mapped(%struct.buffer_head*) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @reiserfs_write_unlock(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
