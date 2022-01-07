; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_xattr.c_ext4_xattr_block_list.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_xattr.c_ext4_xattr_block_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"buffer=%p, buffer_size=%ld\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"reading block %llu\00", align 1
@REQ_PRIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"b_count=%d, refcount=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, i8*, i64)* @ext4_xattr_block_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_xattr_block_list(%struct.dentry* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.dentry*, %struct.dentry** %5, align 8
  %12 = call %struct.inode* @d_inode(%struct.dentry* %11)
  store %struct.inode* %12, %struct.inode** %8, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %9, align 8
  %13 = load %struct.inode*, %struct.inode** %8, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load i64, i64* %7, align 8
  %16 = call i32 (%struct.inode*, i8*, ...) @ea_idebug(%struct.inode* %13, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %14, i64 %15)
  %17 = load %struct.inode*, %struct.inode** %8, align 8
  %18 = call %struct.TYPE_3__* @EXT4_I(%struct.inode* %17)
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %77

23:                                               ; preds = %3
  %24 = load %struct.inode*, %struct.inode** %8, align 8
  %25 = load %struct.inode*, %struct.inode** %8, align 8
  %26 = call %struct.TYPE_3__* @EXT4_I(%struct.inode* %25)
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 (%struct.inode*, i8*, ...) @ea_idebug(%struct.inode* %24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i64 %28)
  %30 = load %struct.inode*, %struct.inode** %8, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.inode*, %struct.inode** %8, align 8
  %34 = call %struct.TYPE_3__* @EXT4_I(%struct.inode* %33)
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* @REQ_PRIO, align 4
  %38 = call %struct.buffer_head* @ext4_sb_bread(i32 %32, i64 %36, i32 %37)
  store %struct.buffer_head* %38, %struct.buffer_head** %9, align 8
  %39 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %40 = call i64 @IS_ERR(%struct.buffer_head* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %23
  %43 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %44 = call i32 @PTR_ERR(%struct.buffer_head* %43)
  store i32 %44, i32* %4, align 4
  br label %77

45:                                               ; preds = %23
  %46 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %47 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %48 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %47, i32 0, i32 0
  %49 = call i32 @atomic_read(i32* %48)
  %50 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %51 = call %struct.TYPE_4__* @BHDR(%struct.buffer_head* %50)
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @le32_to_cpu(i32 %53)
  %55 = call i32 @ea_bdebug(%struct.buffer_head* %46, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %49, i32 %54)
  %56 = load %struct.inode*, %struct.inode** %8, align 8
  %57 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %58 = call i32 @ext4_xattr_check_block(%struct.inode* %56, %struct.buffer_head* %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %45
  br label %73

62:                                               ; preds = %45
  %63 = load %struct.inode*, %struct.inode** %8, align 8
  %64 = call i32 @EA_BLOCK_CACHE(%struct.inode* %63)
  %65 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %66 = call i32 @ext4_xattr_block_cache_insert(i32 %64, %struct.buffer_head* %65)
  %67 = load %struct.dentry*, %struct.dentry** %5, align 8
  %68 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %69 = call i32 @BFIRST(%struct.buffer_head* %68)
  %70 = load i8*, i8** %6, align 8
  %71 = load i64, i64* %7, align 8
  %72 = call i32 @ext4_xattr_list_entries(%struct.dentry* %67, i32 %69, i8* %70, i64 %71)
  store i32 %72, i32* %10, align 4
  br label %73

73:                                               ; preds = %62, %61
  %74 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %75 = call i32 @brelse(%struct.buffer_head* %74)
  %76 = load i32, i32* %10, align 4
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %73, %42, %22
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @ea_idebug(%struct.inode*, i8*, ...) #1

declare dso_local %struct.TYPE_3__* @EXT4_I(%struct.inode*) #1

declare dso_local %struct.buffer_head* @ext4_sb_bread(i32, i64, i32) #1

declare dso_local i64 @IS_ERR(%struct.buffer_head*) #1

declare dso_local i32 @PTR_ERR(%struct.buffer_head*) #1

declare dso_local i32 @ea_bdebug(%struct.buffer_head*, i8*, i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local %struct.TYPE_4__* @BHDR(%struct.buffer_head*) #1

declare dso_local i32 @ext4_xattr_check_block(%struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @ext4_xattr_block_cache_insert(i32, %struct.buffer_head*) #1

declare dso_local i32 @EA_BLOCK_CACHE(%struct.inode*) #1

declare dso_local i32 @ext4_xattr_list_entries(%struct.dentry*, i32, i8*, i64) #1

declare dso_local i32 @BFIRST(%struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
