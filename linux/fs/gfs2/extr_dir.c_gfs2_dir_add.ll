; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_dir.c_gfs2_dir_add.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_dir.c_gfs2_dir_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.qstr = type { i32 }
%struct.gfs2_inode = type { i32, i64, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, %struct.timespec64, %struct.timespec64 }
%struct.timespec64 = type { i32, i32 }
%struct.gfs2_diradd = type { %struct.buffer_head*, %struct.gfs2_dirent* }
%struct.buffer_head = type { i64 }
%struct.gfs2_dirent = type { i8*, i8* }
%struct.gfs2_leaf = type { i32, i32, i32 }

@gfs2_dirent_find_space = common dso_local global i32 0, align 4
@GFS2_DIF_EXHASH = common dso_local global i32 0, align 4
@GFS2_DIR_MAX_DEPTH = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gfs2_dir_add(%struct.inode* %0, %struct.qstr* %1, %struct.gfs2_inode* %2, %struct.gfs2_diradd* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.qstr*, align 8
  %8 = alloca %struct.gfs2_inode*, align 8
  %9 = alloca %struct.gfs2_diradd*, align 8
  %10 = alloca %struct.gfs2_inode*, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca %struct.gfs2_dirent*, align 8
  %13 = alloca %struct.timespec64, align 4
  %14 = alloca %struct.gfs2_leaf*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.timespec64, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.qstr* %1, %struct.qstr** %7, align 8
  store %struct.gfs2_inode* %2, %struct.gfs2_inode** %8, align 8
  store %struct.gfs2_diradd* %3, %struct.gfs2_diradd** %9, align 8
  %17 = load %struct.inode*, %struct.inode** %6, align 8
  %18 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %17)
  store %struct.gfs2_inode* %18, %struct.gfs2_inode** %10, align 8
  %19 = load %struct.gfs2_diradd*, %struct.gfs2_diradd** %9, align 8
  %20 = getelementptr inbounds %struct.gfs2_diradd, %struct.gfs2_diradd* %19, i32 0, i32 0
  %21 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  store %struct.buffer_head* %21, %struct.buffer_head** %11, align 8
  %22 = load %struct.gfs2_diradd*, %struct.gfs2_diradd** %9, align 8
  %23 = getelementptr inbounds %struct.gfs2_diradd, %struct.gfs2_diradd* %22, i32 0, i32 1
  %24 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %23, align 8
  store %struct.gfs2_dirent* %24, %struct.gfs2_dirent** %12, align 8
  br label %25

25:                                               ; preds = %4, %144, %151, %178, %186
  %26 = load %struct.gfs2_diradd*, %struct.gfs2_diradd** %9, align 8
  %27 = getelementptr inbounds %struct.gfs2_diradd, %struct.gfs2_diradd* %26, i32 0, i32 0
  %28 = load %struct.buffer_head*, %struct.buffer_head** %27, align 8
  %29 = icmp eq %struct.buffer_head* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.inode*, %struct.inode** %6, align 8
  %32 = load %struct.qstr*, %struct.qstr** %7, align 8
  %33 = load i32, i32* @gfs2_dirent_find_space, align 4
  %34 = call %struct.gfs2_dirent* @gfs2_dirent_search(%struct.inode* %31, %struct.qstr* %32, i32 %33, %struct.buffer_head** %11)
  store %struct.gfs2_dirent* %34, %struct.gfs2_dirent** %12, align 8
  br label %35

35:                                               ; preds = %30, %25
  %36 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %12, align 8
  %37 = icmp ne %struct.gfs2_dirent* %36, null
  br i1 %37, label %38, label %131

