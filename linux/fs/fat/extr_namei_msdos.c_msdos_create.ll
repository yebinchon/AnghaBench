; ModuleID = '/home/carl/AnghaBench/linux/fs/fat/extr_namei_msdos.c_msdos_create.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fat/extr_namei_msdos.c_msdos_create.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32, i32)* @msdos_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msdos_create(%struct.inode* %0, %struct.dentry* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.super_block*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.fat_slot_info, align 4
  %12 = alloca %struct.timespec64, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.timespec64, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %18 = load %struct.inode*, %struct.inode** %5, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 0
  %20 = load %struct.super_block*, %struct.super_block** %19, align 8
  store %struct.super_block* %20, %struct.super_block** %9, align 8
  store %struct.inode* null, %struct.inode** %10, align 8
  %21 = load i32, i32* @MSDOS_NAME, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %13, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %14, align 8
  %25 = load %struct.super_block*, %struct.super_block** %9, align 8
  %26 = call %struct.TYPE_4__* @MSDOS_SB(%struct.super_block* %25)
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.dentry*, %struct.dentry** %6, align 8
  %30 = getelementptr inbounds %struct.dentry, %struct.dentry* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load %struct.dentry*, %struct.dentry** %6, align 8
  %34 = getelementptr inbounds %struct.dentry, %struct.dentry* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.super_block*, %struct.super_block** %9, align 8
  %38 = call %struct.TYPE_4__* @MSDOS_SB(%struct.super_block* %37)
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = call i32 @msdos_format_name(i8* %32, i32 %36, i8* %24, i32* %39)
  store i32 %40, i32* %15, align 4
  %41 = load i32, i32* %15, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %4
  br label %109

44:                                               ; preds = %4
  %45 = load %struct.dentry*, %struct.dentry** %6, align 8
  %46 = getelementptr inbounds %struct.dentry, %struct.dentry* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 0
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 46
  br i1 %52, label %53, label %58

53:                                               ; preds = %44
  %54 = getelementptr inbounds i8, i8* %24, i64 0
  %55 = load i8, i8* %54, align 16
  %56 = zext i8 %55 to i32
  %57 = icmp ne i32 %56, 46
  br label %58

58:                                               ; preds = %53, %44
  %59 = phi i1 [ false, %44 ], [ %57, %53 ]
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %16, align 4
  %61 = load %struct.inode*, %struct.inode** %5, align 8
  %62 = call i32 @fat_scan(%struct.inode* %61, i8* %24, %struct.fat_slot_info* %11)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.fat_slot_info, %struct.fat_slot_info* %11, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @brelse(i32 %66)
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %15, align 4
  br label %109

70:                                               ; preds = %58
  %71 = load %struct.inode*, %struct.inode** %5, align 8
  %72 = call i32 @current_time(%struct.inode* %71)
  %73 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %17, i32 0, i32 0
  store i32 %72, i32* %73, align 4
  %74 = bitcast %struct.timespec64* %12 to i8*
  %75 = bitcast %struct.timespec64* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %74, i8* align 4 %75, i64 4, i1 false)
  %76 = load %struct.inode*, %struct.inode** %5, align 8
  %77 = load i32, i32* %16, align 4
  %78 = call i32 @msdos_add_entry(%struct.inode* %76, i8* %24, i32 0, i32 %77, i32 0, %struct.timespec64* %12, %struct.fat_slot_info* %11)
  store i32 %78, i32* %15, align 4
  %79 = load i32, i32* %15, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %70
  br label %109

82:                                               ; preds = %70
  %83 = load %struct.super_block*, %struct.super_block** %9, align 8
  %84 = getelementptr inbounds %struct.fat_slot_info, %struct.fat_slot_info* %11, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.fat_slot_info, %struct.fat_slot_info* %11, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call %struct.inode* @fat_build_inode(%struct.super_block* %83, i32 %85, i32 %87)
  store %struct.inode* %88, %struct.inode** %10, align 8
  %89 = getelementptr inbounds %struct.fat_slot_info, %struct.fat_slot_info* %11, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @brelse(i32 %90)
  %92 = load %struct.inode*, %struct.inode** %10, align 8
  %93 = call i64 @IS_ERR(%struct.inode* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %82
  %96 = load %struct.inode*, %struct.inode** %10, align 8
  %97 = call i32 @PTR_ERR(%struct.inode* %96)
  store i32 %97, i32* %15, align 4
  br label %109

98:                                               ; preds = %82
  %99 = load %struct.inode*, %struct.inode** %10, align 8
  %100 = load i32, i32* @S_ATIME, align 4
  %101 = load i32, i32* @S_CTIME, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @S_MTIME, align 4
  %104 = or i32 %102, %103
  %105 = call i32 @fat_truncate_time(%struct.inode* %99, %struct.timespec64* %12, i32 %104)
  %106 = load %struct.dentry*, %struct.dentry** %6, align 8
  %107 = load %struct.inode*, %struct.inode** %10, align 8
  %108 = call i32 @d_instantiate(%struct.dentry* %106, %struct.inode* %107)
  br label %109

109:                                              ; preds = %98, %95, %81, %64, %43
  %110 = load %struct.super_block*, %struct.super_block** %9, align 8
  %111 = call %struct.TYPE_4__* @MSDOS_SB(%struct.super_block* %110)
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = call i32 @mutex_unlock(i32* %112)
  %114 = load i32, i32* %15, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %121, label %116

116:                                              ; preds = %109
  %117 = load %struct.super_block*, %struct.super_block** %9, align 8
  %118 = load %struct.inode*, %struct.inode** %5, align 8
  %119 = load %struct.inode*, %struct.inode** %10, align 8
  %120 = call i32 @fat_flush_inodes(%struct.super_block* %117, %struct.inode* %118, %struct.inode* %119)
  store i32 %120, i32* %15, align 4
  br label %121

121:                                              ; preds = %116, %109
  %122 = load i32, i32* %15, align 4
  %123 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %123)
  ret i32 %122
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

declare dso_local i32 @msdos_add_entry(%struct.inode*, i8*, i32, i32, i32, %struct.timespec64*, %struct.fat_slot_info*) #2

declare dso_local %struct.inode* @fat_build_inode(%struct.super_block*, i32, i32) #2

declare dso_local i64 @IS_ERR(%struct.inode*) #2

declare dso_local i32 @PTR_ERR(%struct.inode*) #2

declare dso_local i32 @fat_truncate_time(%struct.inode*, %struct.timespec64*, i32) #2

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local i32 @fat_flush_inodes(%struct.super_block*, %struct.inode*, %struct.inode*) #2

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
