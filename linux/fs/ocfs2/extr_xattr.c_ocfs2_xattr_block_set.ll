; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xattr_block_set.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xattr_block_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.ocfs2_xattr_info = type { i32 }
%struct.ocfs2_xattr_search = type { i32*, i64, %struct.buffer_head*, %struct.TYPE_6__*, i8*, i8*, i32 }
%struct.buffer_head = type { i64 }
%struct.TYPE_6__ = type { i32* }
%struct.ocfs2_xattr_set_ctxt = type { i64 }
%struct.ocfs2_xattr_block = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_6__ }
%struct.ocfs2_xa_loc = type { i32* }

@OCFS2_XATTR_INDEXED = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_set_ctxt*)* @ocfs2_xattr_block_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_xattr_block_set(%struct.inode* %0, %struct.ocfs2_xattr_info* %1, %struct.ocfs2_xattr_search* %2, %struct.ocfs2_xattr_set_ctxt* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.ocfs2_xattr_info*, align 8
  %7 = alloca %struct.ocfs2_xattr_search*, align 8
  %8 = alloca %struct.ocfs2_xattr_set_ctxt*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.ocfs2_xattr_block*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ocfs2_xa_loc, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.ocfs2_xattr_info* %1, %struct.ocfs2_xattr_info** %6, align 8
  store %struct.ocfs2_xattr_search* %2, %struct.ocfs2_xattr_search** %7, align 8
  store %struct.ocfs2_xattr_set_ctxt* %3, %struct.ocfs2_xattr_set_ctxt** %8, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %9, align 8
  store %struct.ocfs2_xattr_block* null, %struct.ocfs2_xattr_block** %10, align 8
  %13 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %7, align 8
  %14 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %13, i32 0, i32 2
  %15 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %16 = icmp ne %struct.buffer_head* %15, null
  br i1 %16, label %68, label %17

17:                                               ; preds = %4
  %18 = load %struct.inode*, %struct.inode** %5, align 8
  %19 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %7, align 8
  %20 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.ocfs2_xattr_set_ctxt*, %struct.ocfs2_xattr_set_ctxt** %8, align 8
  %23 = call i32 @ocfs2_create_xattr_block(%struct.inode* %18, i32 %21, %struct.ocfs2_xattr_set_ctxt* %22, i32 0, %struct.buffer_head** %9)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %17
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @mlog_errno(i32 %27)
  br label %147

29:                                               ; preds = %17
  %30 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %31 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %7, align 8
  %32 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %31, i32 0, i32 2
  store %struct.buffer_head* %30, %struct.buffer_head** %32, align 8
  %33 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %7, align 8
  %34 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %33, i32 0, i32 2
  %35 = load %struct.buffer_head*, %struct.buffer_head** %34, align 8
  %36 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to %struct.ocfs2_xattr_block*
  store %struct.ocfs2_xattr_block* %38, %struct.ocfs2_xattr_block** %10, align 8
  %39 = load %struct.ocfs2_xattr_block*, %struct.ocfs2_xattr_block** %10, align 8
  %40 = getelementptr inbounds %struct.ocfs2_xattr_block, %struct.ocfs2_xattr_block* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %7, align 8
  %43 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %42, i32 0, i32 3
  store %struct.TYPE_6__* %41, %struct.TYPE_6__** %43, align 8
  %44 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %7, align 8
  %45 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %44, i32 0, i32 3
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = bitcast %struct.TYPE_6__* %46 to i8*
  %48 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %7, align 8
  %49 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %48, i32 0, i32 5
  store i8* %47, i8** %49, align 8
  %50 = load %struct.ocfs2_xattr_block*, %struct.ocfs2_xattr_block** %10, align 8
  %51 = bitcast %struct.ocfs2_xattr_block* %50 to i8*
  %52 = load %struct.inode*, %struct.inode** %5, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 0
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr i8, i8* %51, i64 %57
  %59 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %7, align 8
  %60 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %59, i32 0, i32 4
  store i8* %58, i8** %60, align 8
  %61 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %7, align 8
  %62 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %61, i32 0, i32 3
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %7, align 8
  %67 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %66, i32 0, i32 0
  store i32* %65, i32** %67, align 8
  br label %75

68:                                               ; preds = %4
  %69 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %7, align 8
  %70 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %69, i32 0, i32 2
  %71 = load %struct.buffer_head*, %struct.buffer_head** %70, align 8
  %72 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = inttoptr i64 %73 to %struct.ocfs2_xattr_block*
  store %struct.ocfs2_xattr_block* %74, %struct.ocfs2_xattr_block** %10, align 8
  br label %75

75:                                               ; preds = %68, %29
  %76 = load %struct.ocfs2_xattr_block*, %struct.ocfs2_xattr_block** %10, align 8
  %77 = getelementptr inbounds %struct.ocfs2_xattr_block, %struct.ocfs2_xattr_block* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @le16_to_cpu(i32 %78)
  %80 = load i32, i32* @OCFS2_XATTR_INDEXED, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %132, label %83

83:                                               ; preds = %75
  %84 = load %struct.inode*, %struct.inode** %5, align 8
  %85 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %7, align 8
  %86 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %85, i32 0, i32 2
  %87 = load %struct.buffer_head*, %struct.buffer_head** %86, align 8
  %88 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %7, align 8
  %89 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %83
  br label %97

93:                                               ; preds = %83
  %94 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %7, align 8
  %95 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  br label %97

97:                                               ; preds = %93, %92
  %98 = phi i32* [ null, %92 ], [ %96, %93 ]
  %99 = call i32 @ocfs2_init_xattr_block_xa_loc(%struct.ocfs2_xa_loc* %12, %struct.inode* %84, %struct.buffer_head* %87, i32* %98)
  %100 = load %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_info** %6, align 8
  %101 = load %struct.ocfs2_xattr_set_ctxt*, %struct.ocfs2_xattr_set_ctxt** %8, align 8
  %102 = call i32 @ocfs2_xa_set(%struct.ocfs2_xa_loc* %12, %struct.ocfs2_xattr_info* %100, %struct.ocfs2_xattr_set_ctxt* %101)
  store i32 %102, i32* %11, align 4
  %103 = load i32, i32* %11, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %110, label %105

105:                                              ; preds = %97
  %106 = getelementptr inbounds %struct.ocfs2_xa_loc, %struct.ocfs2_xa_loc* %12, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %7, align 8
  %109 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %108, i32 0, i32 0
  store i32* %107, i32** %109, align 8
  br label %131

110:                                              ; preds = %97
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* @ENOSPC, align 4
  %113 = sub nsw i32 0, %112
  %114 = icmp ne i32 %111, %113
  br i1 %114, label %120, label %115

115:                                              ; preds = %110
  %116 = load %struct.ocfs2_xattr_set_ctxt*, %struct.ocfs2_xattr_set_ctxt** %8, align 8
  %117 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %115, %110
  br label %147

121:                                              ; preds = %115
  %122 = load %struct.inode*, %struct.inode** %5, align 8
  %123 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %7, align 8
  %124 = load %struct.ocfs2_xattr_set_ctxt*, %struct.ocfs2_xattr_set_ctxt** %8, align 8
  %125 = call i32 @ocfs2_xattr_create_index_block(%struct.inode* %122, %struct.ocfs2_xattr_search* %123, %struct.ocfs2_xattr_set_ctxt* %124)
  store i32 %125, i32* %11, align 4
  %126 = load i32, i32* %11, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %121
  br label %147

129:                                              ; preds = %121
  br label %130

130:                                              ; preds = %129
  br label %131

131:                                              ; preds = %130, %105
  br label %132

132:                                              ; preds = %131, %75
  %133 = load %struct.ocfs2_xattr_block*, %struct.ocfs2_xattr_block** %10, align 8
  %134 = getelementptr inbounds %struct.ocfs2_xattr_block, %struct.ocfs2_xattr_block* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @le16_to_cpu(i32 %135)
  %137 = load i32, i32* @OCFS2_XATTR_INDEXED, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %132
  %141 = load %struct.inode*, %struct.inode** %5, align 8
  %142 = load %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_info** %6, align 8
  %143 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %7, align 8
  %144 = load %struct.ocfs2_xattr_set_ctxt*, %struct.ocfs2_xattr_set_ctxt** %8, align 8
  %145 = call i32 @ocfs2_xattr_set_entry_index_block(%struct.inode* %141, %struct.ocfs2_xattr_info* %142, %struct.ocfs2_xattr_search* %143, %struct.ocfs2_xattr_set_ctxt* %144)
  store i32 %145, i32* %11, align 4
  br label %146

146:                                              ; preds = %140, %132
  br label %147

147:                                              ; preds = %146, %128, %120, %26
  %148 = load i32, i32* %11, align 4
  ret i32 %148
}

declare dso_local i32 @ocfs2_create_xattr_block(%struct.inode*, i32, %struct.ocfs2_xattr_set_ctxt*, i32, %struct.buffer_head**) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ocfs2_init_xattr_block_xa_loc(%struct.ocfs2_xa_loc*, %struct.inode*, %struct.buffer_head*, i32*) #1

declare dso_local i32 @ocfs2_xa_set(%struct.ocfs2_xa_loc*, %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_set_ctxt*) #1

declare dso_local i32 @ocfs2_xattr_create_index_block(%struct.inode*, %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_set_ctxt*) #1

declare dso_local i32 @ocfs2_xattr_set_entry_index_block(%struct.inode*, %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_set_ctxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