38:                                               ; preds = %35
  %39 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %12, align 8
  %40 = call i64 @IS_ERR(%struct.gfs2_dirent* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %12, align 8
  %44 = call i32 @PTR_ERR(%struct.gfs2_dirent* %43)
  store i32 %44, i32* %5, align 4
  br label %192

45:                                               ; preds = %38
  %46 = load %struct.inode*, %struct.inode** %6, align 8
  %47 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %12, align 8
  %48 = load %struct.qstr*, %struct.qstr** %7, align 8
  %49 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %50 = call %struct.gfs2_dirent* @gfs2_init_dirent(%struct.inode* %46, %struct.gfs2_dirent* %47, %struct.qstr* %48, %struct.buffer_head* %49)
  store %struct.gfs2_dirent* %50, %struct.gfs2_dirent** %12, align 8
  %51 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %52 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %12, align 8
  %53 = call i32 @gfs2_inum_out(%struct.gfs2_inode* %51, %struct.gfs2_dirent* %52)
  %54 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %55 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @IF2DT(i32 %57)
  %59 = call i8* @cpu_to_be16(i32 %58)
  %60 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %12, align 8
  %61 = getelementptr inbounds %struct.gfs2_dirent, %struct.gfs2_dirent* %60, i32 0, i32 1
  store i8* %59, i8** %61, align 8
  %62 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %63 = call i32 @gfs2_inode_ra_len(%struct.gfs2_inode* %62)
  %64 = call i8* @cpu_to_be16(i32 %63)
  %65 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %12, align 8
  %66 = getelementptr inbounds %struct.gfs2_dirent, %struct.gfs2_dirent* %65, i32 0, i32 0
  store i8* %64, i8** %66, align 8
  %67 = load %struct.gfs2_inode*, %struct.gfs2_inode** %10, align 8
  %68 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %67, i32 0, i32 2
  %69 = call i64 @current_time(%struct.TYPE_3__* %68)
  %70 = bitcast %struct.timespec64* %16 to i64*
  store i64 %69, i64* %70, align 4
  %71 = bitcast %struct.timespec64* %13 to i8*
  %72 = bitcast %struct.timespec64* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %71, i8* align 4 %72, i64 8, i1 false)
  %73 = load %struct.gfs2_inode*, %struct.gfs2_inode** %10, align 8
  %74 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @GFS2_DIF_EXHASH, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %97

79:                                               ; preds = %45
  %80 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %81 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = inttoptr i64 %82 to %struct.gfs2_leaf*
  store %struct.gfs2_leaf* %83, %struct.gfs2_leaf** %14, align 8
  %84 = load %struct.gfs2_leaf*, %struct.gfs2_leaf** %14, align 8
  %85 = getelementptr inbounds %struct.gfs2_leaf, %struct.gfs2_leaf* %84, i32 0, i32 2
  %86 = call i32 @be16_add_cpu(i32* %85, i32 1)
  %87 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %13, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @cpu_to_be32(i32 %88)
  %90 = load %struct.gfs2_leaf*, %struct.gfs2_leaf** %14, align 8
  %91 = getelementptr inbounds %struct.gfs2_leaf, %struct.gfs2_leaf* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %13, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @cpu_to_be64(i32 %93)
  %95 = load %struct.gfs2_leaf*, %struct.gfs2_leaf** %14, align 8
  %96 = getelementptr inbounds %struct.gfs2_leaf, %struct.gfs2_leaf* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 4
  br label %97

