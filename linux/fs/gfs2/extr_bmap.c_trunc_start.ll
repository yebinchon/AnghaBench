; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_bmap.c_trunc_start.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_bmap.c_trunc_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.inode = type { i32 }
%struct.gfs2_inode = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.gfs2_sbd = type { i32 }
%struct.buffer_head = type { i32 }

@RES_DINODE = common dso_local global i64 0, align 8
@RES_JDATA = common dso_local global i64 0, align 8
@GFS2_JTRUNC_REVOKES = common dso_local global i32 0, align 4
@GFS2_DIF_TRUNC_IN_PROG = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32)* @trunc_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trunc_start(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gfs2_inode*, align 8
  %7 = alloca %struct.gfs2_sbd*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %14)
  store %struct.gfs2_inode* %15, %struct.gfs2_inode** %6, align 8
  %16 = load %struct.inode*, %struct.inode** %4, align 8
  %17 = call %struct.gfs2_sbd* @GFS2_SB(%struct.inode* %16)
  store %struct.gfs2_sbd* %17, %struct.gfs2_sbd** %7, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %8, align 8
  %18 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %19 = call i32 @gfs2_is_jdata(%struct.gfs2_inode* %18)
  store i32 %19, i32* %9, align 4
  %20 = load %struct.inode*, %struct.inode** %4, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %2
  %26 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %27 = load i64, i64* @RES_DINODE, align 8
  %28 = load i64, i64* @RES_JDATA, align 8
  %29 = add nsw i64 %27, %28
  %30 = load i32, i32* @GFS2_JTRUNC_REVOKES, align 4
  %31 = call i32 @gfs2_trans_begin(%struct.gfs2_sbd* %26, i64 %29, i32 %30)
  store i32 %31, i32* %11, align 4
  br label %36

32:                                               ; preds = %2
  %33 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %34 = load i64, i64* @RES_DINODE, align 8
  %35 = call i32 @gfs2_trans_begin(%struct.gfs2_sbd* %33, i64 %34, i32 0)
  store i32 %35, i32* %11, align 4
  br label %36

36:                                               ; preds = %32, %25
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i32, i32* %11, align 4
  store i32 %40, i32* %3, align 4
  br label %131

41:                                               ; preds = %36
  %42 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %43 = call i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode* %42, %struct.buffer_head** %8)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %119

47:                                               ; preds = %41
  %48 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %49 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %52 = call i32 @gfs2_trans_add_meta(i32 %50, %struct.buffer_head* %51)
  %53 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %54 = call i64 @gfs2_is_stuffed(%struct.gfs2_inode* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %47
  %57 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %58 = load i32, i32* %5, align 4
  %59 = zext i32 %58 to i64
  %60 = add i64 4, %59
  %61 = trunc i64 %60 to i32
  %62 = call i32 @gfs2_buffer_clear_tail(%struct.buffer_head* %57, i32 %61)
  br label %89

63:                                               ; preds = %47
  %64 = load %struct.inode*, %struct.inode** %4, align 8
  %65 = call i32 @i_blocksize(%struct.inode* %64)
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* %12, align 4
  %68 = sub i32 %67, 1
  %69 = and i32 %66, %68
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %13, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %63
  %73 = load %struct.inode*, %struct.inode** %4, align 8
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* %13, align 4
  %77 = sub i32 %75, %76
  %78 = call i32 @gfs2_block_zero_range(%struct.inode* %73, i32 %74, i32 %77)
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %11, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %72
  br label %119

82:                                               ; preds = %72
  br label %83

83:                                               ; preds = %82, %63
  %84 = load i32, i32* @GFS2_DIF_TRUNC_IN_PROG, align 4
  %85 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %86 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 4
  br label %89

89:                                               ; preds = %83, %56
  %90 = load %struct.inode*, %struct.inode** %4, align 8
  %91 = load i32, i32* %5, align 4
  %92 = call i32 @i_size_write(%struct.inode* %90, i32 %91)
  %93 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %94 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %93, i32 0, i32 0
  %95 = call i32 @current_time(%struct.TYPE_3__* %94)
  %96 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %97 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  store i32 %95, i32* %98, align 4
  %99 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %100 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 1
  store i32 %95, i32* %101, align 4
  %102 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %103 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %104 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @gfs2_dinode_out(%struct.gfs2_inode* %102, i32 %105)
  %107 = load i32, i32* %9, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %89
  %110 = load %struct.inode*, %struct.inode** %4, align 8
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* %5, align 4
  %113 = call i32 @gfs2_journaled_truncate(%struct.inode* %110, i32 %111, i32 %112)
  store i32 %113, i32* %11, align 4
  br label %118

114:                                              ; preds = %89
  %115 = load %struct.inode*, %struct.inode** %4, align 8
  %116 = load i32, i32* %5, align 4
  %117 = call i32 @truncate_pagecache(%struct.inode* %115, i32 %116)
  br label %118

118:                                              ; preds = %114, %109
  br label %119

119:                                              ; preds = %118, %81, %46
  %120 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %121 = call i32 @brelse(%struct.buffer_head* %120)
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %119
  %127 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %128 = call i32 @gfs2_trans_end(%struct.gfs2_sbd* %127)
  br label %129

129:                                              ; preds = %126, %119
  %130 = load i32, i32* %11, align 4
  store i32 %130, i32* %3, align 4
  br label %131

131:                                              ; preds = %129, %39
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local %struct.gfs2_sbd* @GFS2_SB(%struct.inode*) #1

declare dso_local i32 @gfs2_is_jdata(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_trans_begin(%struct.gfs2_sbd*, i64, i32) #1

declare dso_local i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode*, %struct.buffer_head**) #1

declare dso_local i32 @gfs2_trans_add_meta(i32, %struct.buffer_head*) #1

declare dso_local i64 @gfs2_is_stuffed(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_buffer_clear_tail(%struct.buffer_head*, i32) #1

declare dso_local i32 @i_blocksize(%struct.inode*) #1

declare dso_local i32 @gfs2_block_zero_range(%struct.inode*, i32, i32) #1

declare dso_local i32 @i_size_write(%struct.inode*, i32) #1

declare dso_local i32 @current_time(%struct.TYPE_3__*) #1

declare dso_local i32 @gfs2_dinode_out(%struct.gfs2_inode*, i32) #1

declare dso_local i32 @gfs2_journaled_truncate(%struct.inode*, i32, i32) #1

declare dso_local i32 @truncate_pagecache(%struct.inode*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @gfs2_trans_end(%struct.gfs2_sbd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
