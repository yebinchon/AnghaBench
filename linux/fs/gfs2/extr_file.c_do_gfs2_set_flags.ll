; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_file.c_do_gfs2_set_flags.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_file.c_do_gfs2_set_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.inode = type { i32, i32 }
%struct.gfs2_inode = type { i32, i32 }
%struct.gfs2_sbd = type { i32 }
%struct.buffer_head = type { i32 }
%struct.gfs2_holder = type { i32 }

@LM_ST_EXCLUSIVE = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@GFS2_DIF_IMMUTABLE = common dso_local global i32 0, align 4
@GFS2_DIF_APPENDONLY = common dso_local global i32 0, align 4
@CAP_LINUX_IMMUTABLE = common dso_local global i32 0, align 4
@MAY_WRITE = common dso_local global i32 0, align 4
@GFS2_DIF_JDATA = common dso_local global i32 0, align 4
@GFS2_LOG_HEAD_FLUSH_NORMAL = common dso_local global i32 0, align 4
@GFS2_LFC_SET_FLAGS = common dso_local global i32 0, align 4
@RES_DINODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32, i32, i32)* @do_gfs2_set_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_gfs2_set_flags(%struct.file* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.gfs2_inode*, align 8
  %12 = alloca %struct.gfs2_sbd*, align 8
  %13 = alloca %struct.buffer_head*, align 8
  %14 = alloca %struct.gfs2_holder, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %19 = load %struct.file*, %struct.file** %6, align 8
  %20 = call %struct.inode* @file_inode(%struct.file* %19)
  store %struct.inode* %20, %struct.inode** %10, align 8
  %21 = load %struct.inode*, %struct.inode** %10, align 8
  %22 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %21)
  store %struct.gfs2_inode* %22, %struct.gfs2_inode** %11, align 8
  %23 = load %struct.inode*, %struct.inode** %10, align 8
  %24 = call %struct.gfs2_sbd* @GFS2_SB(%struct.inode* %23)
  store %struct.gfs2_sbd* %24, %struct.gfs2_sbd** %12, align 8
  %25 = load %struct.file*, %struct.file** %6, align 8
  %26 = call i32 @mnt_want_write_file(%struct.file* %25)
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %15, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %4
  %30 = load i32, i32* %15, align 4
  store i32 %30, i32* %5, align 4
  br label %215

31:                                               ; preds = %4
  %32 = load %struct.gfs2_inode*, %struct.gfs2_inode** %11, align 8
  %33 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @LM_ST_EXCLUSIVE, align 4
  %36 = call i32 @gfs2_glock_nq_init(i32 %34, i32 %35, i32 0, %struct.gfs2_holder* %14)
  store i32 %36, i32* %15, align 4
  %37 = load i32, i32* %15, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %211

40:                                               ; preds = %31
  %41 = load %struct.inode*, %struct.inode** %10, align 8
  %42 = load %struct.gfs2_inode*, %struct.gfs2_inode** %11, align 8
  %43 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @gfs2_gfsflags_to_fsflags(%struct.inode* %41, i32 %44)
  store i32 %45, i32* %18, align 4
  %46 = load %struct.inode*, %struct.inode** %10, align 8
  %47 = load i32, i32* %18, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @vfs_ioc_setflags_prepare(%struct.inode* %46, i32 %47, i32 %48)
  store i32 %49, i32* %15, align 4
  %50 = load i32, i32* %15, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %40
  br label %209

