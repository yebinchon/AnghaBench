; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_bmap.c_gfs2_iomap_begin_write.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_bmap.c_gfs2_iomap_begin_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.gfs2_trans* }
%struct.gfs2_trans = type { i64 }
%struct.inode = type { i32 }
%struct.iomap = type { i64, i32, i32*, i32 }
%struct.metapath = type { i32 }
%struct.gfs2_inode = type { i32 }
%struct.gfs2_sbd = type { %struct.inode* }
%struct.gfs2_alloc_parms = type { i32 }

@IOMAP_HOLE = common dso_local global i64 0, align 8
@RES_DINODE = common dso_local global i32 0, align 4
@RES_STATFS = common dso_local global i32 0, align 4
@RES_QUOTA = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_2__* null, align 8
@I_DIRTY_DATASYNC = common dso_local global i32 0, align 4
@gfs2_iomap_page_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64, i64, i32, %struct.iomap*, %struct.metapath*)* @gfs2_iomap_begin_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_iomap_begin_write(%struct.inode* %0, i64 %1, i64 %2, i32 %3, %struct.iomap* %4, %struct.metapath* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.iomap*, align 8
  %13 = alloca %struct.metapath*, align 8
  %14 = alloca %struct.gfs2_inode*, align 8
  %15 = alloca %struct.gfs2_sbd*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.gfs2_alloc_parms, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.gfs2_trans*, align 8
  store %struct.inode* %0, %struct.inode** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.iomap* %4, %struct.iomap** %12, align 8
  store %struct.metapath* %5, %struct.metapath** %13, align 8
  %23 = load %struct.inode*, %struct.inode** %8, align 8
  %24 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %23)
  store %struct.gfs2_inode* %24, %struct.gfs2_inode** %14, align 8
  %25 = load %struct.inode*, %struct.inode** %8, align 8
  %26 = call %struct.gfs2_sbd* @GFS2_SB(%struct.inode* %25)
  store %struct.gfs2_sbd* %26, %struct.gfs2_sbd** %15, align 8
  %27 = load %struct.gfs2_inode*, %struct.gfs2_inode** %14, align 8
  %28 = call i64 @gfs2_is_stuffed(%struct.gfs2_inode* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %6
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* %10, align 8
  %33 = add nsw i64 %31, %32
  %34 = load %struct.gfs2_inode*, %struct.gfs2_inode** %14, align 8
  %35 = call i64 @gfs2_max_stuffed_size(%struct.gfs2_inode* %34)
  %36 = icmp sgt i64 %33, %35
  br label %37

37:                                               ; preds = %30, %6
  %38 = phi i1 [ false, %6 ], [ %36, %30 ]
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %16, align 4
  %40 = load i32, i32* %16, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %37
  %43 = load %struct.iomap*, %struct.iomap** %12, align 8
  %44 = getelementptr inbounds %struct.iomap, %struct.iomap* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @IOMAP_HOLE, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %200

48:                                               ; preds = %42, %37
  %49 = bitcast %struct.gfs2_alloc_parms* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %49, i8 0, i64 4, i1 false)
  %50 = load %struct.gfs2_inode*, %struct.gfs2_inode** %14, align 8
  %51 = load %struct.iomap*, %struct.iomap** %12, align 8
  %52 = getelementptr inbounds %struct.iomap, %struct.iomap* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @gfs2_write_calc_reserv(%struct.gfs2_inode* %50, i32 %53, i32* %18, i32* %19)
  %55 = load i32, i32* %18, align 4
  %56 = load i32, i32* %19, align 4
  %57 = add i32 %55, %56
  %58 = getelementptr inbounds %struct.gfs2_alloc_parms, %struct.gfs2_alloc_parms* %20, i32 0, i32 0
  store i32 %57, i32* %58, align 4
  %59 = load %struct.gfs2_inode*, %struct.gfs2_inode** %14, align 8
  %60 = call i32 @gfs2_quota_lock_check(%struct.gfs2_inode* %59, %struct.gfs2_alloc_parms* %20)
  store i32 %60, i32* %17, align 4
  %61 = load i32, i32* %17, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %48
  %64 = load i32, i32* %17, align 4
  store i32 %64, i32* %7, align 4
  br label %222

65:                                               ; preds = %48
  %66 = load %struct.gfs2_inode*, %struct.gfs2_inode** %14, align 8
  %67 = call i32 @gfs2_inplace_reserve(%struct.gfs2_inode* %66, %struct.gfs2_alloc_parms* %20)
  store i32 %67, i32* %17, align 4
  %68 = load i32, i32* %17, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %218

