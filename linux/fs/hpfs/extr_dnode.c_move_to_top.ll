; ModuleID = '/home/carl/AnghaBench/linux/fs/hpfs/extr_dnode.c_move_to_top.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hpfs/extr_dnode.c_move_to_top.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32 }
%struct.dnode = type { i32, i64, i32 }
%struct.quad_buffer_head = type { i32 }
%struct.hpfs_dirent = type { i32, i32, i64, i32 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [12 x i8] c"move_to_top\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"move_to_top: up pointer from %08x should be %08x, is %08x\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"move_to_top: dnode %08x has no last de\00", align 1
@hpfs_pos_subst = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [62 x i8] c"move_to_top: got to root_dnode while moving from %08x to %08x\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"move_to_top: dnode %08x doesn't point down to %08x\00", align 1
@GFP_NOFS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [55 x i8] c"out of memory for dirent - directory will be corrupted\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.inode*, i64, i64)* @move_to_top to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @move_to_top(%struct.inode* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.dnode*, align 8
  %12 = alloca %struct.quad_buffer_head, align 4
  %13 = alloca %struct.hpfs_dirent*, align 8
  %14 = alloca %struct.hpfs_dirent*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %20 = load i64, i64* %7, align 8
  store i64 %20, i64* %10, align 8
  store i32 0, i32* %18, align 4
  %21 = load i64, i64* %6, align 8
  store i64 %21, i64* %8, align 8
  br label %22

22:                                               ; preds = %3, %93
  %23 = load %struct.inode*, %struct.inode** %5, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.TYPE_2__* @hpfs_sb(i32 %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %22
  %31 = load %struct.inode*, %struct.inode** %5, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i64, i64* %8, align 8
  %35 = call i64 @hpfs_stop_cycles(i32 %33, i64 %34, i32* %17, i32* %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  store i64 0, i64* %4, align 8
  br label %260

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %38, %22
  %40 = load %struct.inode*, %struct.inode** %5, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i64, i64* %8, align 8
  %44 = call %struct.dnode* @hpfs_map_dnode(i32 %42, i64 %43, %struct.quad_buffer_head* %12)
  store %struct.dnode* %44, %struct.dnode** %11, align 8
  %45 = icmp ne %struct.dnode* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %39
  store i64 0, i64* %4, align 8
  br label %260

47:                                               ; preds = %39
  %48 = load %struct.inode*, %struct.inode** %5, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call %struct.TYPE_2__* @hpfs_sb(i32 %50)
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %76

55:                                               ; preds = %47
  %56 = load %struct.dnode*, %struct.dnode** %11, align 8
  %57 = getelementptr inbounds %struct.dnode, %struct.dnode* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @le32_to_cpu(i32 %58)
  %60 = load i64, i64* %10, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %74

62:                                               ; preds = %55
  %63 = load %struct.inode*, %struct.inode** %5, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load i64, i64* %8, align 8
  %67 = load i64, i64* %10, align 8
  %68 = load %struct.dnode*, %struct.dnode** %11, align 8
  %69 = getelementptr inbounds %struct.dnode, %struct.dnode* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i64 @le32_to_cpu(i32 %70)
  %72 = call i32 (i32, i8*, ...) @hpfs_error(i32 %65, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i64 %66, i64 %67, i64 %71)
  %73 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %12)
  store i64 0, i64* %4, align 8
  br label %260

74:                                               ; preds = %55
  %75 = load i64, i64* %8, align 8
  store i64 %75, i64* %10, align 8
  br label %76

76:                                               ; preds = %74, %47
  %77 = load %struct.dnode*, %struct.dnode** %11, align 8
  %78 = call %struct.hpfs_dirent* @dnode_last_de(%struct.dnode* %77)
  store %struct.hpfs_dirent* %78, %struct.hpfs_dirent** %13, align 8
  %79 = icmp ne %struct.hpfs_dirent* %78, null
  br i1 %79, label %87, label %80

80:                                               ; preds = %76
  %81 = load %struct.inode*, %struct.inode** %5, align 8
  %82 = getelementptr inbounds %struct.inode, %struct.inode* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load i64, i64* %8, align 8
  %85 = call i32 (i32, i8*, ...) @hpfs_error(i32 %83, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i64 %84)
  %86 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %12)
  store i64 0, i64* %4, align 8
  br label %260

87:                                               ; preds = %76
  %88 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %89 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %87
  br label %97

93:                                               ; preds = %87
  %94 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %95 = call i64 @de_down_pointer(%struct.hpfs_dirent* %94)
  store i64 %95, i64* %8, align 8
  %96 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %12)
  br label %22

