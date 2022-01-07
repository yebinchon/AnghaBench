; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_super.c_gfs2_dirty_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_super.c_gfs2_dirty_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32* }
%struct.inode = type { i32 }
%struct.gfs2_inode = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.gfs2_sbd = type { i32 }
%struct.buffer_head = type { i32 }
%struct.gfs2_holder = type { i32 }

@I_DIRTY_INODE = common dso_local global i32 0, align 4
@SDF_WITHDRAWN = common dso_local global i32 0, align 4
@LM_ST_EXCLUSIVE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"dirty_inode: glock %d\0A\00", align 1
@current = common dso_local global %struct.TYPE_6__* null, align 8
@RES_DINODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"dirty_inode: gfs2_trans_begin %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, i32)* @gfs2_dirty_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfs2_dirty_inode(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gfs2_inode*, align 8
  %6 = alloca %struct.gfs2_sbd*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.gfs2_holder, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.inode*, %struct.inode** %3, align 8
  %13 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %12)
  store %struct.gfs2_inode* %13, %struct.gfs2_inode** %5, align 8
  %14 = load %struct.inode*, %struct.inode** %3, align 8
  %15 = call %struct.gfs2_sbd* @GFS2_SB(%struct.inode* %14)
  store %struct.gfs2_sbd* %15, %struct.gfs2_sbd** %6, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @I_DIRTY_INODE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  br label %107

21:                                               ; preds = %2
  %22 = load i32, i32* @SDF_WITHDRAWN, align 4
  %23 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %24 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %23, i32 0, i32 0
  %25 = call i32 @test_bit(i32 %22, i32* %24)
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %107

29:                                               ; preds = %21
  %30 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %31 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = call i32 @gfs2_glock_is_locked_by_me(%struct.TYPE_5__* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %48, label %35

35:                                               ; preds = %29
  %36 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %37 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = load i64, i64* @LM_ST_EXCLUSIVE, align 8
  %40 = call i32 @gfs2_glock_nq_init(%struct.TYPE_5__* %38, i64 %39, i32 0, %struct.gfs2_holder* %8)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %35
  %44 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @fs_err(%struct.gfs2_sbd* %44, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %45)
  br label %107

47:                                               ; preds = %35
  store i32 1, i32* %9, align 4
  br label %61

48:                                               ; preds = %29
  %49 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %50 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %49, i32 0, i32 0
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @LM_ST_EXCLUSIVE, align 8
  %55 = icmp ne i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i64 @WARN_ON_ONCE(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %48
  br label %107

60:                                               ; preds = %48
  br label %61

61:                                               ; preds = %60, %47
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %66, label %77

66:                                               ; preds = %61
  %67 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %68 = load i32, i32* @RES_DINODE, align 4
  %69 = call i32 @gfs2_trans_begin(%struct.gfs2_sbd* %67, i32 %68, i32 0)
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %11, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %66
  %73 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @fs_err(%struct.gfs2_sbd* %73, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  br label %102

76:                                               ; preds = %66
  store i32 1, i32* %10, align 4
  br label %77

77:                                               ; preds = %76, %61
  %78 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %79 = call i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode* %78, %struct.buffer_head** %7)
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %95

82:                                               ; preds = %77
  %83 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %84 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %83, i32 0, i32 0
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %87 = call i32 @gfs2_trans_add_meta(%struct.TYPE_5__* %85, %struct.buffer_head* %86)
  %88 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %89 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %90 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @gfs2_dinode_out(%struct.gfs2_inode* %88, i32 %91)
  %93 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %94 = call i32 @brelse(%struct.buffer_head* %93)
  br label %95

95:                                               ; preds = %82, %77
  %96 = load i32, i32* %10, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %100 = call i32 @gfs2_trans_end(%struct.gfs2_sbd* %99)
  br label %101

101:                                              ; preds = %98, %95
  br label %102

102:                                              ; preds = %101, %72
  %103 = load i32, i32* %9, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %102
  %106 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %8)
  br label %107

107:                                              ; preds = %20, %28, %43, %59, %105, %102
  ret void
}

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local %struct.gfs2_sbd* @GFS2_SB(%struct.inode*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @gfs2_glock_is_locked_by_me(%struct.TYPE_5__*) #1

declare dso_local i32 @gfs2_glock_nq_init(%struct.TYPE_5__*, i64, i32, %struct.gfs2_holder*) #1

declare dso_local i32 @fs_err(%struct.gfs2_sbd*, i8*, i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @gfs2_trans_begin(%struct.gfs2_sbd*, i32, i32) #1

declare dso_local i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode*, %struct.buffer_head**) #1

declare dso_local i32 @gfs2_trans_add_meta(%struct.TYPE_5__*, %struct.buffer_head*) #1

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
