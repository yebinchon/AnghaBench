; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_dir.c_gfs2_dir_readahead.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_dir.c_gfs2_dir_readahead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file_ra_state = type { i32 }
%struct.gfs2_inode = type { i32*, %struct.gfs2_glock* }
%struct.gfs2_glock = type { i32 }
%struct.buffer_head = type { i32 }

@MAX_RA_BLOCKS = common dso_local global i32 0, align 4
@end_buffer_read_sync = common dso_local global i32 0, align 4
@REQ_OP_READ = common dso_local global i32 0, align 4
@REQ_RAHEAD = common dso_local global i32 0, align 4
@REQ_META = common dso_local global i32 0, align 4
@REQ_PRIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, i32, i32, %struct.file_ra_state*)* @gfs2_dir_readahead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfs2_dir_readahead(%struct.inode* %0, i32 %1, i32 %2, %struct.file_ra_state* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.file_ra_state*, align 8
  %9 = alloca %struct.gfs2_inode*, align 8
  %10 = alloca %struct.gfs2_glock*, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.file_ra_state* %3, %struct.file_ra_state** %8, align 8
  %15 = load %struct.inode*, %struct.inode** %5, align 8
  %16 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %15)
  store %struct.gfs2_inode* %16, %struct.gfs2_inode** %9, align 8
  %17 = load %struct.gfs2_inode*, %struct.gfs2_inode** %9, align 8
  %18 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %17, i32 0, i32 1
  %19 = load %struct.gfs2_glock*, %struct.gfs2_glock** %18, align 8
  store %struct.gfs2_glock* %19, %struct.gfs2_glock** %10, align 8
  store i64 0, i64* %12, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @MAX_RA_BLOCKS, align 4
  %22 = add i32 %20, %21
  %23 = load %struct.file_ra_state*, %struct.file_ra_state** %8, align 8
  %24 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ult i32 %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  br label %101

28:                                               ; preds = %4
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.file_ra_state*, %struct.file_ra_state** %8, align 8
  %31 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @max(i32 %29, i32 %32)
  %34 = load %struct.file_ra_state*, %struct.file_ra_state** %8, align 8
  %35 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  store i32 0, i32* %14, align 4
  br label %36

36:                                               ; preds = %98, %28
  %37 = load i32, i32* %14, align 4
  %38 = load i32, i32* @MAX_RA_BLOCKS, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %40, label %101

40:                                               ; preds = %36
  %41 = load %struct.file_ra_state*, %struct.file_ra_state** %8, align 8
  %42 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp uge i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %101

47:                                               ; preds = %40
  %48 = load i64, i64* %12, align 8
  store i64 %48, i64* %13, align 8
  %49 = load %struct.gfs2_inode*, %struct.gfs2_inode** %9, align 8
  %50 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.file_ra_state*, %struct.file_ra_state** %8, align 8
  %53 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %51, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @be64_to_cpu(i32 %57)
  store i64 %58, i64* %12, align 8
  %59 = load %struct.file_ra_state*, %struct.file_ra_state** %8, align 8
  %60 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %60, align 4
  %63 = load i64, i64* %12, align 8
  %64 = load i64, i64* %13, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %47
  br label %98

67:                                               ; preds = %47
  %68 = load %struct.gfs2_glock*, %struct.gfs2_glock** %10, align 8
  %69 = load i64, i64* %12, align 8
  %70 = call %struct.buffer_head* @gfs2_getbuf(%struct.gfs2_glock* %68, i64 %69, i32 1)
  store %struct.buffer_head* %70, %struct.buffer_head** %11, align 8
  %71 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %72 = call i64 @trylock_buffer(%struct.buffer_head* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %95

74:                                               ; preds = %67
  %75 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %76 = call i64 @buffer_uptodate(%struct.buffer_head* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %74
  %79 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %80 = call i32 @unlock_buffer(%struct.buffer_head* %79)
  %81 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %82 = call i32 @brelse(%struct.buffer_head* %81)
  br label %98

83:                                               ; preds = %74
  %84 = load i32, i32* @end_buffer_read_sync, align 4
  %85 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %86 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* @REQ_OP_READ, align 4
  %88 = load i32, i32* @REQ_RAHEAD, align 4
  %89 = load i32, i32* @REQ_META, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @REQ_PRIO, align 4
  %92 = or i32 %90, %91
  %93 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %94 = call i32 @submit_bh(i32 %87, i32 %92, %struct.buffer_head* %93)
  br label %98

95:                                               ; preds = %67
  %96 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %97 = call i32 @brelse(%struct.buffer_head* %96)
  br label %98

98:                                               ; preds = %95, %83, %78, %66
  %99 = load i32, i32* %14, align 4
  %100 = add i32 %99, 1
  store i32 %100, i32* %14, align 4
  br label %36

101:                                              ; preds = %27, %46, %36
  ret void
}

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local %struct.buffer_head* @gfs2_getbuf(%struct.gfs2_glock*, i64, i32) #1

declare dso_local i64 @trylock_buffer(%struct.buffer_head*) #1

declare dso_local i64 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @submit_bh(i32, i32, %struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