97:                                               ; preds = %92
  br label %98

98:                                               ; preds = %173, %97
  %99 = load %struct.dnode*, %struct.dnode** %11, align 8
  %100 = call %struct.hpfs_dirent* @dnode_pre_last_de(%struct.dnode* %99)
  store %struct.hpfs_dirent* %100, %struct.hpfs_dirent** %13, align 8
  %101 = icmp ne %struct.hpfs_dirent* %100, null
  %102 = xor i1 %101, true
  br i1 %102, label %103, label %184

103:                                              ; preds = %98
  %104 = load %struct.dnode*, %struct.dnode** %11, align 8
  %105 = getelementptr inbounds %struct.dnode, %struct.dnode* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = call i64 @le32_to_cpu(i32 %106)
  store i64 %107, i64* %19, align 8
  %108 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %12)
  %109 = load %struct.inode*, %struct.inode** %5, align 8
  %110 = getelementptr inbounds %struct.inode, %struct.inode* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load i64, i64* %8, align 8
  %113 = call i32 @hpfs_free_dnode(i32 %111, i64 %112)
  %114 = load %struct.inode*, %struct.inode** %5, align 8
  %115 = getelementptr inbounds %struct.inode, %struct.inode* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = sub nsw i32 %116, 2048
  store i32 %117, i32* %115, align 4
  %118 = load %struct.inode*, %struct.inode** %5, align 8
  %119 = getelementptr inbounds %struct.inode, %struct.inode* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = sub nsw i32 %120, 4
  store i32 %121, i32* %119, align 4
  %122 = load %struct.inode*, %struct.inode** %5, align 8
  %123 = load i32, i32* @hpfs_pos_subst, align 4
  %124 = load i64, i64* %8, align 8
  %125 = trunc i64 %124 to i32
  %126 = shl i32 %125, 4
  %127 = or i32 %126, 1
  %128 = call i32 @for_all_poss(%struct.inode* %122, i32 %123, i32 %127, i32 5)
  %129 = load i64, i64* %19, align 8
  %130 = load i64, i64* %7, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %134

132:                                              ; preds = %103
  %133 = load i64, i64* %7, align 8
  store i64 %133, i64* %4, align 8
  br label %260

134:                                              ; preds = %103
  %135 = load %struct.inode*, %struct.inode** %5, align 8
  %136 = getelementptr inbounds %struct.inode, %struct.inode* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = load i64, i64* %19, align 8
  %139 = call %struct.dnode* @hpfs_map_dnode(i32 %137, i64 %138, %struct.quad_buffer_head* %12)
  store %struct.dnode* %139, %struct.dnode** %11, align 8
  %140 = icmp ne %struct.dnode* %139, null
  br i1 %140, label %142, label %141

141:                                              ; preds = %134
  store i64 0, i64* %4, align 8
  br label %260

142:                                              ; preds = %134
  %143 = load %struct.dnode*, %struct.dnode** %11, align 8
  %144 = getelementptr inbounds %struct.dnode, %struct.dnode* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %155

147:                                              ; preds = %142
  %148 = load %struct.inode*, %struct.inode** %5, align 8
  %149 = getelementptr inbounds %struct.inode, %struct.inode* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = load i64, i64* %6, align 8
  %152 = load i64, i64* %7, align 8
  %153 = call i32 (i32, i8*, ...) @hpfs_error(i32 %150, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0), i64 %151, i64 %152)
  %154 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %12)
  store i64 0, i64* %4, align 8
  br label %260

