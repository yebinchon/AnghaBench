; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_suballoc.c_ocfs2_search_one_group.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_suballoc.c_ocfs2_search_one_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_alloc_context = type { i32 (%struct.inode*, %struct.buffer_head*, i32, i32, i32, %struct.ocfs2_suballoc_result*)*, %struct.TYPE_3__*, i64, i32, %struct.inode.0* }
%struct.inode = type opaque
%struct.buffer_head = type opaque
%struct.TYPE_3__ = type { i64 }
%struct.inode.0 = type { i32 }
%struct.ocfs2_suballoc_result = type { i32, i32, i32, i32 }
%struct.buffer_head.1 = type { i32, i64 }
%struct.ocfs2_group_desc = type { i32, i32 }
%struct.ocfs2_dinode = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_alloc_context*, i32*, i32, i32, %struct.ocfs2_suballoc_result*, i32*)* @ocfs2_search_one_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_search_one_group(%struct.ocfs2_alloc_context* %0, i32* %1, i32 %2, i32 %3, %struct.ocfs2_suballoc_result* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ocfs2_alloc_context*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ocfs2_suballoc_result*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.buffer_head.1*, align 8
  %16 = alloca %struct.ocfs2_group_desc*, align 8
  %17 = alloca %struct.ocfs2_dinode*, align 8
  %18 = alloca %struct.inode.0*, align 8
  store %struct.ocfs2_alloc_context* %0, %struct.ocfs2_alloc_context** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.ocfs2_suballoc_result* %4, %struct.ocfs2_suballoc_result** %12, align 8
  store i32* %5, i32** %13, align 8
  store %struct.buffer_head.1* null, %struct.buffer_head.1** %15, align 8
  %19 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %8, align 8
  %20 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %24, %struct.ocfs2_dinode** %17, align 8
  %25 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %8, align 8
  %26 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %25, i32 0, i32 4
  %27 = load %struct.inode.0*, %struct.inode.0** %26, align 8
  store %struct.inode.0* %27, %struct.inode.0** %18, align 8
  %28 = load %struct.inode.0*, %struct.inode.0** %18, align 8
  %29 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %17, align 8
  %30 = load %struct.ocfs2_suballoc_result*, %struct.ocfs2_suballoc_result** %12, align 8
  %31 = getelementptr inbounds %struct.ocfs2_suballoc_result, %struct.ocfs2_suballoc_result* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ocfs2_read_group_descriptor(%struct.inode.0* %28, %struct.ocfs2_dinode* %29, i32 %32, %struct.buffer_head.1** %15)
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* %14, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %6
  %37 = load i32, i32* %14, align 4
  %38 = call i32 @mlog_errno(i32 %37)
  %39 = load i32, i32* %14, align 4
  store i32 %39, i32* %7, align 4
  br label %148

40:                                               ; preds = %6
  %41 = load %struct.buffer_head.1*, %struct.buffer_head.1** %15, align 8
  %42 = getelementptr inbounds %struct.buffer_head.1, %struct.buffer_head.1* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to %struct.ocfs2_group_desc*
  store %struct.ocfs2_group_desc* %44, %struct.ocfs2_group_desc** %16, align 8
  %45 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %8, align 8
  %46 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %45, i32 0, i32 0
  %47 = load i32 (%struct.inode*, %struct.buffer_head*, i32, i32, i32, %struct.ocfs2_suballoc_result*)*, i32 (%struct.inode*, %struct.buffer_head*, i32, i32, i32, %struct.ocfs2_suballoc_result*)** %46, align 8
  %48 = load %struct.inode.0*, %struct.inode.0** %18, align 8
  %49 = bitcast %struct.inode.0* %48 to %struct.inode*
  %50 = load %struct.buffer_head.1*, %struct.buffer_head.1** %15, align 8
  %51 = bitcast %struct.buffer_head.1* %50 to %struct.buffer_head*
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %11, align 4
  %54 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %8, align 8
  %55 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.ocfs2_suballoc_result*, %struct.ocfs2_suballoc_result** %12, align 8
  %58 = call i32 %47(%struct.inode* %49, %struct.buffer_head* %51, i32 %52, i32 %53, i32 %56, %struct.ocfs2_suballoc_result* %57)
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %14, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %40
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* @ENOSPC, align 4
  %64 = sub nsw i32 0, %63
  %65 = icmp ne i32 %62, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load i32, i32* %14, align 4
  %68 = call i32 @mlog_errno(i32 %67)
  br label %69

69:                                               ; preds = %66, %61
  br label %144

70:                                               ; preds = %40
  %71 = load i32, i32* %14, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %70
  %74 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %8, align 8
  %75 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %16, align 8
  %76 = load %struct.ocfs2_suballoc_result*, %struct.ocfs2_suballoc_result** %12, align 8
  %77 = call i32 @ocfs2_bg_discontig_fix_result(%struct.ocfs2_alloc_context* %74, %struct.ocfs2_group_desc* %75, %struct.ocfs2_suballoc_result* %76)
  br label %78

78:                                               ; preds = %73, %70
  %79 = load %struct.buffer_head.1*, %struct.buffer_head.1** %15, align 8
  %80 = getelementptr inbounds %struct.buffer_head.1, %struct.buffer_head.1* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.ocfs2_suballoc_result*, %struct.ocfs2_suballoc_result** %12, align 8
  %83 = getelementptr inbounds %struct.ocfs2_suballoc_result, %struct.ocfs2_suballoc_result* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 4
  %84 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %8, align 8
  %85 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %78
  br label %138

89:                                               ; preds = %78
  %90 = load %struct.inode.0*, %struct.inode.0** %18, align 8
  %91 = load i32*, i32** %9, align 8
  %92 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %8, align 8
  %93 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %92, i32 0, i32 1
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = load %struct.ocfs2_suballoc_result*, %struct.ocfs2_suballoc_result** %12, align 8
  %96 = getelementptr inbounds %struct.ocfs2_suballoc_result, %struct.ocfs2_suballoc_result* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %16, align 8
  %99 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @le16_to_cpu(i32 %100)
  %102 = call i32 @ocfs2_alloc_dinode_update_counts(%struct.inode.0* %90, i32* %91, %struct.TYPE_3__* %94, i32 %97, i32 %101)
  store i32 %102, i32* %14, align 4
  %103 = load i32, i32* %14, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %89
  %106 = load i32, i32* %14, align 4
  %107 = call i32 @mlog_errno(i32 %106)
  br label %144

108:                                              ; preds = %89
  %109 = load i32*, i32** %9, align 8
  %110 = load %struct.inode.0*, %struct.inode.0** %18, align 8
  %111 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %16, align 8
  %112 = load %struct.buffer_head.1*, %struct.buffer_head.1** %15, align 8
  %113 = load %struct.ocfs2_suballoc_result*, %struct.ocfs2_suballoc_result** %12, align 8
  %114 = getelementptr inbounds %struct.ocfs2_suballoc_result, %struct.ocfs2_suballoc_result* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.ocfs2_suballoc_result*, %struct.ocfs2_suballoc_result** %12, align 8
  %117 = getelementptr inbounds %struct.ocfs2_suballoc_result, %struct.ocfs2_suballoc_result* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @ocfs2_block_group_set_bits(i32* %109, %struct.inode.0* %110, %struct.ocfs2_group_desc* %111, %struct.buffer_head.1* %112, i32 %115, i32 %118)
  store i32 %119, i32* %14, align 4
  %120 = load i32, i32* %14, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %137

122:                                              ; preds = %108
  %123 = load %struct.inode.0*, %struct.inode.0** %18, align 8
  %124 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %8, align 8
  %125 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %124, i32 0, i32 1
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %125, align 8
  %127 = load %struct.ocfs2_suballoc_result*, %struct.ocfs2_suballoc_result** %12, align 8
  %128 = getelementptr inbounds %struct.ocfs2_suballoc_result, %struct.ocfs2_suballoc_result* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %16, align 8
  %131 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @le16_to_cpu(i32 %132)
  %134 = call i32 @ocfs2_rollback_alloc_dinode_counts(%struct.inode.0* %123, %struct.TYPE_3__* %126, i32 %129, i32 %133)
  %135 = load i32, i32* %14, align 4
  %136 = call i32 @mlog_errno(i32 %135)
  br label %137

137:                                              ; preds = %122, %108
  br label %138

138:                                              ; preds = %137, %88
  %139 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %16, align 8
  %140 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @le16_to_cpu(i32 %141)
  %143 = load i32*, i32** %13, align 8
  store i32 %142, i32* %143, align 4
  br label %144

144:                                              ; preds = %138, %105, %69
  %145 = load %struct.buffer_head.1*, %struct.buffer_head.1** %15, align 8
  %146 = call i32 @brelse(%struct.buffer_head.1* %145)
  %147 = load i32, i32* %14, align 4
  store i32 %147, i32* %7, align 4
  br label %148

148:                                              ; preds = %144, %36
  %149 = load i32, i32* %7, align 4
  ret i32 %149
}

declare dso_local i32 @ocfs2_read_group_descriptor(%struct.inode.0*, %struct.ocfs2_dinode*, i32, %struct.buffer_head.1**) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_bg_discontig_fix_result(%struct.ocfs2_alloc_context*, %struct.ocfs2_group_desc*, %struct.ocfs2_suballoc_result*) #1

declare dso_local i32 @ocfs2_alloc_dinode_update_counts(%struct.inode.0*, i32*, %struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ocfs2_block_group_set_bits(i32*, %struct.inode.0*, %struct.ocfs2_group_desc*, %struct.buffer_head.1*, i32, i32) #1

declare dso_local i32 @ocfs2_rollback_alloc_dinode_counts(%struct.inode.0*, %struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head.1*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
