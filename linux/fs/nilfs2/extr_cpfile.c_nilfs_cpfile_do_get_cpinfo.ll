; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_cpfile.c_nilfs_cpfile_do_get_cpinfo.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_cpfile.c_nilfs_cpfile_do_get_cpinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.nilfs_checkpoint = type { i32 }
%struct.nilfs_cpinfo = type { i64 }
%struct.buffer_head = type { i32 }
%struct.TYPE_2__ = type { i64, i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64*, i8*, i32, i64)* @nilfs_cpfile_do_get_cpinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_cpfile_do_get_cpinfo(%struct.inode* %0, i64* %1, i8* %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.nilfs_checkpoint*, align 8
  %13 = alloca %struct.nilfs_cpinfo*, align 8
  %14 = alloca %struct.buffer_head*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i64* %1, i64** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = bitcast i8* %23 to %struct.nilfs_cpinfo*
  store %struct.nilfs_cpinfo* %24, %struct.nilfs_cpinfo** %13, align 8
  %25 = load %struct.inode*, %struct.inode** %7, align 8
  %26 = call %struct.TYPE_2__* @NILFS_MDT(%struct.inode* %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %15, align 8
  %29 = load %struct.inode*, %struct.inode** %7, align 8
  %30 = call i64 @nilfs_mdt_cno(%struct.inode* %29)
  store i64 %30, i64* %16, align 8
  %31 = load i64*, i64** %8, align 8
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %17, align 8
  %33 = load i64, i64* %17, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %5
  %36 = load i32, i32* @ENOENT, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %151

38:                                               ; preds = %5
  %39 = load %struct.inode*, %struct.inode** %7, align 8
  %40 = call %struct.TYPE_2__* @NILFS_MDT(%struct.inode* %39)
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = call i32 @down_read(i32* %41)
  store i32 0, i32* %19, align 4
  br label %43

43:                                               ; preds = %122, %38
  %44 = load i32, i32* %19, align 4
  %45 = sext i32 %44 to i64
  %46 = load i64, i64* %11, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %48, label %127

48:                                               ; preds = %43
  %49 = load %struct.inode*, %struct.inode** %7, align 8
  %50 = load i64, i64* %17, align 8
  %51 = load i64, i64* %16, align 8
  %52 = sub nsw i64 %51, 1
  %53 = call i32 @nilfs_cpfile_find_checkpoint_block(%struct.inode* %49, i64 %50, i64 %52, i64* %17, %struct.buffer_head** %14)
  store i32 %53, i32* %20, align 4
  %54 = load i32, i32* %20, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %48
  %57 = load i32, i32* %20, align 4
  %58 = load i32, i32* @ENOENT, align 4
  %59 = sub nsw i32 0, %58
  %60 = icmp eq i32 %57, %59
  %61 = zext i1 %60 to i32
  %62 = call i64 @likely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  br label %127

65:                                               ; preds = %56
  br label %145

66:                                               ; preds = %48
  %67 = load %struct.inode*, %struct.inode** %7, align 8
  %68 = load i64, i64* %17, align 8
  %69 = load i64, i64* %16, align 8
  %70 = call i32 @nilfs_cpfile_checkpoints_in_block(%struct.inode* %67, i64 %68, i64 %69)
  store i32 %70, i32* %21, align 4
  %71 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %72 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i8* @kmap_atomic(i32 %73)
  store i8* %74, i8** %18, align 8
  %75 = load %struct.inode*, %struct.inode** %7, align 8
  %76 = load i64, i64* %17, align 8
  %77 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %78 = load i8*, i8** %18, align 8
  %79 = call %struct.nilfs_checkpoint* @nilfs_cpfile_block_get_checkpoint(%struct.inode* %75, i64 %76, %struct.buffer_head* %77, i8* %78)
  store %struct.nilfs_checkpoint* %79, %struct.nilfs_checkpoint** %12, align 8
  store i32 0, i32* %22, align 4
  br label %80

80:                                               ; preds = %109, %66
  %81 = load i32, i32* %22, align 4
  %82 = load i32, i32* %21, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %80
  %85 = load i32, i32* %19, align 4
  %86 = sext i32 %85 to i64
  %87 = load i64, i64* %11, align 8
  %88 = icmp ult i64 %86, %87
  br label %89

89:                                               ; preds = %84, %80
  %90 = phi i1 [ false, %80 ], [ %88, %84 ]
  br i1 %90, label %91, label %117

91:                                               ; preds = %89
  %92 = load %struct.nilfs_checkpoint*, %struct.nilfs_checkpoint** %12, align 8
  %93 = call i32 @nilfs_checkpoint_invalid(%struct.nilfs_checkpoint* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %108, label %95

95:                                               ; preds = %91
  %96 = load %struct.inode*, %struct.inode** %7, align 8
  %97 = load %struct.nilfs_checkpoint*, %struct.nilfs_checkpoint** %12, align 8
  %98 = load %struct.nilfs_cpinfo*, %struct.nilfs_cpinfo** %13, align 8
  %99 = call i32 @nilfs_cpfile_checkpoint_to_cpinfo(%struct.inode* %96, %struct.nilfs_checkpoint* %97, %struct.nilfs_cpinfo* %98)
  %100 = load %struct.nilfs_cpinfo*, %struct.nilfs_cpinfo** %13, align 8
  %101 = bitcast %struct.nilfs_cpinfo* %100 to i8*
  %102 = load i32, i32* %10, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr i8, i8* %101, i64 %103
  %105 = bitcast i8* %104 to %struct.nilfs_cpinfo*
  store %struct.nilfs_cpinfo* %105, %struct.nilfs_cpinfo** %13, align 8
  %106 = load i32, i32* %19, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %19, align 4
  br label %108

108:                                              ; preds = %95, %91
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %22, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %22, align 4
  %112 = load %struct.nilfs_checkpoint*, %struct.nilfs_checkpoint** %12, align 8
  %113 = bitcast %struct.nilfs_checkpoint* %112 to i8*
  %114 = load i64, i64* %15, align 8
  %115 = getelementptr i8, i8* %113, i64 %114
  %116 = bitcast i8* %115 to %struct.nilfs_checkpoint*
  store %struct.nilfs_checkpoint* %116, %struct.nilfs_checkpoint** %12, align 8
  br label %80

117:                                              ; preds = %89
  %118 = load i8*, i8** %18, align 8
  %119 = call i32 @kunmap_atomic(i8* %118)
  %120 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %121 = call i32 @brelse(%struct.buffer_head* %120)
  br label %122

122:                                              ; preds = %117
  %123 = load i32, i32* %21, align 4
  %124 = sext i32 %123 to i64
  %125 = load i64, i64* %17, align 8
  %126 = add nsw i64 %125, %124
  store i64 %126, i64* %17, align 8
  br label %43

127:                                              ; preds = %64, %43
  %128 = load i32, i32* %19, align 4
  store i32 %128, i32* %20, align 4
  %129 = load i32, i32* %19, align 4
  %130 = icmp sgt i32 %129, 0
  br i1 %130, label %131, label %144

131:                                              ; preds = %127
  %132 = load %struct.nilfs_cpinfo*, %struct.nilfs_cpinfo** %13, align 8
  %133 = bitcast %struct.nilfs_cpinfo* %132 to i8*
  %134 = load i32, i32* %10, align 4
  %135 = zext i32 %134 to i64
  %136 = sub i64 0, %135
  %137 = getelementptr i8, i8* %133, i64 %136
  %138 = bitcast i8* %137 to %struct.nilfs_cpinfo*
  store %struct.nilfs_cpinfo* %138, %struct.nilfs_cpinfo** %13, align 8
  %139 = load %struct.nilfs_cpinfo*, %struct.nilfs_cpinfo** %13, align 8
  %140 = getelementptr inbounds %struct.nilfs_cpinfo, %struct.nilfs_cpinfo* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = add nsw i64 %141, 1
  %143 = load i64*, i64** %8, align 8
  store i64 %142, i64* %143, align 8
  br label %144

144:                                              ; preds = %131, %127
  br label %145

145:                                              ; preds = %144, %65
  %146 = load %struct.inode*, %struct.inode** %7, align 8
  %147 = call %struct.TYPE_2__* @NILFS_MDT(%struct.inode* %146)
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 1
  %149 = call i32 @up_read(i32* %148)
  %150 = load i32, i32* %20, align 4
  store i32 %150, i32* %6, align 4
  br label %151

151:                                              ; preds = %145, %35
  %152 = load i32, i32* %6, align 4
  ret i32 %152
}

declare dso_local %struct.TYPE_2__* @NILFS_MDT(%struct.inode*) #1

declare dso_local i64 @nilfs_mdt_cno(%struct.inode*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @nilfs_cpfile_find_checkpoint_block(%struct.inode*, i64, i64, i64*, %struct.buffer_head**) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @nilfs_cpfile_checkpoints_in_block(%struct.inode*, i64, i64) #1

declare dso_local i8* @kmap_atomic(i32) #1

declare dso_local %struct.nilfs_checkpoint* @nilfs_cpfile_block_get_checkpoint(%struct.inode*, i64, %struct.buffer_head*, i8*) #1

declare dso_local i32 @nilfs_checkpoint_invalid(%struct.nilfs_checkpoint*) #1

declare dso_local i32 @nilfs_cpfile_checkpoint_to_cpinfo(%struct.inode*, %struct.nilfs_checkpoint*, %struct.nilfs_cpinfo*) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
