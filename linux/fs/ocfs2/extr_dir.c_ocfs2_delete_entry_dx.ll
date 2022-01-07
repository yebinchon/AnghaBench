; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dir.c_ocfs2_delete_entry_dx.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dir.c_ocfs2_delete_entry_dx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_dir_lookup_result = type { %struct.buffer_head*, i32, %struct.ocfs2_dx_entry*, %struct.buffer_head*, %struct.buffer_head* }
%struct.ocfs2_dx_entry = type { i32 }
%struct.buffer_head = type { i32, i32, i64 }
%struct.ocfs2_dx_leaf = type { %struct.ocfs2_dx_entry_list }
%struct.ocfs2_dx_entry_list = type { i32, i64, i32 }
%struct.ocfs2_dir_block_trailer = type { i64, i32 }
%struct.ocfs2_dx_root_block = type { i32, i32, %struct.ocfs2_dx_entry_list }
%struct.TYPE_2__ = type { i64 }

@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Dir %llu: Bad dx_entry ptr idx %d, (%p, %p)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, %struct.ocfs2_dir_lookup_result*)* @ocfs2_delete_entry_dx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_delete_entry_dx(i32* %0, %struct.inode* %1, %struct.ocfs2_dir_lookup_result* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.ocfs2_dir_lookup_result*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca %struct.buffer_head*, align 8
  %14 = alloca %struct.ocfs2_dx_leaf*, align 8
  %15 = alloca %struct.ocfs2_dx_entry*, align 8
  %16 = alloca %struct.ocfs2_dir_block_trailer*, align 8
  %17 = alloca %struct.ocfs2_dx_root_block*, align 8
  %18 = alloca %struct.ocfs2_dx_entry_list*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.ocfs2_dir_lookup_result* %2, %struct.ocfs2_dir_lookup_result** %7, align 8
  store i32 0, i32* %11, align 4
  %19 = load %struct.ocfs2_dir_lookup_result*, %struct.ocfs2_dir_lookup_result** %7, align 8
  %20 = getelementptr inbounds %struct.ocfs2_dir_lookup_result, %struct.ocfs2_dir_lookup_result* %19, i32 0, i32 4
  %21 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  store %struct.buffer_head* %21, %struct.buffer_head** %12, align 8
  %22 = load %struct.ocfs2_dir_lookup_result*, %struct.ocfs2_dir_lookup_result** %7, align 8
  %23 = getelementptr inbounds %struct.ocfs2_dir_lookup_result, %struct.ocfs2_dir_lookup_result* %22, i32 0, i32 3
  %24 = load %struct.buffer_head*, %struct.buffer_head** %23, align 8
  store %struct.buffer_head* %24, %struct.buffer_head** %13, align 8
  %25 = load %struct.ocfs2_dir_lookup_result*, %struct.ocfs2_dir_lookup_result** %7, align 8
  %26 = getelementptr inbounds %struct.ocfs2_dir_lookup_result, %struct.ocfs2_dir_lookup_result* %25, i32 0, i32 2
  %27 = load %struct.ocfs2_dx_entry*, %struct.ocfs2_dx_entry** %26, align 8
  store %struct.ocfs2_dx_entry* %27, %struct.ocfs2_dx_entry** %15, align 8
  %28 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %29 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.ocfs2_dx_root_block*
  store %struct.ocfs2_dx_root_block* %31, %struct.ocfs2_dx_root_block** %17, align 8
  %32 = load %struct.ocfs2_dx_root_block*, %struct.ocfs2_dx_root_block** %17, align 8
  %33 = call i64 @ocfs2_dx_root_inline(%struct.ocfs2_dx_root_block* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %3
  %36 = load %struct.ocfs2_dx_root_block*, %struct.ocfs2_dx_root_block** %17, align 8
  %37 = getelementptr inbounds %struct.ocfs2_dx_root_block, %struct.ocfs2_dx_root_block* %36, i32 0, i32 2
  store %struct.ocfs2_dx_entry_list* %37, %struct.ocfs2_dx_entry_list** %18, align 8
  br label %47

38:                                               ; preds = %3
  %39 = load %struct.ocfs2_dir_lookup_result*, %struct.ocfs2_dir_lookup_result** %7, align 8
  %40 = getelementptr inbounds %struct.ocfs2_dir_lookup_result, %struct.ocfs2_dir_lookup_result* %39, i32 0, i32 0
  %41 = load %struct.buffer_head*, %struct.buffer_head** %40, align 8
  %42 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to %struct.ocfs2_dx_leaf*
  store %struct.ocfs2_dx_leaf* %44, %struct.ocfs2_dx_leaf** %14, align 8
  %45 = load %struct.ocfs2_dx_leaf*, %struct.ocfs2_dx_leaf** %14, align 8
  %46 = getelementptr inbounds %struct.ocfs2_dx_leaf, %struct.ocfs2_dx_leaf* %45, i32 0, i32 0
  store %struct.ocfs2_dx_entry_list* %46, %struct.ocfs2_dx_entry_list** %18, align 8
  br label %47

47:                                               ; preds = %38, %35
  %48 = load %struct.ocfs2_dx_entry_list*, %struct.ocfs2_dx_entry_list** %18, align 8
  %49 = getelementptr inbounds %struct.ocfs2_dx_entry_list, %struct.ocfs2_dx_entry_list* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @le16_to_cpu(i32 %50)
  %52 = icmp sle i32 %51, 0
  %53 = zext i1 %52 to i32
  %54 = call i32 @BUG_ON(i32 %53)
  %55 = load %struct.ocfs2_dx_entry_list*, %struct.ocfs2_dx_entry_list** %18, align 8
  %56 = getelementptr inbounds %struct.ocfs2_dx_entry_list, %struct.ocfs2_dx_entry_list* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @le16_to_cpu(i32 %57)
  %59 = icmp sle i32 %58, 0
  %60 = zext i1 %59 to i32
  %61 = call i32 @BUG_ON(i32 %60)
  %62 = load %struct.ocfs2_dx_entry*, %struct.ocfs2_dx_entry** %15, align 8
  %63 = bitcast %struct.ocfs2_dx_entry* %62 to i8*
  %64 = load %struct.ocfs2_dx_entry_list*, %struct.ocfs2_dx_entry_list** %18, align 8
  %65 = getelementptr inbounds %struct.ocfs2_dx_entry_list, %struct.ocfs2_dx_entry_list* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to i8*
  %68 = ptrtoint i8* %63 to i64
  %69 = ptrtoint i8* %67 to i64
  %70 = sub i64 %68, %69
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = udiv i64 %73, 4
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = load %struct.ocfs2_dx_entry_list*, %struct.ocfs2_dx_entry_list** %18, align 8
  %78 = getelementptr inbounds %struct.ocfs2_dx_entry_list, %struct.ocfs2_dx_entry_list* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @le16_to_cpu(i32 %79)
  %81 = icmp sge i32 %76, %80
  br i1 %81, label %82, label %94

82:                                               ; preds = %47
  %83 = load i32, i32* @ML_ERROR, align 4
  %84 = load %struct.inode*, %struct.inode** %6, align 8
  %85 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %84)
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i32, i32* %9, align 4
  %89 = load %struct.ocfs2_dx_entry_list*, %struct.ocfs2_dx_entry_list** %18, align 8
  %90 = load %struct.ocfs2_dx_entry*, %struct.ocfs2_dx_entry** %15, align 8
  %91 = call i32 @mlog(i32 %83, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %87, i32 %88, %struct.ocfs2_dx_entry_list* %89, %struct.ocfs2_dx_entry* %90)
  %92 = load i32, i32* @EIO, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %4, align 4
  br label %213

94:                                               ; preds = %47
  %95 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %96 = load %struct.inode*, %struct.inode** %6, align 8
  %97 = getelementptr inbounds %struct.inode, %struct.inode* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call %struct.ocfs2_dir_block_trailer* @ocfs2_trailer_from_bh(%struct.buffer_head* %95, i32 %98)
  store %struct.ocfs2_dir_block_trailer* %99, %struct.ocfs2_dir_block_trailer** %16, align 8
  %100 = load %struct.ocfs2_dir_block_trailer*, %struct.ocfs2_dir_block_trailer** %16, align 8
  %101 = getelementptr inbounds %struct.ocfs2_dir_block_trailer, %struct.ocfs2_dir_block_trailer* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %94
  store i32 1, i32* %11, align 4
  br label %105

105:                                              ; preds = %104, %94
  %106 = load i32*, i32** %5, align 8
  %107 = load %struct.inode*, %struct.inode** %6, align 8
  %108 = call i32 @INODE_CACHE(%struct.inode* %107)
  %109 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %110 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %111 = call i32 @ocfs2_journal_access_dr(i32* %106, i32 %108, %struct.buffer_head* %109, i32 %110)
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %8, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %105
  %115 = load i32, i32* %8, align 4
  %116 = call i32 @mlog_errno(i32 %115)
  br label %211

117:                                              ; preds = %105
  %118 = load %struct.ocfs2_dx_root_block*, %struct.ocfs2_dx_root_block** %17, align 8
  %119 = call i64 @ocfs2_dx_root_inline(%struct.ocfs2_dx_root_block* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %136, label %121

121:                                              ; preds = %117
  %122 = load i32*, i32** %5, align 8
  %123 = load %struct.inode*, %struct.inode** %6, align 8
  %124 = call i32 @INODE_CACHE(%struct.inode* %123)
  %125 = load %struct.ocfs2_dir_lookup_result*, %struct.ocfs2_dir_lookup_result** %7, align 8
  %126 = getelementptr inbounds %struct.ocfs2_dir_lookup_result, %struct.ocfs2_dir_lookup_result* %125, i32 0, i32 0
  %127 = load %struct.buffer_head*, %struct.buffer_head** %126, align 8
  %128 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %129 = call i32 @ocfs2_journal_access_dl(i32* %122, i32 %124, %struct.buffer_head* %127, i32 %128)
  store i32 %129, i32* %8, align 4
  %130 = load i32, i32* %8, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %121
  %133 = load i32, i32* %8, align 4
  %134 = call i32 @mlog_errno(i32 %133)
  br label %211

135:                                              ; preds = %121
  br label %136

136:                                              ; preds = %135, %117
  %137 = load %struct.inode*, %struct.inode** %6, align 8
  %138 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %137)
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i32, i32* %9, align 4
  %142 = call i32 @trace_ocfs2_delete_entry_dx(i64 %140, i32 %141)
  %143 = load i32*, i32** %5, align 8
  %144 = load %struct.inode*, %struct.inode** %6, align 8
  %145 = load %struct.ocfs2_dir_lookup_result*, %struct.ocfs2_dir_lookup_result** %7, align 8
  %146 = getelementptr inbounds %struct.ocfs2_dir_lookup_result, %struct.ocfs2_dir_lookup_result* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %149 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %150 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %153 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @__ocfs2_delete_entry(i32* %143, %struct.inode* %144, i32 %147, %struct.buffer_head* %148, i64 %151, i32 %154)
  store i32 %155, i32* %8, align 4
  %156 = load i32, i32* %8, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %136
  %159 = load i32, i32* %8, align 4
  %160 = call i32 @mlog_errno(i32 %159)
  br label %211

161:                                              ; preds = %136
  %162 = load %struct.inode*, %struct.inode** %6, align 8
  %163 = getelementptr inbounds %struct.inode, %struct.inode* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %166 = call i32 @ocfs2_find_max_rec_len(i32 %164, %struct.buffer_head* %165)
  store i32 %166, i32* %10, align 4
  %167 = load i32, i32* %10, align 4
  %168 = call i64 @cpu_to_le16(i32 %167)
  %169 = load %struct.ocfs2_dir_block_trailer*, %struct.ocfs2_dir_block_trailer** %16, align 8
  %170 = getelementptr inbounds %struct.ocfs2_dir_block_trailer, %struct.ocfs2_dir_block_trailer* %169, i32 0, i32 0
  store i64 %168, i64* %170, align 8
  %171 = load i32, i32* %11, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %188

173:                                              ; preds = %161
  %174 = load %struct.ocfs2_dx_root_block*, %struct.ocfs2_dx_root_block** %17, align 8
  %175 = getelementptr inbounds %struct.ocfs2_dx_root_block, %struct.ocfs2_dx_root_block* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.ocfs2_dir_block_trailer*, %struct.ocfs2_dir_block_trailer** %16, align 8
  %178 = getelementptr inbounds %struct.ocfs2_dir_block_trailer, %struct.ocfs2_dir_block_trailer* %177, i32 0, i32 1
  store i32 %176, i32* %178, align 8
  %179 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %180 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @cpu_to_le64(i32 %181)
  %183 = load %struct.ocfs2_dx_root_block*, %struct.ocfs2_dx_root_block** %17, align 8
  %184 = getelementptr inbounds %struct.ocfs2_dx_root_block, %struct.ocfs2_dx_root_block* %183, i32 0, i32 1
  store i32 %182, i32* %184, align 4
  %185 = load i32*, i32** %5, align 8
  %186 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %187 = call i32 @ocfs2_journal_dirty(i32* %185, %struct.buffer_head* %186)
  br label %188

188:                                              ; preds = %173, %161
  %189 = load i32*, i32** %5, align 8
  %190 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %191 = call i32 @ocfs2_journal_dirty(i32* %189, %struct.buffer_head* %190)
  %192 = load %struct.ocfs2_dx_root_block*, %struct.ocfs2_dx_root_block** %17, align 8
  %193 = getelementptr inbounds %struct.ocfs2_dx_root_block, %struct.ocfs2_dx_root_block* %192, i32 0, i32 0
  %194 = call i32 @le32_add_cpu(i32* %193, i32 -1)
  %195 = load i32*, i32** %5, align 8
  %196 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %197 = call i32 @ocfs2_journal_dirty(i32* %195, %struct.buffer_head* %196)
  %198 = load %struct.ocfs2_dx_entry_list*, %struct.ocfs2_dx_entry_list** %18, align 8
  %199 = load i32, i32* %9, align 4
  %200 = call i32 @ocfs2_dx_list_remove_entry(%struct.ocfs2_dx_entry_list* %198, i32 %199)
  %201 = load %struct.ocfs2_dx_root_block*, %struct.ocfs2_dx_root_block** %17, align 8
  %202 = call i64 @ocfs2_dx_root_inline(%struct.ocfs2_dx_root_block* %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %210, label %204

204:                                              ; preds = %188
  %205 = load i32*, i32** %5, align 8
  %206 = load %struct.ocfs2_dir_lookup_result*, %struct.ocfs2_dir_lookup_result** %7, align 8
  %207 = getelementptr inbounds %struct.ocfs2_dir_lookup_result, %struct.ocfs2_dir_lookup_result* %206, i32 0, i32 0
  %208 = load %struct.buffer_head*, %struct.buffer_head** %207, align 8
  %209 = call i32 @ocfs2_journal_dirty(i32* %205, %struct.buffer_head* %208)
  br label %210

210:                                              ; preds = %204, %188
  br label %211

211:                                              ; preds = %210, %158, %132, %114
  %212 = load i32, i32* %8, align 4
  store i32 %212, i32* %4, align 4
  br label %213

213:                                              ; preds = %211, %82
  %214 = load i32, i32* %4, align 4
  ret i32 %214
}

declare dso_local i64 @ocfs2_dx_root_inline(%struct.ocfs2_dx_root_block*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @mlog(i32, i8*, i64, i32, %struct.ocfs2_dx_entry_list*, %struct.ocfs2_dx_entry*) #1

declare dso_local %struct.TYPE_2__* @OCFS2_I(%struct.inode*) #1

declare dso_local %struct.ocfs2_dir_block_trailer* @ocfs2_trailer_from_bh(%struct.buffer_head*, i32) #1

declare dso_local i32 @ocfs2_journal_access_dr(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_journal_access_dl(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @trace_ocfs2_delete_entry_dx(i64, i32) #1

declare dso_local i32 @__ocfs2_delete_entry(i32*, %struct.inode*, i32, %struct.buffer_head*, i64, i32) #1

declare dso_local i32 @ocfs2_find_max_rec_len(i32, %struct.buffer_head*) #1

declare dso_local i64 @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @le32_add_cpu(i32*, i32) #1

declare dso_local i32 @ocfs2_dx_list_remove_entry(%struct.ocfs2_dx_entry_list*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