53:                                               ; preds = %40
  %54 = load i32, i32* @EACCES, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %15, align 4
  %56 = load %struct.inode*, %struct.inode** %10, align 8
  %57 = call i32 @inode_owner_or_capable(%struct.inode* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %53
  br label %209

60:                                               ; preds = %53
  store i32 0, i32* %15, align 4
  %61 = load %struct.gfs2_inode*, %struct.gfs2_inode** %11, align 8
  %62 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %17, align 4
  %64 = load i32, i32* %17, align 4
  %65 = load i32, i32* %8, align 4
  %66 = xor i32 %65, -1
  %67 = and i32 %64, %66
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %8, align 4
  %70 = and i32 %68, %69
  %71 = or i32 %67, %70
  store i32 %71, i32* %16, align 4
  %72 = load i32, i32* %16, align 4
  %73 = load i32, i32* %17, align 4
  %74 = xor i32 %72, %73
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %60
  br label %209

77:                                               ; preds = %60
  %78 = load i32, i32* @EPERM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %15, align 4
  %80 = load %struct.inode*, %struct.inode** %10, align 8
  %81 = call i64 @IS_IMMUTABLE(%struct.inode* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %77
  %84 = load i32, i32* %16, align 4
  %85 = load i32, i32* @GFS2_DIF_IMMUTABLE, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  br label %209

89:                                               ; preds = %83, %77
  %90 = load %struct.inode*, %struct.inode** %10, align 8
  %91 = call i64 @IS_APPEND(%struct.inode* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %89
  %94 = load i32, i32* %16, align 4
  %95 = load i32, i32* @GFS2_DIF_APPENDONLY, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  br label %209

99:                                               ; preds = %93, %89
  %100 = load i32, i32* %16, align 4
  %101 = load i32, i32* %17, align 4
  %102 = xor i32 %100, %101
  %103 = load i32, i32* @GFS2_DIF_IMMUTABLE, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %99
  %107 = load i32, i32* @CAP_LINUX_IMMUTABLE, align 4
  %108 = call i32 @capable(i32 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %106
  br label %209

111:                                              ; preds = %106, %99
  %112 = load %struct.inode*, %struct.inode** %10, align 8
  %113 = call i64 @IS_IMMUTABLE(%struct.inode* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %123, label %115

115:                                              ; preds = %111
  %116 = load %struct.inode*, %struct.inode** %10, align 8
  %117 = load i32, i32* @MAY_WRITE, align 4
  %118 = call i32 @gfs2_permission(%struct.inode* %116, i32 %117)
  store i32 %118, i32* %15, align 4
  %119 = load i32, i32* %15, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %115
  br label %209

122:                                              ; preds = %115
  br label %123

123:                                              ; preds = %122, %111
  %124 = load i32, i32* %17, align 4
  %125 = load i32, i32* %16, align 4
  %126 = xor i32 %124, %125
  %127 = load i32, i32* @GFS2_DIF_JDATA, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %169

130:                                              ; preds = %123
  %131 = load i32, i32* %16, align 4
  %132 = load i32, i32* @GFS2_DIF_JDATA, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %144

135:                                              ; preds = %130
  %136 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %12, align 8
  %137 = load %struct.gfs2_inode*, %struct.gfs2_inode** %11, align 8
  %138 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @GFS2_LOG_HEAD_FLUSH_NORMAL, align 4
  %141 = load i32, i32* @GFS2_LFC_SET_FLAGS, align 4
  %142 = or i32 %140, %141
  %143 = call i32 @gfs2_log_flush(%struct.gfs2_sbd* %136, i32 %139, i32 %142)
  br label %144

144:                                              ; preds = %135, %130
  %145 = load %struct.inode*, %struct.inode** %10, align 8
  %146 = getelementptr inbounds %struct.inode, %struct.inode* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @filemap_fdatawrite(i32 %147)
  store i32 %148, i32* %15, align 4
  %149 = load i32, i32* %15, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %144
  br label %209

152:                                              ; preds = %144
  %153 = load %struct.inode*, %struct.inode** %10, align 8
  %154 = getelementptr inbounds %struct.inode, %struct.inode* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @filemap_fdatawait(i32 %155)
  store i32 %156, i32* %15, align 4
  %157 = load i32, i32* %15, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %152
  br label %209

160:                                              ; preds = %152
  %161 = load i32, i32* %16, align 4
  %162 = load i32, i32* @GFS2_DIF_JDATA, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %160
  %166 = load %struct.gfs2_inode*, %struct.gfs2_inode** %11, align 8
  %167 = call i32 @gfs2_ordered_del_inode(%struct.gfs2_inode* %166)
  br label %168

168:                                              ; preds = %165, %160
  br label %169

169:                                              ; preds = %168, %123
  %170 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %12, align 8
  %171 = load i32, i32* @RES_DINODE, align 4
  %172 = call i32 @gfs2_trans_begin(%struct.gfs2_sbd* %170, i32 %171, i32 0)
  store i32 %172, i32* %15, align 4
  %173 = load i32, i32* %15, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %169
  br label %209

176:                                              ; preds = %169
  %177 = load %struct.gfs2_inode*, %struct.gfs2_inode** %11, align 8
  %178 = call i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode* %177, %struct.buffer_head** %13)
  store i32 %178, i32* %15, align 4
  %179 = load i32, i32* %15, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %176
  br label %206

182:                                              ; preds = %176
  %183 = load %struct.inode*, %struct.inode** %10, align 8
  %184 = call i32 @current_time(%struct.inode* %183)
  %185 = load %struct.inode*, %struct.inode** %10, align 8
  %186 = getelementptr inbounds %struct.inode, %struct.inode* %185, i32 0, i32 0
  store i32 %184, i32* %186, align 4
  %187 = load %struct.gfs2_inode*, %struct.gfs2_inode** %11, align 8
  %188 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %191 = call i32 @gfs2_trans_add_meta(i32 %189, %struct.buffer_head* %190)
  %192 = load i32, i32* %16, align 4
  %193 = load %struct.gfs2_inode*, %struct.gfs2_inode** %11, align 8
  %194 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %193, i32 0, i32 0
  store i32 %192, i32* %194, align 4
  %195 = load %struct.gfs2_inode*, %struct.gfs2_inode** %11, align 8
  %196 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %197 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @gfs2_dinode_out(%struct.gfs2_inode* %195, i32 %198)
  %200 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %201 = call i32 @brelse(%struct.buffer_head* %200)
  %202 = load %struct.inode*, %struct.inode** %10, align 8
  %203 = call i32 @gfs2_set_inode_flags(%struct.inode* %202)
  %204 = load %struct.inode*, %struct.inode** %10, align 8
  %205 = call i32 @gfs2_set_aops(%struct.inode* %204)
  br label %206

206:                                              ; preds = %182, %181
  %207 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %12, align 8
  %208 = call i32 @gfs2_trans_end(%struct.gfs2_sbd* %207)
  br label %209

209:                                              ; preds = %206, %175, %159, %151, %121, %110, %98, %88, %76, %59, %52
  %210 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %14)
  br label %211

211:                                              ; preds = %209, %39
  %212 = load %struct.file*, %struct.file** %6, align 8
  %213 = call i32 @mnt_drop_write_file(%struct.file* %212)
  %214 = load i32, i32* %15, align 4
  store i32 %214, i32* %5, align 4
  br label %215

215:                                              ; preds = %211, %29
  %216 = load i32, i32* %5, align 4
  ret i32 %216
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local %struct.gfs2_sbd* @GFS2_SB(%struct.inode*) #1

declare dso_local i32 @mnt_want_write_file(%struct.file*) #1

declare dso_local i32 @gfs2_glock_nq_init(i32, i32, i32, %struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_gfsflags_to_fsflags(%struct.inode*, i32) #1

declare dso_local i32 @vfs_ioc_setflags_prepare(%struct.inode*, i32, i32) #1

declare dso_local i32 @inode_owner_or_capable(%struct.inode*) #1

declare dso_local i64 @IS_IMMUTABLE(%struct.inode*) #1

declare dso_local i64 @IS_APPEND(%struct.inode*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @gfs2_permission(%struct.inode*, i32) #1

declare dso_local i32 @gfs2_log_flush(%struct.gfs2_sbd*, i32, i32) #1

declare dso_local i32 @filemap_fdatawrite(i32) #1

declare dso_local i32 @filemap_fdatawait(i32) #1

declare dso_local i32 @gfs2_ordered_del_inode(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_trans_begin(%struct.gfs2_sbd*, i32, i32) #1

declare dso_local i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode*, %struct.buffer_head**) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @gfs2_trans_add_meta(i32, %struct.buffer_head*) #1

declare dso_local i32 @gfs2_dinode_out(%struct.gfs2_inode*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @gfs2_set_inode_flags(%struct.inode*) #1

declare dso_local i32 @gfs2_set_aops(%struct.inode*) #1

declare dso_local i32 @gfs2_trans_end(%struct.gfs2_sbd*) #1

declare dso_local i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder*) #1

declare dso_local i32 @mnt_drop_write_file(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
