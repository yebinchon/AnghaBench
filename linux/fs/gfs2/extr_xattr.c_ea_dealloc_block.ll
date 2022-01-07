; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_xattr.c_ea_dealloc_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_xattr.c_ea_dealloc_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { i32, i32, i32 }
%struct.gfs2_sbd = type { i32 }
%struct.gfs2_rgrpd = type { i32 }
%struct.buffer_head = type { i32 }
%struct.gfs2_holder = type { i32 }

@EIO = common dso_local global i32 0, align 4
@LM_ST_EXCLUSIVE = common dso_local global i32 0, align 4
@RES_RG_BIT = common dso_local global i64 0, align 8
@RES_DINODE = common dso_local global i64 0, align 8
@RES_STATFS = common dso_local global i64 0, align 8
@RES_QUOTA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_inode*)* @ea_dealloc_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ea_dealloc_block(%struct.gfs2_inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gfs2_inode*, align 8
  %4 = alloca %struct.gfs2_sbd*, align 8
  %5 = alloca %struct.gfs2_rgrpd*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.gfs2_holder, align 4
  %8 = alloca i32, align 4
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %3, align 8
  %9 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %10 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %9, i32 0, i32 1
  %11 = call %struct.gfs2_sbd* @GFS2_SB(i32* %10)
  store %struct.gfs2_sbd* %11, %struct.gfs2_sbd** %4, align 8
  %12 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %13 = call i32 @gfs2_rindex_update(%struct.gfs2_sbd* %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %2, align 4
  br label %89

18:                                               ; preds = %1
  %19 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %20 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %21 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.gfs2_rgrpd* @gfs2_blk2rgrpd(%struct.gfs2_sbd* %19, i32 %22, i32 1)
  store %struct.gfs2_rgrpd* %23, %struct.gfs2_rgrpd** %5, align 8
  %24 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %5, align 8
  %25 = icmp ne %struct.gfs2_rgrpd* %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %18
  %27 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %28 = call i32 @gfs2_consist_inode(%struct.gfs2_inode* %27)
  %29 = load i32, i32* @EIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %89

31:                                               ; preds = %18
  %32 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %5, align 8
  %33 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @LM_ST_EXCLUSIVE, align 4
  %36 = call i32 @gfs2_glock_nq_init(i32 %34, i32 %35, i32 0, %struct.gfs2_holder* %7)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %2, align 4
  br label %89

41:                                               ; preds = %31
  %42 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %43 = load i64, i64* @RES_RG_BIT, align 8
  %44 = load i64, i64* @RES_DINODE, align 8
  %45 = add nsw i64 %43, %44
  %46 = load i64, i64* @RES_STATFS, align 8
  %47 = add nsw i64 %45, %46
  %48 = load i64, i64* @RES_QUOTA, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @gfs2_trans_begin(%struct.gfs2_sbd* %42, i64 %49, i32 1)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %41
  br label %86

54:                                               ; preds = %41
  %55 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %56 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %5, align 8
  %57 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %58 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @gfs2_free_meta(%struct.gfs2_inode* %55, %struct.gfs2_rgrpd* %56, i32 %59, i32 1)
  %61 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %62 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %61, i32 0, i32 2
  store i32 0, i32* %62, align 4
  %63 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %64 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %63, i32 0, i32 1
  %65 = call i32 @gfs2_add_inode_blocks(i32* %64, i32 -1)
  %66 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %67 = call i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode* %66, %struct.buffer_head** %6)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %83, label %70

70:                                               ; preds = %54
  %71 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %72 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %75 = call i32 @gfs2_trans_add_meta(i32 %73, %struct.buffer_head* %74)
  %76 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %77 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %78 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @gfs2_dinode_out(%struct.gfs2_inode* %76, i32 %79)
  %81 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %82 = call i32 @brelse(%struct.buffer_head* %81)
  br label %83

83:                                               ; preds = %70, %54
  %84 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %85 = call i32 @gfs2_trans_end(%struct.gfs2_sbd* %84)
  br label %86

86:                                               ; preds = %83, %53
  %87 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %7)
  %88 = load i32, i32* %8, align 4
  store i32 %88, i32* %2, align 4
  br label %89

89:                                               ; preds = %86, %39, %26, %16
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local %struct.gfs2_sbd* @GFS2_SB(i32*) #1

declare dso_local i32 @gfs2_rindex_update(%struct.gfs2_sbd*) #1

declare dso_local %struct.gfs2_rgrpd* @gfs2_blk2rgrpd(%struct.gfs2_sbd*, i32, i32) #1

declare dso_local i32 @gfs2_consist_inode(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_glock_nq_init(i32, i32, i32, %struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_trans_begin(%struct.gfs2_sbd*, i64, i32) #1

declare dso_local i32 @gfs2_free_meta(%struct.gfs2_inode*, %struct.gfs2_rgrpd*, i32, i32) #1

declare dso_local i32 @gfs2_add_inode_blocks(i32*, i32) #1

declare dso_local i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode*, %struct.buffer_head**) #1

declare dso_local i32 @gfs2_trans_add_meta(i32, %struct.buffer_head*) #1

declare dso_local i32 @gfs2_dinode_out(%struct.gfs2_inode*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @gfs2_trans_end(%struct.gfs2_sbd*) #1

declare dso_local i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
