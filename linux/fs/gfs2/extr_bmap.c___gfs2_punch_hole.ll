; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_bmap.c___gfs2_punch_hole.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_bmap.c___gfs2_punch_hole.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.file = type { i32 }
%struct.inode = type { i32 }
%struct.gfs2_inode = type { i32 }
%struct.gfs2_sbd = type { i32 }

@RES_DINODE = common dso_local global i64 0, align 8
@RES_JDATA = common dso_local global i32 0, align 4
@GFS2_JTRUNC_REVOKES = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__gfs2_punch_hole(%struct.file* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.gfs2_inode*, align 8
  %10 = alloca %struct.gfs2_sbd*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load %struct.file*, %struct.file** %5, align 8
  %17 = call %struct.inode* @file_inode(%struct.file* %16)
  store %struct.inode* %17, %struct.inode** %8, align 8
  %18 = load %struct.inode*, %struct.inode** %8, align 8
  %19 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %18)
  store %struct.gfs2_inode* %19, %struct.gfs2_inode** %9, align 8
  %20 = load %struct.inode*, %struct.inode** %8, align 8
  %21 = call %struct.gfs2_sbd* @GFS2_SB(%struct.inode* %20)
  store %struct.gfs2_sbd* %21, %struct.gfs2_sbd** %10, align 8
  %22 = load %struct.gfs2_inode*, %struct.gfs2_inode** %9, align 8
  %23 = call i64 @gfs2_is_jdata(%struct.gfs2_inode* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %3
  %26 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %10, align 8
  %27 = load i64, i64* @RES_DINODE, align 8
  %28 = load i32, i32* @RES_JDATA, align 4
  %29 = mul nsw i32 2, %28
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %27, %30
  %32 = load i32, i32* @GFS2_JTRUNC_REVOKES, align 4
  %33 = call i32 @gfs2_trans_begin(%struct.gfs2_sbd* %26, i64 %31, i32 %32)
  store i32 %33, i32* %11, align 4
  br label %38

34:                                               ; preds = %3
  %35 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %10, align 8
  %36 = load i64, i64* @RES_DINODE, align 8
  %37 = call i32 @gfs2_trans_begin(%struct.gfs2_sbd* %35, i64 %36, i32 0)
  store i32 %37, i32* %11, align 4
  br label %38

38:                                               ; preds = %34, %25
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i32, i32* %11, align 4
  store i32 %42, i32* %4, align 4
  br label %171

43:                                               ; preds = %38
  %44 = load %struct.gfs2_inode*, %struct.gfs2_inode** %9, align 8
  %45 = call i64 @gfs2_is_stuffed(%struct.gfs2_inode* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %43
  %48 = load %struct.inode*, %struct.inode** %8, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @stuffed_zero_range(%struct.inode* %48, i32 %49, i32 %50)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %161

55:                                               ; preds = %47
  br label %115

56:                                               ; preds = %43
  %57 = load %struct.inode*, %struct.inode** %8, align 8
  %58 = call i32 @i_blocksize(%struct.inode* %57)
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %14, align 4
  %61 = sub i32 %60, 1
  %62 = and i32 %59, %61
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %7, align 4
  %65 = add i32 %63, %64
  %66 = load i32, i32* %14, align 4
  %67 = sub i32 %66, 1
  %68 = and i32 %65, %67
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %12, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %98

71:                                               ; preds = %56
  %72 = load i32, i32* %7, align 4
  store i32 %72, i32* %15, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* %12, align 4
  %76 = sub i32 %74, %75
  %77 = icmp ugt i32 %73, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %71
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* %12, align 4
  %81 = sub i32 %79, %80
  store i32 %81, i32* %15, align 4
  br label %82

82:                                               ; preds = %78, %71
  %83 = load %struct.inode*, %struct.inode** %8, align 8
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* %15, align 4
  %86 = call i32 @gfs2_block_zero_range(%struct.inode* %83, i32 %84, i32 %85)
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %11, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  br label %161

90:                                               ; preds = %82
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* %7, align 4
  %93 = add i32 %91, %92
  %94 = load i32, i32* %14, align 4
  %95 = icmp ult i32 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %90
  store i32 0, i32* %13, align 4
  br label %97

97:                                               ; preds = %96, %90
  br label %98

98:                                               ; preds = %97, %56
  %99 = load i32, i32* %13, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %114

101:                                              ; preds = %98
  %102 = load %struct.inode*, %struct.inode** %8, align 8
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* %7, align 4
  %105 = add i32 %103, %104
  %106 = load i32, i32* %13, align 4
  %107 = sub i32 %105, %106
  %108 = load i32, i32* %13, align 4
  %109 = call i32 @gfs2_block_zero_range(%struct.inode* %102, i32 %107, i32 %108)
  store i32 %109, i32* %11, align 4
  %110 = load i32, i32* %11, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %101
  br label %161

113:                                              ; preds = %101
  br label %114

114:                                              ; preds = %113, %98
  br label %115

115:                                              ; preds = %114, %55
  %116 = load %struct.gfs2_inode*, %struct.gfs2_inode** %9, align 8
  %117 = call i64 @gfs2_is_jdata(%struct.gfs2_inode* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %131

119:                                              ; preds = %115
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  %124 = xor i1 %123, true
  %125 = zext i1 %124 to i32
  %126 = call i32 @BUG_ON(i32 %125)
  %127 = load %struct.inode*, %struct.inode** %8, align 8
  %128 = load i32, i32* %6, align 4
  %129 = load i32, i32* %7, align 4
  %130 = call i32 @gfs2_journaled_truncate_range(%struct.inode* %127, i32 %128, i32 %129)
  br label %139

131:                                              ; preds = %115
  %132 = load %struct.inode*, %struct.inode** %8, align 8
  %133 = load i32, i32* %6, align 4
  %134 = load i32, i32* %6, align 4
  %135 = load i32, i32* %7, align 4
  %136 = add i32 %134, %135
  %137 = sub i32 %136, 1
  %138 = call i32 @truncate_pagecache_range(%struct.inode* %132, i32 %133, i32 %137)
  br label %139

139:                                              ; preds = %131, %119
  %140 = load %struct.file*, %struct.file** %5, align 8
  %141 = call i32 @file_update_time(%struct.file* %140)
  %142 = load %struct.inode*, %struct.inode** %8, align 8
  %143 = call i32 @mark_inode_dirty(%struct.inode* %142)
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %139
  %149 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %10, align 8
  %150 = call i32 @gfs2_trans_end(%struct.gfs2_sbd* %149)
  br label %151

151:                                              ; preds = %148, %139
  %152 = load %struct.gfs2_inode*, %struct.gfs2_inode** %9, align 8
  %153 = call i64 @gfs2_is_stuffed(%struct.gfs2_inode* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %160, label %155

155:                                              ; preds = %151
  %156 = load %struct.gfs2_inode*, %struct.gfs2_inode** %9, align 8
  %157 = load i32, i32* %6, align 4
  %158 = load i32, i32* %7, align 4
  %159 = call i32 @punch_hole(%struct.gfs2_inode* %156, i32 %157, i32 %158)
  store i32 %159, i32* %11, align 4
  br label %160

160:                                              ; preds = %155, %151
  br label %161

161:                                              ; preds = %160, %112, %89, %54
  %162 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %161
  %167 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %10, align 8
  %168 = call i32 @gfs2_trans_end(%struct.gfs2_sbd* %167)
  br label %169

169:                                              ; preds = %166, %161
  %170 = load i32, i32* %11, align 4
  store i32 %170, i32* %4, align 4
  br label %171

171:                                              ; preds = %169, %41
  %172 = load i32, i32* %4, align 4
  ret i32 %172
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local %struct.gfs2_sbd* @GFS2_SB(%struct.inode*) #1

declare dso_local i64 @gfs2_is_jdata(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_trans_begin(%struct.gfs2_sbd*, i64, i32) #1

declare dso_local i64 @gfs2_is_stuffed(%struct.gfs2_inode*) #1

declare dso_local i32 @stuffed_zero_range(%struct.inode*, i32, i32) #1

declare dso_local i32 @i_blocksize(%struct.inode*) #1

declare dso_local i32 @gfs2_block_zero_range(%struct.inode*, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @gfs2_journaled_truncate_range(%struct.inode*, i32, i32) #1

declare dso_local i32 @truncate_pagecache_range(%struct.inode*, i32, i32) #1

declare dso_local i32 @file_update_time(%struct.file*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @gfs2_trans_end(%struct.gfs2_sbd*) #1

declare dso_local i32 @punch_hole(%struct.gfs2_inode*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
