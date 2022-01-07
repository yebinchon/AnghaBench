; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c_ocfs2_reflink_remap_blocks.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c_ocfs2_reflink_remap_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_cached_dealloc_ctxt = type { i32 }
%struct.ocfs2_super = type { i32 }
%struct.ocfs2_dinode = type { i32 }
%struct.TYPE_2__ = type { i32 }

@OCFS2_INLINE_DATA_FL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ocfs2_reflink_remap_blocks(%struct.inode* %0, %struct.buffer_head* %1, i64 %2, %struct.inode* %3, %struct.buffer_head* %4, i64 %5, i64 %6) #0 {
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.ocfs2_cached_dealloc_ctxt, align 4
  %16 = alloca %struct.ocfs2_super*, align 8
  %17 = alloca %struct.ocfs2_dinode*, align 8
  %18 = alloca %struct.ocfs2_dinode*, align 8
  %19 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %8, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %9, align 8
  store i64 %2, i64* %10, align 8
  store %struct.inode* %3, %struct.inode** %11, align 8
  store %struct.buffer_head* %4, %struct.buffer_head** %12, align 8
  store i64 %5, i64* %13, align 8
  store i64 %6, i64* %14, align 8
  %20 = load %struct.inode*, %struct.inode** %8, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.ocfs2_super* @OCFS2_SB(i32 %22)
  store %struct.ocfs2_super* %23, %struct.ocfs2_super** %16, align 8
  %24 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %25 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %27, %struct.ocfs2_dinode** %17, align 8
  %28 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %29 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %31, %struct.ocfs2_dinode** %18, align 8
  %32 = call i32 @ocfs2_init_dealloc_ctxt(%struct.ocfs2_cached_dealloc_ctxt* %15)
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* %13, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %69

36:                                               ; preds = %7
  %37 = load i64, i64* %10, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %69

39:                                               ; preds = %36
  %40 = load i64, i64* %14, align 8
  %41 = load %struct.inode*, %struct.inode** %8, align 8
  %42 = call i64 @i_size_read(%struct.inode* %41)
  %43 = icmp eq i64 %40, %42
  br i1 %43, label %44, label %69

44:                                               ; preds = %39
  %45 = load %struct.inode*, %struct.inode** %11, align 8
  %46 = call i64 @i_size_read(%struct.inode* %45)
  %47 = load i64, i64* %14, align 8
  %48 = icmp sle i64 %46, %47
  br i1 %48, label %49, label %69

49:                                               ; preds = %44
  %50 = load %struct.inode*, %struct.inode** %8, align 8
  %51 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %50)
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @OCFS2_INLINE_DATA_FL, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %49
  %58 = load %struct.inode*, %struct.inode** %8, align 8
  %59 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %60 = load %struct.inode*, %struct.inode** %11, align 8
  %61 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %62 = call i64 @ocfs2_duplicate_inline_data(%struct.inode* %58, %struct.buffer_head* %59, %struct.inode* %60, %struct.buffer_head* %61)
  store i64 %62, i64* %19, align 8
  %63 = load i64, i64* %19, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %57
  %66 = load i64, i64* %19, align 8
  %67 = call i32 @mlog_errno(i64 %66)
  br label %68

68:                                               ; preds = %65, %57
  br label %177

