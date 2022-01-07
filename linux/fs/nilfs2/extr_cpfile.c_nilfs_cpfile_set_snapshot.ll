; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_cpfile.c_nilfs_cpfile_set_snapshot.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_cpfile.c_nilfs_cpfile_set_snapshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.nilfs_cpfile_header = type { i32, %struct.nilfs_snapshot_list }
%struct.nilfs_snapshot_list = type { i8*, i8* }
%struct.nilfs_checkpoint = type { %struct.nilfs_snapshot_list }
%struct.TYPE_2__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64)* @nilfs_cpfile_set_snapshot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_cpfile_set_snapshot(%struct.inode* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.nilfs_cpfile_header*, align 8
  %11 = alloca %struct.nilfs_checkpoint*, align 8
  %12 = alloca %struct.nilfs_snapshot_list*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i64 %1, i64* %5, align 8
  %19 = load i64, i64* %5, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOENT, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %238

24:                                               ; preds = %2
  %25 = load %struct.inode*, %struct.inode** %4, align 8
  %26 = call %struct.TYPE_2__* @NILFS_MDT(%struct.inode* %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 @down_write(i32* %27)
  %29 = load %struct.inode*, %struct.inode** %4, align 8
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @nilfs_cpfile_get_checkpoint_block(%struct.inode* %29, i64 %30, i32 0, %struct.buffer_head** %9)
  store i32 %31, i32* %18, align 4
  %32 = load i32, i32* %18, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  br label %232

35:                                               ; preds = %24
  %36 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %37 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @kmap_atomic(i32 %38)
  store i8* %39, i8** %17, align 8
  %40 = load %struct.inode*, %struct.inode** %4, align 8
  %41 = load i64, i64* %5, align 8
  %42 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %43 = load i8*, i8** %17, align 8
  %44 = call %struct.nilfs_checkpoint* @nilfs_cpfile_block_get_checkpoint(%struct.inode* %40, i64 %41, %struct.buffer_head* %42, i8* %43)
  store %struct.nilfs_checkpoint* %44, %struct.nilfs_checkpoint** %11, align 8
  %45 = load %struct.nilfs_checkpoint*, %struct.nilfs_checkpoint** %11, align 8
  %46 = call i64 @nilfs_checkpoint_invalid(%struct.nilfs_checkpoint* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %35
  %49 = load i32, i32* @ENOENT, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %18, align 4
  %51 = load i8*, i8** %17, align 8
  %52 = call i32 @kunmap_atomic(i8* %51)
  br label %229

53:                                               ; preds = %35
  %54 = load %struct.nilfs_checkpoint*, %struct.nilfs_checkpoint** %11, align 8
  %55 = call i64 @nilfs_checkpoint_snapshot(%struct.nilfs_checkpoint* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  store i32 0, i32* %18, align 4
  %58 = load i8*, i8** %17, align 8
  %59 = call i32 @kunmap_atomic(i8* %58)
  br label %229

60:                                               ; preds = %53
  %61 = load i8*, i8** %17, align 8
  %62 = call i32 @kunmap_atomic(i8* %61)
  %63 = load %struct.inode*, %struct.inode** %4, align 8
  %64 = call i32 @nilfs_cpfile_get_header_block(%struct.inode* %63, %struct.buffer_head** %6)
  store i32 %64, i32* %18, align 4
  %65 = load i32, i32* %18, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  br label %229

68:                                               ; preds = %60
  %69 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %70 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i8* @kmap_atomic(i32 %71)
  store i8* %72, i8** %17, align 8
  %73 = load %struct.inode*, %struct.inode** %4, align 8
  %74 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %75 = load i8*, i8** %17, align 8
  %76 = call %struct.nilfs_cpfile_header* @nilfs_cpfile_block_get_header(%struct.inode* %73, %struct.buffer_head* %74, i8* %75)
  store %struct.nilfs_cpfile_header* %76, %struct.nilfs_cpfile_header** %10, align 8
  %77 = load %struct.nilfs_cpfile_header*, %struct.nilfs_cpfile_header** %10, align 8
  %78 = getelementptr inbounds %struct.nilfs_cpfile_header, %struct.nilfs_cpfile_header* %77, i32 0, i32 1
  store %struct.nilfs_snapshot_list* %78, %struct.nilfs_snapshot_list** %12, align 8
  %79 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  store %struct.buffer_head* %79, %struct.buffer_head** %7, align 8
  %80 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %81 = call i32 @get_bh(%struct.buffer_head* %80)
  store i64 0, i64* %13, align 8
  store i64 0, i64* %15, align 8
  %82 = load %struct.nilfs_snapshot_list*, %struct.nilfs_snapshot_list** %12, align 8
  %83 = getelementptr inbounds %struct.nilfs_snapshot_list, %struct.nilfs_snapshot_list* %82, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  %85 = call i64 @le64_to_cpu(i8* %84)
  store i64 %85, i64* %14, align 8
  br label %86

86:                                               ; preds = %114, %68
  %87 = load i64, i64* %14, align 8
  %88 = load i64, i64* %5, align 8
  %89 = icmp sgt i64 %87, %88
  br i1 %89, label %90, label %127

90:                                               ; preds = %86
  %91 = load %struct.inode*, %struct.inode** %4, align 8
  %92 = load i64, i64* %14, align 8
  %93 = call i64 @nilfs_cpfile_get_blkoff(%struct.inode* %91, i64 %92)
  store i64 %93, i64* %16, align 8
  %94 = load i64, i64* %14, align 8
  store i64 %94, i64* %13, align 8
  %95 = load i64, i64* %15, align 8
  %96 = load i64, i64* %16, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %114

98:                                               ; preds = %90
  %99 = load i8*, i8** %17, align 8
  %100 = call i32 @kunmap_atomic(i8* %99)
  %101 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %102 = call i32 @brelse(%struct.buffer_head* %101)
  %103 = load %struct.inode*, %struct.inode** %4, align 8
  %104 = load i64, i64* %13, align 8
  %105 = call i32 @nilfs_cpfile_get_checkpoint_block(%struct.inode* %103, i64 %104, i32 0, %struct.buffer_head** %7)
  store i32 %105, i32* %18, align 4
  %106 = load i32, i32* %18, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %98
  br label %226

109:                                              ; preds = %98
  %110 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %111 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i8* @kmap_atomic(i32 %112)
  store i8* %113, i8** %17, align 8
  br label %114

114:                                              ; preds = %109, %90
  %115 = load i64, i64* %16, align 8
  store i64 %115, i64* %15, align 8
  %116 = load %struct.inode*, %struct.inode** %4, align 8
  %117 = load i64, i64* %13, align 8
  %118 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %119 = load i8*, i8** %17, align 8
  %120 = call %struct.nilfs_checkpoint* @nilfs_cpfile_block_get_checkpoint(%struct.inode* %116, i64 %117, %struct.buffer_head* %118, i8* %119)
  store %struct.nilfs_checkpoint* %120, %struct.nilfs_checkpoint** %11, align 8
  %121 = load %struct.nilfs_checkpoint*, %struct.nilfs_checkpoint** %11, align 8
  %122 = getelementptr inbounds %struct.nilfs_checkpoint, %struct.nilfs_checkpoint* %121, i32 0, i32 0
  store %struct.nilfs_snapshot_list* %122, %struct.nilfs_snapshot_list** %12, align 8
  %123 = load %struct.nilfs_snapshot_list*, %struct.nilfs_snapshot_list** %12, align 8
  %124 = getelementptr inbounds %struct.nilfs_snapshot_list, %struct.nilfs_snapshot_list* %123, i32 0, i32 1
  %125 = load i8*, i8** %124, align 8
  %126 = call i64 @le64_to_cpu(i8* %125)
  store i64 %126, i64* %14, align 8
  br label %86

127:                                              ; preds = %86
  %128 = load i8*, i8** %17, align 8
  %129 = call i32 @kunmap_atomic(i8* %128)
  %130 = load i64, i64* %14, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %140

132:                                              ; preds = %127
  %133 = load %struct.inode*, %struct.inode** %4, align 8
  %134 = load i64, i64* %14, align 8
  %135 = call i32 @nilfs_cpfile_get_checkpoint_block(%struct.inode* %133, i64 %134, i32 0, %struct.buffer_head** %8)
  store i32 %135, i32* %18, align 4
  %136 = load i32, i32* %18, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %132
  br label %223

139:                                              ; preds = %132
  br label %144

140:                                              ; preds = %127
  %141 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  store %struct.buffer_head* %141, %struct.buffer_head** %8, align 8
  %142 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %143 = call i32 @get_bh(%struct.buffer_head* %142)
  br label %144

144:                                              ; preds = %140, %139
  %145 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %146 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call i8* @kmap_atomic(i32 %147)
  store i8* %148, i8** %17, align 8
  %149 = load %struct.inode*, %struct.inode** %4, align 8
  %150 = load i64, i64* %13, align 8
  %151 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %152 = load i8*, i8** %17, align 8
  %153 = call %struct.nilfs_snapshot_list* @nilfs_cpfile_block_get_snapshot_list(%struct.inode* %149, i64 %150, %struct.buffer_head* %151, i8* %152)
  store %struct.nilfs_snapshot_list* %153, %struct.nilfs_snapshot_list** %12, align 8
  %154 = load i64, i64* %5, align 8
  %155 = call i8* @cpu_to_le64(i64 %154)
  %156 = load %struct.nilfs_snapshot_list*, %struct.nilfs_snapshot_list** %12, align 8
  %157 = getelementptr inbounds %struct.nilfs_snapshot_list, %struct.nilfs_snapshot_list* %156, i32 0, i32 1
  store i8* %155, i8** %157, align 8
  %158 = load i8*, i8** %17, align 8
  %159 = call i32 @kunmap_atomic(i8* %158)
  %160 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %161 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i8* @kmap_atomic(i32 %162)
  store i8* %163, i8** %17, align 8
  %164 = load %struct.inode*, %struct.inode** %4, align 8
  %165 = load i64, i64* %5, align 8
  %166 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %167 = load i8*, i8** %17, align 8
  %168 = call %struct.nilfs_checkpoint* @nilfs_cpfile_block_get_checkpoint(%struct.inode* %164, i64 %165, %struct.buffer_head* %166, i8* %167)
  store %struct.nilfs_checkpoint* %168, %struct.nilfs_checkpoint** %11, align 8
  %169 = load i64, i64* %13, align 8
  %170 = call i8* @cpu_to_le64(i64 %169)
  %171 = load %struct.nilfs_checkpoint*, %struct.nilfs_checkpoint** %11, align 8
  %172 = getelementptr inbounds %struct.nilfs_checkpoint, %struct.nilfs_checkpoint* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.nilfs_snapshot_list, %struct.nilfs_snapshot_list* %172, i32 0, i32 0
  store i8* %170, i8** %173, align 8
  %174 = load i64, i64* %14, align 8
  %175 = call i8* @cpu_to_le64(i64 %174)
  %176 = load %struct.nilfs_checkpoint*, %struct.nilfs_checkpoint** %11, align 8
  %177 = getelementptr inbounds %struct.nilfs_checkpoint, %struct.nilfs_checkpoint* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.nilfs_snapshot_list, %struct.nilfs_snapshot_list* %177, i32 0, i32 1
  store i8* %175, i8** %178, align 8
  %179 = load %struct.nilfs_checkpoint*, %struct.nilfs_checkpoint** %11, align 8
  %180 = call i32 @nilfs_checkpoint_set_snapshot(%struct.nilfs_checkpoint* %179)
  %181 = load i8*, i8** %17, align 8
  %182 = call i32 @kunmap_atomic(i8* %181)
  %183 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %184 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = call i8* @kmap_atomic(i32 %185)
  store i8* %186, i8** %17, align 8
  %187 = load %struct.inode*, %struct.inode** %4, align 8
  %188 = load i64, i64* %14, align 8
  %189 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %190 = load i8*, i8** %17, align 8
  %191 = call %struct.nilfs_snapshot_list* @nilfs_cpfile_block_get_snapshot_list(%struct.inode* %187, i64 %188, %struct.buffer_head* %189, i8* %190)
  store %struct.nilfs_snapshot_list* %191, %struct.nilfs_snapshot_list** %12, align 8
  %192 = load i64, i64* %5, align 8
  %193 = call i8* @cpu_to_le64(i64 %192)
  %194 = load %struct.nilfs_snapshot_list*, %struct.nilfs_snapshot_list** %12, align 8
  %195 = getelementptr inbounds %struct.nilfs_snapshot_list, %struct.nilfs_snapshot_list* %194, i32 0, i32 0
  store i8* %193, i8** %195, align 8
  %196 = load i8*, i8** %17, align 8
  %197 = call i32 @kunmap_atomic(i8* %196)
  %198 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %199 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = call i8* @kmap_atomic(i32 %200)
  store i8* %201, i8** %17, align 8
  %202 = load %struct.inode*, %struct.inode** %4, align 8
  %203 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %204 = load i8*, i8** %17, align 8
  %205 = call %struct.nilfs_cpfile_header* @nilfs_cpfile_block_get_header(%struct.inode* %202, %struct.buffer_head* %203, i8* %204)
  store %struct.nilfs_cpfile_header* %205, %struct.nilfs_cpfile_header** %10, align 8
  %206 = load %struct.nilfs_cpfile_header*, %struct.nilfs_cpfile_header** %10, align 8
  %207 = getelementptr inbounds %struct.nilfs_cpfile_header, %struct.nilfs_cpfile_header* %206, i32 0, i32 0
  %208 = call i32 @le64_add_cpu(i32* %207, i32 1)
  %209 = load i8*, i8** %17, align 8
  %210 = call i32 @kunmap_atomic(i8* %209)
  %211 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %212 = call i32 @mark_buffer_dirty(%struct.buffer_head* %211)
  %213 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %214 = call i32 @mark_buffer_dirty(%struct.buffer_head* %213)
  %215 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %216 = call i32 @mark_buffer_dirty(%struct.buffer_head* %215)
  %217 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %218 = call i32 @mark_buffer_dirty(%struct.buffer_head* %217)
  %219 = load %struct.inode*, %struct.inode** %4, align 8
  %220 = call i32 @nilfs_mdt_mark_dirty(%struct.inode* %219)
  %221 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %222 = call i32 @brelse(%struct.buffer_head* %221)
  br label %223

223:                                              ; preds = %144, %138
  %224 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %225 = call i32 @brelse(%struct.buffer_head* %224)
  br label %226

226:                                              ; preds = %223, %108
  %227 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %228 = call i32 @brelse(%struct.buffer_head* %227)
  br label %229

229:                                              ; preds = %226, %67, %57, %48
  %230 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %231 = call i32 @brelse(%struct.buffer_head* %230)
  br label %232

232:                                              ; preds = %229, %34
  %233 = load %struct.inode*, %struct.inode** %4, align 8
  %234 = call %struct.TYPE_2__* @NILFS_MDT(%struct.inode* %233)
  %235 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %234, i32 0, i32 0
  %236 = call i32 @up_write(i32* %235)
  %237 = load i32, i32* %18, align 4
  store i32 %237, i32* %3, align 4
  br label %238

238:                                              ; preds = %232, %21
  %239 = load i32, i32* %3, align 4
  ret i32 %239
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.TYPE_2__* @NILFS_MDT(%struct.inode*) #1

declare dso_local i32 @nilfs_cpfile_get_checkpoint_block(%struct.inode*, i64, i32, %struct.buffer_head**) #1

declare dso_local i8* @kmap_atomic(i32) #1

declare dso_local %struct.nilfs_checkpoint* @nilfs_cpfile_block_get_checkpoint(%struct.inode*, i64, %struct.buffer_head*, i8*) #1

declare dso_local i64 @nilfs_checkpoint_invalid(%struct.nilfs_checkpoint*) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

declare dso_local i64 @nilfs_checkpoint_snapshot(%struct.nilfs_checkpoint*) #1

declare dso_local i32 @nilfs_cpfile_get_header_block(%struct.inode*, %struct.buffer_head**) #1

declare dso_local %struct.nilfs_cpfile_header* @nilfs_cpfile_block_get_header(%struct.inode*, %struct.buffer_head*, i8*) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i64 @le64_to_cpu(i8*) #1

declare dso_local i64 @nilfs_cpfile_get_blkoff(%struct.inode*, i64) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local %struct.nilfs_snapshot_list* @nilfs_cpfile_block_get_snapshot_list(%struct.inode*, i64, %struct.buffer_head*, i8*) #1

declare dso_local i8* @cpu_to_le64(i64) #1

declare dso_local i32 @nilfs_checkpoint_set_snapshot(%struct.nilfs_checkpoint*) #1

declare dso_local i32 @le64_add_cpu(i32*, i32) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @nilfs_mdt_mark_dirty(%struct.inode*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
