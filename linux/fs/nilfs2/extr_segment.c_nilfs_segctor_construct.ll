; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_segment.c_nilfs_segctor_construct.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_segment.c_nilfs_segctor_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_sc_info = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { %struct.the_nilfs* }
%struct.the_nilfs = type { i32, i32 }
%struct.nilfs_super_block = type { i32 }

@SC_LSEG_SR = common dso_local global i32 0, align 4
@SC_FLUSH_DAT = common dso_local global i32 0, align 4
@NILFS_SC_SUPER_ROOT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@NILFS_SB_COMMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nilfs_sc_info*, i32)* @nilfs_segctor_construct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_segctor_construct(%struct.nilfs_sc_info* %0, i32 %1) #0 {
  %3 = alloca %struct.nilfs_sc_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.the_nilfs*, align 8
  %6 = alloca %struct.nilfs_super_block**, align 8
  %7 = alloca i32, align 4
  store %struct.nilfs_sc_info* %0, %struct.nilfs_sc_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %9 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.the_nilfs*, %struct.the_nilfs** %11, align 8
  store %struct.the_nilfs* %12, %struct.the_nilfs** %5, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %14 = call i32 @nilfs_segctor_accept(%struct.nilfs_sc_info* %13)
  %15 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %16 = call i64 @nilfs_discontinued(%struct.the_nilfs* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @SC_LSEG_SR, align 4
  store i32 %19, i32* %4, align 4
  br label %20

20:                                               ; preds = %18, %2
  %21 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %22 = call i32 @nilfs_segctor_confirm(%struct.nilfs_sc_info* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @nilfs_segctor_do_construct(%struct.nilfs_sc_info* %25, i32 %26)
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %24, %20
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i64 @likely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %85

35:                                               ; preds = %28
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @SC_FLUSH_DAT, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %41 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %40, i32 0, i32 1
  %42 = call i32 @atomic_set(i32* %41, i32 0)
  br label %43

43:                                               ; preds = %39, %35
  %44 = load i32, i32* @NILFS_SC_SUPER_ROOT, align 4
  %45 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %46 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %45, i32 0, i32 1
  %47 = call i64 @test_bit(i32 %44, i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %84

49:                                               ; preds = %43
  %50 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %51 = call i64 @nilfs_discontinued(%struct.the_nilfs* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %84

53:                                               ; preds = %49
  %54 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %55 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %54, i32 0, i32 0
  %56 = call i32 @down_write(i32* %55)
  %57 = load i32, i32* @EIO, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %7, align 4
  %59 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %60 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %59, i32 0, i32 0
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %63 = call i32 @nilfs_sb_will_flip(%struct.the_nilfs* %62)
  %64 = call %struct.nilfs_super_block** @nilfs_prepare_super(%struct.TYPE_3__* %61, i32 %63)
  store %struct.nilfs_super_block** %64, %struct.nilfs_super_block*** %6, align 8
  %65 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %6, align 8
  %66 = ptrtoint %struct.nilfs_super_block** %65 to i32
  %67 = call i64 @likely(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %53
  %70 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %6, align 8
  %71 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %70, i64 0
  %72 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %71, align 8
  %73 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %74 = call i32 @nilfs_set_log_cursor(%struct.nilfs_super_block* %72, %struct.the_nilfs* %73)
  %75 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %76 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %75, i32 0, i32 0
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = load i32, i32* @NILFS_SB_COMMIT, align 4
  %79 = call i32 @nilfs_commit_super(%struct.TYPE_3__* %77, i32 %78)
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %69, %53
  %81 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %82 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %81, i32 0, i32 0
  %83 = call i32 @up_write(i32* %82)
  br label %84

84:                                               ; preds = %80, %49, %43
  br label %85

85:                                               ; preds = %84, %28
  %86 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %87 = load i32, i32* %4, align 4
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @nilfs_segctor_notify(%struct.nilfs_sc_info* %86, i32 %87, i32 %88)
  %90 = load i32, i32* %7, align 4
  ret i32 %90
}

declare dso_local i32 @nilfs_segctor_accept(%struct.nilfs_sc_info*) #1

declare dso_local i64 @nilfs_discontinued(%struct.the_nilfs*) #1

declare dso_local i32 @nilfs_segctor_confirm(%struct.nilfs_sc_info*) #1

declare dso_local i32 @nilfs_segctor_do_construct(%struct.nilfs_sc_info*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.nilfs_super_block** @nilfs_prepare_super(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @nilfs_sb_will_flip(%struct.the_nilfs*) #1

declare dso_local i32 @nilfs_set_log_cursor(%struct.nilfs_super_block*, %struct.the_nilfs*) #1

declare dso_local i32 @nilfs_commit_super(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @nilfs_segctor_notify(%struct.nilfs_sc_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
