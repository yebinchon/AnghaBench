; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_cpfile.c_nilfs_cpfile_clear_snapshot.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_cpfile.c_nilfs_cpfile_clear_snapshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.nilfs_cpfile_header = type { i32 }
%struct.nilfs_checkpoint = type { %struct.nilfs_snapshot_list }
%struct.nilfs_snapshot_list = type { i8*, i8* }
%struct.TYPE_2__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64)* @nilfs_cpfile_clear_snapshot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_cpfile_clear_snapshot(%struct.inode* %0, i64 %1) #0 {
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
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i64 %1, i64* %5, align 8
  %17 = load i64, i64* %5, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOENT, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %198

22:                                               ; preds = %2
  %23 = load %struct.inode*, %struct.inode** %4, align 8
  %24 = call %struct.TYPE_2__* @NILFS_MDT(%struct.inode* %23)
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 @down_write(i32* %25)
  %27 = load %struct.inode*, %struct.inode** %4, align 8
  %28 = load i64, i64* %5, align 8
  %29 = call i32 @nilfs_cpfile_get_checkpoint_block(%struct.inode* %27, i64 %28, i32 0, %struct.buffer_head** %9)
  store i32 %29, i32* %16, align 4
  %30 = load i32, i32* %16, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  br label %192

33:                                               ; preds = %22
  %34 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %35 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i8* @kmap_atomic(i32 %36)
  store i8* %37, i8** %15, align 8
  %38 = load %struct.inode*, %struct.inode** %4, align 8
  %39 = load i64, i64* %5, align 8
  %40 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %41 = load i8*, i8** %15, align 8
  %42 = call %struct.nilfs_checkpoint* @nilfs_cpfile_block_get_checkpoint(%struct.inode* %38, i64 %39, %struct.buffer_head* %40, i8* %41)
  store %struct.nilfs_checkpoint* %42, %struct.nilfs_checkpoint** %11, align 8
  %43 = load %struct.nilfs_checkpoint*, %struct.nilfs_checkpoint** %11, align 8
  %44 = call i64 @nilfs_checkpoint_invalid(%struct.nilfs_checkpoint* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %33
  %47 = load i32, i32* @ENOENT, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %16, align 4
  %49 = load i8*, i8** %15, align 8
  %50 = call i32 @kunmap_atomic(i8* %49)
  br label %189

51:                                               ; preds = %33
  %52 = load %struct.nilfs_checkpoint*, %struct.nilfs_checkpoint** %11, align 8
  %53 = call i32 @nilfs_checkpoint_snapshot(%struct.nilfs_checkpoint* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %51
  store i32 0, i32* %16, align 4
  %56 = load i8*, i8** %15, align 8
  %57 = call i32 @kunmap_atomic(i8* %56)
  br label %189

58:                                               ; preds = %51
  %59 = load %struct.nilfs_checkpoint*, %struct.nilfs_checkpoint** %11, align 8
  %60 = getelementptr inbounds %struct.nilfs_checkpoint, %struct.nilfs_checkpoint* %59, i32 0, i32 0
  store %struct.nilfs_snapshot_list* %60, %struct.nilfs_snapshot_list** %12, align 8
  %61 = load %struct.nilfs_snapshot_list*, %struct.nilfs_snapshot_list** %12, align 8
  %62 = getelementptr inbounds %struct.nilfs_snapshot_list, %struct.nilfs_snapshot_list* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = call i64 @le64_to_cpu(i8* %63)
  store i64 %64, i64* %13, align 8
  %65 = load %struct.nilfs_snapshot_list*, %struct.nilfs_snapshot_list** %12, align 8
  %66 = getelementptr inbounds %struct.nilfs_snapshot_list, %struct.nilfs_snapshot_list* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = call i64 @le64_to_cpu(i8* %67)
  store i64 %68, i64* %14, align 8
  %69 = load i8*, i8** %15, align 8
  %70 = call i32 @kunmap_atomic(i8* %69)
  %71 = load %struct.inode*, %struct.inode** %4, align 8
  %72 = call i32 @nilfs_cpfile_get_header_block(%struct.inode* %71, %struct.buffer_head** %6)
  store i32 %72, i32* %16, align 4
  %73 = load i32, i32* %16, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %58
  br label %189

76:                                               ; preds = %58
  %77 = load i64, i64* %13, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %76
  %80 = load %struct.inode*, %struct.inode** %4, align 8
  %81 = load i64, i64* %13, align 8
  %82 = call i32 @nilfs_cpfile_get_checkpoint_block(%struct.inode* %80, i64 %81, i32 0, %struct.buffer_head** %7)
  store i32 %82, i32* %16, align 4
  %83 = load i32, i32* %16, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  br label %186

86:                                               ; preds = %79
  br label %91

87:                                               ; preds = %76
  %88 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  store %struct.buffer_head* %88, %struct.buffer_head** %7, align 8
  %89 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %90 = call i32 @get_bh(%struct.buffer_head* %89)
  br label %91

91:                                               ; preds = %87, %86
  %92 = load i64, i64* %14, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %91
  %95 = load %struct.inode*, %struct.inode** %4, align 8
  %96 = load i64, i64* %14, align 8
  %97 = call i32 @nilfs_cpfile_get_checkpoint_block(%struct.inode* %95, i64 %96, i32 0, %struct.buffer_head** %8)
  store i32 %97, i32* %16, align 4
  %98 = load i32, i32* %16, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %94
  br label %183

101:                                              ; preds = %94
  br label %106

102:                                              ; preds = %91
  %103 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  store %struct.buffer_head* %103, %struct.buffer_head** %8, align 8
  %104 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %105 = call i32 @get_bh(%struct.buffer_head* %104)
  br label %106

106:                                              ; preds = %102, %101
  %107 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %108 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i8* @kmap_atomic(i32 %109)
  store i8* %110, i8** %15, align 8
  %111 = load %struct.inode*, %struct.inode** %4, align 8
  %112 = load i64, i64* %13, align 8
  %113 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %114 = load i8*, i8** %15, align 8
  %115 = call %struct.nilfs_snapshot_list* @nilfs_cpfile_block_get_snapshot_list(%struct.inode* %111, i64 %112, %struct.buffer_head* %113, i8* %114)
  store %struct.nilfs_snapshot_list* %115, %struct.nilfs_snapshot_list** %12, align 8
  %116 = load i64, i64* %14, align 8
  %117 = call i8* @cpu_to_le64(i64 %116)
  %118 = load %struct.nilfs_snapshot_list*, %struct.nilfs_snapshot_list** %12, align 8
  %119 = getelementptr inbounds %struct.nilfs_snapshot_list, %struct.nilfs_snapshot_list* %118, i32 0, i32 0
  store i8* %117, i8** %119, align 8
  %120 = load i8*, i8** %15, align 8
  %121 = call i32 @kunmap_atomic(i8* %120)
  %122 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %123 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i8* @kmap_atomic(i32 %124)
  store i8* %125, i8** %15, align 8
  %126 = load %struct.inode*, %struct.inode** %4, align 8
  %127 = load i64, i64* %14, align 8
  %128 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %129 = load i8*, i8** %15, align 8
  %130 = call %struct.nilfs_snapshot_list* @nilfs_cpfile_block_get_snapshot_list(%struct.inode* %126, i64 %127, %struct.buffer_head* %128, i8* %129)
  store %struct.nilfs_snapshot_list* %130, %struct.nilfs_snapshot_list** %12, align 8
  %131 = load i64, i64* %13, align 8
  %132 = call i8* @cpu_to_le64(i64 %131)
  %133 = load %struct.nilfs_snapshot_list*, %struct.nilfs_snapshot_list** %12, align 8
  %134 = getelementptr inbounds %struct.nilfs_snapshot_list, %struct.nilfs_snapshot_list* %133, i32 0, i32 1
  store i8* %132, i8** %134, align 8
  %135 = load i8*, i8** %15, align 8
  %136 = call i32 @kunmap_atomic(i8* %135)
  %137 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %138 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i8* @kmap_atomic(i32 %139)
  store i8* %140, i8** %15, align 8
  %141 = load %struct.inode*, %struct.inode** %4, align 8
  %142 = load i64, i64* %5, align 8
  %143 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %144 = load i8*, i8** %15, align 8
  %145 = call %struct.nilfs_checkpoint* @nilfs_cpfile_block_get_checkpoint(%struct.inode* %141, i64 %142, %struct.buffer_head* %143, i8* %144)
  store %struct.nilfs_checkpoint* %145, %struct.nilfs_checkpoint** %11, align 8
  %146 = call i8* @cpu_to_le64(i64 0)
  %147 = load %struct.nilfs_checkpoint*, %struct.nilfs_checkpoint** %11, align 8
  %148 = getelementptr inbounds %struct.nilfs_checkpoint, %struct.nilfs_checkpoint* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.nilfs_snapshot_list, %struct.nilfs_snapshot_list* %148, i32 0, i32 1
  store i8* %146, i8** %149, align 8
  %150 = call i8* @cpu_to_le64(i64 0)
  %151 = load %struct.nilfs_checkpoint*, %struct.nilfs_checkpoint** %11, align 8
  %152 = getelementptr inbounds %struct.nilfs_checkpoint, %struct.nilfs_checkpoint* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.nilfs_snapshot_list, %struct.nilfs_snapshot_list* %152, i32 0, i32 0
  store i8* %150, i8** %153, align 8
  %154 = load %struct.nilfs_checkpoint*, %struct.nilfs_checkpoint** %11, align 8
  %155 = call i32 @nilfs_checkpoint_clear_snapshot(%struct.nilfs_checkpoint* %154)
  %156 = load i8*, i8** %15, align 8
  %157 = call i32 @kunmap_atomic(i8* %156)
  %158 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %159 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i8* @kmap_atomic(i32 %160)
  store i8* %161, i8** %15, align 8
  %162 = load %struct.inode*, %struct.inode** %4, align 8
  %163 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %164 = load i8*, i8** %15, align 8
  %165 = call %struct.nilfs_cpfile_header* @nilfs_cpfile_block_get_header(%struct.inode* %162, %struct.buffer_head* %163, i8* %164)
  store %struct.nilfs_cpfile_header* %165, %struct.nilfs_cpfile_header** %10, align 8
  %166 = load %struct.nilfs_cpfile_header*, %struct.nilfs_cpfile_header** %10, align 8
  %167 = getelementptr inbounds %struct.nilfs_cpfile_header, %struct.nilfs_cpfile_header* %166, i32 0, i32 0
  %168 = call i32 @le64_add_cpu(i32* %167, i32 -1)
  %169 = load i8*, i8** %15, align 8
  %170 = call i32 @kunmap_atomic(i8* %169)
  %171 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %172 = call i32 @mark_buffer_dirty(%struct.buffer_head* %171)
  %173 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %174 = call i32 @mark_buffer_dirty(%struct.buffer_head* %173)
  %175 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %176 = call i32 @mark_buffer_dirty(%struct.buffer_head* %175)
  %177 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %178 = call i32 @mark_buffer_dirty(%struct.buffer_head* %177)
  %179 = load %struct.inode*, %struct.inode** %4, align 8
  %180 = call i32 @nilfs_mdt_mark_dirty(%struct.inode* %179)
  %181 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %182 = call i32 @brelse(%struct.buffer_head* %181)
  br label %183

183:                                              ; preds = %106, %100
  %184 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %185 = call i32 @brelse(%struct.buffer_head* %184)
  br label %186

186:                                              ; preds = %183, %85
  %187 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %188 = call i32 @brelse(%struct.buffer_head* %187)
  br label %189

189:                                              ; preds = %186, %75, %55, %46
  %190 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %191 = call i32 @brelse(%struct.buffer_head* %190)
  br label %192

192:                                              ; preds = %189, %32
  %193 = load %struct.inode*, %struct.inode** %4, align 8
  %194 = call %struct.TYPE_2__* @NILFS_MDT(%struct.inode* %193)
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 0
  %196 = call i32 @up_write(i32* %195)
  %197 = load i32, i32* %16, align 4
  store i32 %197, i32* %3, align 4
  br label %198

198:                                              ; preds = %192, %19
  %199 = load i32, i32* %3, align 4
  ret i32 %199
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.TYPE_2__* @NILFS_MDT(%struct.inode*) #1

declare dso_local i32 @nilfs_cpfile_get_checkpoint_block(%struct.inode*, i64, i32, %struct.buffer_head**) #1

declare dso_local i8* @kmap_atomic(i32) #1

declare dso_local %struct.nilfs_checkpoint* @nilfs_cpfile_block_get_checkpoint(%struct.inode*, i64, %struct.buffer_head*, i8*) #1

declare dso_local i64 @nilfs_checkpoint_invalid(%struct.nilfs_checkpoint*) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

declare dso_local i32 @nilfs_checkpoint_snapshot(%struct.nilfs_checkpoint*) #1

declare dso_local i64 @le64_to_cpu(i8*) #1

declare dso_local i32 @nilfs_cpfile_get_header_block(%struct.inode*, %struct.buffer_head**) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local %struct.nilfs_snapshot_list* @nilfs_cpfile_block_get_snapshot_list(%struct.inode*, i64, %struct.buffer_head*, i8*) #1

declare dso_local i8* @cpu_to_le64(i64) #1

declare dso_local i32 @nilfs_checkpoint_clear_snapshot(%struct.nilfs_checkpoint*) #1

declare dso_local %struct.nilfs_cpfile_header* @nilfs_cpfile_block_get_header(%struct.inode*, %struct.buffer_head*, i8*) #1

declare dso_local i32 @le64_add_cpu(i32*, i32) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @nilfs_mdt_mark_dirty(%struct.inode*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
