; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_namei.c_reiserfs_unlink.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_namei.c_reiserfs_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i64, i32, i8*, i8*, i32 }
%struct.dentry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.reiserfs_dir_entry = type { i64, i64, i32, i32* }
%struct.reiserfs_transaction_handle = type { i32 }

@path = common dso_local global i32 0, align 4
@JOURNAL_PER_BALANCE_CNT = common dso_local global i32 0, align 4
@NAME_NOT_FOUND = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@IO_ERROR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"reiserfs-7042\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"deleting nonexistent file (%lu), %d\00", align 1
@DEH_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*)* @reiserfs_unlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reiserfs_unlink(%struct.inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.reiserfs_dir_entry, align 8
  %10 = alloca %struct.reiserfs_transaction_handle, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  %13 = load i32, i32* @path, align 4
  %14 = call i32 @INITIALIZE_PATH(i32 %13)
  %15 = load %struct.inode*, %struct.inode** %4, align 8
  %16 = call i32 @dquot_initialize(%struct.inode* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %169

21:                                               ; preds = %2
  %22 = load %struct.dentry*, %struct.dentry** %5, align 8
  %23 = call %struct.inode* @d_inode(%struct.dentry* %22)
  store %struct.inode* %23, %struct.inode** %8, align 8
  %24 = load i32, i32* @JOURNAL_PER_BALANCE_CNT, align 4
  %25 = mul nsw i32 %24, 2
  %26 = add nsw i32 %25, 2
  %27 = load %struct.inode*, %struct.inode** %4, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @REISERFS_QUOTA_TRANS_BLOCKS(i32 %29)
  %31 = mul nsw i32 4, %30
  %32 = add nsw i32 %26, %31
  store i32 %32, i32* %11, align 4
  %33 = load %struct.inode*, %struct.inode** %4, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @reiserfs_write_lock(i32 %35)
  %37 = load %struct.inode*, %struct.inode** %4, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @journal_begin(%struct.reiserfs_transaction_handle* %10, i32 %39, i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %21
  br label %163

45:                                               ; preds = %21
  %46 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %9, i32 0, i32 3
  store i32* null, i32** %46, align 8
  %47 = load %struct.inode*, %struct.inode** %4, align 8
  %48 = load %struct.dentry*, %struct.dentry** %5, align 8
  %49 = getelementptr inbounds %struct.dentry, %struct.dentry* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.dentry*, %struct.dentry** %5, align 8
  %53 = getelementptr inbounds %struct.dentry, %struct.dentry* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @reiserfs_find_entry(%struct.inode* %47, i32 %51, i32 %55, i32* @path, %struct.reiserfs_dir_entry* %9)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* @NAME_NOT_FOUND, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %45
  %60 = load i32, i32* @ENOENT, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %6, align 4
  br label %154

62:                                               ; preds = %45
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @IO_ERROR, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i32, i32* @EIO, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %6, align 4
  br label %154

69:                                               ; preds = %62
  br label %70

70:                                               ; preds = %69
  %71 = load %struct.inode*, %struct.inode** %8, align 8
  %72 = call i32 @reiserfs_update_inode_transaction(%struct.inode* %71)
  %73 = load %struct.inode*, %struct.inode** %4, align 8
  %74 = call i32 @reiserfs_update_inode_transaction(%struct.inode* %73)
  %75 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %9, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.inode*, %struct.inode** %8, align 8
  %78 = getelementptr inbounds %struct.inode, %struct.inode* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %76, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %70
  %82 = load i32, i32* @EIO, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %6, align 4
  br label %154

84:                                               ; preds = %70
  %85 = load %struct.inode*, %struct.inode** %8, align 8
  %86 = getelementptr inbounds %struct.inode, %struct.inode* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %102, label %89

89:                                               ; preds = %84
  %90 = load %struct.inode*, %struct.inode** %8, align 8
  %91 = getelementptr inbounds %struct.inode, %struct.inode* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.inode*, %struct.inode** %8, align 8
  %94 = getelementptr inbounds %struct.inode, %struct.inode* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.inode*, %struct.inode** %8, align 8
  %97 = getelementptr inbounds %struct.inode, %struct.inode* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @reiserfs_warning(i32 %92, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %95, i64 %98)
  %100 = load %struct.inode*, %struct.inode** %8, align 8
  %101 = call i32 @set_nlink(%struct.inode* %100, i32 1)
  br label %102

102:                                              ; preds = %89, %84
  %103 = load %struct.inode*, %struct.inode** %8, align 8
  %104 = call i32 @drop_nlink(%struct.inode* %103)
  %105 = load %struct.inode*, %struct.inode** %8, align 8
  %106 = getelementptr inbounds %struct.inode, %struct.inode* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  store i64 %107, i64* %12, align 8
  %108 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %9, i32 0, i32 2
  %109 = load %struct.inode*, %struct.inode** %4, align 8
  %110 = call i32 @reiserfs_cut_from_item(%struct.reiserfs_transaction_handle* %10, i32* @path, i32* %108, %struct.inode* %109, i32* null, i32 0)
  store i32 %110, i32* %6, align 4
  %111 = load i32, i32* %6, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %102
  %114 = load %struct.inode*, %struct.inode** %8, align 8
  %115 = call i32 @inc_nlink(%struct.inode* %114)
  br label %154

116:                                              ; preds = %102
  %117 = load %struct.inode*, %struct.inode** %8, align 8
  %118 = call i8* @current_time(%struct.inode* %117)
  %119 = load %struct.inode*, %struct.inode** %8, align 8
  %120 = getelementptr inbounds %struct.inode, %struct.inode* %119, i32 0, i32 4
  store i8* %118, i8** %120, align 8
  %121 = load %struct.inode*, %struct.inode** %8, align 8
  %122 = call i32 @reiserfs_update_sd(%struct.reiserfs_transaction_handle* %10, %struct.inode* %121)
  %123 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %9, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @DEH_SIZE, align 8
  %126 = add nsw i64 %124, %125
  %127 = load %struct.inode*, %struct.inode** %4, align 8
  %128 = getelementptr inbounds %struct.inode, %struct.inode* %127, i32 0, i32 5
  %129 = load i32, i32* %128, align 8
  %130 = sext i32 %129 to i64
  %131 = sub nsw i64 %130, %126
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %128, align 8
  %133 = load %struct.inode*, %struct.inode** %4, align 8
  %134 = call i8* @current_time(%struct.inode* %133)
  %135 = load %struct.inode*, %struct.inode** %4, align 8
  %136 = getelementptr inbounds %struct.inode, %struct.inode* %135, i32 0, i32 3
  store i8* %134, i8** %136, align 8
  %137 = load %struct.inode*, %struct.inode** %4, align 8
  %138 = getelementptr inbounds %struct.inode, %struct.inode* %137, i32 0, i32 4
  store i8* %134, i8** %138, align 8
  %139 = load %struct.inode*, %struct.inode** %4, align 8
  %140 = call i32 @reiserfs_update_sd(%struct.reiserfs_transaction_handle* %10, %struct.inode* %139)
  %141 = load i64, i64* %12, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %146, label %143

143:                                              ; preds = %116
  %144 = load %struct.inode*, %struct.inode** %8, align 8
  %145 = call i32 @add_save_link(%struct.reiserfs_transaction_handle* %10, %struct.inode* %144, i32 0)
  br label %146

146:                                              ; preds = %143, %116
  %147 = call i32 @journal_end(%struct.reiserfs_transaction_handle* %10)
  store i32 %147, i32* %6, align 4
  %148 = call i32 @reiserfs_check_path(i32* @path)
  %149 = load %struct.inode*, %struct.inode** %4, align 8
  %150 = getelementptr inbounds %struct.inode, %struct.inode* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @reiserfs_write_unlock(i32 %151)
  %153 = load i32, i32* %6, align 4
  store i32 %153, i32* %3, align 4
  br label %169

154:                                              ; preds = %113, %81, %66, %59
  %155 = call i32 @pathrelse(i32* @path)
  %156 = call i32 @journal_end(%struct.reiserfs_transaction_handle* %10)
  store i32 %156, i32* %7, align 4
  %157 = call i32 @reiserfs_check_path(i32* @path)
  %158 = load i32, i32* %7, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %154
  %161 = load i32, i32* %7, align 4
  store i32 %161, i32* %6, align 4
  br label %162

162:                                              ; preds = %160, %154
  br label %163

163:                                              ; preds = %162, %44
  %164 = load %struct.inode*, %struct.inode** %4, align 8
  %165 = getelementptr inbounds %struct.inode, %struct.inode* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @reiserfs_write_unlock(i32 %166)
  %168 = load i32, i32* %6, align 4
  store i32 %168, i32* %3, align 4
  br label %169

169:                                              ; preds = %163, %146, %19
  %170 = load i32, i32* %3, align 4
  ret i32 %170
}

declare dso_local i32 @INITIALIZE_PATH(i32) #1

declare dso_local i32 @dquot_initialize(%struct.inode*) #1

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @REISERFS_QUOTA_TRANS_BLOCKS(i32) #1

declare dso_local i32 @reiserfs_write_lock(i32) #1

declare dso_local i32 @journal_begin(%struct.reiserfs_transaction_handle*, i32, i32) #1

declare dso_local i32 @reiserfs_find_entry(%struct.inode*, i32, i32, i32*, %struct.reiserfs_dir_entry*) #1

declare dso_local i32 @reiserfs_update_inode_transaction(%struct.inode*) #1

declare dso_local i32 @reiserfs_warning(i32, i8*, i8*, i64, i64) #1

declare dso_local i32 @set_nlink(%struct.inode*, i32) #1

declare dso_local i32 @drop_nlink(%struct.inode*) #1

declare dso_local i32 @reiserfs_cut_from_item(%struct.reiserfs_transaction_handle*, i32*, i32*, %struct.inode*, i32*, i32) #1

declare dso_local i32 @inc_nlink(%struct.inode*) #1

declare dso_local i8* @current_time(%struct.inode*) #1

declare dso_local i32 @reiserfs_update_sd(%struct.reiserfs_transaction_handle*, %struct.inode*) #1

declare dso_local i32 @add_save_link(%struct.reiserfs_transaction_handle*, %struct.inode*, i32) #1

declare dso_local i32 @journal_end(%struct.reiserfs_transaction_handle*) #1

declare dso_local i32 @reiserfs_check_path(i32*) #1

declare dso_local i32 @reiserfs_write_unlock(i32) #1

declare dso_local i32 @pathrelse(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
