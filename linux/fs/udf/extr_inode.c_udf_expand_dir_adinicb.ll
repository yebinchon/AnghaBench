; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_inode.c_udf_expand_dir_adinicb.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_inode.c_udf_expand_dir_adinicb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32 }
%struct.inode = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.kernel_lb_addr = type { i32, i32 }
%struct.extent_position = type { %struct.buffer_head*, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.udf_fileident_bh = type { i32, i32, %struct.buffer_head*, %struct.buffer_head* }
%struct.fileIdentDesc = type { i32, i64, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.udf_inode_info = type { i32, i32, i32, %struct.TYPE_10__, %struct.TYPE_9__, i8* }
%struct.TYPE_9__ = type { i32 }

@UDF_FLAG_USE_SHORT_AD = common dso_local global i32 0, align 4
@ICBTAG_FLAG_AD_SHORT = common dso_local global i8* null, align 8
@ICBTAG_FLAG_AD_LONG = common dso_local global i8* null, align 8
@ICBTAG_FLAG_AD_IN_ICB = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.buffer_head* @udf_expand_dir_adinicb(%struct.inode* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.kernel_lb_addr, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.extent_position, align 8
  %13 = alloca %struct.udf_fileident_bh, align 8
  %14 = alloca %struct.udf_fileident_bh, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.fileIdentDesc, align 8
  %18 = alloca %struct.fileIdentDesc*, align 8
  %19 = alloca %struct.fileIdentDesc*, align 8
  %20 = alloca %struct.udf_inode_info*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %9, align 8
  %21 = load %struct.inode*, %struct.inode** %5, align 8
  %22 = call i32 @udf_ext0_offset(%struct.inode* %21)
  store i32 %22, i32* %15, align 4
  %23 = load %struct.inode*, %struct.inode** %5, align 8
  %24 = call i32 @udf_ext0_offset(%struct.inode* %23)
  %25 = load %struct.inode*, %struct.inode** %5, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 %24, %27
  store i32 %28, i32* %16, align 4
  %29 = load %struct.inode*, %struct.inode** %5, align 8
  %30 = call %struct.udf_inode_info* @UDF_I(%struct.inode* %29)
  store %struct.udf_inode_info* %30, %struct.udf_inode_info** %20, align 8
  %31 = load %struct.inode*, %struct.inode** %5, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 1
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  %34 = load i32, i32* @UDF_FLAG_USE_SHORT_AD, align 4
  %35 = call i64 @UDF_QUERY_FLAG(%struct.TYPE_11__* %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %3
  %38 = load i8*, i8** @ICBTAG_FLAG_AD_SHORT, align 8
  store i8* %38, i8** %11, align 8
  br label %41

39:                                               ; preds = %3
  %40 = load i8*, i8** @ICBTAG_FLAG_AD_LONG, align 8
  store i8* %40, i8** %11, align 8
  br label %41

41:                                               ; preds = %39, %37
  %42 = load %struct.inode*, %struct.inode** %5, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %41
  %47 = load i8*, i8** %11, align 8
  %48 = load %struct.udf_inode_info*, %struct.udf_inode_info** %20, align 8
  %49 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %48, i32 0, i32 5
  store i8* %47, i8** %49, align 8
  %50 = load %struct.inode*, %struct.inode** %5, align 8
  %51 = call i32 @mark_inode_dirty(%struct.inode* %50)
  store %struct.buffer_head* null, %struct.buffer_head** %4, align 8
  br label %249

52:                                               ; preds = %41
  %53 = load %struct.inode*, %struct.inode** %5, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 1
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %54, align 8
  %56 = load %struct.inode*, %struct.inode** %5, align 8
  %57 = load %struct.udf_inode_info*, %struct.udf_inode_info** %20, align 8
  %58 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.udf_inode_info*, %struct.udf_inode_info** %20, align 8
  %62 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %7, align 8
  %66 = call i32 @udf_new_block(%struct.TYPE_11__* %55, %struct.inode* %56, i32 %60, i32 %64, i32* %65)
  %67 = load i32*, i32** %6, align 8
  store i32 %66, i32* %67, align 4
  %68 = load i32*, i32** %6, align 8
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %52
  store %struct.buffer_head* null, %struct.buffer_head** %4, align 8
  br label %249

72:                                               ; preds = %52
  %73 = load %struct.inode*, %struct.inode** %5, align 8
  %74 = getelementptr inbounds %struct.inode, %struct.inode* %73, i32 0, i32 1
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %74, align 8
  %76 = load i32*, i32** %6, align 8
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.udf_inode_info*, %struct.udf_inode_info** %20, align 8
  %79 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @udf_get_pblock(%struct.TYPE_11__* %75, i32 %77, i32 %81, i32 0)
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %72
  store %struct.buffer_head* null, %struct.buffer_head** %4, align 8
  br label %249

86:                                               ; preds = %72
  %87 = load %struct.inode*, %struct.inode** %5, align 8
  %88 = getelementptr inbounds %struct.inode, %struct.inode* %87, i32 0, i32 1
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = call %struct.buffer_head* @udf_tgetblk(%struct.TYPE_11__* %89, i32 %90)
  store %struct.buffer_head* %91, %struct.buffer_head** %9, align 8
  %92 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %93 = icmp ne %struct.buffer_head* %92, null
  br i1 %93, label %95, label %94

94:                                               ; preds = %86
  store %struct.buffer_head* null, %struct.buffer_head** %4, align 8
  br label %249

95:                                               ; preds = %86
  %96 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %97 = call i32 @lock_buffer(%struct.buffer_head* %96)
  %98 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %99 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.inode*, %struct.inode** %5, align 8
  %102 = getelementptr inbounds %struct.inode, %struct.inode* %101, i32 0, i32 1
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @memset(i32 %100, i32 0, i32 %105)
  %107 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %108 = call i32 @set_buffer_uptodate(%struct.buffer_head* %107)
  %109 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %110 = call i32 @unlock_buffer(%struct.buffer_head* %109)
  %111 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %112 = load %struct.inode*, %struct.inode** %5, align 8
  %113 = call i32 @mark_buffer_dirty_inode(%struct.buffer_head* %111, %struct.inode* %112)
  %114 = load i32, i32* %15, align 4
  %115 = load %struct.inode*, %struct.inode** %5, align 8
  %116 = getelementptr inbounds %struct.inode, %struct.inode* %115, i32 0, i32 1
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = sub nsw i32 %119, 1
  %121 = and i32 %114, %120
  %122 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %13, i32 0, i32 1
  store i32 %121, i32* %122, align 4
  %123 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %13, i32 0, i32 0
  store i32 %121, i32* %123, align 8
  %124 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %13, i32 0, i32 2
  store %struct.buffer_head* null, %struct.buffer_head** %124, align 8
  %125 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %13, i32 0, i32 3
  store %struct.buffer_head* null, %struct.buffer_head** %125, align 8
  %126 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %14, i32 0, i32 1
  store i32 0, i32* %126, align 4
  %127 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %14, i32 0, i32 0
  store i32 0, i32* %127, align 8
  %128 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %129 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %14, i32 0, i32 2
  store %struct.buffer_head* %128, %struct.buffer_head** %129, align 8
  %130 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %14, i32 0, i32 3
  store %struct.buffer_head* %128, %struct.buffer_head** %130, align 8
  br label %131

131:                                              ; preds = %197, %95
  %132 = load i32, i32* %15, align 4
  %133 = load i32, i32* %16, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %135, label %198

135:                                              ; preds = %131
  %136 = load i8*, i8** @ICBTAG_FLAG_AD_IN_ICB, align 8
  %137 = load %struct.udf_inode_info*, %struct.udf_inode_info** %20, align 8
  %138 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %137, i32 0, i32 5
  store i8* %136, i8** %138, align 8
  %139 = load %struct.inode*, %struct.inode** %5, align 8
  %140 = call %struct.fileIdentDesc* @udf_fileident_read(%struct.inode* %139, i32* %15, %struct.udf_fileident_bh* %13, %struct.fileIdentDesc* %17, i32* null, i32* null, i32* null, i32* null)
  store %struct.fileIdentDesc* %140, %struct.fileIdentDesc** %18, align 8
  %141 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %18, align 8
  %142 = icmp ne %struct.fileIdentDesc* %141, null
  br i1 %142, label %146, label %143

143:                                              ; preds = %135
  %144 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %145 = call i32 @brelse(%struct.buffer_head* %144)
  store %struct.buffer_head* null, %struct.buffer_head** %4, align 8
  br label %249

146:                                              ; preds = %135
  %147 = load i8*, i8** %11, align 8
  %148 = load %struct.udf_inode_info*, %struct.udf_inode_info** %20, align 8
  %149 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %148, i32 0, i32 5
  store i8* %147, i8** %149, align 8
  %150 = load i32*, i32** %6, align 8
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @cpu_to_le32(i32 %151)
  %153 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %18, align 8
  %154 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %153, i32 0, i32 3
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  store i32 %152, i32* %155, align 4
  %156 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %14, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %14, i32 0, i32 0
  store i32 %157, i32* %158, align 8
  %159 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %13, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %13, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = sub nsw i32 %160, %162
  %164 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %14, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = add nsw i32 %165, %163
  store i32 %166, i32* %164, align 4
  %167 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %168 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %14, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = add nsw i32 %169, %171
  %173 = sext i32 %172 to i64
  %174 = inttoptr i64 %173 to %struct.fileIdentDesc*
  store %struct.fileIdentDesc* %174, %struct.fileIdentDesc** %19, align 8
  %175 = load %struct.inode*, %struct.inode** %5, align 8
  %176 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %18, align 8
  %177 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %19, align 8
  %178 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %18, align 8
  %179 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %18, align 8
  %182 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %18, align 8
  %185 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = call i64 @le16_to_cpu(i32 %186)
  %188 = add nsw i64 %183, %187
  %189 = call i64 @udf_write_fi(%struct.inode* %175, %struct.fileIdentDesc* %176, %struct.fileIdentDesc* %177, %struct.udf_fileident_bh* %14, i32 %180, i64 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %197

191:                                              ; preds = %146
  %192 = load i8*, i8** @ICBTAG_FLAG_AD_IN_ICB, align 8
  %193 = load %struct.udf_inode_info*, %struct.udf_inode_info** %20, align 8
  %194 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %193, i32 0, i32 5
  store i8* %192, i8** %194, align 8
  %195 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %196 = call i32 @brelse(%struct.buffer_head* %195)
  store %struct.buffer_head* null, %struct.buffer_head** %4, align 8
  br label %249

197:                                              ; preds = %146
  br label %131

198:                                              ; preds = %131
  %199 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %200 = load %struct.inode*, %struct.inode** %5, align 8
  %201 = call i32 @mark_buffer_dirty_inode(%struct.buffer_head* %199, %struct.inode* %200)
  %202 = load %struct.udf_inode_info*, %struct.udf_inode_info** %20, align 8
  %203 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %202, i32 0, i32 4
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.udf_inode_info*, %struct.udf_inode_info** %20, align 8
  %207 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = add nsw i32 %205, %208
  %210 = load %struct.udf_inode_info*, %struct.udf_inode_info** %20, align 8
  %211 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @memset(i32 %209, i32 0, i32 %212)
  %214 = load %struct.udf_inode_info*, %struct.udf_inode_info** %20, align 8
  %215 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %214, i32 0, i32 1
  store i32 0, i32* %215, align 4
  %216 = load i32*, i32** %6, align 8
  %217 = load i32, i32* %216, align 4
  %218 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %10, i32 0, i32 1
  store i32 %217, i32* %218, align 4
  %219 = load %struct.udf_inode_info*, %struct.udf_inode_info** %20, align 8
  %220 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %219, i32 0, i32 3
  %221 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %10, i32 0, i32 0
  store i32 %222, i32* %223, align 4
  %224 = load %struct.inode*, %struct.inode** %5, align 8
  %225 = getelementptr inbounds %struct.inode, %struct.inode* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = load %struct.udf_inode_info*, %struct.udf_inode_info** %20, align 8
  %228 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %227, i32 0, i32 2
  store i32 %226, i32* %228, align 8
  %229 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %12, i32 0, i32 0
  store %struct.buffer_head* null, %struct.buffer_head** %229, align 8
  %230 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %12, i32 0, i32 2
  %231 = load %struct.udf_inode_info*, %struct.udf_inode_info** %20, align 8
  %232 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %231, i32 0, i32 3
  %233 = bitcast %struct.TYPE_10__* %230 to i8*
  %234 = bitcast %struct.TYPE_10__* %232 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %233, i8* align 4 %234, i64 8, i1 false)
  %235 = load %struct.inode*, %struct.inode** %5, align 8
  %236 = call i32 @udf_file_entry_alloc_offset(%struct.inode* %235)
  %237 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %12, i32 0, i32 1
  store i32 %236, i32* %237, align 8
  %238 = load %struct.inode*, %struct.inode** %5, align 8
  %239 = load %struct.inode*, %struct.inode** %5, align 8
  %240 = getelementptr inbounds %struct.inode, %struct.inode* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = call i32 @udf_add_aext(%struct.inode* %238, %struct.extent_position* %12, %struct.kernel_lb_addr* %10, i32 %241, i32 0)
  %243 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %12, i32 0, i32 0
  %244 = load %struct.buffer_head*, %struct.buffer_head** %243, align 8
  %245 = call i32 @brelse(%struct.buffer_head* %244)
  %246 = load %struct.inode*, %struct.inode** %5, align 8
  %247 = call i32 @mark_inode_dirty(%struct.inode* %246)
  %248 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  store %struct.buffer_head* %248, %struct.buffer_head** %4, align 8
  br label %249

249:                                              ; preds = %198, %191, %143, %94, %85, %71, %46
  %250 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  ret %struct.buffer_head* %250
}

declare dso_local i32 @udf_ext0_offset(%struct.inode*) #1

declare dso_local %struct.udf_inode_info* @UDF_I(%struct.inode*) #1

declare dso_local i64 @UDF_QUERY_FLAG(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @udf_new_block(%struct.TYPE_11__*, %struct.inode*, i32, i32, i32*) #1

declare dso_local i32 @udf_get_pblock(%struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local %struct.buffer_head* @udf_tgetblk(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @mark_buffer_dirty_inode(%struct.buffer_head*, %struct.inode*) #1

declare dso_local %struct.fileIdentDesc* @udf_fileident_read(%struct.inode*, i32*, %struct.udf_fileident_bh*, %struct.fileIdentDesc*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i64 @udf_write_fi(%struct.inode*, %struct.fileIdentDesc*, %struct.fileIdentDesc*, %struct.udf_fileident_bh*, i32, i64) #1

declare dso_local i64 @le16_to_cpu(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @udf_file_entry_alloc_offset(%struct.inode*) #1

declare dso_local i32 @udf_add_aext(%struct.inode*, %struct.extent_position*, %struct.kernel_lb_addr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
