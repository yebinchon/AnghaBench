; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_cpfile.c_nilfs_cpfile_delete_checkpoints.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_cpfile.c_nilfs_cpfile_delete_checkpoints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.nilfs_cpfile_header = type { i32 }
%struct.nilfs_checkpoint = type { i32 }
%struct.TYPE_2__ = type { i64, i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"cannot delete checkpoints: invalid range [%llu, %llu)\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"error %d deleting checkpoint block\00", align 1
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_cpfile_delete_checkpoints(%struct.inode* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.nilfs_cpfile_header*, align 8
  %11 = alloca %struct.nilfs_checkpoint*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %22 = load %struct.inode*, %struct.inode** %5, align 8
  %23 = call %struct.TYPE_2__* @NILFS_MDT(%struct.inode* %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %12, align 8
  %26 = load i64, i64* %6, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %3
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = icmp sgt i64 %29, %30
  br label %32

32:                                               ; preds = %28, %3
  %33 = phi i1 [ true, %3 ], [ %31, %28 ]
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %32
  %38 = load %struct.inode*, %struct.inode** %5, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @KERN_ERR, align 4
  %42 = load i64, i64* %6, align 8
  %43 = trunc i64 %42 to i32
  %44 = load i64, i64* %7, align 8
  %45 = call i32 (i32, i32, i8*, i32, ...) @nilfs_msg(i32 %40, i32 %41, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %43, i64 %44)
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %214

48:                                               ; preds = %32
  %49 = load %struct.inode*, %struct.inode** %5, align 8
  %50 = call %struct.TYPE_2__* @NILFS_MDT(%struct.inode* %49)
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = call i32 @down_write(i32* %51)
  %53 = load %struct.inode*, %struct.inode** %5, align 8
  %54 = call i32 @nilfs_cpfile_get_header_block(%struct.inode* %53, %struct.buffer_head** %8)
  store i32 %54, i32* %16, align 4
  %55 = load i32, i32* %16, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  br label %208

58:                                               ; preds = %48
  store i64 0, i64* %15, align 8
  store i32 0, i32* %19, align 4
  %59 = load i64, i64* %6, align 8
  store i64 %59, i64* %13, align 8
  br label %60

60:                                               ; preds = %170, %58
  %61 = load i64, i64* %13, align 8
  %62 = load i64, i64* %7, align 8
  %63 = icmp slt i64 %61, %62
  br i1 %63, label %64, label %175

64:                                               ; preds = %60
  %65 = load %struct.inode*, %struct.inode** %5, align 8
  %66 = load i64, i64* %13, align 8
  %67 = load i64, i64* %7, align 8
  %68 = call i32 @nilfs_cpfile_checkpoints_in_block(%struct.inode* %65, i64 %66, i64 %67)
  store i32 %68, i32* %17, align 4
  %69 = load %struct.inode*, %struct.inode** %5, align 8
  %70 = load i64, i64* %13, align 8
  %71 = call i32 @nilfs_cpfile_get_checkpoint_block(%struct.inode* %69, i64 %70, i32 0, %struct.buffer_head** %9)
  store i32 %71, i32* %16, align 4
  %72 = load i32, i32* %16, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %64
  %75 = load i32, i32* %16, align 4
  %76 = load i32, i32* @ENOENT, align 4
  %77 = sub nsw i32 0, %76
  %78 = icmp ne i32 %75, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %175

80:                                               ; preds = %74
  store i32 0, i32* %16, align 4
  br label %170

81:                                               ; preds = %64
  %82 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %83 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i8* @kmap_atomic(i32 %84)
  store i8* %85, i8** %14, align 8
  %86 = load %struct.inode*, %struct.inode** %5, align 8
  %87 = load i64, i64* %13, align 8
  %88 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %89 = load i8*, i8** %14, align 8
  %90 = call %struct.nilfs_checkpoint* @nilfs_cpfile_block_get_checkpoint(%struct.inode* %86, i64 %87, %struct.buffer_head* %88, i8* %89)
  store %struct.nilfs_checkpoint* %90, %struct.nilfs_checkpoint** %11, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %21, align 4
  br label %91

91:                                               ; preds = %113, %81
  %92 = load i32, i32* %21, align 4
  %93 = load i32, i32* %17, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %121

95:                                               ; preds = %91
  %96 = load %struct.nilfs_checkpoint*, %struct.nilfs_checkpoint** %11, align 8
  %97 = call i64 @nilfs_checkpoint_snapshot(%struct.nilfs_checkpoint* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %95
  %100 = load i32, i32* %19, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %19, align 4
  br label %112

102:                                              ; preds = %95
  %103 = load %struct.nilfs_checkpoint*, %struct.nilfs_checkpoint** %11, align 8
  %104 = call i32 @nilfs_checkpoint_invalid(%struct.nilfs_checkpoint* %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %111, label %106

106:                                              ; preds = %102
  %107 = load %struct.nilfs_checkpoint*, %struct.nilfs_checkpoint** %11, align 8
  %108 = call i32 @nilfs_checkpoint_set_invalid(%struct.nilfs_checkpoint* %107)
  %109 = load i32, i32* %18, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %18, align 4
  br label %111

111:                                              ; preds = %106, %102
  br label %112

112:                                              ; preds = %111, %99
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %21, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %21, align 4
  %116 = load %struct.nilfs_checkpoint*, %struct.nilfs_checkpoint** %11, align 8
  %117 = bitcast %struct.nilfs_checkpoint* %116 to i8*
  %118 = load i64, i64* %12, align 8
  %119 = getelementptr i8, i8* %117, i64 %118
  %120 = bitcast i8* %119 to %struct.nilfs_checkpoint*
  store %struct.nilfs_checkpoint* %120, %struct.nilfs_checkpoint** %11, align 8
  br label %91

121:                                              ; preds = %91
  %122 = load i32, i32* %18, align 4
  %123 = icmp sgt i32 %122, 0
  br i1 %123, label %124, label %165

124:                                              ; preds = %121
  %125 = load i32, i32* %18, align 4
  %126 = sext i32 %125 to i64
  %127 = load i64, i64* %15, align 8
  %128 = add i64 %127, %126
  store i64 %128, i64* %15, align 8
  %129 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %130 = call i32 @mark_buffer_dirty(%struct.buffer_head* %129)
  %131 = load %struct.inode*, %struct.inode** %5, align 8
  %132 = call i32 @nilfs_mdt_mark_dirty(%struct.inode* %131)
  %133 = load %struct.inode*, %struct.inode** %5, align 8
  %134 = load i64, i64* %13, align 8
  %135 = call i32 @nilfs_cpfile_is_in_first(%struct.inode* %133, i64 %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %164, label %137

137:                                              ; preds = %124
  %138 = load %struct.inode*, %struct.inode** %5, align 8
  %139 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %140 = load i8*, i8** %14, align 8
  %141 = load i32, i32* %18, align 4
  %142 = call i32 @nilfs_cpfile_block_sub_valid_checkpoints(%struct.inode* %138, %struct.buffer_head* %139, i8* %140, i32 %141)
  store i32 %142, i32* %20, align 4
  %143 = load i32, i32* %20, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %163

145:                                              ; preds = %137
  %146 = load i8*, i8** %14, align 8
  %147 = call i32 @kunmap_atomic(i8* %146)
  %148 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %149 = call i32 @brelse(%struct.buffer_head* %148)
  %150 = load %struct.inode*, %struct.inode** %5, align 8
  %151 = load i64, i64* %13, align 8
  %152 = call i32 @nilfs_cpfile_delete_checkpoint_block(%struct.inode* %150, i64 %151)
  store i32 %152, i32* %16, align 4
  %153 = load i32, i32* %16, align 4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %145
  br label %170

156:                                              ; preds = %145
  %157 = load %struct.inode*, %struct.inode** %5, align 8
  %158 = getelementptr inbounds %struct.inode, %struct.inode* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @KERN_ERR, align 4
  %161 = load i32, i32* %16, align 4
  %162 = call i32 (i32, i32, i8*, i32, ...) @nilfs_msg(i32 %159, i32 %160, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %161)
  br label %175

163:                                              ; preds = %137
  br label %164

164:                                              ; preds = %163, %124
  br label %165

165:                                              ; preds = %164, %121
  %166 = load i8*, i8** %14, align 8
  %167 = call i32 @kunmap_atomic(i8* %166)
  %168 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %169 = call i32 @brelse(%struct.buffer_head* %168)
  br label %170

170:                                              ; preds = %165, %155, %80
  %171 = load i32, i32* %17, align 4
  %172 = sext i32 %171 to i64
  %173 = load i64, i64* %13, align 8
  %174 = add nsw i64 %173, %172
  store i64 %174, i64* %13, align 8
  br label %60

175:                                              ; preds = %156, %79, %60
  %176 = load i64, i64* %15, align 8
  %177 = icmp ugt i64 %176, 0
  br i1 %177, label %178, label %199

178:                                              ; preds = %175
  %179 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %180 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = call i8* @kmap_atomic(i32 %181)
  store i8* %182, i8** %14, align 8
  %183 = load %struct.inode*, %struct.inode** %5, align 8
  %184 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %185 = load i8*, i8** %14, align 8
  %186 = call %struct.nilfs_cpfile_header* @nilfs_cpfile_block_get_header(%struct.inode* %183, %struct.buffer_head* %184, i8* %185)
  store %struct.nilfs_cpfile_header* %186, %struct.nilfs_cpfile_header** %10, align 8
  %187 = load %struct.nilfs_cpfile_header*, %struct.nilfs_cpfile_header** %10, align 8
  %188 = getelementptr inbounds %struct.nilfs_cpfile_header, %struct.nilfs_cpfile_header* %187, i32 0, i32 0
  %189 = load i64, i64* %15, align 8
  %190 = trunc i64 %189 to i32
  %191 = sub nsw i32 0, %190
  %192 = call i32 @le64_add_cpu(i32* %188, i32 %191)
  %193 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %194 = call i32 @mark_buffer_dirty(%struct.buffer_head* %193)
  %195 = load %struct.inode*, %struct.inode** %5, align 8
  %196 = call i32 @nilfs_mdt_mark_dirty(%struct.inode* %195)
  %197 = load i8*, i8** %14, align 8
  %198 = call i32 @kunmap_atomic(i8* %197)
  br label %199

199:                                              ; preds = %178, %175
  %200 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %201 = call i32 @brelse(%struct.buffer_head* %200)
  %202 = load i32, i32* %19, align 4
  %203 = icmp sgt i32 %202, 0
  br i1 %203, label %204, label %207

204:                                              ; preds = %199
  %205 = load i32, i32* @EBUSY, align 4
  %206 = sub nsw i32 0, %205
  store i32 %206, i32* %16, align 4
  br label %207

207:                                              ; preds = %204, %199
  br label %208

208:                                              ; preds = %207, %57
  %209 = load %struct.inode*, %struct.inode** %5, align 8
  %210 = call %struct.TYPE_2__* @NILFS_MDT(%struct.inode* %209)
  %211 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %210, i32 0, i32 1
  %212 = call i32 @up_write(i32* %211)
  %213 = load i32, i32* %16, align 4
  store i32 %213, i32* %4, align 4
  br label %214

214:                                              ; preds = %208, %37
  %215 = load i32, i32* %4, align 4
  ret i32 %215
}

declare dso_local %struct.TYPE_2__* @NILFS_MDT(%struct.inode*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @nilfs_msg(i32, i32, i8*, i32, ...) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @nilfs_cpfile_get_header_block(%struct.inode*, %struct.buffer_head**) #1

declare dso_local i32 @nilfs_cpfile_checkpoints_in_block(%struct.inode*, i64, i64) #1

declare dso_local i32 @nilfs_cpfile_get_checkpoint_block(%struct.inode*, i64, i32, %struct.buffer_head**) #1

declare dso_local i8* @kmap_atomic(i32) #1

declare dso_local %struct.nilfs_checkpoint* @nilfs_cpfile_block_get_checkpoint(%struct.inode*, i64, %struct.buffer_head*, i8*) #1

declare dso_local i64 @nilfs_checkpoint_snapshot(%struct.nilfs_checkpoint*) #1

declare dso_local i32 @nilfs_checkpoint_invalid(%struct.nilfs_checkpoint*) #1

declare dso_local i32 @nilfs_checkpoint_set_invalid(%struct.nilfs_checkpoint*) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @nilfs_mdt_mark_dirty(%struct.inode*) #1

declare dso_local i32 @nilfs_cpfile_is_in_first(%struct.inode*, i64) #1

declare dso_local i32 @nilfs_cpfile_block_sub_valid_checkpoints(%struct.inode*, %struct.buffer_head*, i8*, i32) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @nilfs_cpfile_delete_checkpoint_block(%struct.inode*, i64) #1

declare dso_local %struct.nilfs_cpfile_header* @nilfs_cpfile_block_get_header(%struct.inode*, %struct.buffer_head*, i8*) #1

declare dso_local i32 @le64_add_cpu(i32*, i32) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
