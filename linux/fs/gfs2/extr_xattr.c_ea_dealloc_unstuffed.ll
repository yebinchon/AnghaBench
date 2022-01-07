; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_xattr.c_ea_dealloc_unstuffed.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_xattr.c_ea_dealloc_unstuffed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.buffer_head = type { i32 }
%struct.gfs2_ea_header = type { i32, i32, i32, i32 }
%struct.gfs2_sbd = type { i32 }
%struct.gfs2_rgrpd = type { i64, i32 }
%struct.gfs2_holder = type { i32 }

@EIO = common dso_local global i32 0, align 4
@LM_ST_EXCLUSIVE = common dso_local global i32 0, align 4
@RES_DINODE = common dso_local global i64 0, align 8
@RES_EATTR = common dso_local global i64 0, align 8
@RES_STATFS = common dso_local global i64 0, align 8
@RES_QUOTA = common dso_local global i64 0, align 8
@GFS2_EAFLAG_LAST = common dso_local global i32 0, align 4
@GFS2_EATYPE_UNUSED = common dso_local global i32 0, align 4
@I_DIRTY_DATASYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_inode*, %struct.buffer_head*, %struct.gfs2_ea_header*, %struct.gfs2_ea_header*, i8*)* @ea_dealloc_unstuffed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ea_dealloc_unstuffed(%struct.gfs2_inode* %0, %struct.buffer_head* %1, %struct.gfs2_ea_header* %2, %struct.gfs2_ea_header* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.gfs2_inode*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.gfs2_ea_header*, align 8
  %10 = alloca %struct.gfs2_ea_header*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.gfs2_sbd*, align 8
  %14 = alloca %struct.gfs2_rgrpd*, align 8
  %15 = alloca %struct.gfs2_holder, align 4
  %16 = alloca i64*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %7, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %8, align 8
  store %struct.gfs2_ea_header* %2, %struct.gfs2_ea_header** %9, align 8
  store %struct.gfs2_ea_header* %3, %struct.gfs2_ea_header** %10, align 8
  store i8* %4, i8** %11, align 8
  %24 = load i8*, i8** %11, align 8
  %25 = bitcast i8* %24 to i32*
  store i32* %25, i32** %12, align 8
  %26 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %27 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %26, i32 0, i32 0
  %28 = call %struct.gfs2_sbd* @GFS2_SB(%struct.TYPE_5__* %27)
  store %struct.gfs2_sbd* %28, %struct.gfs2_sbd** %13, align 8
  store i64 0, i64* %17, align 8
  store i64 0, i64* %18, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %29 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %13, align 8
  %30 = call i32 @gfs2_rindex_update(%struct.gfs2_sbd* %29)
  store i32 %30, i32* %22, align 4
  %31 = load i32, i32* %22, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %5
  %34 = load i32, i32* %22, align 4
  store i32 %34, i32* %6, align 4
  br label %218

35:                                               ; preds = %5
  %36 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %9, align 8
  %37 = call i64 @GFS2_EA_IS_STUFFED(%struct.gfs2_ea_header* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i32 0, i32* %6, align 4
  br label %218

40:                                               ; preds = %35
  %41 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %9, align 8
  %42 = call i64* @GFS2_EA2DATAPTRS(%struct.gfs2_ea_header* %41)
  store i64* %42, i64** %16, align 8
  store i32 0, i32* %21, align 4
  br label %43

43:                                               ; preds = %60, %40
  %44 = load i32, i32* %21, align 4
  %45 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %9, align 8
  %46 = getelementptr inbounds %struct.gfs2_ea_header, %struct.gfs2_ea_header* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ult i32 %44, %47
  br i1 %48, label %49, label %65

49:                                               ; preds = %43
  %50 = load i64*, i64** %16, align 8
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = load i32, i32* %20, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %20, align 4
  %56 = load i64*, i64** %16, align 8
  %57 = load i64, i64* %56, align 8
  %58 = call i64 @be64_to_cpu(i64 %57)
  store i64 %58, i64* %17, align 8
  br label %59

59:                                               ; preds = %53, %49
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %21, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %21, align 4
  %63 = load i64*, i64** %16, align 8
  %64 = getelementptr inbounds i64, i64* %63, i32 1
  store i64* %64, i64** %16, align 8
  br label %43

65:                                               ; preds = %43
  %66 = load i32, i32* %20, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %65
  store i32 0, i32* %6, align 4
  br label %218

69:                                               ; preds = %65
  %70 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %13, align 8
  %71 = load i64, i64* %17, align 8
  %72 = call %struct.gfs2_rgrpd* @gfs2_blk2rgrpd(%struct.gfs2_sbd* %70, i64 %71, i32 1)
  store %struct.gfs2_rgrpd* %72, %struct.gfs2_rgrpd** %14, align 8
  %73 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %14, align 8
  %74 = icmp ne %struct.gfs2_rgrpd* %73, null
  br i1 %74, label %80, label %75

75:                                               ; preds = %69
  %76 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %77 = call i32 @gfs2_consist_inode(%struct.gfs2_inode* %76)
  %78 = load i32, i32* @EIO, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %6, align 4
  br label %218

80:                                               ; preds = %69
  %81 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %14, align 8
  %82 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @LM_ST_EXCLUSIVE, align 4
  %85 = call i32 @gfs2_glock_nq_init(i32 %83, i32 %84, i32 0, %struct.gfs2_holder* %15)
  store i32 %85, i32* %22, align 4
  %86 = load i32, i32* %22, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %80
  %89 = load i32, i32* %22, align 4
  store i32 %89, i32* %6, align 4
  br label %218

90:                                               ; preds = %80
  %91 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %13, align 8
  %92 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %14, align 8
  %93 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @RES_DINODE, align 8
  %96 = add nsw i64 %94, %95
  %97 = load i64, i64* @RES_EATTR, align 8
  %98 = add nsw i64 %96, %97
  %99 = load i64, i64* @RES_STATFS, align 8
  %100 = add nsw i64 %98, %99
  %101 = load i64, i64* @RES_QUOTA, align 8
  %102 = add nsw i64 %100, %101
  %103 = load i32, i32* %20, align 4
  %104 = call i32 @gfs2_trans_begin(%struct.gfs2_sbd* %91, i64 %102, i32 %103)
  store i32 %104, i32* %22, align 4
  %105 = load i32, i32* %22, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %90
  br label %215

108:                                              ; preds = %90
  %109 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %110 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %113 = call i32 @gfs2_trans_add_meta(i32 %111, %struct.buffer_head* %112)
  %114 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %9, align 8
  %115 = call i64* @GFS2_EA2DATAPTRS(%struct.gfs2_ea_header* %114)
  store i64* %115, i64** %16, align 8
  store i32 0, i32* %21, align 4
  br label %116

116:                                              ; preds = %156, %108
  %117 = load i32, i32* %21, align 4
  %118 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %9, align 8
  %119 = getelementptr inbounds %struct.gfs2_ea_header, %struct.gfs2_ea_header* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = icmp ult i32 %117, %120
  br i1 %121, label %122, label %161

122:                                              ; preds = %116
  %123 = load i64*, i64** %16, align 8
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %122
  br label %161

127:                                              ; preds = %122
  %128 = load i64*, i64** %16, align 8
  %129 = load i64, i64* %128, align 8
  %130 = call i64 @be64_to_cpu(i64 %129)
  store i64 %130, i64* %17, align 8
  %131 = load i64, i64* %18, align 8
  %132 = load i32, i32* %19, align 4
  %133 = zext i32 %132 to i64
  %134 = add nsw i64 %131, %133
  %135 = load i64, i64* %17, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %127
  %138 = load i32, i32* %19, align 4
  %139 = add i32 %138, 1
  store i32 %139, i32* %19, align 4
  br label %151

140:                                              ; preds = %127
  %141 = load i64, i64* %18, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %140
  %144 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %145 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %14, align 8
  %146 = load i64, i64* %18, align 8
  %147 = load i32, i32* %19, align 4
  %148 = call i32 @gfs2_free_meta(%struct.gfs2_inode* %144, %struct.gfs2_rgrpd* %145, i64 %146, i32 %147)
  br label %149

149:                                              ; preds = %143, %140
  %150 = load i64, i64* %17, align 8
  store i64 %150, i64* %18, align 8
  store i32 1, i32* %19, align 4
  br label %151

151:                                              ; preds = %149, %137
  %152 = load i64*, i64** %16, align 8
  store i64 0, i64* %152, align 8
  %153 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %154 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %153, i32 0, i32 0
  %155 = call i32 @gfs2_add_inode_blocks(%struct.TYPE_5__* %154, i32 -1)
  br label %156

156:                                              ; preds = %151
  %157 = load i32, i32* %21, align 4
  %158 = add i32 %157, 1
  store i32 %158, i32* %21, align 4
  %159 = load i64*, i64** %16, align 8
  %160 = getelementptr inbounds i64, i64* %159, i32 1
  store i64* %160, i64** %16, align 8
  br label %116

161:                                              ; preds = %126, %116
  %162 = load i64, i64* %18, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %161
  %165 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %166 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %14, align 8
  %167 = load i64, i64* %18, align 8
  %168 = load i32, i32* %19, align 4
  %169 = call i32 @gfs2_free_meta(%struct.gfs2_inode* %165, %struct.gfs2_rgrpd* %166, i64 %167, i32 %168)
  br label %170

170:                                              ; preds = %164, %161
  %171 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %10, align 8
  %172 = icmp ne %struct.gfs2_ea_header* %171, null
  br i1 %172, label %173, label %196

173:                                              ; preds = %170
  %174 = load i32*, i32** %12, align 8
  %175 = icmp ne i32* %174, null
  br i1 %175, label %196, label %176

176:                                              ; preds = %173
  %177 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %10, align 8
  %178 = call i64 @GFS2_EA_REC_LEN(%struct.gfs2_ea_header* %177)
  %179 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %9, align 8
  %180 = call i64 @GFS2_EA_REC_LEN(%struct.gfs2_ea_header* %179)
  %181 = add nsw i64 %178, %180
  store i64 %181, i64* %23, align 8
  %182 = load i64, i64* %23, align 8
  %183 = call i32 @cpu_to_be32(i64 %182)
  %184 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %10, align 8
  %185 = getelementptr inbounds %struct.gfs2_ea_header, %struct.gfs2_ea_header* %184, i32 0, i32 3
  store i32 %183, i32* %185, align 4
  %186 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %9, align 8
  %187 = call i64 @GFS2_EA_IS_LAST(%struct.gfs2_ea_header* %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %195

189:                                              ; preds = %176
  %190 = load i32, i32* @GFS2_EAFLAG_LAST, align 4
  %191 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %10, align 8
  %192 = getelementptr inbounds %struct.gfs2_ea_header, %struct.gfs2_ea_header* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 4
  %194 = or i32 %193, %190
  store i32 %194, i32* %192, align 4
  br label %195

195:                                              ; preds = %189, %176
  br label %202

196:                                              ; preds = %173, %170
  %197 = load i32, i32* @GFS2_EATYPE_UNUSED, align 4
  %198 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %9, align 8
  %199 = getelementptr inbounds %struct.gfs2_ea_header, %struct.gfs2_ea_header* %198, i32 0, i32 1
  store i32 %197, i32* %199, align 4
  %200 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %9, align 8
  %201 = getelementptr inbounds %struct.gfs2_ea_header, %struct.gfs2_ea_header* %200, i32 0, i32 0
  store i32 0, i32* %201, align 4
  br label %202

202:                                              ; preds = %196, %195
  %203 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %204 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %203, i32 0, i32 0
  %205 = call i32 @current_time(%struct.TYPE_5__* %204)
  %206 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %207 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %207, i32 0, i32 0
  store i32 %205, i32* %208, align 4
  %209 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %210 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %209, i32 0, i32 0
  %211 = load i32, i32* @I_DIRTY_DATASYNC, align 4
  %212 = call i32 @__mark_inode_dirty(%struct.TYPE_5__* %210, i32 %211)
  %213 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %13, align 8
  %214 = call i32 @gfs2_trans_end(%struct.gfs2_sbd* %213)
  br label %215

215:                                              ; preds = %202, %107
  %216 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %15)
  %217 = load i32, i32* %22, align 4
  store i32 %217, i32* %6, align 4
  br label %218

218:                                              ; preds = %215, %88, %75, %68, %39, %33
  %219 = load i32, i32* %6, align 4
  ret i32 %219
}

declare dso_local %struct.gfs2_sbd* @GFS2_SB(%struct.TYPE_5__*) #1

declare dso_local i32 @gfs2_rindex_update(%struct.gfs2_sbd*) #1

declare dso_local i64 @GFS2_EA_IS_STUFFED(%struct.gfs2_ea_header*) #1

declare dso_local i64* @GFS2_EA2DATAPTRS(%struct.gfs2_ea_header*) #1

declare dso_local i64 @be64_to_cpu(i64) #1

declare dso_local %struct.gfs2_rgrpd* @gfs2_blk2rgrpd(%struct.gfs2_sbd*, i64, i32) #1

declare dso_local i32 @gfs2_consist_inode(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_glock_nq_init(i32, i32, i32, %struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_trans_begin(%struct.gfs2_sbd*, i64, i32) #1

declare dso_local i32 @gfs2_trans_add_meta(i32, %struct.buffer_head*) #1

declare dso_local i32 @gfs2_free_meta(%struct.gfs2_inode*, %struct.gfs2_rgrpd*, i64, i32) #1

declare dso_local i32 @gfs2_add_inode_blocks(%struct.TYPE_5__*, i32) #1

declare dso_local i64 @GFS2_EA_REC_LEN(%struct.gfs2_ea_header*) #1

declare dso_local i32 @cpu_to_be32(i64) #1

declare dso_local i64 @GFS2_EA_IS_LAST(%struct.gfs2_ea_header*) #1

declare dso_local i32 @current_time(%struct.TYPE_5__*) #1

declare dso_local i32 @__mark_inode_dirty(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @gfs2_trans_end(%struct.gfs2_sbd*) #1

declare dso_local i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
