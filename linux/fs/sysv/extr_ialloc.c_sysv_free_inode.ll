; ModuleID = '/home/carl/AnghaBench/linux/fs/sysv/extr_ialloc.c_sysv_free_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/sysv/extr_ialloc.c_sysv_free_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.sysv_sb_info = type { i32, i32, i32, i32, i8** }
%struct.buffer_head = type { i32 }
%struct.sysv_inode = type { i32 }

@SYSV_ROOT_INO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"sysv_free_inode: inode 0,1,2 or nonexistent inode\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"sysv_free_inode: unable to read inode block on device %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sysv_free_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.sysv_sb_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.sysv_inode*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %2, align 8
  %9 = load %struct.inode*, %struct.inode** %2, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 1
  %11 = load %struct.super_block*, %struct.super_block** %10, align 8
  store %struct.super_block* %11, %struct.super_block** %3, align 8
  %12 = load %struct.super_block*, %struct.super_block** %3, align 8
  %13 = call %struct.sysv_sb_info* @SYSV_SB(%struct.super_block* %12)
  store %struct.sysv_sb_info* %13, %struct.sysv_sb_info** %4, align 8
  %14 = load %struct.inode*, %struct.inode** %2, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 1
  %16 = load %struct.super_block*, %struct.super_block** %15, align 8
  store %struct.super_block* %16, %struct.super_block** %3, align 8
  %17 = load %struct.inode*, %struct.inode** %2, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @SYSV_ROOT_INO, align 4
  %22 = icmp ule i32 %20, %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %26 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ugt i32 %24, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23, %1
  %30 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %90

31:                                               ; preds = %23
  %32 = load %struct.super_block*, %struct.super_block** %3, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call %struct.sysv_inode* @sysv_raw_inode(%struct.super_block* %32, i32 %33, %struct.buffer_head** %6)
  store %struct.sysv_inode* %34, %struct.sysv_inode** %7, align 8
  %35 = load %struct.sysv_inode*, %struct.sysv_inode** %7, align 8
  %36 = icmp ne %struct.sysv_inode* %35, null
  br i1 %36, label %44, label %37

37:                                               ; preds = %31
  %38 = load %struct.inode*, %struct.inode** %2, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 1
  %40 = load %struct.super_block*, %struct.super_block** %39, align 8
  %41 = getelementptr inbounds %struct.super_block, %struct.super_block* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  br label %90

44:                                               ; preds = %31
  %45 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %46 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %45, i32 0, i32 2
  %47 = call i32 @mutex_lock(i32* %46)
  %48 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %49 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %50 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %49, i32 0, i32 4
  %51 = load i8**, i8*** %50, align 8
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @fs16_to_cpu(%struct.sysv_sb_info* %48, i8* %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %56 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp ult i32 %54, %57
  br i1 %58, label %59, label %73

59:                                               ; preds = %44
  %60 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i8* @cpu_to_fs16(%struct.sysv_sb_info* %60, i32 %61)
  %63 = load %struct.super_block*, %struct.super_block** %3, align 8
  %64 = load i32, i32* %8, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %8, align 4
  %66 = call i8** @sv_sb_fic_inode(%struct.super_block* %63, i32 %64)
  store i8* %62, i8** %66, align 8
  %67 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %68 = load i32, i32* %8, align 4
  %69 = call i8* @cpu_to_fs16(%struct.sysv_sb_info* %67, i32 %68)
  %70 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %71 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %70, i32 0, i32 4
  %72 = load i8**, i8*** %71, align 8
  store i8* %69, i8** %72, align 8
  br label %73

73:                                               ; preds = %59, %44
  %74 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %75 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %76 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @fs16_add(%struct.sysv_sb_info* %74, i32 %77, i32 1)
  %79 = load %struct.super_block*, %struct.super_block** %3, align 8
  %80 = call i32 @dirty_sb(%struct.super_block* %79)
  %81 = load %struct.sysv_inode*, %struct.sysv_inode** %7, align 8
  %82 = call i32 @memset(%struct.sysv_inode* %81, i32 0, i32 4)
  %83 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %84 = call i32 @mark_buffer_dirty(%struct.buffer_head* %83)
  %85 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %86 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %85, i32 0, i32 2
  %87 = call i32 @mutex_unlock(i32* %86)
  %88 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %89 = call i32 @brelse(%struct.buffer_head* %88)
  br label %90

90:                                               ; preds = %73, %37, %29
  ret void
}

declare dso_local %struct.sysv_sb_info* @SYSV_SB(%struct.super_block*) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local %struct.sysv_inode* @sysv_raw_inode(%struct.super_block*, i32, %struct.buffer_head**) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @fs16_to_cpu(%struct.sysv_sb_info*, i8*) #1

declare dso_local i8* @cpu_to_fs16(%struct.sysv_sb_info*, i32) #1

declare dso_local i8** @sv_sb_fic_inode(%struct.super_block*, i32) #1

declare dso_local i32 @fs16_add(%struct.sysv_sb_info*, i32, i32) #1

declare dso_local i32 @dirty_sb(%struct.super_block*) #1

declare dso_local i32 @memset(%struct.sysv_inode*, i32, i32) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
