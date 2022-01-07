; ModuleID = '/home/carl/AnghaBench/linux/fs/fat/extr_namei_msdos.c_msdos_mkdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fat/extr_namei_msdos.c_msdos_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.dentry = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i32 }
%struct.fat_slot_info = type { i32, i32, i32 }
%struct.timespec64 = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@MSDOS_NAME = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@S_ATIME = common dso_local global i32 0, align 4
@S_CTIME = common dso_local global i32 0, align 4
@S_MTIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32)* @msdos_mkdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msdos_mkdir(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca %struct.fat_slot_info, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.timespec64, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.timespec64, align 4
  %18 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  %19 = load %struct.inode*, %struct.inode** %5, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  %21 = load %struct.super_block*, %struct.super_block** %20, align 8
  store %struct.super_block* %21, %struct.super_block** %8, align 8
  %22 = load i32, i32* @MSDOS_NAME, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %11, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %12, align 8
  %26 = load %struct.super_block*, %struct.super_block** %8, align 8
  %27 = call %struct.TYPE_4__* @MSDOS_SB(%struct.super_block* %26)
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.dentry*, %struct.dentry** %6, align 8
  %31 = getelementptr inbounds %struct.dentry, %struct.dentry* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = load %struct.dentry*, %struct.dentry** %6, align 8
  %35 = getelementptr inbounds %struct.dentry, %struct.dentry* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.super_block*, %struct.super_block** %8, align 8
  %39 = call %struct.TYPE_4__* @MSDOS_SB(%struct.super_block* %38)
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = call i32 @msdos_format_name(i8* %33, i32 %37, i8* %25, i32* %40)
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %14, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %3
  br label %134

45:                                               ; preds = %3
  %46 = load %struct.dentry*, %struct.dentry** %6, align 8
  %47 = getelementptr inbounds %struct.dentry, %struct.dentry* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 0
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 46
  br i1 %53, label %54, label %59

54:                                               ; preds = %45
  %55 = getelementptr inbounds i8, i8* %25, i64 0
  %56 = load i8, i8* %55, align 16
  %57 = zext i8 %56 to i32
  %58 = icmp ne i32 %57, 46
  br label %59

59:                                               ; preds = %54, %45
  %60 = phi i1 [ false, %45 ], [ %58, %54 ]
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %15, align 4
  %62 = load %struct.inode*, %struct.inode** %5, align 8
  %63 = call i32 @fat_scan(%struct.inode* %62, i8* %25, %struct.fat_slot_info* %9)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.fat_slot_info, %struct.fat_slot_info* %9, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @brelse(i32 %67)
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %14, align 4
  br label %134

71:                                               ; preds = %59
  %72 = load %struct.inode*, %struct.inode** %5, align 8
  %73 = call i32 @current_time(%struct.inode* %72)
  %74 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %17, i32 0, i32 0
  store i32 %73, i32* %74, align 4
  %75 = bitcast %struct.timespec64* %13 to i8*
  %76 = bitcast %struct.timespec64* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %75, i8* align 4 %76, i64 4, i1 false)
  %77 = load %struct.inode*, %struct.inode** %5, align 8
  %78 = call i32 @fat_alloc_new_dir(%struct.inode* %77, %struct.timespec64* %13)
  store i32 %78, i32* %16, align 4
  %79 = load i32, i32* %16, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %71
  %82 = load i32, i32* %16, align 4
  store i32 %82, i32* %14, align 4
  br label %134

83:                                               ; preds = %71
  %84 = load %struct.inode*, %struct.inode** %5, align 8
  %85 = load i32, i32* %15, align 4
  %86 = load i32, i32* %16, align 4
  %87 = call i32 @msdos_add_entry(%struct.inode* %84, i8* %25, i32 1, i32 %85, i32 %86, %struct.timespec64* %13, %struct.fat_slot_info* %9)
  store i32 %87, i32* %14, align 4
  %88 = load i32, i32* %14, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  br label %130

