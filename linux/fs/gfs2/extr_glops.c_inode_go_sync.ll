; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_glops.c_inode_go_sync.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_glops.c_inode_go_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_glock = type { i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.gfs2_inode = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.address_space*, i32 }
%struct.address_space = type { i32 }

@GIF_SW_PAGED = common dso_local global i32 0, align 4
@GLF_DIRTY = common dso_local global i32 0, align 4
@LM_ST_EXCLUSIVE = common dso_local global i64 0, align 8
@GFS2_LOG_HEAD_FLUSH_NORMAL = common dso_local global i32 0, align 4
@GFS2_LFC_INODE_GO_SYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gfs2_glock*)* @inode_go_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @inode_go_sync(%struct.gfs2_glock* %0) #0 {
  %2 = alloca %struct.gfs2_glock*, align 8
  %3 = alloca %struct.gfs2_inode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.address_space*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.address_space*, align 8
  store %struct.gfs2_glock* %0, %struct.gfs2_glock** %2, align 8
  %8 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %9 = call %struct.gfs2_inode* @gfs2_glock2inode(%struct.gfs2_glock* %8)
  store %struct.gfs2_inode* %9, %struct.gfs2_inode** %3, align 8
  %10 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %11 = icmp ne %struct.gfs2_inode* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %14 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @S_ISREG(i32 %16)
  %18 = icmp ne i64 %17, 0
  br label %19

19:                                               ; preds = %12, %1
  %20 = phi i1 [ false, %1 ], [ %18, %12 ]
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %4, align 4
  %22 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %23 = call %struct.address_space* @gfs2_glock2aspace(%struct.gfs2_glock* %22)
  store %struct.address_space* %23, %struct.address_space** %5, align 8
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %19
  %27 = load i32, i32* @GIF_SW_PAGED, align 4
  %28 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %29 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %28, i32 0, i32 1
  %30 = call i64 @test_and_clear_bit(i32 %27, i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %34 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load %struct.address_space*, %struct.address_space** %35, align 8
  %37 = call i32 @unmap_shared_mapping_range(%struct.address_space* %36, i32 0, i32 0)
  br label %38

38:                                               ; preds = %32, %26
  %39 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %40 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %39, i32 0, i32 0
  %41 = call i32 @inode_dio_wait(%struct.TYPE_4__* %40)
  br label %42

42:                                               ; preds = %38, %19
  %43 = load i32, i32* @GLF_DIRTY, align 4
  %44 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %45 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %44, i32 0, i32 1
  %46 = call i64 @test_and_clear_bit(i32 %43, i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %42
  br label %96

49:                                               ; preds = %42
  %50 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %51 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %52 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @LM_ST_EXCLUSIVE, align 8
  %55 = icmp ne i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @GLOCK_BUG_ON(%struct.gfs2_glock* %50, i32 %56)
  %58 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %59 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %63 = load i32, i32* @GFS2_LOG_HEAD_FLUSH_NORMAL, align 4
  %64 = load i32, i32* @GFS2_LFC_INODE_GO_SYNC, align 4
  %65 = or i32 %63, %64
  %66 = call i32 @gfs2_log_flush(i32 %61, %struct.gfs2_glock* %62, i32 %65)
  %67 = load %struct.address_space*, %struct.address_space** %5, align 8
  %68 = call i32 @filemap_fdatawrite(%struct.address_space* %67)
  %69 = load i32, i32* %4, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %83

71:                                               ; preds = %49
  %72 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %73 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load %struct.address_space*, %struct.address_space** %74, align 8
  store %struct.address_space* %75, %struct.address_space** %7, align 8
  %76 = load %struct.address_space*, %struct.address_space** %7, align 8
  %77 = call i32 @filemap_fdatawrite(%struct.address_space* %76)
  %78 = load %struct.address_space*, %struct.address_space** %7, align 8
  %79 = call i32 @filemap_fdatawait(%struct.address_space* %78)
  store i32 %79, i32* %6, align 4
  %80 = load %struct.address_space*, %struct.address_space** %7, align 8
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @mapping_set_error(%struct.address_space* %80, i32 %81)
  br label %83

83:                                               ; preds = %71, %49
  %84 = load %struct.address_space*, %struct.address_space** %5, align 8
  %85 = call i32 @filemap_fdatawait(%struct.address_space* %84)
  store i32 %85, i32* %6, align 4
  %86 = load %struct.address_space*, %struct.address_space** %5, align 8
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @mapping_set_error(%struct.address_space* %86, i32 %87)
  %89 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %90 = call i32 @gfs2_ail_empty_gl(%struct.gfs2_glock* %89)
  %91 = call i32 (...) @smp_mb__before_atomic()
  %92 = load i32, i32* @GLF_DIRTY, align 4
  %93 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %94 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %93, i32 0, i32 1
  %95 = call i32 @clear_bit(i32 %92, i32* %94)
  br label %96

96:                                               ; preds = %83, %48
  %97 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %98 = call i32 @gfs2_clear_glop_pending(%struct.gfs2_inode* %97)
  ret void
}

declare dso_local %struct.gfs2_inode* @gfs2_glock2inode(%struct.gfs2_glock*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local %struct.address_space* @gfs2_glock2aspace(%struct.gfs2_glock*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @unmap_shared_mapping_range(%struct.address_space*, i32, i32) #1

declare dso_local i32 @inode_dio_wait(%struct.TYPE_4__*) #1

declare dso_local i32 @GLOCK_BUG_ON(%struct.gfs2_glock*, i32) #1

declare dso_local i32 @gfs2_log_flush(i32, %struct.gfs2_glock*, i32) #1

declare dso_local i32 @filemap_fdatawrite(%struct.address_space*) #1

declare dso_local i32 @filemap_fdatawait(%struct.address_space*) #1

declare dso_local i32 @mapping_set_error(%struct.address_space*, i32) #1

declare dso_local i32 @gfs2_ail_empty_gl(%struct.gfs2_glock*) #1

declare dso_local i32 @smp_mb__before_atomic(...) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @gfs2_clear_glop_pending(%struct.gfs2_inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
