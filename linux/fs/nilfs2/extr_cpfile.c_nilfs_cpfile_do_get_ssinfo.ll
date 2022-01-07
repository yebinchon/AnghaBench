; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_cpfile.c_nilfs_cpfile_do_get_ssinfo.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_cpfile.c_nilfs_cpfile_do_get_ssinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.nilfs_cpfile_header = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.nilfs_checkpoint = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.nilfs_cpinfo = type { i32 }
%struct.TYPE_6__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32*, i8*, i32, i64)* @nilfs_cpfile_do_get_ssinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_cpfile_do_get_ssinfo(%struct.inode* %0, i32* %1, i8* %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca %struct.nilfs_cpfile_header*, align 8
  %13 = alloca %struct.nilfs_checkpoint*, align 8
  %14 = alloca %struct.nilfs_cpinfo*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = bitcast i8* %22 to %struct.nilfs_cpinfo*
  store %struct.nilfs_cpinfo* %23, %struct.nilfs_cpinfo** %14, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %15, align 4
  store i32 0, i32* %20, align 4
  %26 = load %struct.inode*, %struct.inode** %6, align 8
  %27 = call %struct.TYPE_6__* @NILFS_MDT(%struct.inode* %26)
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = call i32 @down_read(i32* %28)
  %30 = load i32, i32* %15, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %60

32:                                               ; preds = %5
  %33 = load %struct.inode*, %struct.inode** %6, align 8
  %34 = call i32 @nilfs_cpfile_get_header_block(%struct.inode* %33, %struct.buffer_head** %11)
  store i32 %34, i32* %21, align 4
  %35 = load i32, i32* %21, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %181

38:                                               ; preds = %32
  %39 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %40 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @kmap_atomic(i32 %41)
  store i8* %42, i8** %19, align 8
  %43 = load %struct.inode*, %struct.inode** %6, align 8
  %44 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %45 = load i8*, i8** %19, align 8
  %46 = call %struct.nilfs_cpfile_header* @nilfs_cpfile_block_get_header(%struct.inode* %43, %struct.buffer_head* %44, i8* %45)
  store %struct.nilfs_cpfile_header* %46, %struct.nilfs_cpfile_header** %12, align 8
  %47 = load %struct.nilfs_cpfile_header*, %struct.nilfs_cpfile_header** %12, align 8
  %48 = getelementptr inbounds %struct.nilfs_cpfile_header, %struct.nilfs_cpfile_header* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @le64_to_cpu(i32 %50)
  store i32 %51, i32* %15, align 4
  %52 = load i8*, i8** %19, align 8
  %53 = call i32 @kunmap_atomic(i8* %52)
  %54 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %55 = call i32 @brelse(%struct.buffer_head* %54)
  %56 = load i32, i32* %15, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %38
  store i32 0, i32* %21, align 4
  br label %181

59:                                               ; preds = %38
  br label %68

60:                                               ; preds = %5
  %61 = load i32, i32* %15, align 4
  %62 = icmp eq i32 %61, -1
  %63 = zext i1 %62 to i32
  %64 = call i64 @unlikely(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  store i32 0, i32* %21, align 4
  br label %181

67:                                               ; preds = %60
  br label %68

68:                                               ; preds = %67, %59
  %69 = load %struct.inode*, %struct.inode** %6, align 8
  %70 = load i32, i32* %15, align 4
  %71 = call i64 @nilfs_cpfile_get_blkoff(%struct.inode* %69, i32 %70)
  store i64 %71, i64* %17, align 8
  %72 = load %struct.inode*, %struct.inode** %6, align 8
  %73 = load i32, i32* %15, align 4
  %74 = call i32 @nilfs_cpfile_get_checkpoint_block(%struct.inode* %72, i32 %73, i32 0, %struct.buffer_head** %11)
  store i32 %74, i32* %21, align 4
  %75 = load i32, i32* %21, align 4
  %76 = icmp slt i32 %75, 0
  %77 = zext i1 %76 to i32
  %78 = call i64 @unlikely(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %68
  %81 = load i32, i32* %21, align 4
  %82 = load i32, i32* @ENOENT, align 4
  %83 = sub nsw i32 0, %82
  %84 = icmp eq i32 %81, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  store i32 0, i32* %21, align 4
  br label %86

86:                                               ; preds = %85, %80
  br label %181

87:                                               ; preds = %68
  %88 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %89 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i8* @kmap_atomic(i32 %90)
  store i8* %91, i8** %19, align 8
  br label %92

92:                                               ; preds = %170, %87
  %93 = load i32, i32* %20, align 4
  %94 = sext i32 %93 to i64
  %95 = load i64, i64* %10, align 8
  %96 = icmp ult i64 %94, %95
  br i1 %96, label %97, label %173

97:                                               ; preds = %92
  %98 = load %struct.inode*, %struct.inode** %6, align 8
  %99 = load i32, i32* %15, align 4
  %100 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %101 = load i8*, i8** %19, align 8
  %102 = call %struct.nilfs_checkpoint* @nilfs_cpfile_block_get_checkpoint(%struct.inode* %98, i32 %99, %struct.buffer_head* %100, i8* %101)
  store %struct.nilfs_checkpoint* %102, %struct.nilfs_checkpoint** %13, align 8
  store i32 -1, i32* %15, align 4
  %103 = load %struct.nilfs_checkpoint*, %struct.nilfs_checkpoint** %13, align 8
  %104 = call i64 @nilfs_checkpoint_invalid(%struct.nilfs_checkpoint* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %111, label %106

106:                                              ; preds = %97
  %107 = load %struct.nilfs_checkpoint*, %struct.nilfs_checkpoint** %13, align 8
  %108 = call i32 @nilfs_checkpoint_snapshot(%struct.nilfs_checkpoint* %107)
  %109 = icmp ne i32 %108, 0
  %110 = xor i1 %109, true
  br label %111

111:                                              ; preds = %106, %97
  %112 = phi i1 [ true, %97 ], [ %110, %106 ]
  %113 = zext i1 %112 to i32
  %114 = call i64 @unlikely(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %111
  br label %173

117:                                              ; preds = %111
  %118 = load %struct.inode*, %struct.inode** %6, align 8
  %119 = load %struct.nilfs_checkpoint*, %struct.nilfs_checkpoint** %13, align 8
  %120 = load %struct.nilfs_cpinfo*, %struct.nilfs_cpinfo** %14, align 8
  %121 = call i32 @nilfs_cpfile_checkpoint_to_cpinfo(%struct.inode* %118, %struct.nilfs_checkpoint* %119, %struct.nilfs_cpinfo* %120)
  %122 = load %struct.nilfs_cpinfo*, %struct.nilfs_cpinfo** %14, align 8
  %123 = bitcast %struct.nilfs_cpinfo* %122 to i8*
  %124 = load i32, i32* %9, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr i8, i8* %123, i64 %125
  %127 = bitcast i8* %126 to %struct.nilfs_cpinfo*
  store %struct.nilfs_cpinfo* %127, %struct.nilfs_cpinfo** %14, align 8
  %128 = load i32, i32* %20, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %20, align 4
  %130 = load %struct.nilfs_checkpoint*, %struct.nilfs_checkpoint** %13, align 8
  %131 = getelementptr inbounds %struct.nilfs_checkpoint, %struct.nilfs_checkpoint* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @le64_to_cpu(i32 %133)
  store i32 %134, i32* %16, align 4
  %135 = load i32, i32* %16, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %117
  br label %173

138:                                              ; preds = %117
  %139 = load %struct.inode*, %struct.inode** %6, align 8
  %140 = load i32, i32* %16, align 4
  %141 = call i64 @nilfs_cpfile_get_blkoff(%struct.inode* %139, i32 %140)
  store i64 %141, i64* %18, align 8
  %142 = load i64, i64* %17, align 8
  %143 = load i64, i64* %18, align 8
  %144 = icmp ne i64 %142, %143
  br i1 %144, label %145, label %170

145:                                              ; preds = %138
  %146 = load i8*, i8** %19, align 8
  %147 = call i32 @kunmap_atomic(i8* %146)
  %148 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %149 = call i32 @brelse(%struct.buffer_head* %148)
  %150 = load %struct.inode*, %struct.inode** %6, align 8
  %151 = load i32, i32* %16, align 4
  %152 = call i32 @nilfs_cpfile_get_checkpoint_block(%struct.inode* %150, i32 %151, i32 0, %struct.buffer_head** %11)
  store i32 %152, i32* %21, align 4
  %153 = load i32, i32* %21, align 4
  %154 = icmp slt i32 %153, 0
  %155 = zext i1 %154 to i32
  %156 = call i64 @unlikely(i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %165

158:                                              ; preds = %145
  %159 = load i32, i32* %21, align 4
  %160 = load i32, i32* @ENOENT, align 4
  %161 = sub nsw i32 0, %160
  %162 = icmp eq i32 %159, %161
  %163 = zext i1 %162 to i32
  %164 = call i32 @WARN_ON(i32 %163)
  br label %181

165:                                              ; preds = %145
  %166 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %167 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i8* @kmap_atomic(i32 %168)
  store i8* %169, i8** %19, align 8
  br label %170

170:                                              ; preds = %165, %138
  %171 = load i32, i32* %16, align 4
  store i32 %171, i32* %15, align 4
  %172 = load i64, i64* %18, align 8
  store i64 %172, i64* %17, align 8
  br label %92

173:                                              ; preds = %137, %116, %92
  %174 = load i8*, i8** %19, align 8
  %175 = call i32 @kunmap_atomic(i8* %174)
  %176 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %177 = call i32 @brelse(%struct.buffer_head* %176)
  %178 = load i32, i32* %15, align 4
  %179 = load i32*, i32** %7, align 8
  store i32 %178, i32* %179, align 4
  %180 = load i32, i32* %20, align 4
  store i32 %180, i32* %21, align 4
  br label %181

181:                                              ; preds = %173, %158, %86, %66, %58, %37
  %182 = load %struct.inode*, %struct.inode** %6, align 8
  %183 = call %struct.TYPE_6__* @NILFS_MDT(%struct.inode* %182)
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 0
  %185 = call i32 @up_read(i32* %184)
  %186 = load i32, i32* %21, align 4
  ret i32 %186
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.TYPE_6__* @NILFS_MDT(%struct.inode*) #1

declare dso_local i32 @nilfs_cpfile_get_header_block(%struct.inode*, %struct.buffer_head**) #1

declare dso_local i8* @kmap_atomic(i32) #1

declare dso_local %struct.nilfs_cpfile_header* @nilfs_cpfile_block_get_header(%struct.inode*, %struct.buffer_head*, i8*) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @nilfs_cpfile_get_blkoff(%struct.inode*, i32) #1

declare dso_local i32 @nilfs_cpfile_get_checkpoint_block(%struct.inode*, i32, i32, %struct.buffer_head**) #1

declare dso_local %struct.nilfs_checkpoint* @nilfs_cpfile_block_get_checkpoint(%struct.inode*, i32, %struct.buffer_head*, i8*) #1

declare dso_local i64 @nilfs_checkpoint_invalid(%struct.nilfs_checkpoint*) #1

declare dso_local i32 @nilfs_checkpoint_snapshot(%struct.nilfs_checkpoint*) #1

declare dso_local i32 @nilfs_cpfile_checkpoint_to_cpinfo(%struct.inode*, %struct.nilfs_checkpoint*, %struct.nilfs_cpinfo*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