91:                                               ; preds = %83
  %92 = load %struct.inode*, %struct.inode** %5, align 8
  %93 = call i32 @inc_nlink(%struct.inode* %92)
  %94 = load %struct.super_block*, %struct.super_block** %8, align 8
  %95 = getelementptr inbounds %struct.fat_slot_info, %struct.fat_slot_info* %9, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = getelementptr inbounds %struct.fat_slot_info, %struct.fat_slot_info* %9, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call %struct.inode* @fat_build_inode(%struct.super_block* %94, i32 %96, i32 %98)
  store %struct.inode* %99, %struct.inode** %10, align 8
  %100 = getelementptr inbounds %struct.fat_slot_info, %struct.fat_slot_info* %9, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @brelse(i32 %101)
  %103 = load %struct.inode*, %struct.inode** %10, align 8
  %104 = call i64 @IS_ERR(%struct.inode* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %91
  %107 = load %struct.inode*, %struct.inode** %10, align 8
  %108 = call i32 @PTR_ERR(%struct.inode* %107)
  store i32 %108, i32* %14, align 4
  br label %134

109:                                              ; preds = %91
  %110 = load %struct.inode*, %struct.inode** %10, align 8
  %111 = call i32 @set_nlink(%struct.inode* %110, i32 2)
  %112 = load %struct.inode*, %struct.inode** %10, align 8
  %113 = load i32, i32* @S_ATIME, align 4
  %114 = load i32, i32* @S_CTIME, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* @S_MTIME, align 4
  %117 = or i32 %115, %116
  %118 = call i32 @fat_truncate_time(%struct.inode* %112, %struct.timespec64* %13, i32 %117)
  %119 = load %struct.dentry*, %struct.dentry** %6, align 8
  %120 = load %struct.inode*, %struct.inode** %10, align 8
  %121 = call i32 @d_instantiate(%struct.dentry* %119, %struct.inode* %120)
  %122 = load %struct.super_block*, %struct.super_block** %8, align 8
  %123 = call %struct.TYPE_4__* @MSDOS_SB(%struct.super_block* %122)
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = call i32 @mutex_unlock(i32* %124)
  %126 = load %struct.super_block*, %struct.super_block** %8, align 8
  %127 = load %struct.inode*, %struct.inode** %5, align 8
  %128 = load %struct.inode*, %struct.inode** %10, align 8
  %129 = call i32 @fat_flush_inodes(%struct.super_block* %126, %struct.inode* %127, %struct.inode* %128)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %140

130:                                              ; preds = %90
  %131 = load %struct.inode*, %struct.inode** %5, align 8
  %132 = load i32, i32* %16, align 4
  %133 = call i32 @fat_free_clusters(%struct.inode* %131, i32 %132)
  br label %134

134:                                              ; preds = %130, %106, %81, %65, %44
  %135 = load %struct.super_block*, %struct.super_block** %8, align 8
  %136 = call %struct.TYPE_4__* @MSDOS_SB(%struct.super_block* %135)
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = call i32 @mutex_unlock(i32* %137)
  %139 = load i32, i32* %14, align 4
  store i32 %139, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %140

140:                                              ; preds = %134, %109
  %141 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %141)
  %142 = load i32, i32* %4, align 4
  ret i32 %142
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local %struct.TYPE_4__* @MSDOS_SB(%struct.super_block*) #2

declare dso_local i32 @msdos_format_name(i8*, i32, i8*, i32*) #2

declare dso_local i32 @fat_scan(%struct.inode*, i8*, %struct.fat_slot_info*) #2

declare dso_local i32 @brelse(i32) #2

declare dso_local i32 @current_time(%struct.inode*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @fat_alloc_new_dir(%struct.inode*, %struct.timespec64*) #2

declare dso_local i32 @msdos_add_entry(%struct.inode*, i8*, i32, i32, i32, %struct.timespec64*, %struct.fat_slot_info*) #2

declare dso_local i32 @inc_nlink(%struct.inode*) #2

declare dso_local %struct.inode* @fat_build_inode(%struct.super_block*, i32, i32) #2

declare dso_local i64 @IS_ERR(%struct.inode*) #2

declare dso_local i32 @PTR_ERR(%struct.inode*) #2

declare dso_local i32 @set_nlink(%struct.inode*, i32) #2

declare dso_local i32 @fat_truncate_time(%struct.inode*, %struct.timespec64*, i32) #2

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local i32 @fat_flush_inodes(%struct.super_block*, %struct.inode*, %struct.inode*) #2

declare dso_local i32 @fat_free_clusters(%struct.inode*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
