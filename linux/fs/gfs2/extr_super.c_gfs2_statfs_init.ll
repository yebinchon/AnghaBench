; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_super.c_gfs2_statfs_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_super.c_gfs2_statfs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { i32, %struct.TYPE_2__, %struct.gfs2_statfs_change_host, i32, %struct.gfs2_statfs_change_host, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.gfs2_statfs_change_host = type { i32 }
%struct.gfs2_inode = type { i32 }
%struct.buffer_head = type { i64 }
%struct.gfs2_holder = type { i32 }

@LM_ST_EXCLUSIVE = common dso_local global i32 0, align 4
@GL_NOCACHE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gfs2_statfs_init(%struct.gfs2_sbd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gfs2_sbd*, align 8
  %4 = alloca %struct.gfs2_inode*, align 8
  %5 = alloca %struct.gfs2_statfs_change_host*, align 8
  %6 = alloca %struct.gfs2_inode*, align 8
  %7 = alloca %struct.gfs2_statfs_change_host*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.gfs2_holder, align 4
  %11 = alloca i32, align 4
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %3, align 8
  %12 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %13 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.gfs2_inode* @GFS2_I(i32 %14)
  store %struct.gfs2_inode* %15, %struct.gfs2_inode** %4, align 8
  %16 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %17 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %16, i32 0, i32 4
  store %struct.gfs2_statfs_change_host* %17, %struct.gfs2_statfs_change_host** %5, align 8
  %18 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %19 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.gfs2_inode* @GFS2_I(i32 %20)
  store %struct.gfs2_inode* %21, %struct.gfs2_inode** %6, align 8
  %22 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %23 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %22, i32 0, i32 2
  store %struct.gfs2_statfs_change_host* %23, %struct.gfs2_statfs_change_host** %7, align 8
  %24 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %25 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @LM_ST_EXCLUSIVE, align 4
  %28 = load i32, i32* @GL_NOCACHE, align 4
  %29 = call i32 @gfs2_glock_nq_init(i32 %26, i32 %27, i32 %28, %struct.gfs2_holder* %10)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %1
  %33 = load i32, i32* %11, align 4
  store i32 %33, i32* %2, align 4
  br label %92

34:                                               ; preds = %1
  %35 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %36 = call i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode* %35, %struct.buffer_head** %8)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %90

40:                                               ; preds = %34
  %41 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %42 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %40
  %47 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %48 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %47, i32 0, i32 0
  %49 = call i32 @spin_lock(i32* %48)
  %50 = load %struct.gfs2_statfs_change_host*, %struct.gfs2_statfs_change_host** %5, align 8
  %51 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %52 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = add i64 %53, 4
  %55 = call i32 @gfs2_statfs_change_in(%struct.gfs2_statfs_change_host* %50, i64 %54)
  %56 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %57 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %56, i32 0, i32 0
  %58 = call i32 @spin_unlock(i32* %57)
  br label %86

59:                                               ; preds = %40
  %60 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %61 = call i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode* %60, %struct.buffer_head** %9)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %87

65:                                               ; preds = %59
  %66 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %67 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %66, i32 0, i32 0
  %68 = call i32 @spin_lock(i32* %67)
  %69 = load %struct.gfs2_statfs_change_host*, %struct.gfs2_statfs_change_host** %5, align 8
  %70 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %71 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = add i64 %72, 4
  %74 = call i32 @gfs2_statfs_change_in(%struct.gfs2_statfs_change_host* %69, i64 %73)
  %75 = load %struct.gfs2_statfs_change_host*, %struct.gfs2_statfs_change_host** %7, align 8
  %76 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %77 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = add i64 %78, 4
  %80 = call i32 @gfs2_statfs_change_in(%struct.gfs2_statfs_change_host* %75, i64 %79)
  %81 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %82 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %81, i32 0, i32 0
  %83 = call i32 @spin_unlock(i32* %82)
  %84 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %85 = call i32 @brelse(%struct.buffer_head* %84)
  br label %86

86:                                               ; preds = %65, %46
  br label %87

87:                                               ; preds = %86, %64
  %88 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %89 = call i32 @brelse(%struct.buffer_head* %88)
  br label %90

90:                                               ; preds = %87, %39
  %91 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %10)
  store i32 0, i32* %2, align 4
  br label %92

92:                                               ; preds = %90, %32
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local %struct.gfs2_inode* @GFS2_I(i32) #1

declare dso_local i32 @gfs2_glock_nq_init(i32, i32, i32, %struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode*, %struct.buffer_head**) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @gfs2_statfs_change_in(%struct.gfs2_statfs_change_host*, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
