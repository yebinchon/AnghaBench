; ModuleID = '/home/carl/AnghaBench/linux/fs/hpfs/extr_dir.c_hpfs_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hpfs/extr_dir.c_hpfs_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32, i32, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, i32, i32*, i32*, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { i64, i8* }
%struct.TYPE_9__ = type { i64, i8* }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_7__ = type { i8*, i32 }
%struct.dentry = type { i32, i32, i32, i32, i32, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, i32, i32*, i32*, %struct.TYPE_7__ }
%struct.quad_buffer_head = type { i32 }
%struct.hpfs_dirent = type { i32, i64, i64, i32, i32, i32, i32, i64, i64, i32 }
%struct.hpfs_inode_info = type { i32, i32, i8*, i32, i32 }
%struct.TYPE_12__ = type { i64 }

@ENAMETOOLONG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"hpfs_lookup: can't get inode\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@I_NEW = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@hpfs_file_iops = common dso_local global i32 0, align 4
@hpfs_file_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [121 x i8] c"ACLs or XPERM found. This is probably HPFS386. This driver doesn't support it now. Send me some info on these structures\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@hpfs_aops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @hpfs_lookup(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.quad_buffer_head, align 4
  %11 = alloca %struct.hpfs_dirent*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.inode*, align 8
  %15 = alloca %struct.hpfs_inode_info*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.dentry*, %struct.dentry** %6, align 8
  %17 = getelementptr inbounds %struct.dentry, %struct.dentry* %16, i32 0, i32 12
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %8, align 8
  %20 = load %struct.dentry*, %struct.dentry** %6, align 8
  %21 = getelementptr inbounds %struct.dentry, %struct.dentry* %20, i32 0, i32 12
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %9, align 4
  store %struct.inode* null, %struct.inode** %14, align 8
  %24 = load %struct.inode*, %struct.inode** %5, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @hpfs_lock(i32 %26)
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @hpfs_chk_name(i8* %28, i32* %9)
  store i32 %29, i32* %13, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %3
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* @ENAMETOOLONG, align 4
  %34 = sub nsw i32 0, %33
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %31
  %37 = load %struct.inode*, %struct.inode** %5, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @hpfs_unlock(i32 %39)
  %41 = load i32, i32* @ENAMETOOLONG, align 4
  %42 = sub nsw i32 0, %41
  %43 = call %struct.inode* @ERR_PTR(i32 %42)
  %44 = bitcast %struct.inode* %43 to %struct.dentry*
  store %struct.dentry* %44, %struct.dentry** %4, align 8
  br label %299

45:                                               ; preds = %31
  br label %289

46:                                               ; preds = %3
  %47 = load %struct.inode*, %struct.inode** %5, align 8
  %48 = load %struct.inode*, %struct.inode** %5, align 8
  %49 = call %struct.hpfs_inode_info* @hpfs_i(%struct.inode* %48)
  %50 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = load i8*, i8** %8, align 8
  %53 = load i32, i32* %9, align 4
  %54 = call %struct.hpfs_dirent* @map_dirent(%struct.inode* %47, i32 %51, i8* %52, i32 %53, i32* null, %struct.quad_buffer_head* %10)
  store %struct.hpfs_dirent* %54, %struct.hpfs_dirent** %11, align 8
  %55 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %11, align 8
  %56 = icmp ne %struct.hpfs_dirent* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %46
  br label %288

58:                                               ; preds = %46
  %59 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %11, align 8
  %60 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %59, i32 0, i32 9
  %61 = load i32, i32* %60, align 8
  %62 = call i8* @le32_to_cpu(i32 %61)
  store i8* %62, i8** %12, align 8
  %63 = load %struct.inode*, %struct.inode** %5, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = load i8*, i8** %12, align 8
  %67 = call %struct.inode* @iget_locked(i32 %65, i8* %66)
  store %struct.inode* %67, %struct.inode** %14, align 8
  %68 = load %struct.inode*, %struct.inode** %14, align 8
  %69 = icmp ne %struct.inode* %68, null
  br i1 %69, label %78, label %70