155:                                              ; preds = %142
  %156 = load %struct.dnode*, %struct.dnode** %11, align 8
  %157 = call %struct.hpfs_dirent* @dnode_last_de(%struct.dnode* %156)
  store %struct.hpfs_dirent* %157, %struct.hpfs_dirent** %13, align 8
  %158 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %159 = icmp ne %struct.hpfs_dirent* %158, null
  br i1 %159, label %160, label %165

160:                                              ; preds = %155
  %161 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %162 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %161, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %173, label %165

165:                                              ; preds = %160, %155
  %166 = load %struct.inode*, %struct.inode** %5, align 8
  %167 = getelementptr inbounds %struct.inode, %struct.inode* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  %169 = load i64, i64* %19, align 8
  %170 = load i64, i64* %8, align 8
  %171 = call i32 (i32, i8*, ...) @hpfs_error(i32 %168, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i64 %169, i64 %170)
  %172 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %12)
  store i64 0, i64* %4, align 8
  br label %260

173:                                              ; preds = %160
  %174 = load %struct.dnode*, %struct.dnode** %11, align 8
  %175 = getelementptr inbounds %struct.dnode, %struct.dnode* %174, i32 0, i32 0
  %176 = call i32 @le32_add_cpu(i32* %175, i32 -4)
  %177 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %178 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %177, i32 0, i32 3
  %179 = call i32 @le16_add_cpu(i32* %178, i32 -4)
  %180 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %181 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %180, i32 0, i32 2
  store i64 0, i64* %181, align 8
  %182 = call i32 @hpfs_mark_4buffers_dirty(%struct.quad_buffer_head* %12)
  %183 = load i64, i64* %19, align 8
  store i64 %183, i64* %8, align 8
  br label %98

184:                                              ; preds = %98
  %185 = load %struct.dnode*, %struct.dnode** %11, align 8
  %186 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %187 = call i32 @get_pos(%struct.dnode* %185, %struct.hpfs_dirent* %186)
  store i32 %187, i32* %16, align 4
  %188 = load %struct.inode*, %struct.inode** %5, align 8
  %189 = load i32, i32* @hpfs_pos_subst, align 4
  %190 = load i32, i32* %16, align 4
  %191 = call i32 @for_all_poss(%struct.inode* %188, i32 %189, i32 %190, i32 4)
  %192 = load %struct.inode*, %struct.inode** %5, align 8
  %193 = load i32, i32* @hpfs_pos_subst, align 4
  %194 = load i32, i32* %16, align 4
  %195 = add nsw i32 %194, 1
  %196 = call i32 @for_all_poss(%struct.inode* %192, i32 %193, i32 %195, i32 5)
  %197 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %198 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 8
  %200 = call i32 @le16_to_cpu(i32 %199)
  %201 = load i32, i32* @GFP_NOFS, align 4
  %202 = call %struct.hpfs_dirent* @kmalloc(i32 %200, i32 %201)
  store %struct.hpfs_dirent* %202, %struct.hpfs_dirent** %14, align 8
  %203 = icmp ne %struct.hpfs_dirent* %202, null
  br i1 %203, label %210, label %204

204:                                              ; preds = %184
  %205 = load %struct.inode*, %struct.inode** %5, align 8
  %206 = getelementptr inbounds %struct.inode, %struct.inode* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 4
  %208 = call i32 (i32, i8*, ...) @hpfs_error(i32 %207, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0))
  %209 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %12)
  store i64 0, i64* %4, align 8
  br label %260

210:                                              ; preds = %184
  %211 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %14, align 8
  %212 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %213 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %214 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %213, i32 0, i32 3
  %215 = load i32, i32* %214, align 8
  %216 = call i32 @le16_to_cpu(i32 %215)
  %217 = call i32 @memcpy(%struct.hpfs_dirent* %211, %struct.hpfs_dirent* %212, i32 %216)
  %218 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %219 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %218, i32 0, i32 2
  %220 = load i64, i64* %219, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %225

222:                                              ; preds = %210
  %223 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %224 = call i64 @de_down_pointer(%struct.hpfs_dirent* %223)
  br label %226

