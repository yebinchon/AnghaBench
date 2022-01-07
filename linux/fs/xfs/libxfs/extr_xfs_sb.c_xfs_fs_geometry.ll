; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_sb.c_xfs_fs_geometry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_sb.c_xfs_fs_geometry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_sb = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.xfs_fsop_geom = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@XFS_FSOP_GEOM_VERSION = common dso_local global i32 0, align 4
@XFS_FSOP_GEOM_FLAGS_NLINK = common dso_local global i32 0, align 4
@XFS_FSOP_GEOM_FLAGS_DIRV2 = common dso_local global i32 0, align 4
@XFS_FSOP_GEOM_FLAGS_EXTFLG = common dso_local global i32 0, align 4
@XFS_FSOP_GEOM_FLAGS_ATTR = common dso_local global i32 0, align 4
@XFS_FSOP_GEOM_FLAGS_QUOTA = common dso_local global i32 0, align 4
@XFS_FSOP_GEOM_FLAGS_IALIGN = common dso_local global i32 0, align 4
@XFS_FSOP_GEOM_FLAGS_DALIGN = common dso_local global i32 0, align 4
@XFS_FSOP_GEOM_FLAGS_SECTOR = common dso_local global i32 0, align 4
@XFS_FSOP_GEOM_FLAGS_DIRV2CI = common dso_local global i32 0, align 4
@XFS_FSOP_GEOM_FLAGS_LAZYSB = common dso_local global i32 0, align 4
@XFS_FSOP_GEOM_FLAGS_ATTR2 = common dso_local global i32 0, align 4
@XFS_FSOP_GEOM_FLAGS_PROJID32 = common dso_local global i32 0, align 4
@XFS_FSOP_GEOM_FLAGS_V5SB = common dso_local global i32 0, align 4
@XFS_FSOP_GEOM_FLAGS_FTYPE = common dso_local global i32 0, align 4
@XFS_FSOP_GEOM_FLAGS_FINOBT = common dso_local global i32 0, align 4
@XFS_FSOP_GEOM_FLAGS_SPINODES = common dso_local global i32 0, align 4
@XFS_FSOP_GEOM_FLAGS_RMAPBT = common dso_local global i32 0, align 4
@XFS_FSOP_GEOM_FLAGS_REFLINK = common dso_local global i32 0, align 4
@BBSIZE = common dso_local global i32 0, align 4
@XFS_FSOP_GEOM_FLAGS_LOGV2 = common dso_local global i32 0, align 4
@XFS_FSOP_GEOM_VERSION_V5 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_fs_geometry(%struct.xfs_sb* %0, %struct.xfs_fsop_geom* %1, i32 %2) #0 {
  %4 = alloca %struct.xfs_sb*, align 8
  %5 = alloca %struct.xfs_fsop_geom*, align 8
  %6 = alloca i32, align 4
  store %struct.xfs_sb* %0, %struct.xfs_sb** %4, align 8
  store %struct.xfs_fsop_geom* %1, %struct.xfs_fsop_geom** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.xfs_fsop_geom*, %struct.xfs_fsop_geom** %5, align 8
  %8 = call i32 @memset(%struct.xfs_fsop_geom* %7, i32 0, i32 84)
  %9 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %10 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.xfs_fsop_geom*, %struct.xfs_fsop_geom** %5, align 8
  %13 = getelementptr inbounds %struct.xfs_fsop_geom, %struct.xfs_fsop_geom* %12, i32 0, i32 20
  store i32 %11, i32* %13, align 4
  %14 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %15 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %14, i32 0, i32 16
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.xfs_fsop_geom*, %struct.xfs_fsop_geom** %5, align 8
  %18 = getelementptr inbounds %struct.xfs_fsop_geom, %struct.xfs_fsop_geom* %17, i32 0, i32 19
  store i32 %16, i32* %18, align 4
  %19 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %20 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %19, i32 0, i32 15
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.xfs_fsop_geom*, %struct.xfs_fsop_geom** %5, align 8
  %23 = getelementptr inbounds %struct.xfs_fsop_geom, %struct.xfs_fsop_geom* %22, i32 0, i32 18
  store i32 %21, i32* %23, align 4
  %24 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %25 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %24, i32 0, i32 14
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.xfs_fsop_geom*, %struct.xfs_fsop_geom** %5, align 8
  %28 = getelementptr inbounds %struct.xfs_fsop_geom, %struct.xfs_fsop_geom* %27, i32 0, i32 17
  store i32 %26, i32* %28, align 4
  %29 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %30 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %29, i32 0, i32 13
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.xfs_fsop_geom*, %struct.xfs_fsop_geom** %5, align 8
  %33 = getelementptr inbounds %struct.xfs_fsop_geom, %struct.xfs_fsop_geom* %32, i32 0, i32 16
  store i32 %31, i32* %33, align 4
  %34 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %35 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %34, i32 0, i32 12
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.xfs_fsop_geom*, %struct.xfs_fsop_geom** %5, align 8
  %38 = getelementptr inbounds %struct.xfs_fsop_geom, %struct.xfs_fsop_geom* %37, i32 0, i32 15
  store i32 %36, i32* %38, align 4
  %39 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %40 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %39, i32 0, i32 11
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.xfs_fsop_geom*, %struct.xfs_fsop_geom** %5, align 8
  %43 = getelementptr inbounds %struct.xfs_fsop_geom, %struct.xfs_fsop_geom* %42, i32 0, i32 14
  store i32 %41, i32* %43, align 4
  %44 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %45 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %44, i32 0, i32 10
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.xfs_fsop_geom*, %struct.xfs_fsop_geom** %5, align 8
  %48 = getelementptr inbounds %struct.xfs_fsop_geom, %struct.xfs_fsop_geom* %47, i32 0, i32 13
  store i32 %46, i32* %48, align 4
  %49 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %50 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %49, i32 0, i32 9
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.xfs_fsop_geom*, %struct.xfs_fsop_geom** %5, align 8
  %53 = getelementptr inbounds %struct.xfs_fsop_geom, %struct.xfs_fsop_geom* %52, i32 0, i32 12
  store i32 %51, i32* %53, align 4
  %54 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %55 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %54, i32 0, i32 8
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.xfs_fsop_geom*, %struct.xfs_fsop_geom** %5, align 8
  %58 = getelementptr inbounds %struct.xfs_fsop_geom, %struct.xfs_fsop_geom* %57, i32 0, i32 11
  store i32 %56, i32* %58, align 4
  %59 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %60 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %59, i32 0, i32 7
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.xfs_fsop_geom*, %struct.xfs_fsop_geom** %5, align 8
  %63 = getelementptr inbounds %struct.xfs_fsop_geom, %struct.xfs_fsop_geom* %62, i32 0, i32 10
  store i32 %61, i32* %63, align 4
  %64 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %65 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.xfs_fsop_geom*, %struct.xfs_fsop_geom** %5, align 8
  %68 = getelementptr inbounds %struct.xfs_fsop_geom, %struct.xfs_fsop_geom* %67, i32 0, i32 9
  store i32 %66, i32* %68, align 4
  %69 = call i32 @BUILD_BUG_ON(i32 0)
  %70 = load %struct.xfs_fsop_geom*, %struct.xfs_fsop_geom** %5, align 8
  %71 = getelementptr inbounds %struct.xfs_fsop_geom, %struct.xfs_fsop_geom* %70, i32 0, i32 8
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %74 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %73, i32 0, i32 5
  %75 = call i32 @memcpy(i32 %72, i32* %74, i32 4)
  %76 = load i32, i32* %6, align 4
  %77 = icmp slt i32 %76, 2
  br i1 %77, label %78, label %79

