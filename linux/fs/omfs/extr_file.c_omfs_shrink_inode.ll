; ModuleID = '/home/carl/AnghaBench/linux/fs/omfs/extr_file.c_omfs_shrink_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/omfs/extr_file.c_omfs_shrink_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i64, i32 }
%struct.omfs_sb_info = type { i32 }
%struct.omfs_extent = type { %struct.omfs_extent_entry, i32, i32 }
%struct.omfs_extent_entry = type { i32, i32 }
%struct.buffer_head = type { i8* }
%struct.omfs_header = type { i32 }

@EIO = common dso_local global i32 0, align 4
@OMFS_EXTENT_START = common dso_local global i64 0, align 8
@OMFS_EXTENT_CONT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omfs_shrink_inode(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.omfs_sb_info*, align 8
  %5 = alloca %struct.omfs_extent*, align 8
  %6 = alloca %struct.omfs_extent_entry*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  %15 = load %struct.inode*, %struct.inode** %3, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.omfs_sb_info* @OMFS_SB(i32 %17)
  store %struct.omfs_sb_info* %18, %struct.omfs_sb_info** %4, align 8
  %19 = load %struct.inode*, %struct.inode** %3, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %8, align 8
  %22 = load i32, i32* @EIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %12, align 4
  %24 = load %struct.inode*, %struct.inode** %3, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  br label %153

29:                                               ; preds = %1
  %30 = load %struct.inode*, %struct.inode** %3, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i64, i64* %8, align 8
  %34 = call %struct.buffer_head* @omfs_bread(i32 %32, i64 %33)
  store %struct.buffer_head* %34, %struct.buffer_head** %7, align 8
  %35 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %36 = icmp ne %struct.buffer_head* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %29
  br label %153

38:                                               ; preds = %29
  %39 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %40 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = load i64, i64* @OMFS_EXTENT_START, align 8
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  %44 = bitcast i8* %43 to %struct.omfs_extent*
  store %struct.omfs_extent* %44, %struct.omfs_extent** %5, align 8
  %45 = load %struct.omfs_sb_info*, %struct.omfs_sb_info** %4, align 8
  %46 = load i64, i64* @OMFS_EXTENT_START, align 8
  %47 = call i32 @omfs_max_extents(%struct.omfs_sb_info* %45, i64 %46)
  store i32 %47, i32* %11, align 4
  br label %48

48:                                               ; preds = %142, %38
  %49 = load %struct.omfs_sb_info*, %struct.omfs_sb_info** %4, align 8
  %50 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %51 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = bitcast i8* %52 to %struct.omfs_header*
  %54 = load i64, i64* %8, align 8
  %55 = call i64 @omfs_is_bad(%struct.omfs_sb_info* %49, %struct.omfs_header* %53, i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  br label %155

58:                                               ; preds = %48
  %59 = load %struct.omfs_extent*, %struct.omfs_extent** %5, align 8
  %60 = getelementptr inbounds %struct.omfs_extent, %struct.omfs_extent* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @be32_to_cpu(i32 %61)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp sgt i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %58
  br label %155

67:                                               ; preds = %58
  %68 = load i64, i64* %8, align 8
  store i64 %68, i64* %9, align 8
  %69 = load %struct.omfs_extent*, %struct.omfs_extent** %5, align 8
  %70 = getelementptr inbounds %struct.omfs_extent, %struct.omfs_extent* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @be64_to_cpu(i32 %71)
  store i64 %72, i64* %8, align 8
  %73 = load %struct.omfs_extent*, %struct.omfs_extent** %5, align 8
  %74 = getelementptr inbounds %struct.omfs_extent, %struct.omfs_extent* %73, i32 0, i32 0
  store %struct.omfs_extent_entry* %74, %struct.omfs_extent_entry** %6, align 8
  br label %75

75:                                               ; preds = %96, %67
  %76 = load i32, i32* %10, align 4
  %77 = icmp sgt i32 %76, 1
  br i1 %77, label %78, label %99

78:                                               ; preds = %75
  %79 = load %struct.omfs_extent_entry*, %struct.omfs_extent_entry** %6, align 8
  %80 = getelementptr inbounds %struct.omfs_extent_entry, %struct.omfs_extent_entry* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @be64_to_cpu(i32 %81)
  store i64 %82, i64* %13, align 8
  %83 = load %struct.omfs_extent_entry*, %struct.omfs_extent_entry** %6, align 8
  %84 = getelementptr inbounds %struct.omfs_extent_entry, %struct.omfs_extent_entry* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @be64_to_cpu(i32 %85)
  store i64 %86, i64* %14, align 8
  %87 = load %struct.inode*, %struct.inode** %3, align 8
  %88 = getelementptr inbounds %struct.inode, %struct.inode* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load i64, i64* %13, align 8
  %91 = load i64, i64* %14, align 8
  %92 = trunc i64 %91 to i32
  %93 = call i32 @omfs_clear_range(i32 %89, i64 %90, i32 %92)
  %94 = load %struct.omfs_extent_entry*, %struct.omfs_extent_entry** %6, align 8
  %95 = getelementptr inbounds %struct.omfs_extent_entry, %struct.omfs_extent_entry* %94, i32 1
  store %struct.omfs_extent_entry* %95, %struct.omfs_extent_entry** %6, align 8
  br label %96

96:                                               ; preds = %78
  %97 = load i32, i32* %10, align 4
  %98 = add nsw i32 %97, -1
  store i32 %98, i32* %10, align 4
  br label %75

99:                                               ; preds = %75
  %100 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %101 = load %struct.omfs_extent*, %struct.omfs_extent** %5, align 8
  %102 = bitcast %struct.omfs_extent* %101 to i8*
  %103 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %104 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = ptrtoint i8* %102 to i64
  %107 = ptrtoint i8* %105 to i64
  %108 = sub i64 %106, %107
  %109 = trunc i64 %108 to i32
  %110 = call i32 @omfs_make_empty_table(%struct.buffer_head* %100, i32 %109)
  %111 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %112 = call i32 @mark_buffer_dirty(%struct.buffer_head* %111)
  %113 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %114 = call i32 @brelse(%struct.buffer_head* %113)
  %115 = load i64, i64* %9, align 8
  %116 = load %struct.inode*, %struct.inode** %3, align 8
  %117 = getelementptr inbounds %struct.inode, %struct.inode* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %115, %118
  br i1 %119, label %120, label %129

120:                                              ; preds = %99
  %121 = load %struct.inode*, %struct.inode** %3, align 8
  %122 = getelementptr inbounds %struct.inode, %struct.inode* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load i64, i64* %9, align 8
  %125 = load %struct.omfs_sb_info*, %struct.omfs_sb_info** %4, align 8
  %126 = getelementptr inbounds %struct.omfs_sb_info, %struct.omfs_sb_info* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @omfs_clear_range(i32 %123, i64 %124, i32 %127)
  br label %129

129:                                              ; preds = %120, %99
  %130 = load i64, i64* %8, align 8
  %131 = icmp eq i64 %130, -1
  br i1 %131, label %132, label %133

132:                                              ; preds = %129
  br label %152

133:                                              ; preds = %129
  %134 = load %struct.inode*, %struct.inode** %3, align 8
  %135 = getelementptr inbounds %struct.inode, %struct.inode* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = load i64, i64* %8, align 8
  %138 = call %struct.buffer_head* @omfs_bread(i32 %136, i64 %137)
  store %struct.buffer_head* %138, %struct.buffer_head** %7, align 8
  %139 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %140 = icmp ne %struct.buffer_head* %139, null
  br i1 %140, label %142, label %141

141:                                              ; preds = %133
  br label %153

142:                                              ; preds = %133
  %143 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %144 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %143, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8
  %146 = load i64, i64* @OMFS_EXTENT_CONT, align 8
  %147 = getelementptr inbounds i8, i8* %145, i64 %146
  %148 = bitcast i8* %147 to %struct.omfs_extent*
  store %struct.omfs_extent* %148, %struct.omfs_extent** %5, align 8
  %149 = load %struct.omfs_sb_info*, %struct.omfs_sb_info** %4, align 8
  %150 = load i64, i64* @OMFS_EXTENT_CONT, align 8
  %151 = call i32 @omfs_max_extents(%struct.omfs_sb_info* %149, i64 %150)
  store i32 %151, i32* %11, align 4
  br label %48

152:                                              ; preds = %132
  store i32 0, i32* %12, align 4
  br label %153

153:                                              ; preds = %152, %141, %37, %28
  %154 = load i32, i32* %12, align 4
  store i32 %154, i32* %2, align 4
  br label %159

155:                                              ; preds = %66, %57
  %156 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %157 = call i32 @brelse(%struct.buffer_head* %156)
  %158 = load i32, i32* %12, align 4
  store i32 %158, i32* %2, align 4
  br label %159

159:                                              ; preds = %155, %153
  %160 = load i32, i32* %2, align 4
  ret i32 %160
}

declare dso_local %struct.omfs_sb_info* @OMFS_SB(i32) #1

declare dso_local %struct.buffer_head* @omfs_bread(i32, i64) #1

declare dso_local i32 @omfs_max_extents(%struct.omfs_sb_info*, i64) #1

declare dso_local i64 @omfs_is_bad(%struct.omfs_sb_info*, %struct.omfs_header*, i64) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i32 @omfs_clear_range(i32, i64, i32) #1

declare dso_local i32 @omfs_make_empty_table(%struct.buffer_head*, i32) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
