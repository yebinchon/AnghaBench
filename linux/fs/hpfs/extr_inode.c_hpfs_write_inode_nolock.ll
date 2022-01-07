; ModuleID = '/home/carl/AnghaBench/linux/fs/hpfs/extr_inode.c_hpfs_write_inode_nolock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hpfs/extr_inode.c_hpfs_write_inode_nolock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32, i32, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__, i32, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.hpfs_inode_info = type { i32, i32 }
%struct.buffer_head = type { i32 }
%struct.fnode = type { i8* }
%struct.quad_buffer_head = type { i32 }
%struct.hpfs_dirent = type { i32, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_8__ = type { i64 }

@.str = private unnamed_addr constant [3 x i8] c"\01\01\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"directory %08lx doesn't have '.' entry\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hpfs_write_inode_nolock(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.hpfs_inode_info*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca %struct.fnode*, align 8
  %6 = alloca %struct.quad_buffer_head, align 4
  %7 = alloca %struct.hpfs_dirent*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %8 = load %struct.inode*, %struct.inode** %2, align 8
  %9 = call %struct.hpfs_inode_info* @hpfs_i(%struct.inode* %8)
  store %struct.hpfs_inode_info* %9, %struct.hpfs_inode_info** %3, align 8
  %10 = load %struct.inode*, %struct.inode** %2, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.inode*, %struct.inode** %2, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.TYPE_8__* @hpfs_sb(i32 %15)
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %12, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %238

21:                                               ; preds = %1
  %22 = load %struct.inode*, %struct.inode** %2, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.inode*, %struct.inode** %2, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call %struct.fnode* @hpfs_map_fnode(i32 %24, i64 %27, %struct.buffer_head** %4)
  store %struct.fnode* %28, %struct.fnode** %5, align 8
  %29 = icmp ne %struct.fnode* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %21
  br label %238

31:                                               ; preds = %21
  %32 = load %struct.inode*, %struct.inode** %2, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.inode*, %struct.inode** %2, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.TYPE_8__* @hpfs_sb(i32 %37)
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %34, %40
  br i1 %41, label %42, label %61

42:                                               ; preds = %31
  %43 = load %struct.inode*, %struct.inode** %2, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 7
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %42
  %48 = load %struct.inode*, %struct.inode** %2, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.inode*, %struct.inode** %2, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.fnode*, %struct.fnode** %5, align 8
  %55 = call %struct.hpfs_dirent* @map_fnode_dirent(i32 %50, i64 %53, %struct.fnode* %54, %struct.quad_buffer_head* %6)
  store %struct.hpfs_dirent* %55, %struct.hpfs_dirent** %7, align 8
  %56 = icmp ne %struct.hpfs_dirent* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %47
  %58 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %59 = call i32 @brelse(%struct.buffer_head* %58)
  br label %238

60:                                               ; preds = %47
  br label %62

61:                                               ; preds = %42, %31
  store %struct.hpfs_dirent* null, %struct.hpfs_dirent** %7, align 8
  br label %62

62:                                               ; preds = %61, %60
  %63 = load %struct.inode*, %struct.inode** %2, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @S_ISREG(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %85

68:                                               ; preds = %62
  %69 = load %struct.inode*, %struct.inode** %2, align 8
  %70 = getelementptr inbounds %struct.inode, %struct.inode* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 4
  %72 = call i8* @cpu_to_le32(i32 %71)
  %73 = load %struct.fnode*, %struct.fnode** %5, align 8
  %74 = getelementptr inbounds %struct.fnode, %struct.fnode* %73, i32 0, i32 0
  store i8* %72, i8** %74, align 8
  %75 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %7, align 8
  %76 = icmp ne %struct.hpfs_dirent* %75, null
  br i1 %76, label %77, label %84

77:                                               ; preds = %68
  %78 = load %struct.inode*, %struct.inode** %2, align 8
  %79 = getelementptr inbounds %struct.inode, %struct.inode* %78, i32 0, i32 6
  %80 = load i32, i32* %79, align 4
  %81 = call i8* @cpu_to_le32(i32 %80)
  %82 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %7, align 8
  %83 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %82, i32 0, i32 1
  store i8* %81, i8** %83, align 8
  br label %84

84:                                               ; preds = %77, %68
  br label %103

85:                                               ; preds = %62
  %86 = load %struct.inode*, %struct.inode** %2, align 8
  %87 = getelementptr inbounds %struct.inode, %struct.inode* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = call i64 @S_ISDIR(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %102

91:                                               ; preds = %85
  %92 = call i8* @cpu_to_le32(i32 0)
  %93 = load %struct.fnode*, %struct.fnode** %5, align 8
  %94 = getelementptr inbounds %struct.fnode, %struct.fnode* %93, i32 0, i32 0
  store i8* %92, i8** %94, align 8
  %95 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %7, align 8
  %96 = icmp ne %struct.hpfs_dirent* %95, null
  br i1 %96, label %97, label %101

97:                                               ; preds = %91
  %98 = call i8* @cpu_to_le32(i32 0)
  %99 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %7, align 8
  %100 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %99, i32 0, i32 1
  store i8* %98, i8** %100, align 8
  br label %101

101:                                              ; preds = %97, %91
  br label %102

102:                                              ; preds = %101, %85
  br label %103

103:                                              ; preds = %102, %84
  %104 = load %struct.inode*, %struct.inode** %2, align 8
  %105 = load %struct.fnode*, %struct.fnode** %5, align 8
  %106 = call i32 @hpfs_write_inode_ea(%struct.inode* %104, %struct.fnode* %105)
  %107 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %7, align 8
  %108 = icmp ne %struct.hpfs_dirent* %107, null
  br i1 %108, label %109, label %160

109:                                              ; preds = %103
  %110 = load %struct.inode*, %struct.inode** %2, align 8
  %111 = getelementptr inbounds %struct.inode, %struct.inode* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.inode*, %struct.inode** %2, align 8
  %114 = getelementptr inbounds %struct.inode, %struct.inode* %113, i32 0, i32 5
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @gmt_to_local(i32 %112, i32 %116)
  %118 = call i8* @cpu_to_le32(i32 %117)
  %119 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %7, align 8
  %120 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %119, i32 0, i32 5
  store i8* %118, i8** %120, align 8
  %121 = load %struct.inode*, %struct.inode** %2, align 8
  %122 = getelementptr inbounds %struct.inode, %struct.inode* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.inode*, %struct.inode** %2, align 8
  %125 = getelementptr inbounds %struct.inode, %struct.inode* %124, i32 0, i32 4
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @gmt_to_local(i32 %123, i32 %127)
  %129 = call i8* @cpu_to_le32(i32 %128)
  %130 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %7, align 8
  %131 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %130, i32 0, i32 4
  store i8* %129, i8** %131, align 8
  %132 = load %struct.inode*, %struct.inode** %2, align 8
  %133 = getelementptr inbounds %struct.inode, %struct.inode* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.inode*, %struct.inode** %2, align 8
  %136 = getelementptr inbounds %struct.inode, %struct.inode* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @gmt_to_local(i32 %134, i32 %138)
  %140 = call i8* @cpu_to_le32(i32 %139)
  %141 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %7, align 8
  %142 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %141, i32 0, i32 3
  store i8* %140, i8** %142, align 8
  %143 = load %struct.inode*, %struct.inode** %2, align 8
  %144 = getelementptr inbounds %struct.inode, %struct.inode* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = and i32 %145, 146
  %147 = icmp ne i32 %146, 0
  %148 = xor i1 %147, true
  %149 = zext i1 %148 to i32
  %150 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %7, align 8
  %151 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 8
  %152 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %3, align 8
  %153 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i8* @cpu_to_le32(i32 %154)
  %156 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %7, align 8
  %157 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %156, i32 0, i32 2
  store i8* %155, i8** %157, align 8
  %158 = call i32 @hpfs_mark_4buffers_dirty(%struct.quad_buffer_head* %6)
  %159 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %6)
  br label %160

160:                                              ; preds = %109, %103
  %161 = load %struct.inode*, %struct.inode** %2, align 8
  %162 = getelementptr inbounds %struct.inode, %struct.inode* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = call i64 @S_ISDIR(i32 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %233

166:                                              ; preds = %160
  %167 = load %struct.inode*, %struct.inode** %2, align 8
  %168 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %3, align 8
  %169 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = call %struct.hpfs_dirent* @map_dirent(%struct.inode* %167, i32 %170, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2, i32* null, %struct.quad_buffer_head* %6)
  store %struct.hpfs_dirent* %171, %struct.hpfs_dirent** %7, align 8
  %172 = icmp ne %struct.hpfs_dirent* %171, null
  br i1 %172, label %173, label %224

173:                                              ; preds = %166
  %174 = load %struct.inode*, %struct.inode** %2, align 8
  %175 = getelementptr inbounds %struct.inode, %struct.inode* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.inode*, %struct.inode** %2, align 8
  %178 = getelementptr inbounds %struct.inode, %struct.inode* %177, i32 0, i32 5
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = call i32 @gmt_to_local(i32 %176, i32 %180)
  %182 = call i8* @cpu_to_le32(i32 %181)
  %183 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %7, align 8
  %184 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %183, i32 0, i32 5
  store i8* %182, i8** %184, align 8
  %185 = load %struct.inode*, %struct.inode** %2, align 8
  %186 = getelementptr inbounds %struct.inode, %struct.inode* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.inode*, %struct.inode** %2, align 8
  %189 = getelementptr inbounds %struct.inode, %struct.inode* %188, i32 0, i32 4
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @gmt_to_local(i32 %187, i32 %191)
  %193 = call i8* @cpu_to_le32(i32 %192)
  %194 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %7, align 8
  %195 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %194, i32 0, i32 4
  store i8* %193, i8** %195, align 8
  %196 = load %struct.inode*, %struct.inode** %2, align 8
  %197 = getelementptr inbounds %struct.inode, %struct.inode* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.inode*, %struct.inode** %2, align 8
  %200 = getelementptr inbounds %struct.inode, %struct.inode* %199, i32 0, i32 3
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = call i32 @gmt_to_local(i32 %198, i32 %202)
  %204 = call i8* @cpu_to_le32(i32 %203)
  %205 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %7, align 8
  %206 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %205, i32 0, i32 3
  store i8* %204, i8** %206, align 8
  %207 = load %struct.inode*, %struct.inode** %2, align 8
  %208 = getelementptr inbounds %struct.inode, %struct.inode* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 8
  %210 = and i32 %209, 146
  %211 = icmp ne i32 %210, 0
  %212 = xor i1 %211, true
  %213 = zext i1 %212 to i32
  %214 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %7, align 8
  %215 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %214, i32 0, i32 0
  store i32 %213, i32* %215, align 8
  %216 = call i8* @cpu_to_le32(i32 0)
  %217 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %7, align 8
  %218 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %217, i32 0, i32 2
  store i8* %216, i8** %218, align 8
  %219 = call i8* @cpu_to_le32(i32 0)
  %220 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %7, align 8
  %221 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %220, i32 0, i32 1
  store i8* %219, i8** %221, align 8
  %222 = call i32 @hpfs_mark_4buffers_dirty(%struct.quad_buffer_head* %6)
  %223 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %6)
  br label %232

224:                                              ; preds = %166
  %225 = load %struct.inode*, %struct.inode** %2, align 8
  %226 = getelementptr inbounds %struct.inode, %struct.inode* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.inode*, %struct.inode** %2, align 8
  %229 = getelementptr inbounds %struct.inode, %struct.inode* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = call i32 @hpfs_error(i32 %227, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %230)
  br label %232

232:                                              ; preds = %224, %173
  br label %233

233:                                              ; preds = %232, %160
  %234 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %235 = call i32 @mark_buffer_dirty(%struct.buffer_head* %234)
  %236 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %237 = call i32 @brelse(%struct.buffer_head* %236)
  br label %238

238:                                              ; preds = %233, %57, %30, %20
  ret void
}

declare dso_local %struct.hpfs_inode_info* @hpfs_i(%struct.inode*) #1

declare dso_local %struct.TYPE_8__* @hpfs_sb(i32) #1

declare dso_local %struct.fnode* @hpfs_map_fnode(i32, i64, %struct.buffer_head**) #1

declare dso_local %struct.hpfs_dirent* @map_fnode_dirent(i32, i64, %struct.fnode*, %struct.quad_buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @hpfs_write_inode_ea(%struct.inode*, %struct.fnode*) #1

declare dso_local i32 @gmt_to_local(i32, i32) #1

declare dso_local i32 @hpfs_mark_4buffers_dirty(%struct.quad_buffer_head*) #1

declare dso_local i32 @hpfs_brelse4(%struct.quad_buffer_head*) #1

declare dso_local %struct.hpfs_dirent* @map_dirent(%struct.inode*, i32, i8*, i32, i32*, %struct.quad_buffer_head*) #1

declare dso_local i32 @hpfs_error(i32, i8*, i64) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
