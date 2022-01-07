; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_log_recover.c_xlog_recover_get_buf_lsn.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_log_recover.c_xlog_recover_get_buf_lsn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.xfs_buf = type { i8* }
%struct.xfs_btree_block = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.xfs_agf = type { i32, i32 }
%struct.xfs_agfl = type { i32, i32 }
%struct.xfs_agi = type { i32, i32 }
%struct.xfs_dsymlink_hdr = type { i32, i32 }
%struct.xfs_dir3_blk_hdr = type { i32, i32 }
%struct.xfs_dsb = type { i32, i32, i32 }
%struct.xfs_da_blkinfo = type { i32 }
%struct.xfs_da3_blkinfo = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.xfs_mount*, %struct.xfs_buf*)* @xlog_recover_get_buf_lsn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @xlog_recover_get_buf_lsn(%struct.xfs_mount* %0, %struct.xfs_buf* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.xfs_mount*, align 8
  %5 = alloca %struct.xfs_buf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.xfs_btree_block*, align 8
  %13 = alloca %struct.xfs_btree_block*, align 8
  store %struct.xfs_mount* %0, %struct.xfs_mount** %4, align 8
  store %struct.xfs_buf* %1, %struct.xfs_buf** %5, align 8
  %14 = load %struct.xfs_buf*, %struct.xfs_buf** %5, align 8
  %15 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %9, align 8
  store i64 -1, i64* %11, align 8
  %17 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %18 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %17, i32 0, i32 0
  %19 = call i32 @xfs_sb_version_hascrc(%struct.TYPE_9__* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  br label %172

22:                                               ; preds = %2
  %23 = load i8*, i8** %9, align 8
  %24 = bitcast i8* %23 to i32*
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @be32_to_cpu(i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  switch i32 %27, label %119 [
    i32 151, label %28
    i32 149, label %28
    i32 150, label %28
    i32 148, label %28
    i32 130, label %28
    i32 131, label %28
    i32 133, label %28
    i32 132, label %28
    i32 143, label %41
    i32 142, label %41
    i32 146, label %54
    i32 147, label %63
    i32 145, label %72
    i32 128, label %81
    i32 139, label %90
    i32 138, label %90
    i32 137, label %90
    i32 144, label %99
    i32 129, label %100
  ]

28:                                               ; preds = %22, %22, %22, %22, %22, %22, %22, %22
  %29 = load i8*, i8** %9, align 8
  %30 = bitcast i8* %29 to %struct.xfs_btree_block*
  store %struct.xfs_btree_block* %30, %struct.xfs_btree_block** %12, align 8
  %31 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %12, align 8
  %32 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @be64_to_cpu(i32 %35)
  store i64 %36, i64* %11, align 8
  %37 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %12, align 8
  %38 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  store i32* %40, i32** %10, align 8
  br label %120

41:                                               ; preds = %22, %22
  %42 = load i8*, i8** %9, align 8
  %43 = bitcast i8* %42 to %struct.xfs_btree_block*
  store %struct.xfs_btree_block* %43, %struct.xfs_btree_block** %13, align 8
  %44 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %13, align 8
  %45 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @be64_to_cpu(i32 %48)
  store i64 %49, i64* %11, align 8
  %50 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %13, align 8
  %51 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  store i32* %53, i32** %10, align 8
  br label %120

54:                                               ; preds = %22
  %55 = load i8*, i8** %9, align 8
  %56 = bitcast i8* %55 to %struct.xfs_agf*
  %57 = getelementptr inbounds %struct.xfs_agf, %struct.xfs_agf* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @be64_to_cpu(i32 %58)
  store i64 %59, i64* %11, align 8
  %60 = load i8*, i8** %9, align 8
  %61 = bitcast i8* %60 to %struct.xfs_agf*
  %62 = getelementptr inbounds %struct.xfs_agf, %struct.xfs_agf* %61, i32 0, i32 0
  store i32* %62, i32** %10, align 8
  br label %120

63:                                               ; preds = %22
  %64 = load i8*, i8** %9, align 8
  %65 = bitcast i8* %64 to %struct.xfs_agfl*
  %66 = getelementptr inbounds %struct.xfs_agfl, %struct.xfs_agfl* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @be64_to_cpu(i32 %67)
  store i64 %68, i64* %11, align 8
  %69 = load i8*, i8** %9, align 8
  %70 = bitcast i8* %69 to %struct.xfs_agfl*
  %71 = getelementptr inbounds %struct.xfs_agfl, %struct.xfs_agfl* %70, i32 0, i32 0
  store i32* %71, i32** %10, align 8
  br label %120

72:                                               ; preds = %22
  %73 = load i8*, i8** %9, align 8
  %74 = bitcast i8* %73 to %struct.xfs_agi*
  %75 = getelementptr inbounds %struct.xfs_agi, %struct.xfs_agi* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @be64_to_cpu(i32 %76)
  store i64 %77, i64* %11, align 8
  %78 = load i8*, i8** %9, align 8
  %79 = bitcast i8* %78 to %struct.xfs_agi*
  %80 = getelementptr inbounds %struct.xfs_agi, %struct.xfs_agi* %79, i32 0, i32 0
  store i32* %80, i32** %10, align 8
  br label %120

81:                                               ; preds = %22
  %82 = load i8*, i8** %9, align 8
  %83 = bitcast i8* %82 to %struct.xfs_dsymlink_hdr*
  %84 = getelementptr inbounds %struct.xfs_dsymlink_hdr, %struct.xfs_dsymlink_hdr* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @be64_to_cpu(i32 %85)
  store i64 %86, i64* %11, align 8
  %87 = load i8*, i8** %9, align 8
  %88 = bitcast i8* %87 to %struct.xfs_dsymlink_hdr*
  %89 = getelementptr inbounds %struct.xfs_dsymlink_hdr, %struct.xfs_dsymlink_hdr* %88, i32 0, i32 0
  store i32* %89, i32** %10, align 8
  br label %120

90:                                               ; preds = %22, %22, %22
  %91 = load i8*, i8** %9, align 8
  %92 = bitcast i8* %91 to %struct.xfs_dir3_blk_hdr*
  %93 = getelementptr inbounds %struct.xfs_dir3_blk_hdr, %struct.xfs_dir3_blk_hdr* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i64 @be64_to_cpu(i32 %94)
  store i64 %95, i64* %11, align 8
  %96 = load i8*, i8** %9, align 8
  %97 = bitcast i8* %96 to %struct.xfs_dir3_blk_hdr*
  %98 = getelementptr inbounds %struct.xfs_dir3_blk_hdr, %struct.xfs_dir3_blk_hdr* %97, i32 0, i32 0
  store i32* %98, i32** %10, align 8
  br label %120

99:                                               ; preds = %22
  br label %172

100:                                              ; preds = %22
  %101 = load i8*, i8** %9, align 8
  %102 = bitcast i8* %101 to %struct.xfs_dsb*
  %103 = getelementptr inbounds %struct.xfs_dsb, %struct.xfs_dsb* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = call i64 @be64_to_cpu(i32 %104)
  store i64 %105, i64* %11, align 8
  %106 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %107 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %106, i32 0, i32 0
  %108 = call i32 @xfs_sb_version_hasmetauuid(%struct.TYPE_9__* %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %100
  %111 = load i8*, i8** %9, align 8
  %112 = bitcast i8* %111 to %struct.xfs_dsb*
  %113 = getelementptr inbounds %struct.xfs_dsb, %struct.xfs_dsb* %112, i32 0, i32 1
  store i32* %113, i32** %10, align 8
  br label %118

114:                                              ; preds = %100
  %115 = load i8*, i8** %9, align 8
  %116 = bitcast i8* %115 to %struct.xfs_dsb*
  %117 = getelementptr inbounds %struct.xfs_dsb, %struct.xfs_dsb* %116, i32 0, i32 0
  store i32* %117, i32** %10, align 8
  br label %118

118:                                              ; preds = %114, %110
  br label %120

119:                                              ; preds = %22
  br label %120

120:                                              ; preds = %119, %118, %90, %81, %72, %63, %54, %41, %28
  %121 = load i64, i64* %11, align 8
  %122 = icmp ne i64 %121, -1
  br i1 %122, label %123, label %133

123:                                              ; preds = %120
  %124 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %125 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 1
  %127 = load i32*, i32** %10, align 8
  %128 = call i32 @uuid_equal(i32* %126, i32* %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %123
  br label %172

131:                                              ; preds = %123
  %132 = load i64, i64* %11, align 8
  store i64 %132, i64* %3, align 8
  br label %173

133:                                              ; preds = %120
  %134 = load i8*, i8** %9, align 8
  %135 = bitcast i8* %134 to %struct.xfs_da_blkinfo*
  %136 = getelementptr inbounds %struct.xfs_da_blkinfo, %struct.xfs_da_blkinfo* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @be16_to_cpu(i32 %137)
  store i32 %138, i32* %8, align 4
  %139 = load i32, i32* %8, align 4
  switch i32 %139, label %149 [
    i32 136, label %140
    i32 135, label %140
    i32 141, label %140
  ]

140:                                              ; preds = %133, %133, %133
  %141 = load i8*, i8** %9, align 8
  %142 = bitcast i8* %141 to %struct.xfs_da3_blkinfo*
  %143 = getelementptr inbounds %struct.xfs_da3_blkinfo, %struct.xfs_da3_blkinfo* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i64 @be64_to_cpu(i32 %144)
  store i64 %145, i64* %11, align 8
  %146 = load i8*, i8** %9, align 8
  %147 = bitcast i8* %146 to %struct.xfs_da3_blkinfo*
  %148 = getelementptr inbounds %struct.xfs_da3_blkinfo, %struct.xfs_da3_blkinfo* %147, i32 0, i32 0
  store i32* %148, i32** %10, align 8
  br label %150

149:                                              ; preds = %133
  br label %150

150:                                              ; preds = %149, %140
  %151 = load i64, i64* %11, align 8
  %152 = icmp ne i64 %151, -1
  br i1 %152, label %153, label %163

153:                                              ; preds = %150
  %154 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %155 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 0
  %157 = load i32*, i32** %10, align 8
  %158 = call i32 @uuid_equal(i32* %156, i32* %157)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %161, label %160

160:                                              ; preds = %153
  br label %172

161:                                              ; preds = %153
  %162 = load i64, i64* %11, align 8
  store i64 %162, i64* %3, align 8
  br label %173

163:                                              ; preds = %150
  %164 = load i8*, i8** %9, align 8
  %165 = bitcast i8* %164 to i32*
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @be16_to_cpu(i32 %166)
  store i32 %167, i32* %7, align 4
  %168 = load i32, i32* %7, align 4
  switch i32 %168, label %170 [
    i32 134, label %169
    i32 140, label %169
  ]

169:                                              ; preds = %163, %163
  br label %172

170:                                              ; preds = %163
  br label %171

171:                                              ; preds = %170
  br label %172

172:                                              ; preds = %171, %169, %160, %130, %99, %21
  store i64 -1, i64* %3, align 8
  br label %173

173:                                              ; preds = %172, %161, %131
  %174 = load i64, i64* %3, align 8
  ret i64 %174
}

declare dso_local i32 @xfs_sb_version_hascrc(%struct.TYPE_9__*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i32 @xfs_sb_version_hasmetauuid(%struct.TYPE_9__*) #1

declare dso_local i32 @uuid_equal(i32*, i32*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