78:                                               ; preds = %3
  br label %303

79:                                               ; preds = %3
  %80 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %81 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.xfs_fsop_geom*, %struct.xfs_fsop_geom** %5, align 8
  %84 = getelementptr inbounds %struct.xfs_fsop_geom, %struct.xfs_fsop_geom* %83, i32 0, i32 7
  store i32 %82, i32* %84, align 4
  %85 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %86 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.xfs_fsop_geom*, %struct.xfs_fsop_geom** %5, align 8
  %89 = getelementptr inbounds %struct.xfs_fsop_geom, %struct.xfs_fsop_geom* %88, i32 0, i32 6
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* %6, align 4
  %91 = icmp slt i32 %90, 3
  br i1 %91, label %92, label %93

92:                                               ; preds = %79
  br label %303

93:                                               ; preds = %79
  %94 = load i32, i32* @XFS_FSOP_GEOM_VERSION, align 4
  %95 = load %struct.xfs_fsop_geom*, %struct.xfs_fsop_geom** %5, align 8
  %96 = getelementptr inbounds %struct.xfs_fsop_geom, %struct.xfs_fsop_geom* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* @XFS_FSOP_GEOM_FLAGS_NLINK, align 4
  %98 = load i32, i32* @XFS_FSOP_GEOM_FLAGS_DIRV2, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @XFS_FSOP_GEOM_FLAGS_EXTFLG, align 4
  %101 = or i32 %99, %100
  %102 = load %struct.xfs_fsop_geom*, %struct.xfs_fsop_geom** %5, align 8
  %103 = getelementptr inbounds %struct.xfs_fsop_geom, %struct.xfs_fsop_geom* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 4
  %104 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %105 = call i64 @xfs_sb_version_hasattr(%struct.xfs_sb* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %93
  %108 = load i32, i32* @XFS_FSOP_GEOM_FLAGS_ATTR, align 4
  %109 = load %struct.xfs_fsop_geom*, %struct.xfs_fsop_geom** %5, align 8
  %110 = getelementptr inbounds %struct.xfs_fsop_geom, %struct.xfs_fsop_geom* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 4
  br label %113

113:                                              ; preds = %107, %93
  %114 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %115 = call i64 @xfs_sb_version_hasquota(%struct.xfs_sb* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %113
  %118 = load i32, i32* @XFS_FSOP_GEOM_FLAGS_QUOTA, align 4
  %119 = load %struct.xfs_fsop_geom*, %struct.xfs_fsop_geom** %5, align 8
  %120 = getelementptr inbounds %struct.xfs_fsop_geom, %struct.xfs_fsop_geom* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = or i32 %121, %118
  store i32 %122, i32* %120, align 4
  br label %123

123:                                              ; preds = %117, %113
  %124 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %125 = call i64 @xfs_sb_version_hasalign(%struct.xfs_sb* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %123
  %128 = load i32, i32* @XFS_FSOP_GEOM_FLAGS_IALIGN, align 4
  %129 = load %struct.xfs_fsop_geom*, %struct.xfs_fsop_geom** %5, align 8
  %130 = getelementptr inbounds %struct.xfs_fsop_geom, %struct.xfs_fsop_geom* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = or i32 %131, %128
  store i32 %132, i32* %130, align 4
  br label %133

133:                                              ; preds = %127, %123
  %134 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %135 = call i64 @xfs_sb_version_hasdalign(%struct.xfs_sb* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %133
  %138 = load i32, i32* @XFS_FSOP_GEOM_FLAGS_DALIGN, align 4
  %139 = load %struct.xfs_fsop_geom*, %struct.xfs_fsop_geom** %5, align 8
  %140 = getelementptr inbounds %struct.xfs_fsop_geom, %struct.xfs_fsop_geom* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = or i32 %141, %138
  store i32 %142, i32* %140, align 4
  br label %143

143:                                              ; preds = %137, %133
  %144 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %145 = call i64 @xfs_sb_version_hassector(%struct.xfs_sb* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %143
  %148 = load i32, i32* @XFS_FSOP_GEOM_FLAGS_SECTOR, align 4
  %149 = load %struct.xfs_fsop_geom*, %struct.xfs_fsop_geom** %5, align 8
  %150 = getelementptr inbounds %struct.xfs_fsop_geom, %struct.xfs_fsop_geom* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = or i32 %151, %148
  store i32 %152, i32* %150, align 4
  br label %153

153:                                              ; preds = %147, %143
  %154 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %155 = call i64 @xfs_sb_version_hasasciici(%struct.xfs_sb* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %153
  %158 = load i32, i32* @XFS_FSOP_GEOM_FLAGS_DIRV2CI, align 4
  %159 = load %struct.xfs_fsop_geom*, %struct.xfs_fsop_geom** %5, align 8
  %160 = getelementptr inbounds %struct.xfs_fsop_geom, %struct.xfs_fsop_geom* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = or i32 %161, %158
  store i32 %162, i32* %160, align 4
  br label %163

163:                                              ; preds = %157, %153
  %164 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %165 = call i64 @xfs_sb_version_haslazysbcount(%struct.xfs_sb* %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %173

167:                                              ; preds = %163
  %168 = load i32, i32* @XFS_FSOP_GEOM_FLAGS_LAZYSB, align 4
  %169 = load %struct.xfs_fsop_geom*, %struct.xfs_fsop_geom** %5, align 8
  %170 = getelementptr inbounds %struct.xfs_fsop_geom, %struct.xfs_fsop_geom* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = or i32 %171, %168
  store i32 %172, i32* %170, align 4
  br label %173

173:                                              ; preds = %167, %163
  %174 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %175 = call i64 @xfs_sb_version_hasattr2(%struct.xfs_sb* %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %183

177:                                              ; preds = %173
  %178 = load i32, i32* @XFS_FSOP_GEOM_FLAGS_ATTR2, align 4
  %179 = load %struct.xfs_fsop_geom*, %struct.xfs_fsop_geom** %5, align 8
  %180 = getelementptr inbounds %struct.xfs_fsop_geom, %struct.xfs_fsop_geom* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = or i32 %181, %178
  store i32 %182, i32* %180, align 4
  br label %183

183:                                              ; preds = %177, %173
  %184 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %185 = call i64 @xfs_sb_version_hasprojid32bit(%struct.xfs_sb* %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %193

187:                                              ; preds = %183
  %188 = load i32, i32* @XFS_FSOP_GEOM_FLAGS_PROJID32, align 4
  %189 = load %struct.xfs_fsop_geom*, %struct.xfs_fsop_geom** %5, align 8
  %190 = getelementptr inbounds %struct.xfs_fsop_geom, %struct.xfs_fsop_geom* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = or i32 %191, %188
  store i32 %192, i32* %190, align 4
  br label %193

193:                                              ; preds = %187, %183
  %194 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %195 = call i64 @xfs_sb_version_hascrc(%struct.xfs_sb* %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %203

197:                                              ; preds = %193
  %198 = load i32, i32* @XFS_FSOP_GEOM_FLAGS_V5SB, align 4
  %199 = load %struct.xfs_fsop_geom*, %struct.xfs_fsop_geom** %5, align 8
  %200 = getelementptr inbounds %struct.xfs_fsop_geom, %struct.xfs_fsop_geom* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = or i32 %201, %198
  store i32 %202, i32* %200, align 4
  br label %203

203:                                              ; preds = %197, %193
  %204 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %205 = call i64 @xfs_sb_version_hasftype(%struct.xfs_sb* %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %213

207:                                              ; preds = %203
  %208 = load i32, i32* @XFS_FSOP_GEOM_FLAGS_FTYPE, align 4
  %209 = load %struct.xfs_fsop_geom*, %struct.xfs_fsop_geom** %5, align 8
  %210 = getelementptr inbounds %struct.xfs_fsop_geom, %struct.xfs_fsop_geom* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = or i32 %211, %208
  store i32 %212, i32* %210, align 4
  br label %213

213:                                              ; preds = %207, %203
  %214 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %215 = call i64 @xfs_sb_version_hasfinobt(%struct.xfs_sb* %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %223

217:                                              ; preds = %213
  %218 = load i32, i32* @XFS_FSOP_GEOM_FLAGS_FINOBT, align 4
  %219 = load %struct.xfs_fsop_geom*, %struct.xfs_fsop_geom** %5, align 8
  %220 = getelementptr inbounds %struct.xfs_fsop_geom, %struct.xfs_fsop_geom* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = or i32 %221, %218
  store i32 %222, i32* %220, align 4
  br label %223

223:                                              ; preds = %217, %213
  %224 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %225 = call i64 @xfs_sb_version_hassparseinodes(%struct.xfs_sb* %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %233

227:                                              ; preds = %223
  %228 = load i32, i32* @XFS_FSOP_GEOM_FLAGS_SPINODES, align 4
  %229 = load %struct.xfs_fsop_geom*, %struct.xfs_fsop_geom** %5, align 8
  %230 = getelementptr inbounds %struct.xfs_fsop_geom, %struct.xfs_fsop_geom* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = or i32 %231, %228
  store i32 %232, i32* %230, align 4
  br label %233

233:                                              ; preds = %227, %223
  %234 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %235 = call i64 @xfs_sb_version_hasrmapbt(%struct.xfs_sb* %234)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %243

237:                                              ; preds = %233
  %238 = load i32, i32* @XFS_FSOP_GEOM_FLAGS_RMAPBT, align 4
  %239 = load %struct.xfs_fsop_geom*, %struct.xfs_fsop_geom** %5, align 8
  %240 = getelementptr inbounds %struct.xfs_fsop_geom, %struct.xfs_fsop_geom* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = or i32 %241, %238
  store i32 %242, i32* %240, align 4
  br label %243

243:                                              ; preds = %237, %233
  %244 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %245 = call i64 @xfs_sb_version_hasreflink(%struct.xfs_sb* %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %253

247:                                              ; preds = %243
  %248 = load i32, i32* @XFS_FSOP_GEOM_FLAGS_REFLINK, align 4
  %249 = load %struct.xfs_fsop_geom*, %struct.xfs_fsop_geom** %5, align 8
  %250 = getelementptr inbounds %struct.xfs_fsop_geom, %struct.xfs_fsop_geom* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = or i32 %251, %248
  store i32 %252, i32* %250, align 4
  br label %253

253:                                              ; preds = %247, %243
  %254 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %255 = call i64 @xfs_sb_version_hassector(%struct.xfs_sb* %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %263

257:                                              ; preds = %253
  %258 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %259 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 4
  %261 = load %struct.xfs_fsop_geom*, %struct.xfs_fsop_geom** %5, align 8
  %262 = getelementptr inbounds %struct.xfs_fsop_geom, %struct.xfs_fsop_geom* %261, i32 0, i32 5
  store i32 %260, i32* %262, align 4
  br label %267

263:                                              ; preds = %253
  %264 = load i32, i32* @BBSIZE, align 4
  %265 = load %struct.xfs_fsop_geom*, %struct.xfs_fsop_geom** %5, align 8
  %266 = getelementptr inbounds %struct.xfs_fsop_geom, %struct.xfs_fsop_geom* %265, i32 0, i32 5
  store i32 %264, i32* %266, align 4
  br label %267

267:                                              ; preds = %263, %257
  %268 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %269 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = load %struct.xfs_fsop_geom*, %struct.xfs_fsop_geom** %5, align 8
  %272 = getelementptr inbounds %struct.xfs_fsop_geom, %struct.xfs_fsop_geom* %271, i32 0, i32 4
  store i32 %270, i32* %272, align 4
  %273 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %274 = call i32 @xfs_dir2_dirblock_bytes(%struct.xfs_sb* %273)
  %275 = load %struct.xfs_fsop_geom*, %struct.xfs_fsop_geom** %5, align 8
  %276 = getelementptr inbounds %struct.xfs_fsop_geom, %struct.xfs_fsop_geom* %275, i32 0, i32 3
  store i32 %274, i32* %276, align 4
  %277 = load i32, i32* %6, align 4
  %278 = icmp slt i32 %277, 4
  br i1 %278, label %279, label %280

279:                                              ; preds = %267
  br label %303

280:                                              ; preds = %267
  %281 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %282 = call i64 @xfs_sb_version_haslogv2(%struct.xfs_sb* %281)
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %290

284:                                              ; preds = %280
  %285 = load i32, i32* @XFS_FSOP_GEOM_FLAGS_LOGV2, align 4
  %286 = load %struct.xfs_fsop_geom*, %struct.xfs_fsop_geom** %5, align 8
  %287 = getelementptr inbounds %struct.xfs_fsop_geom, %struct.xfs_fsop_geom* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 4
  %289 = or i32 %288, %285
  store i32 %289, i32* %287, align 4
  br label %290

290:                                              ; preds = %284, %280
  %291 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %292 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 4
  %294 = load %struct.xfs_fsop_geom*, %struct.xfs_fsop_geom** %5, align 8
  %295 = getelementptr inbounds %struct.xfs_fsop_geom, %struct.xfs_fsop_geom* %294, i32 0, i32 2
  store i32 %293, i32* %295, align 4
  %296 = load i32, i32* %6, align 4
  %297 = icmp slt i32 %296, 5
  br i1 %297, label %298, label %299

298:                                              ; preds = %290
  br label %303

299:                                              ; preds = %290
  %300 = load i32, i32* @XFS_FSOP_GEOM_VERSION_V5, align 4
  %301 = load %struct.xfs_fsop_geom*, %struct.xfs_fsop_geom** %5, align 8
  %302 = getelementptr inbounds %struct.xfs_fsop_geom, %struct.xfs_fsop_geom* %301, i32 0, i32 1
  store i32 %300, i32* %302, align 4
  br label %303

303:                                              ; preds = %299, %298, %279, %92, %78
  ret void
}

declare dso_local i32 @memset(%struct.xfs_fsop_geom*, i32, i32) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i64 @xfs_sb_version_hasattr(%struct.xfs_sb*) #1

declare dso_local i64 @xfs_sb_version_hasquota(%struct.xfs_sb*) #1

declare dso_local i64 @xfs_sb_version_hasalign(%struct.xfs_sb*) #1

declare dso_local i64 @xfs_sb_version_hasdalign(%struct.xfs_sb*) #1

declare dso_local i64 @xfs_sb_version_hassector(%struct.xfs_sb*) #1

declare dso_local i64 @xfs_sb_version_hasasciici(%struct.xfs_sb*) #1

declare dso_local i64 @xfs_sb_version_haslazysbcount(%struct.xfs_sb*) #1

declare dso_local i64 @xfs_sb_version_hasattr2(%struct.xfs_sb*) #1

declare dso_local i64 @xfs_sb_version_hasprojid32bit(%struct.xfs_sb*) #1

declare dso_local i64 @xfs_sb_version_hascrc(%struct.xfs_sb*) #1

declare dso_local i64 @xfs_sb_version_hasftype(%struct.xfs_sb*) #1

declare dso_local i64 @xfs_sb_version_hasfinobt(%struct.xfs_sb*) #1

declare dso_local i64 @xfs_sb_version_hassparseinodes(%struct.xfs_sb*) #1

declare dso_local i64 @xfs_sb_version_hasrmapbt(%struct.xfs_sb*) #1

declare dso_local i64 @xfs_sb_version_hasreflink(%struct.xfs_sb*) #1

declare dso_local i32 @xfs_dir2_dirblock_bytes(%struct.xfs_sb*) #1

declare dso_local i64 @xfs_sb_version_haslogv2(%struct.xfs_sb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
