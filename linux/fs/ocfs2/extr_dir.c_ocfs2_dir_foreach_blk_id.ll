; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dir.c_ocfs2_dir_foreach_blk_id.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dir.c_ocfs2_dir_foreach_blk_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dir_context = type { i64 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_dinode = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ocfs2_inline_data }
%struct.ocfs2_inline_data = type { i64 }
%struct.ocfs2_dir_entry = type { i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i64 }

@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Unable to read inode block for dir %llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32*, %struct.dir_context*)* @ocfs2_dir_foreach_blk_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_dir_foreach_blk_id(%struct.inode* %0, i32* %1, %struct.dir_context* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.dir_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca %struct.ocfs2_dinode*, align 8
  %12 = alloca %struct.ocfs2_inline_data*, align 8
  %13 = alloca %struct.ocfs2_dir_entry*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.dir_context* %2, %struct.dir_context** %6, align 8
  %14 = load %struct.dir_context*, %struct.dir_context** %6, align 8
  %15 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %9, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %10, align 8
  %17 = load %struct.inode*, %struct.inode** %4, align 8
  %18 = call i32 @ocfs2_read_inode_block(%struct.inode* %17, %struct.buffer_head** %10)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %3
  %22 = load i32, i32* @ML_ERROR, align 4
  %23 = load %struct.inode*, %struct.inode** %4, align 8
  %24 = call %struct.TYPE_4__* @OCFS2_I(%struct.inode* %23)
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @mlog(i32 %22, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %26)
  br label %160

28:                                               ; preds = %3
  %29 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %30 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %32, %struct.ocfs2_dinode** %11, align 8
  %33 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %11, align 8
  %34 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store %struct.ocfs2_inline_data* %35, %struct.ocfs2_inline_data** %12, align 8
  br label %36

36:                                               ; preds = %150, %28
  %37 = load %struct.dir_context*, %struct.dir_context** %6, align 8
  %38 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.inode*, %struct.inode** %4, align 8
  %41 = call i32 @i_size_read(%struct.inode* %40)
  %42 = sext i32 %41 to i64
  %43 = icmp ult i64 %39, %42
  br i1 %43, label %44, label %159

44:                                               ; preds = %36
  %45 = load %struct.inode*, %struct.inode** %4, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @inode_eq_iversion(%struct.inode* %45, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %95, label %50

50:                                               ; preds = %44
  store i32 0, i32* %8, align 4
  br label %51

51:                                               ; preds = %78, %50
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.inode*, %struct.inode** %4, align 8
  %54 = call i32 @i_size_read(%struct.inode* %53)
  %55 = icmp slt i32 %52, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = load i64, i64* %9, align 8
  %60 = icmp ult i64 %58, %59
  br label %61

61:                                               ; preds = %56, %51
  %62 = phi i1 [ false, %51 ], [ %60, %56 ]
  br i1 %62, label %63, label %87

63:                                               ; preds = %61
  %64 = load %struct.ocfs2_inline_data*, %struct.ocfs2_inline_data** %12, align 8
  %65 = getelementptr inbounds %struct.ocfs2_inline_data, %struct.ocfs2_inline_data* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %66, %68
  %70 = inttoptr i64 %69 to %struct.ocfs2_dir_entry*
  store %struct.ocfs2_dir_entry* %70, %struct.ocfs2_dir_entry** %13, align 8
  %71 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %13, align 8
  %72 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @le16_to_cpu(i32 %73)
  %75 = call i64 @OCFS2_DIR_REC_LEN(i32 1)
  %76 = icmp slt i64 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %63
  br label %87

78:                                               ; preds = %63
  %79 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %13, align 8
  %80 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @le16_to_cpu(i32 %81)
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %84, %82
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %8, align 4
  br label %51

87:                                               ; preds = %77, %61
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  store i64 %89, i64* %9, align 8
  %90 = load %struct.dir_context*, %struct.dir_context** %6, align 8
  %91 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %90, i32 0, i32 0
  store i64 %89, i64* %91, align 8
  %92 = load %struct.inode*, %struct.inode** %4, align 8
  %93 = call i32 @inode_query_iversion(%struct.inode* %92)
  %94 = load i32*, i32** %5, align 8
  store i32 %93, i32* %94, align 4
  br label %95

95:                                               ; preds = %87, %44
  %96 = load %struct.ocfs2_inline_data*, %struct.ocfs2_inline_data** %12, align 8
  %97 = getelementptr inbounds %struct.ocfs2_inline_data, %struct.ocfs2_inline_data* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.dir_context*, %struct.dir_context** %6, align 8
  %100 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = add i64 %98, %101
  %103 = inttoptr i64 %102 to %struct.ocfs2_dir_entry*
  store %struct.ocfs2_dir_entry* %103, %struct.ocfs2_dir_entry** %13, align 8
  %104 = load %struct.inode*, %struct.inode** %4, align 8
  %105 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %13, align 8
  %106 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %107 = load %struct.dir_context*, %struct.dir_context** %6, align 8
  %108 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = call i32 @ocfs2_check_dir_entry(%struct.inode* %104, %struct.ocfs2_dir_entry* %105, %struct.buffer_head* %106, i64 %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %118, label %112

112:                                              ; preds = %95
  %113 = load %struct.inode*, %struct.inode** %4, align 8
  %114 = call i32 @i_size_read(%struct.inode* %113)
  %115 = sext i32 %114 to i64
  %116 = load %struct.dir_context*, %struct.dir_context** %6, align 8
  %117 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %116, i32 0, i32 0
  store i64 %115, i64* %117, align 8
  br label %159

118:                                              ; preds = %95
  %119 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %13, align 8
  %120 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i64 @le16_to_cpu(i32 %121)
  %123 = load i64, i64* %9, align 8
  %124 = add i64 %123, %122
  store i64 %124, i64* %9, align 8
  %125 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %13, align 8
  %126 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = call i64 @le64_to_cpu(i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %150

130:                                              ; preds = %118
  %131 = load %struct.dir_context*, %struct.dir_context** %6, align 8
  %132 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %13, align 8
  %133 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %13, align 8
  %136 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %13, align 8
  %139 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = call i64 @le64_to_cpu(i32 %140)
  %142 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %13, align 8
  %143 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @fs_ftype_to_dtype(i32 %144)
  %146 = call i32 @dir_emit(%struct.dir_context* %131, i32 %134, i32 %137, i64 %141, i32 %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %149, label %148

148:                                              ; preds = %130
  br label %160

149:                                              ; preds = %130
  br label %150

150:                                              ; preds = %149, %118
  %151 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %13, align 8
  %152 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i64 @le16_to_cpu(i32 %153)
  %155 = load %struct.dir_context*, %struct.dir_context** %6, align 8
  %156 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = add i64 %157, %154
  store i64 %158, i64* %156, align 8
  br label %36

159:                                              ; preds = %112, %36
  br label %160

160:                                              ; preds = %159, %148, %21
  %161 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %162 = call i32 @brelse(%struct.buffer_head* %161)
  ret i32 0
}

declare dso_local i32 @ocfs2_read_inode_block(%struct.inode*, %struct.buffer_head**) #1

declare dso_local i32 @mlog(i32, i8*, i64) #1

declare dso_local %struct.TYPE_4__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @inode_eq_iversion(%struct.inode*, i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i64 @OCFS2_DIR_REC_LEN(i32) #1

declare dso_local i32 @inode_query_iversion(%struct.inode*) #1

declare dso_local i32 @ocfs2_check_dir_entry(%struct.inode*, %struct.ocfs2_dir_entry*, %struct.buffer_head*, i64) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @dir_emit(%struct.dir_context*, i32, i32, i64, i32) #1

declare dso_local i32 @fs_ftype_to_dtype(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
