; ModuleID = '/home/carl/AnghaBench/linux/fs/jffs2/extr_fs.c_jffs2_gc_fetch_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jffs2/extr_fs.c_jffs2_gc_fetch_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jffs2_inode_info = type { i32 }
%struct.jffs2_sb_info = type { i32, i32 }
%struct.inode = type { i32 }
%struct.jffs2_inode_cache = type { i64, i32 }

@.str = private unnamed_addr constant [58 x i8] c"ilookup() failed for ino #%u; inode is probably deleted.\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Inode cache for ino #%u is gone\0A\00", align 1
@INO_STATE_CHECKEDABSENT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"Waiting for ino #%u in state %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"Eep. read_inode() failed for ino #%u. unlinked %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.jffs2_inode_info* @jffs2_gc_fetch_inode(%struct.jffs2_sb_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.jffs2_inode_info*, align 8
  %5 = alloca %struct.jffs2_sb_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.jffs2_inode_cache*, align 8
  store %struct.jffs2_sb_info* %0, %struct.jffs2_sb_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %61

12:                                               ; preds = %3
  %13 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %14 = call i32 @OFNI_BS_2SFFJ(%struct.jffs2_sb_info* %13)
  %15 = load i32, i32* %6, align 4
  %16 = call %struct.inode* @ilookup(i32 %14, i32 %15)
  store %struct.inode* %16, %struct.inode** %8, align 8
  %17 = load %struct.inode*, %struct.inode** %8, align 8
  %18 = icmp ne %struct.inode* %17, null
  br i1 %18, label %60, label %19

19:                                               ; preds = %12
  %20 = load i32, i32* %6, align 4
  %21 = call i32 (i32, i8*, i32, ...) @jffs2_dbg(i32 1, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %23 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %22, i32 0, i32 0
  %24 = call i32 @spin_lock(i32* %23)
  %25 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call %struct.jffs2_inode_cache* @jffs2_get_ino_cache(%struct.jffs2_sb_info* %25, i32 %26)
  store %struct.jffs2_inode_cache* %27, %struct.jffs2_inode_cache** %9, align 8
  %28 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %9, align 8
  %29 = icmp ne %struct.jffs2_inode_cache* %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %19
  %31 = load i32, i32* %6, align 4
  %32 = call i32 (i32, i8*, i32, ...) @jffs2_dbg(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %34 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %33, i32 0, i32 0
  %35 = call i32 @spin_unlock(i32* %34)
  store %struct.jffs2_inode_info* null, %struct.jffs2_inode_info** %4, align 8
  br label %89

36:                                               ; preds = %19
  %37 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %9, align 8
  %38 = getelementptr inbounds %struct.jffs2_inode_cache, %struct.jffs2_inode_cache* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @INO_STATE_CHECKEDABSENT, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %55

42:                                               ; preds = %36
  %43 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %9, align 8
  %44 = getelementptr inbounds %struct.jffs2_inode_cache, %struct.jffs2_inode_cache* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %9, align 8
  %47 = getelementptr inbounds %struct.jffs2_inode_cache, %struct.jffs2_inode_cache* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 (i32, i8*, i32, ...) @jffs2_dbg(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %45, i64 %48)
  %50 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %51 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %50, i32 0, i32 1
  %52 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %53 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %52, i32 0, i32 0
  %54 = call i32 @sleep_on_spinunlock(i32* %51, i32* %53)
  br label %59

55:                                               ; preds = %36
  %56 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %57 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %56, i32 0, i32 0
  %58 = call i32 @spin_unlock(i32* %57)
  br label %59

59:                                               ; preds = %55, %42
  store %struct.jffs2_inode_info* null, %struct.jffs2_inode_info** %4, align 8
  br label %89

60:                                               ; preds = %12
  br label %73

61:                                               ; preds = %3
  %62 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %63 = call i32 @OFNI_BS_2SFFJ(%struct.jffs2_sb_info* %62)
  %64 = load i32, i32* %6, align 4
  %65 = call %struct.inode* @jffs2_iget(i32 %63, i32 %64)
  store %struct.inode* %65, %struct.inode** %8, align 8
  %66 = load %struct.inode*, %struct.inode** %8, align 8
  %67 = call i64 @IS_ERR(%struct.inode* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %61
  %70 = load %struct.inode*, %struct.inode** %8, align 8
  %71 = call %struct.jffs2_inode_info* @ERR_CAST(%struct.inode* %70)
  store %struct.jffs2_inode_info* %71, %struct.jffs2_inode_info** %4, align 8
  br label %89

72:                                               ; preds = %61
  br label %73

73:                                               ; preds = %72, %60
  %74 = load %struct.inode*, %struct.inode** %8, align 8
  %75 = call i64 @is_bad_inode(%struct.inode* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %73
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @pr_notice(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %78, i32 %79)
  %81 = load %struct.inode*, %struct.inode** %8, align 8
  %82 = call i32 @iput(%struct.inode* %81)
  %83 = load i32, i32* @EIO, align 4
  %84 = sub nsw i32 0, %83
  %85 = call %struct.jffs2_inode_info* @ERR_PTR(i32 %84)
  store %struct.jffs2_inode_info* %85, %struct.jffs2_inode_info** %4, align 8
  br label %89

86:                                               ; preds = %73
  %87 = load %struct.inode*, %struct.inode** %8, align 8
  %88 = call %struct.jffs2_inode_info* @JFFS2_INODE_INFO(%struct.inode* %87)
  store %struct.jffs2_inode_info* %88, %struct.jffs2_inode_info** %4, align 8
  br label %89

89:                                               ; preds = %86, %77, %69, %59, %30
  %90 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %4, align 8
  ret %struct.jffs2_inode_info* %90
}

declare dso_local %struct.inode* @ilookup(i32, i32) #1

declare dso_local i32 @OFNI_BS_2SFFJ(%struct.jffs2_sb_info*) #1

declare dso_local i32 @jffs2_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.jffs2_inode_cache* @jffs2_get_ino_cache(%struct.jffs2_sb_info*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @sleep_on_spinunlock(i32*, i32*) #1

declare dso_local %struct.inode* @jffs2_iget(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local %struct.jffs2_inode_info* @ERR_CAST(%struct.inode*) #1

declare dso_local i64 @is_bad_inode(%struct.inode*) #1

declare dso_local i32 @pr_notice(i8*, i32, i32) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local %struct.jffs2_inode_info* @ERR_PTR(i32) #1

declare dso_local %struct.jffs2_inode_info* @JFFS2_INODE_INFO(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