70:                                               ; preds = %58
  %71 = load %struct.inode*, %struct.inode** %5, align 8
  %72 = getelementptr inbounds %struct.inode, %struct.inode* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @hpfs_error(i32 %73, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  %77 = call %struct.inode* @ERR_PTR(i32 %76)
  store %struct.inode* %77, %struct.inode** %14, align 8
  br label %286

78:                                               ; preds = %58
  %79 = load %struct.inode*, %struct.inode** %14, align 8
  %80 = getelementptr inbounds %struct.inode, %struct.inode* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @I_NEW, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %132

85:                                               ; preds = %78
  %86 = load %struct.inode*, %struct.inode** %14, align 8
  %87 = call i32 @hpfs_init_inode(%struct.inode* %86)
  %88 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %11, align 8
  %89 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %85
  %93 = load %struct.inode*, %struct.inode** %14, align 8
  %94 = call i32 @hpfs_read_inode(%struct.inode* %93)
  br label %129

95:                                               ; preds = %85
  %96 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %11, align 8
  %97 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = call i8* @le32_to_cpu(i32 %98)
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %112

101:                                              ; preds = %95
  %102 = load %struct.inode*, %struct.inode** %5, align 8
  %103 = getelementptr inbounds %struct.inode, %struct.inode* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  %105 = call %struct.TYPE_12__* @hpfs_sb(i32 %104)
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %101
  %110 = load %struct.inode*, %struct.inode** %14, align 8
  %111 = call i32 @hpfs_read_inode(%struct.inode* %110)
  br label %128

112:                                              ; preds = %101, %95
  %113 = load i32, i32* @S_IFREG, align 4
  %114 = load %struct.inode*, %struct.inode** %14, align 8
  %115 = getelementptr inbounds %struct.inode, %struct.inode* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, %113
  store i32 %117, i32* %115, align 4
  %118 = load %struct.inode*, %struct.inode** %14, align 8
  %119 = getelementptr inbounds %struct.inode, %struct.inode* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = and i32 %120, -74
  store i32 %121, i32* %119, align 4
  %122 = load %struct.inode*, %struct.inode** %14, align 8
  %123 = getelementptr inbounds %struct.inode, %struct.inode* %122, i32 0, i32 11
  store i32* @hpfs_file_iops, i32** %123, align 8
  %124 = load %struct.inode*, %struct.inode** %14, align 8
  %125 = getelementptr inbounds %struct.inode, %struct.inode* %124, i32 0, i32 10
  store i32* @hpfs_file_ops, i32** %125, align 8
  %126 = load %struct.inode*, %struct.inode** %14, align 8
  %127 = call i32 @set_nlink(%struct.inode* %126, i32 1)
  br label %128

128:                                              ; preds = %112, %109
  br label %129

129:                                              ; preds = %128, %92
  %130 = load %struct.inode*, %struct.inode** %14, align 8
  %131 = call i32 @unlock_new_inode(%struct.inode* %130)
  br label %132

132:                                              ; preds = %129, %78
  %133 = load %struct.inode*, %struct.inode** %14, align 8
  %134 = call %struct.hpfs_inode_info* @hpfs_i(%struct.inode* %133)
  store %struct.hpfs_inode_info* %134, %struct.hpfs_inode_info** %15, align 8
  %135 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %11, align 8
  %136 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %145, label %139

139:                                              ; preds = %132
  %140 = load %struct.inode*, %struct.inode** %5, align 8
  %141 = getelementptr inbounds %struct.inode, %struct.inode* %140, i32 0, i32 9
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %15, align 8
  %144 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %143, i32 0, i32 3
  store i32 %142, i32* %144, align 8
  br label %145

145:                                              ; preds = %139, %132
  %146 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %11, align 8
  %147 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %146, i32 0, i32 8
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %155, label %150

150:                                              ; preds = %145
  %151 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %11, align 8
  %152 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %151, i32 0, i32 7
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %172

155:                                              ; preds = %150, %145
  %156 = load %struct.inode*, %struct.inode** %5, align 8
  %157 = getelementptr inbounds %struct.inode, %struct.inode* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @sb_rdonly(i32 %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %171, label %161

161:                                              ; preds = %155
  %162 = load %struct.inode*, %struct.inode** %14, align 8
  %163 = getelementptr inbounds %struct.inode, %struct.inode* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @hpfs_error(i32 %164, i8* getelementptr inbounds ([121 x i8], [121 x i8]* @.str.1, i64 0, i64 0))
  %166 = load %struct.inode*, %struct.inode** %14, align 8
  %167 = call i32 @iput(%struct.inode* %166)
  %168 = load i32, i32* @EINVAL, align 4
  %169 = sub nsw i32 0, %168
  %170 = call %struct.inode* @ERR_PTR(i32 %169)
  store %struct.inode* %170, %struct.inode** %14, align 8
  br label %286

171:                                              ; preds = %155
  br label %172

172:                                              ; preds = %171, %150
  %173 = load %struct.inode*, %struct.inode** %14, align 8
  %174 = getelementptr inbounds %struct.inode, %struct.inode* %173, i32 0, i32 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %285, label %178

178:                                              ; preds = %172
  %179 = load %struct.inode*, %struct.inode** %5, align 8
  %180 = getelementptr inbounds %struct.inode, %struct.inode* %179, i32 0, i32 4
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %11, align 8
  %183 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %182, i32 0, i32 6
  %184 = load i32, i32* %183, align 4
  %185 = call i8* @le32_to_cpu(i32 %184)
  %186 = call i8* @local_to_gmt(i32 %181, i8* %185)
  %187 = ptrtoint i8* %186 to i32
  %188 = load %struct.inode*, %struct.inode** %14, align 8
  %189 = getelementptr inbounds %struct.inode, %struct.inode* %188, i32 0, i32 8
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 0
  store i32 %187, i32* %190, align 8
  %191 = icmp ne i32 %187, 0
  br i1 %191, label %196, label %192

192:                                              ; preds = %178
  %193 = load %struct.inode*, %struct.inode** %14, align 8
  %194 = getelementptr inbounds %struct.inode, %struct.inode* %193, i32 0, i32 8
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 0
  store i32 1, i32* %195, align 8
  br label %196

196:                                              ; preds = %192, %178
  %197 = load %struct.inode*, %struct.inode** %14, align 8
  %198 = getelementptr inbounds %struct.inode, %struct.inode* %197, i32 0, i32 8
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 1
  store i64 0, i64* %199, align 8
  %200 = load %struct.inode*, %struct.inode** %5, align 8
  %201 = getelementptr inbounds %struct.inode, %struct.inode* %200, i32 0, i32 4
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %11, align 8
  %204 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %203, i32 0, i32 5
  %205 = load i32, i32* %204, align 8
  %206 = call i8* @le32_to_cpu(i32 %205)
  %207 = call i8* @local_to_gmt(i32 %202, i8* %206)
  %208 = load %struct.inode*, %struct.inode** %14, align 8
  %209 = getelementptr inbounds %struct.inode, %struct.inode* %208, i32 0, i32 7
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i32 0, i32 1
  store i8* %207, i8** %210, align 8
  %211 = load %struct.inode*, %struct.inode** %14, align 8
  %212 = getelementptr inbounds %struct.inode, %struct.inode* %211, i32 0, i32 7
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %212, i32 0, i32 0
  store i64 0, i64* %213, align 8
  %214 = load %struct.inode*, %struct.inode** %5, align 8
  %215 = getelementptr inbounds %struct.inode, %struct.inode* %214, i32 0, i32 4
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %11, align 8
  %218 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %217, i32 0, i32 4
  %219 = load i32, i32* %218, align 4
  %220 = call i8* @le32_to_cpu(i32 %219)
  %221 = call i8* @local_to_gmt(i32 %216, i8* %220)
  %222 = load %struct.inode*, %struct.inode** %14, align 8
  %223 = getelementptr inbounds %struct.inode, %struct.inode* %222, i32 0, i32 6
  %224 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %223, i32 0, i32 1
  store i8* %221, i8** %224, align 8
  %225 = load %struct.inode*, %struct.inode** %14, align 8
  %226 = getelementptr inbounds %struct.inode, %struct.inode* %225, i32 0, i32 6
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %226, i32 0, i32 0
  store i64 0, i64* %227, align 8
  %228 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %11, align 8
  %229 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %228, i32 0, i32 3
  %230 = load i32, i32* %229, align 8
  %231 = call i8* @le32_to_cpu(i32 %230)
  %232 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %15, align 8
  %233 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %232, i32 0, i32 2
  store i8* %231, i8** %233, align 8
  %234 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %15, align 8
  %235 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %248, label %238

238:                                              ; preds = %196
  %239 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %11, align 8
  %240 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %239, i32 0, i32 2
  %241 = load i64, i64* %240, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %248

243:                                              ; preds = %238
  %244 = load %struct.inode*, %struct.inode** %14, align 8
  %245 = getelementptr inbounds %struct.inode, %struct.inode* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = and i32 %246, -147
  store i32 %247, i32* %245, align 4
  br label %248

248:                                              ; preds = %243, %238, %196
  %249 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %11, align 8
  %250 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %249, i32 0, i32 1
  %251 = load i64, i64* %250, align 8
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %284, label %253

253:                                              ; preds = %248
  %254 = load %struct.inode*, %struct.inode** %14, align 8
  %255 = getelementptr inbounds %struct.inode, %struct.inode* %254, i32 0, i32 2
  %256 = load i32, i32* %255, align 8
  %257 = icmp eq i32 %256, -1
  br i1 %257, label %258, label %283

258:                                              ; preds = %253
  %259 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %11, align 8
  %260 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = call i8* @le32_to_cpu(i32 %261)
  %263 = ptrtoint i8* %262 to i32
  %264 = load %struct.inode*, %struct.inode** %14, align 8
  %265 = getelementptr inbounds %struct.inode, %struct.inode* %264, i32 0, i32 2
  store i32 %263, i32* %265, align 8
  %266 = load %struct.inode*, %struct.inode** %14, align 8
  %267 = getelementptr inbounds %struct.inode, %struct.inode* %266, i32 0, i32 5
  %268 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %267, i32 0, i32 0
  store i32* @hpfs_aops, i32** %268, align 8
  %269 = load %struct.inode*, %struct.inode** %14, align 8
  %270 = getelementptr inbounds %struct.inode, %struct.inode* %269, i32 0, i32 2
  %271 = load i32, i32* %270, align 8
  %272 = load %struct.inode*, %struct.inode** %14, align 8
  %273 = call %struct.hpfs_inode_info* @hpfs_i(%struct.inode* %272)
  %274 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %273, i32 0, i32 0
  store i32 %271, i32* %274, align 8
  %275 = load %struct.inode*, %struct.inode** %14, align 8
  %276 = getelementptr inbounds %struct.inode, %struct.inode* %275, i32 0, i32 2
  %277 = load i32, i32* %276, align 8
  %278 = add nsw i32 %277, 511
  %279 = ashr i32 %278, 9
  %280 = add nsw i32 1, %279
  %281 = load %struct.inode*, %struct.inode** %14, align 8
  %282 = getelementptr inbounds %struct.inode, %struct.inode* %281, i32 0, i32 3
  store i32 %280, i32* %282, align 4
  br label %283

283:                                              ; preds = %258, %253
  br label %284

284:                                              ; preds = %283, %248
  br label %285

285:                                              ; preds = %284, %172
  br label %286

286:                                              ; preds = %285, %161, %70
  %287 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %10)
  br label %288

288:                                              ; preds = %286, %57
  br label %289

289:                                              ; preds = %288, %45
  %290 = load %struct.inode*, %struct.inode** %5, align 8
  %291 = getelementptr inbounds %struct.inode, %struct.inode* %290, i32 0, i32 4
  %292 = load i32, i32* %291, align 8
  %293 = call i32 @hpfs_unlock(i32 %292)
  %294 = load %struct.inode*, %struct.inode** %14, align 8
  %295 = load %struct.dentry*, %struct.dentry** %6, align 8
  %296 = bitcast %struct.dentry* %295 to %struct.inode*
  %297 = call %struct.inode* @d_splice_alias(%struct.inode* %294, %struct.inode* %296)
  %298 = bitcast %struct.inode* %297 to %struct.dentry*
  store %struct.dentry* %298, %struct.dentry** %4, align 8
  br label %299

299:                                              ; preds = %289, %36
  %300 = load %struct.dentry*, %struct.dentry** %4, align 8
  ret %struct.dentry* %300
}

declare dso_local i32 @hpfs_lock(i32) #1

declare dso_local i32 @hpfs_chk_name(i8*, i32*) #1

declare dso_local i32 @hpfs_unlock(i32) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local %struct.hpfs_dirent* @map_dirent(%struct.inode*, i32, i8*, i32, i32*, %struct.quad_buffer_head*) #1

declare dso_local %struct.hpfs_inode_info* @hpfs_i(%struct.inode*) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local %struct.inode* @iget_locked(i32, i8*) #1

declare dso_local i32 @hpfs_error(i32, i8*) #1

declare dso_local i32 @hpfs_init_inode(%struct.inode*) #1

declare dso_local i32 @hpfs_read_inode(%struct.inode*) #1

declare dso_local %struct.TYPE_12__* @hpfs_sb(i32) #1

declare dso_local i32 @set_nlink(%struct.inode*, i32) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

declare dso_local i32 @sb_rdonly(i32) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i8* @local_to_gmt(i32, i8*) #1

declare dso_local i32 @hpfs_brelse4(%struct.quad_buffer_head*) #1

declare dso_local %struct.inode* @d_splice_alias(%struct.inode*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