97:                                               ; preds = %79, %45
  %98 = load %struct.gfs2_diradd*, %struct.gfs2_diradd** %9, align 8
  %99 = getelementptr inbounds %struct.gfs2_diradd, %struct.gfs2_diradd* %98, i32 0, i32 1
  store %struct.gfs2_dirent* null, %struct.gfs2_dirent** %99, align 8
  %100 = load %struct.gfs2_diradd*, %struct.gfs2_diradd** %9, align 8
  %101 = getelementptr inbounds %struct.gfs2_diradd, %struct.gfs2_diradd* %100, i32 0, i32 0
  store %struct.buffer_head* null, %struct.buffer_head** %101, align 8
  %102 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %103 = call i32 @brelse(%struct.buffer_head* %102)
  %104 = load %struct.gfs2_inode*, %struct.gfs2_inode** %10, align 8
  %105 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %105, align 4
  %108 = load %struct.gfs2_inode*, %struct.gfs2_inode** %10, align 8
  %109 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 2
  %111 = load %struct.gfs2_inode*, %struct.gfs2_inode** %10, align 8
  %112 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 1
  %114 = bitcast %struct.timespec64* %113 to i8*
  %115 = bitcast %struct.timespec64* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %114, i8* align 4 %115, i64 8, i1 false)
  %116 = bitcast %struct.timespec64* %110 to i8*
  %117 = bitcast %struct.timespec64* %113 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %116, i8* align 4 %117, i64 8, i1 false)
  %118 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %119 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i64 @S_ISDIR(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %97
  %125 = load %struct.gfs2_inode*, %struct.gfs2_inode** %10, align 8
  %126 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %125, i32 0, i32 2
  %127 = call i32 @inc_nlink(%struct.TYPE_3__* %126)
  br label %128

128:                                              ; preds = %124, %97
  %129 = load %struct.inode*, %struct.inode** %6, align 8
  %130 = call i32 @mark_inode_dirty(%struct.inode* %129)
  store i32 0, i32* %15, align 4
  br label %190

131:                                              ; preds = %35
  %132 = load %struct.gfs2_inode*, %struct.gfs2_inode** %10, align 8
  %133 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @GFS2_DIF_EXHASH, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %145, label %138

138:                                              ; preds = %131
  %139 = load %struct.inode*, %struct.inode** %6, align 8
  %140 = call i32 @dir_make_exhash(%struct.inode* %139)
  store i32 %140, i32* %15, align 4
  %141 = load i32, i32* %15, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %138
  br label %190

144:                                              ; preds = %138
  br label %25

145:                                              ; preds = %131
  %146 = load %struct.inode*, %struct.inode** %6, align 8
  %147 = load %struct.qstr*, %struct.qstr** %7, align 8
  %148 = call i32 @dir_split_leaf(%struct.inode* %146, %struct.qstr* %147)
  store i32 %148, i32* %15, align 4
  %149 = load i32, i32* %15, align 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %145
  br label %25

152:                                              ; preds = %145
  %153 = load i32, i32* %15, align 4
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %152
  br label %190

156:                                              ; preds = %152
  %157 = load %struct.gfs2_inode*, %struct.gfs2_inode** %10, align 8
  %158 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @GFS2_DIR_MAX_DEPTH, align 8
  %161 = icmp slt i64 %159, %160
  br i1 %161, label %162, label %180

162:                                              ; preds = %156
  %163 = load %struct.gfs2_inode*, %struct.gfs2_inode** %10, align 8
  %164 = call i32 @dir_double_exhash(%struct.gfs2_inode* %163)
  store i32 %164, i32* %15, align 4
  %165 = load i32, i32* %15, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %162
  br label %190

168:                                              ; preds = %162
  %169 = load %struct.inode*, %struct.inode** %6, align 8
  %170 = load %struct.qstr*, %struct.qstr** %7, align 8
  %171 = call i32 @dir_split_leaf(%struct.inode* %169, %struct.qstr* %170)
  store i32 %171, i32* %15, align 4
  %172 = load i32, i32* %15, align 4
  %173 = icmp slt i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %168
  br label %190

175:                                              ; preds = %168
  %176 = load i32, i32* %15, align 4
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %175
  br label %25

179:                                              ; preds = %175
  br label %180

180:                                              ; preds = %179, %156
  %181 = load %struct.inode*, %struct.inode** %6, align 8
  %182 = load %struct.qstr*, %struct.qstr** %7, align 8
  %183 = call i32 @dir_new_leaf(%struct.inode* %181, %struct.qstr* %182)
  store i32 %183, i32* %15, align 4
  %184 = load i32, i32* %15, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %187, label %186

186:                                              ; preds = %180
  br label %25

187:                                              ; preds = %180
  %188 = load i32, i32* @ENOSPC, align 4
  %189 = sub nsw i32 0, %188
  store i32 %189, i32* %15, align 4
  br label %190

190:                                              ; preds = %187, %174, %167, %155, %143, %128
  %191 = load i32, i32* %15, align 4
  store i32 %191, i32* %5, align 4
  br label %192

192:                                              ; preds = %190, %42
  %193 = load i32, i32* %5, align 4
  ret i32 %193
}

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local %struct.gfs2_dirent* @gfs2_dirent_search(%struct.inode*, %struct.qstr*, i32, %struct.buffer_head**) #1

declare dso_local i64 @IS_ERR(%struct.gfs2_dirent*) #1

declare dso_local i32 @PTR_ERR(%struct.gfs2_dirent*) #1

declare dso_local %struct.gfs2_dirent* @gfs2_init_dirent(%struct.inode*, %struct.gfs2_dirent*, %struct.qstr*, %struct.buffer_head*) #1

declare dso_local i32 @gfs2_inum_out(%struct.gfs2_inode*, %struct.gfs2_dirent*) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @IF2DT(i32) #1

declare dso_local i32 @gfs2_inode_ra_len(%struct.gfs2_inode*) #1

declare dso_local i64 @current_time(%struct.TYPE_3__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @be16_add_cpu(i32*, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @inc_nlink(%struct.TYPE_3__*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @dir_make_exhash(%struct.inode*) #1

declare dso_local i32 @dir_split_leaf(%struct.inode*, %struct.qstr*) #1

declare dso_local i32 @dir_double_exhash(%struct.gfs2_inode*) #1

declare dso_local i32 @dir_new_leaf(%struct.inode*, %struct.qstr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
