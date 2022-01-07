; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_alloc.c_nilfs_palloc_prepare_alloc_entry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_alloc.c_nilfs_palloc_prepare_alloc_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.nilfs_palloc_req = type { i64, %struct.buffer_head*, %struct.buffer_head* }
%struct.buffer_head = type { i32 }
%struct.nilfs_palloc_group_desc = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_palloc_prepare_alloc_entry(%struct.inode* %0, %struct.nilfs_palloc_req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.nilfs_palloc_req*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.nilfs_palloc_group_desc*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.nilfs_palloc_req* %1, %struct.nilfs_palloc_req** %5, align 8
  %24 = load %struct.inode*, %struct.inode** %4, align 8
  %25 = call i64 @nilfs_palloc_groups_count(%struct.inode* %24)
  store i64 %25, i64* %14, align 8
  %26 = load i64, i64* %14, align 8
  %27 = sub i64 %26, 1
  store i64 %27, i64* %13, align 8
  %28 = load %struct.inode*, %struct.inode** %4, align 8
  %29 = load %struct.nilfs_palloc_req*, %struct.nilfs_palloc_req** %5, align 8
  %30 = getelementptr inbounds %struct.nilfs_palloc_req, %struct.nilfs_palloc_req* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @nilfs_palloc_group(%struct.inode* %28, i64 %31, i64* %15)
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %12, align 8
  %34 = load %struct.inode*, %struct.inode** %4, align 8
  %35 = call i64 @nilfs_palloc_entries_per_group(%struct.inode* %34)
  store i64 %35, i64* %18, align 8
  store i64 0, i64* %19, align 8
  br label %36

36:                                               ; preds = %158, %2
  %37 = load i64, i64* %19, align 8
  %38 = load i64, i64* %14, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %162

40:                                               ; preds = %36
  %41 = load i64, i64* %12, align 8
  %42 = load i64, i64* %14, align 8
  %43 = icmp uge i64 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %40
  store i64 0, i64* %12, align 8
  %45 = load %struct.inode*, %struct.inode** %4, align 8
  %46 = load %struct.nilfs_palloc_req*, %struct.nilfs_palloc_req** %5, align 8
  %47 = getelementptr inbounds %struct.nilfs_palloc_req, %struct.nilfs_palloc_req* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @nilfs_palloc_group(%struct.inode* %45, i64 %48, i64* %16)
  %50 = sub nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  store i64 %51, i64* %13, align 8
  br label %52

52:                                               ; preds = %44, %40
  %53 = load %struct.inode*, %struct.inode** %4, align 8
  %54 = load i64, i64* %12, align 8
  %55 = call i32 @nilfs_palloc_get_desc_block(%struct.inode* %53, i64 %54, i32 1, %struct.buffer_head** %6)
  store i32 %55, i32* %23, align 4
  %56 = load i32, i32* %23, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load i32, i32* %23, align 4
  store i32 %59, i32* %3, align 4
  br label %173

60:                                               ; preds = %52
  %61 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %62 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @kmap(i32 %63)
  store i8* %64, i8** %10, align 8
  %65 = load %struct.inode*, %struct.inode** %4, align 8
  %66 = load i64, i64* %12, align 8
  %67 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %68 = load i8*, i8** %10, align 8
  %69 = call %struct.nilfs_palloc_group_desc* @nilfs_palloc_block_get_group_desc(%struct.inode* %65, i64 %66, %struct.buffer_head* %67, i8* %68)
  store %struct.nilfs_palloc_group_desc* %69, %struct.nilfs_palloc_group_desc** %8, align 8
  %70 = load %struct.inode*, %struct.inode** %4, align 8
  %71 = load i64, i64* %12, align 8
  %72 = load i64, i64* %13, align 8
  %73 = call i64 @nilfs_palloc_rest_groups_in_desc_block(%struct.inode* %70, i64 %71, i64 %72)
  store i64 %73, i64* %17, align 8
  store i64 0, i64* %20, align 8
  br label %74

74:                                               ; preds = %144, %60
  %75 = load i64, i64* %20, align 8
  %76 = load i64, i64* %17, align 8
  %77 = icmp ult i64 %75, %76
  br i1 %77, label %78, label %151

78:                                               ; preds = %74
  %79 = load %struct.inode*, %struct.inode** %4, align 8
  %80 = load i64, i64* %12, align 8
  %81 = call i32* @nilfs_mdt_bgl_lock(%struct.inode* %79, i64 %80)
  store i32* %81, i32** %21, align 8
  %82 = load %struct.nilfs_palloc_group_desc*, %struct.nilfs_palloc_group_desc** %8, align 8
  %83 = load i32*, i32** %21, align 8
  %84 = call i64 @nilfs_palloc_group_desc_nfrees(%struct.nilfs_palloc_group_desc* %82, i32* %83)
  %85 = icmp sgt i64 %84, 0
  br i1 %85, label %86, label %143

86:                                               ; preds = %78
  %87 = load %struct.inode*, %struct.inode** %4, align 8
  %88 = load i64, i64* %12, align 8
  %89 = call i32 @nilfs_palloc_get_bitmap_block(%struct.inode* %87, i64 %88, i32 1, %struct.buffer_head** %7)
  store i32 %89, i32* %23, align 4
  %90 = load i32, i32* %23, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %86
  br label %165

93:                                               ; preds = %86
  %94 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %95 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i8* @kmap(i32 %96)
  store i8* %97, i8** %11, align 8
  %98 = load i8*, i8** %11, align 8
  %99 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %100 = call i32 @bh_offset(%struct.buffer_head* %99)
  %101 = sext i32 %100 to i64
  %102 = getelementptr i8, i8* %98, i64 %101
  store i8* %102, i8** %9, align 8
  %103 = load i8*, i8** %9, align 8
  %104 = load i64, i64* %15, align 8
  %105 = load i64, i64* %18, align 8
  %106 = load i32*, i32** %21, align 8
  %107 = call i32 @nilfs_palloc_find_available_slot(i8* %103, i64 %104, i64 %105, i32* %106)
  store i32 %107, i32* %22, align 4
  %108 = load i32, i32* %22, align 4
  %109 = icmp sge i32 %108, 0
  br i1 %109, label %110, label %136

110:                                              ; preds = %93
  %111 = load %struct.nilfs_palloc_group_desc*, %struct.nilfs_palloc_group_desc** %8, align 8
  %112 = load i32*, i32** %21, align 8
  %113 = call i32 @nilfs_palloc_group_desc_add_entries(%struct.nilfs_palloc_group_desc* %111, i32* %112, i32 -1)
  %114 = load i64, i64* %18, align 8
  %115 = load i64, i64* %12, align 8
  %116 = mul i64 %114, %115
  %117 = load i32, i32* %22, align 4
  %118 = sext i32 %117 to i64
  %119 = add i64 %116, %118
  %120 = load %struct.nilfs_palloc_req*, %struct.nilfs_palloc_req** %5, align 8
  %121 = getelementptr inbounds %struct.nilfs_palloc_req, %struct.nilfs_palloc_req* %120, i32 0, i32 0
  store i64 %119, i64* %121, align 8
  %122 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %123 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @kunmap(i32 %124)
  %126 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %127 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @kunmap(i32 %128)
  %130 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %131 = load %struct.nilfs_palloc_req*, %struct.nilfs_palloc_req** %5, align 8
  %132 = getelementptr inbounds %struct.nilfs_palloc_req, %struct.nilfs_palloc_req* %131, i32 0, i32 2
  store %struct.buffer_head* %130, %struct.buffer_head** %132, align 8
  %133 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %134 = load %struct.nilfs_palloc_req*, %struct.nilfs_palloc_req** %5, align 8
  %135 = getelementptr inbounds %struct.nilfs_palloc_req, %struct.nilfs_palloc_req* %134, i32 0, i32 1
  store %struct.buffer_head* %133, %struct.buffer_head** %135, align 8
  store i32 0, i32* %3, align 4
  br label %173

136:                                              ; preds = %93
  %137 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %138 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @kunmap(i32 %139)
  %141 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %142 = call i32 @brelse(%struct.buffer_head* %141)
  br label %143

143:                                              ; preds = %136, %78
  store i64 0, i64* %15, align 8
  br label %144

144:                                              ; preds = %143
  %145 = load i64, i64* %20, align 8
  %146 = add i64 %145, 1
  store i64 %146, i64* %20, align 8
  %147 = load %struct.nilfs_palloc_group_desc*, %struct.nilfs_palloc_group_desc** %8, align 8
  %148 = getelementptr inbounds %struct.nilfs_palloc_group_desc, %struct.nilfs_palloc_group_desc* %147, i32 1
  store %struct.nilfs_palloc_group_desc* %148, %struct.nilfs_palloc_group_desc** %8, align 8
  %149 = load i64, i64* %12, align 8
  %150 = add i64 %149, 1
  store i64 %150, i64* %12, align 8
  br label %74

151:                                              ; preds = %74
  %152 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %153 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @kunmap(i32 %154)
  %156 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %157 = call i32 @brelse(%struct.buffer_head* %156)
  br label %158

158:                                              ; preds = %151
  %159 = load i64, i64* %17, align 8
  %160 = load i64, i64* %19, align 8
  %161 = add i64 %160, %159
  store i64 %161, i64* %19, align 8
  br label %36

162:                                              ; preds = %36
  %163 = load i32, i32* @ENOSPC, align 4
  %164 = sub nsw i32 0, %163
  store i32 %164, i32* %3, align 4
  br label %173

165:                                              ; preds = %92
  %166 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %167 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @kunmap(i32 %168)
  %170 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %171 = call i32 @brelse(%struct.buffer_head* %170)
  %172 = load i32, i32* %23, align 4
  store i32 %172, i32* %3, align 4
  br label %173

173:                                              ; preds = %165, %162, %110, %58
  %174 = load i32, i32* %3, align 4
  ret i32 %174
}

