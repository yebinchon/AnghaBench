; ModuleID = '/home/carl/AnghaBench/linux/fs/sysv/extr_ialloc.c_refill_free_cache.c'
source_filename = "/home/carl/AnghaBench/linux/fs/sysv/extr_ialloc.c_refill_free_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.sysv_sb_info = type { i32, i32, i32 }
%struct.buffer_head = type { i32 }
%struct.sysv_inode = type { i64, i64 }

@SYSV_ROOT_INO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*)* @refill_free_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @refill_free_cache(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.sysv_sb_info*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca %struct.sysv_inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %8 = load %struct.super_block*, %struct.super_block** %2, align 8
  %9 = call %struct.sysv_sb_info* @SYSV_SB(%struct.super_block* %8)
  store %struct.sysv_sb_info* %9, %struct.sysv_sb_info** %3, align 8
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* @SYSV_ROOT_INO, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %7, align 4
  %12 = load %struct.super_block*, %struct.super_block** %2, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call %struct.sysv_inode* @sysv_raw_inode(%struct.super_block* %12, i32 %13, %struct.buffer_head** %4)
  store %struct.sysv_inode* %14, %struct.sysv_inode** %5, align 8
  %15 = load %struct.sysv_inode*, %struct.sysv_inode** %5, align 8
  %16 = icmp ne %struct.sysv_inode* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %76

18:                                               ; preds = %1
  br label %19

19:                                               ; preds = %72, %18
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %3, align 8
  %22 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp sle i32 %20, %23
  br i1 %24, label %25, label %73

25:                                               ; preds = %19
  %26 = load %struct.sysv_inode*, %struct.sysv_inode** %5, align 8
  %27 = getelementptr inbounds %struct.sysv_inode, %struct.sysv_inode* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %51

30:                                               ; preds = %25
  %31 = load %struct.sysv_inode*, %struct.sysv_inode** %5, align 8
  %32 = getelementptr inbounds %struct.sysv_inode, %struct.sysv_inode* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %30
  %36 = load %struct.super_block*, %struct.super_block** %2, align 8
  %37 = call %struct.sysv_sb_info* @SYSV_SB(%struct.super_block* %36)
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @cpu_to_fs16(%struct.sysv_sb_info* %37, i32 %38)
  %40 = load %struct.super_block*, %struct.super_block** %2, align 8
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  %43 = call i32* @sv_sb_fic_inode(%struct.super_block* %40, i32 %41)
  store i32 %39, i32* %43, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %3, align 8
  %46 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %44, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %35
  br label %73

50:                                               ; preds = %35
  br label %51

51:                                               ; preds = %50, %30, %25
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  %54 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %3, align 8
  %55 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %52, %56
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %51
  %60 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %61 = call i32 @brelse(%struct.buffer_head* %60)
  %62 = load %struct.super_block*, %struct.super_block** %2, align 8
  %63 = load i32, i32* %7, align 4
  %64 = call %struct.sysv_inode* @sysv_raw_inode(%struct.super_block* %62, i32 %63, %struct.buffer_head** %4)
  store %struct.sysv_inode* %64, %struct.sysv_inode** %5, align 8
  %65 = load %struct.sysv_inode*, %struct.sysv_inode** %5, align 8
  %66 = icmp ne %struct.sysv_inode* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %59
  br label %76

68:                                               ; preds = %59
  br label %72

69:                                               ; preds = %51
  %70 = load %struct.sysv_inode*, %struct.sysv_inode** %5, align 8
  %71 = getelementptr inbounds %struct.sysv_inode, %struct.sysv_inode* %70, i32 1
  store %struct.sysv_inode* %71, %struct.sysv_inode** %5, align 8
  br label %72

72:                                               ; preds = %69, %68
  br label %19

73:                                               ; preds = %49, %19
  %74 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %75 = call i32 @brelse(%struct.buffer_head* %74)
  br label %76

76:                                               ; preds = %73, %67, %17
  %77 = load i32, i32* %6, align 4
  ret i32 %77
}

declare dso_local %struct.sysv_sb_info* @SYSV_SB(%struct.super_block*) #1

declare dso_local %struct.sysv_inode* @sysv_raw_inode(%struct.super_block*, i32, %struct.buffer_head**) #1

declare dso_local i32 @cpu_to_fs16(%struct.sysv_sb_info*, i32) #1

declare dso_local i32* @sv_sb_fic_inode(%struct.super_block*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