225:                                              ; preds = %210
  br label %226

226:                                              ; preds = %225, %222
  %227 = phi i64 [ %224, %222 ], [ 0, %225 ]
  store i64 %227, i64* %9, align 8
  %228 = load %struct.inode*, %struct.inode** %5, align 8
  %229 = getelementptr inbounds %struct.inode, %struct.inode* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.dnode*, %struct.dnode** %11, align 8
  %232 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %233 = call i32 @hpfs_delete_de(i32 %230, %struct.dnode* %231, %struct.hpfs_dirent* %232)
  %234 = load %struct.inode*, %struct.inode** %5, align 8
  %235 = getelementptr inbounds %struct.inode, %struct.inode* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.dnode*, %struct.dnode** %11, align 8
  %238 = load i64, i64* %9, align 8
  %239 = call i32 @set_last_pointer(i32 %236, %struct.dnode* %237, i64 %238)
  %240 = call i32 @hpfs_mark_4buffers_dirty(%struct.quad_buffer_head* %12)
  %241 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %12)
  %242 = load %struct.inode*, %struct.inode** %5, align 8
  %243 = load i64, i64* %7, align 8
  %244 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %14, align 8
  %245 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %14, align 8
  %248 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %14, align 8
  %251 = load i64, i64* %6, align 8
  %252 = call i32 @hpfs_add_to_dnode(%struct.inode* %242, i64 %243, i32 %246, i32 %249, %struct.hpfs_dirent* %250, i64 %251)
  store i32 %252, i32* %15, align 4
  %253 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %14, align 8
  %254 = call i32 @kfree(%struct.hpfs_dirent* %253)
  %255 = load i32, i32* %15, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %258

257:                                              ; preds = %226
  store i64 0, i64* %4, align 8
  br label %260

258:                                              ; preds = %226
  %259 = load i64, i64* %8, align 8
  store i64 %259, i64* %4, align 8
  br label %260

260:                                              ; preds = %258, %257, %204, %165, %147, %141, %132, %80, %62, %46, %37
  %261 = load i64, i64* %4, align 8
  ret i64 %261
}

declare dso_local %struct.TYPE_2__* @hpfs_sb(i32) #1

declare dso_local i64 @hpfs_stop_cycles(i32, i64, i32*, i32*, i8*) #1

declare dso_local %struct.dnode* @hpfs_map_dnode(i32, i64, %struct.quad_buffer_head*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @hpfs_error(i32, i8*, ...) #1

declare dso_local i32 @hpfs_brelse4(%struct.quad_buffer_head*) #1

declare dso_local %struct.hpfs_dirent* @dnode_last_de(%struct.dnode*) #1

declare dso_local i64 @de_down_pointer(%struct.hpfs_dirent*) #1

declare dso_local %struct.hpfs_dirent* @dnode_pre_last_de(%struct.dnode*) #1

declare dso_local i32 @hpfs_free_dnode(i32, i64) #1

declare dso_local i32 @for_all_poss(%struct.inode*, i32, i32, i32) #1

declare dso_local i32 @le32_add_cpu(i32*, i32) #1

declare dso_local i32 @le16_add_cpu(i32*, i32) #1

declare dso_local i32 @hpfs_mark_4buffers_dirty(%struct.quad_buffer_head*) #1

declare dso_local i32 @get_pos(%struct.dnode*, %struct.hpfs_dirent*) #1

declare dso_local %struct.hpfs_dirent* @kmalloc(i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @memcpy(%struct.hpfs_dirent*, %struct.hpfs_dirent*, i32) #1

declare dso_local i32 @hpfs_delete_de(i32, %struct.dnode*, %struct.hpfs_dirent*) #1

declare dso_local i32 @set_last_pointer(i32, %struct.dnode*, i64) #1

declare dso_local i32 @hpfs_add_to_dnode(%struct.inode*, i64, i32, i32, %struct.hpfs_dirent*, i64) #1

declare dso_local i32 @kfree(%struct.hpfs_dirent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