declare dso_local i64 @nilfs_palloc_groups_count(%struct.inode*) #1

declare dso_local i32 @nilfs_palloc_group(%struct.inode*, i64, i64*) #1

declare dso_local i64 @nilfs_palloc_entries_per_group(%struct.inode*) #1

declare dso_local i32 @nilfs_palloc_get_desc_block(%struct.inode*, i64, i32, %struct.buffer_head**) #1

declare dso_local i8* @kmap(i32) #1

declare dso_local %struct.nilfs_palloc_group_desc* @nilfs_palloc_block_get_group_desc(%struct.inode*, i64, %struct.buffer_head*, i8*) #1

declare dso_local i64 @nilfs_palloc_rest_groups_in_desc_block(%struct.inode*, i64, i64) #1

declare dso_local i32* @nilfs_mdt_bgl_lock(%struct.inode*, i64) #1

declare dso_local i64 @nilfs_palloc_group_desc_nfrees(%struct.nilfs_palloc_group_desc*, i32*) #1

declare dso_local i32 @nilfs_palloc_get_bitmap_block(%struct.inode*, i64, i32, %struct.buffer_head**) #1

declare dso_local i32 @bh_offset(%struct.buffer_head*) #1

declare dso_local i32 @nilfs_palloc_find_available_slot(i8*, i64, i64, i32*) #1

declare dso_local i32 @nilfs_palloc_group_desc_add_entries(%struct.nilfs_palloc_group_desc*, i32*, i32) #1

declare dso_local i32 @kunmap(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