69:                                               ; preds = %49, %44, %39, %36, %7
  %70 = load i64, i64* @EOPNOTSUPP, align 8
  %71 = sub nsw i64 0, %70
  store i64 %71, i64* %19, align 8
  %72 = load %struct.inode*, %struct.inode** %8, align 8
  %73 = call i64 @ocfs2_is_refcount_inode(%struct.inode* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %90

75:                                               ; preds = %69
  %76 = load %struct.inode*, %struct.inode** %11, align 8
  %77 = call i64 @ocfs2_is_refcount_inode(%struct.inode* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %90

79:                                               ; preds = %75
  %80 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %17, align 8
  %81 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @le64_to_cpu(i32 %82)
  %84 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %18, align 8
  %85 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @le64_to_cpu(i32 %86)
  %88 = icmp ne i64 %83, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %79
  br label %177

90:                                               ; preds = %79, %75, %69
  %91 = load %struct.inode*, %struct.inode** %8, align 8
  %92 = call i64 @ocfs2_is_refcount_inode(%struct.inode* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %108, label %94

94:                                               ; preds = %90
  %95 = load %struct.inode*, %struct.inode** %11, align 8
  %96 = call i64 @ocfs2_is_refcount_inode(%struct.inode* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %108, label %98

98:                                               ; preds = %94
  %99 = load %struct.inode*, %struct.inode** %8, align 8
  %100 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %101 = call i64 @ocfs2_create_refcount_tree(%struct.inode* %99, %struct.buffer_head* %100)
  store i64 %101, i64* %19, align 8
  %102 = load i64, i64* %19, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %98
  %105 = load i64, i64* %19, align 8
  %106 = call i32 @mlog_errno(i64 %105)
  br label %177

107:                                              ; preds = %98
  br label %108

108:                                              ; preds = %107, %94, %90
  %109 = load %struct.inode*, %struct.inode** %8, align 8
  %110 = call i64 @ocfs2_is_refcount_inode(%struct.inode* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %126, label %112

112:                                              ; preds = %108
  %113 = load %struct.inode*, %struct.inode** %8, align 8
  %114 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %115 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %18, align 8
  %116 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i64 @le64_to_cpu(i32 %117)
  %119 = call i64 @ocfs2_set_refcount_tree(%struct.inode* %113, %struct.buffer_head* %114, i64 %118)
  store i64 %119, i64* %19, align 8
  %120 = load i64, i64* %19, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %112
  %123 = load i64, i64* %19, align 8
  %124 = call i32 @mlog_errno(i64 %123)
  br label %177

125:                                              ; preds = %112
  br label %126

126:                                              ; preds = %125, %108
  %127 = load %struct.inode*, %struct.inode** %11, align 8
  %128 = call i64 @ocfs2_is_refcount_inode(%struct.inode* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %144, label %130

130:                                              ; preds = %126
  %131 = load %struct.inode*, %struct.inode** %11, align 8
  %132 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %133 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %17, align 8
  %134 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i64 @le64_to_cpu(i32 %135)
  %137 = call i64 @ocfs2_set_refcount_tree(%struct.inode* %131, %struct.buffer_head* %132, i64 %136)
  store i64 %137, i64* %19, align 8
  %138 = load i64, i64* %19, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %130
  %141 = load i64, i64* %19, align 8
  %142 = call i32 @mlog_errno(i64 %141)
  br label %177

143:                                              ; preds = %130
  br label %144

144:                                              ; preds = %143, %126
  %145 = load %struct.inode*, %struct.inode** %11, align 8
  %146 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %145)
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @OCFS2_INLINE_DATA_FL, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %162

152:                                              ; preds = %144
  %153 = load %struct.inode*, %struct.inode** %11, align 8
  %154 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %155 = call i64 @ocfs2_convert_inline_data_to_extents(%struct.inode* %153, %struct.buffer_head* %154)
  store i64 %155, i64* %19, align 8
  %156 = load i64, i64* %19, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %152
  %159 = load i64, i64* %19, align 8
  %160 = call i32 @mlog_errno(i64 %159)
  br label %177

161:                                              ; preds = %152
  br label %162

162:                                              ; preds = %161, %144
  %163 = load %struct.inode*, %struct.inode** %8, align 8
  %164 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %165 = load i64, i64* %10, align 8
  %166 = load %struct.inode*, %struct.inode** %11, align 8
  %167 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %168 = load i64, i64* %13, align 8
  %169 = load i64, i64* %14, align 8
  %170 = call i64 @ocfs2_reflink_remap_extent(%struct.inode* %163, %struct.buffer_head* %164, i64 %165, %struct.inode* %166, %struct.buffer_head* %167, i64 %168, i64 %169, %struct.ocfs2_cached_dealloc_ctxt* %15)
  store i64 %170, i64* %19, align 8
  %171 = load i64, i64* %19, align 8
  %172 = icmp slt i64 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %162
  %174 = load i64, i64* %19, align 8
  %175 = call i32 @mlog_errno(i64 %174)
  br label %177

176:                                              ; preds = %162
  br label %177

177:                                              ; preds = %176, %173, %158, %140, %122, %104, %89, %68
  %178 = call i64 @ocfs2_dealloc_has_cluster(%struct.ocfs2_cached_dealloc_ctxt* %15)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %185

180:                                              ; preds = %177
  %181 = load %struct.ocfs2_super*, %struct.ocfs2_super** %16, align 8
  %182 = call i32 @ocfs2_schedule_truncate_log_flush(%struct.ocfs2_super* %181, i32 1)
  %183 = load %struct.ocfs2_super*, %struct.ocfs2_super** %16, align 8
  %184 = call i32 @ocfs2_run_deallocs(%struct.ocfs2_super* %183, %struct.ocfs2_cached_dealloc_ctxt* %15)
  br label %185

185:                                              ; preds = %180, %177
  %186 = load i64, i64* %19, align 8
  ret i64 %186
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @ocfs2_init_dealloc_ctxt(%struct.ocfs2_cached_dealloc_ctxt*) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local %struct.TYPE_2__* @OCFS2_I(%struct.inode*) #1

declare dso_local i64 @ocfs2_duplicate_inline_data(%struct.inode*, %struct.buffer_head*, %struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @mlog_errno(i64) #1

declare dso_local i64 @ocfs2_is_refcount_inode(%struct.inode*) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i64 @ocfs2_create_refcount_tree(%struct.inode*, %struct.buffer_head*) #1

declare dso_local i64 @ocfs2_set_refcount_tree(%struct.inode*, %struct.buffer_head*, i64) #1

declare dso_local i64 @ocfs2_convert_inline_data_to_extents(%struct.inode*, %struct.buffer_head*) #1

declare dso_local i64 @ocfs2_reflink_remap_extent(%struct.inode*, %struct.buffer_head*, i64, %struct.inode*, %struct.buffer_head*, i64, i64, %struct.ocfs2_cached_dealloc_ctxt*) #1

declare dso_local i64 @ocfs2_dealloc_has_cluster(%struct.ocfs2_cached_dealloc_ctxt*) #1

declare dso_local i32 @ocfs2_schedule_truncate_log_flush(%struct.ocfs2_super*, i32) #1

declare dso_local i32 @ocfs2_run_deallocs(%struct.ocfs2_super*, %struct.ocfs2_cached_dealloc_ctxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