71:                                               ; preds = %65
  %72 = load i32, i32* @RES_DINODE, align 4
  %73 = load i32, i32* %19, align 4
  %74 = add i32 %72, %73
  store i32 %74, i32* %21, align 4
  %75 = load %struct.gfs2_inode*, %struct.gfs2_inode** %14, align 8
  %76 = call i64 @gfs2_is_jdata(%struct.gfs2_inode* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %71
  %79 = load i32, i32* %18, align 4
  %80 = load i32, i32* %21, align 4
  %81 = add i32 %80, %79
  store i32 %81, i32* %21, align 4
  br label %82

82:                                               ; preds = %78, %71
  %83 = load i32, i32* %19, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %82
  %86 = load i32, i32* %18, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %85, %82
  %89 = load i32, i32* @RES_STATFS, align 4
  %90 = sext i32 %89 to i64
  %91 = load i64, i64* @RES_QUOTA, align 8
  %92 = add nsw i64 %90, %91
  %93 = load i32, i32* %21, align 4
  %94 = zext i32 %93 to i64
  %95 = add nsw i64 %94, %92
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %21, align 4
  br label %97

97:                                               ; preds = %88, %85
  %98 = load %struct.inode*, %struct.inode** %8, align 8
  %99 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %15, align 8
  %100 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %99, i32 0, i32 0
  %101 = load %struct.inode*, %struct.inode** %100, align 8
  %102 = icmp eq %struct.inode* %98, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %97
  %104 = load i32, i32* @RES_STATFS, align 4
  %105 = mul nsw i32 2, %104
  %106 = load i32, i32* %21, align 4
  %107 = add i32 %106, %105
  store i32 %107, i32* %21, align 4
  br label %108

108:                                              ; preds = %103, %97
  %109 = load %struct.gfs2_inode*, %struct.gfs2_inode** %14, align 8
  %110 = load i32, i32* %18, align 4
  %111 = load i32, i32* %19, align 4
  %112 = add i32 %110, %111
  %113 = call i64 @gfs2_rg_blocks(%struct.gfs2_inode* %109, i32 %112)
  %114 = load i32, i32* %21, align 4
  %115 = zext i32 %114 to i64
  %116 = add nsw i64 %115, %113
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %21, align 4
  %118 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %15, align 8
  %119 = load i32, i32* %21, align 4
  %120 = load %struct.iomap*, %struct.iomap** %12, align 8
  %121 = getelementptr inbounds %struct.iomap, %struct.iomap* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.inode*, %struct.inode** %8, align 8
  %124 = getelementptr inbounds %struct.inode, %struct.inode* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = ashr i32 %122, %125
  %127 = call i32 @gfs2_trans_begin(%struct.gfs2_sbd* %118, i32 %119, i32 %126)
  store i32 %127, i32* %17, align 4
  %128 = load i32, i32* %17, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %108
  br label %215

131:                                              ; preds = %108
  %132 = load i32, i32* %16, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %158

134:                                              ; preds = %131
  %135 = load %struct.gfs2_inode*, %struct.gfs2_inode** %14, align 8
  %136 = call i32 @gfs2_unstuff_dinode(%struct.gfs2_inode* %135, i32* null)
  store i32 %136, i32* %17, align 4
  %137 = load i32, i32* %17, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %134
  br label %212

140:                                              ; preds = %134
  %141 = load %struct.metapath*, %struct.metapath** %13, align 8
  %142 = call i32 @release_metapath(%struct.metapath* %141)
  %143 = load %struct.inode*, %struct.inode** %8, align 8
  %144 = load %struct.iomap*, %struct.iomap** %12, align 8
  %145 = getelementptr inbounds %struct.iomap, %struct.iomap* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.iomap*, %struct.iomap** %12, align 8
  %148 = getelementptr inbounds %struct.iomap, %struct.iomap* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* %11, align 4
  %151 = load %struct.iomap*, %struct.iomap** %12, align 8
  %152 = load %struct.metapath*, %struct.metapath** %13, align 8
  %153 = call i32 @gfs2_iomap_get(%struct.inode* %143, i32 %146, i32 %149, i32 %150, %struct.iomap* %151, %struct.metapath* %152)
  store i32 %153, i32* %17, align 4
  %154 = load i32, i32* %17, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %140
  br label %212

157:                                              ; preds = %140
  br label %158

158:                                              ; preds = %157, %131
  %159 = load %struct.iomap*, %struct.iomap** %12, align 8
  %160 = getelementptr inbounds %struct.iomap, %struct.iomap* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @IOMAP_HOLE, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %185

164:                                              ; preds = %158
  %165 = load %struct.inode*, %struct.inode** %8, align 8
  %166 = load %struct.iomap*, %struct.iomap** %12, align 8
  %167 = load %struct.metapath*, %struct.metapath** %13, align 8
  %168 = call i32 @gfs2_iomap_alloc(%struct.inode* %165, %struct.iomap* %166, %struct.metapath* %167)
  store i32 %168, i32* %17, align 4
  %169 = load i32, i32* %17, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %184

171:                                              ; preds = %164
  %172 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %15, align 8
  %173 = call i32 @gfs2_trans_end(%struct.gfs2_sbd* %172)
  %174 = load %struct.gfs2_inode*, %struct.gfs2_inode** %14, align 8
  %175 = call i32 @gfs2_inplace_release(%struct.gfs2_inode* %174)
  %176 = load %struct.gfs2_inode*, %struct.gfs2_inode** %14, align 8
  %177 = load %struct.iomap*, %struct.iomap** %12, align 8
  %178 = getelementptr inbounds %struct.iomap, %struct.iomap* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.iomap*, %struct.iomap** %12, align 8
  %181 = getelementptr inbounds %struct.iomap, %struct.iomap* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @punch_hole(%struct.gfs2_inode* %176, i32 %179, i32 %182)
  br label %218

184:                                              ; preds = %164
  br label %185

185:                                              ; preds = %184, %158
  %186 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 0
  %188 = load %struct.gfs2_trans*, %struct.gfs2_trans** %187, align 8
  store %struct.gfs2_trans* %188, %struct.gfs2_trans** %22, align 8
  %189 = load %struct.gfs2_trans*, %struct.gfs2_trans** %22, align 8
  %190 = getelementptr inbounds %struct.gfs2_trans, %struct.gfs2_trans* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %185
  %194 = load %struct.inode*, %struct.inode** %8, align 8
  %195 = load i32, i32* @I_DIRTY_DATASYNC, align 4
  %196 = call i32 @__mark_inode_dirty(%struct.inode* %194, i32 %195)
  br label %197

197:                                              ; preds = %193, %185
  %198 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %15, align 8
  %199 = call i32 @gfs2_trans_end(%struct.gfs2_sbd* %198)
  br label %200

200:                                              ; preds = %197, %42
  %201 = load %struct.gfs2_inode*, %struct.gfs2_inode** %14, align 8
  %202 = call i64 @gfs2_is_stuffed(%struct.gfs2_inode* %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %208, label %204

204:                                              ; preds = %200
  %205 = load %struct.gfs2_inode*, %struct.gfs2_inode** %14, align 8
  %206 = call i64 @gfs2_is_jdata(%struct.gfs2_inode* %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %204, %200
  %209 = load %struct.iomap*, %struct.iomap** %12, align 8
  %210 = getelementptr inbounds %struct.iomap, %struct.iomap* %209, i32 0, i32 2
  store i32* @gfs2_iomap_page_ops, i32** %210, align 8
  br label %211

211:                                              ; preds = %208, %204
  store i32 0, i32* %7, align 4
  br label %222

212:                                              ; preds = %156, %139
  %213 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %15, align 8
  %214 = call i32 @gfs2_trans_end(%struct.gfs2_sbd* %213)
  br label %215

215:                                              ; preds = %212, %130
  %216 = load %struct.gfs2_inode*, %struct.gfs2_inode** %14, align 8
  %217 = call i32 @gfs2_inplace_release(%struct.gfs2_inode* %216)
  br label %218

218:                                              ; preds = %215, %171, %70
  %219 = load %struct.gfs2_inode*, %struct.gfs2_inode** %14, align 8
  %220 = call i32 @gfs2_quota_unlock(%struct.gfs2_inode* %219)
  %221 = load i32, i32* %17, align 4
  store i32 %221, i32* %7, align 4
  br label %222

222:                                              ; preds = %218, %211, %63
  %223 = load i32, i32* %7, align 4
  ret i32 %223
}

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local %struct.gfs2_sbd* @GFS2_SB(%struct.inode*) #1

declare dso_local i64 @gfs2_is_stuffed(%struct.gfs2_inode*) #1

declare dso_local i64 @gfs2_max_stuffed_size(%struct.gfs2_inode*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @gfs2_write_calc_reserv(%struct.gfs2_inode*, i32, i32*, i32*) #1

declare dso_local i32 @gfs2_quota_lock_check(%struct.gfs2_inode*, %struct.gfs2_alloc_parms*) #1

declare dso_local i32 @gfs2_inplace_reserve(%struct.gfs2_inode*, %struct.gfs2_alloc_parms*) #1

declare dso_local i64 @gfs2_is_jdata(%struct.gfs2_inode*) #1

declare dso_local i64 @gfs2_rg_blocks(%struct.gfs2_inode*, i32) #1

declare dso_local i32 @gfs2_trans_begin(%struct.gfs2_sbd*, i32, i32) #1

declare dso_local i32 @gfs2_unstuff_dinode(%struct.gfs2_inode*, i32*) #1

declare dso_local i32 @release_metapath(%struct.metapath*) #1

declare dso_local i32 @gfs2_iomap_get(%struct.inode*, i32, i32, i32, %struct.iomap*, %struct.metapath*) #1

declare dso_local i32 @gfs2_iomap_alloc(%struct.inode*, %struct.iomap*, %struct.metapath*) #1

declare dso_local i32 @gfs2_trans_end(%struct.gfs2_sbd*) #1

declare dso_local i32 @gfs2_inplace_release(%struct.gfs2_inode*) #1

declare dso_local i32 @punch_hole(%struct.gfs2_inode*, i32, i32) #1

declare dso_local i32 @__mark_inode_dirty(%struct.inode*, i32) #1

declare dso_local i32 @gfs2_quota_unlock(%struct.gfs2_inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
