; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_suballoc.c_ocfs2_reserve_clusters_with_limit.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_suballoc.c_ocfs2_reserve_clusters_with_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.ocfs2_alloc_context = type { i32*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@ALLOC_GROUPS_FROM_GLOBAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, i32, i32, i32, %struct.ocfs2_alloc_context**)* @ocfs2_reserve_clusters_with_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_reserve_clusters_with_limit(%struct.ocfs2_super* %0, i32 %1, i32 %2, i32 %3, %struct.ocfs2_alloc_context** %4) #0 {
  %6 = alloca %struct.ocfs2_super*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ocfs2_alloc_context**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.ocfs2_alloc_context** %4, %struct.ocfs2_alloc_context*** %10, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.ocfs2_alloc_context* @kzalloc(i32 16, i32 %14)
  %16 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %10, align 8
  store %struct.ocfs2_alloc_context* %15, %struct.ocfs2_alloc_context** %16, align 8
  %17 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %10, align 8
  %18 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %17, align 8
  %19 = icmp ne %struct.ocfs2_alloc_context* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %5
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = call i32 @mlog_errno(i32 %23)
  br label %155

25:                                               ; preds = %5
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %10, align 8
  %28 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %27, align 8
  %29 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %28, i32 0, i32 2
  store i32 %26, i32* %29, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %10, align 8
  %32 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %31, align 8
  %33 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %32, i32 0, i32 1
  store i32 %30, i32* %33, align 8
  %34 = load i32, i32* @ENOSPC, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @ALLOC_GROUPS_FROM_GLOBAL, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %62, label %40

40:                                               ; preds = %25
  %41 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i64 @ocfs2_alloc_should_use_local(%struct.ocfs2_super* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %62

45:                                               ; preds = %40
  %46 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %10, align 8
  %49 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %48, align 8
  %50 = call i32 @ocfs2_reserve_local_alloc_bits(%struct.ocfs2_super* %46, i32 %47, %struct.ocfs2_alloc_context* %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %45
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @ENOSPC, align 4
  %56 = sub nsw i32 0, %55
  %57 = icmp ne i32 %54, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @mlog_errno(i32 %59)
  br label %155

61:                                               ; preds = %53, %45
  br label %62

62:                                               ; preds = %61, %40, %25
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* @ENOSPC, align 4
  %65 = sub nsw i32 0, %64
  %66 = icmp eq i32 %63, %65
  br i1 %66, label %67, label %154

67:                                               ; preds = %62
  br label %68

68:                                               ; preds = %96, %67
  %69 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %70 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %10, align 8
  %71 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %70, align 8
  %72 = call i32 @ocfs2_reserve_cluster_bitmap_bits(%struct.ocfs2_super* %69, %struct.ocfs2_alloc_context* %71)
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* @ENOSPC, align 4
  %75 = sub nsw i32 0, %74
  %76 = icmp eq i32 %73, %75
  br i1 %76, label %77, label %141

77:                                               ; preds = %68
  %78 = load i32, i32* %13, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %141, label %80

80:                                               ; preds = %77
  store i32 1, i32* %13, align 4
  %81 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %10, align 8
  %82 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %81, align 8
  %83 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @ocfs2_inode_unlock(i32* %84, i32 1)
  %86 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %10, align 8
  %87 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %86, align 8
  %88 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @inode_unlock(i32* %89)
  %91 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @ocfs2_try_to_free_truncate_log(%struct.ocfs2_super* %91, i32 %92)
  store i32 %93, i32* %12, align 4
  %94 = load i32, i32* %12, align 4
  %95 = icmp eq i32 %94, 1
  br i1 %95, label %96, label %105

96:                                               ; preds = %80
  %97 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %10, align 8
  %98 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %97, align 8
  %99 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = call i32 @iput(i32* %100)
  %102 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %10, align 8
  %103 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %102, align 8
  %104 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %103, i32 0, i32 0
  store i32* null, i32** %104, align 8
  br label %68

105:                                              ; preds = %80
  %106 = load i32, i32* %12, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = load i32, i32* %12, align 4
  %110 = call i32 @mlog_errno(i32 %109)
  br label %111

111:                                              ; preds = %108, %105
  %112 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %10, align 8
  %113 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %112, align 8
  %114 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = call i32 @inode_lock(i32* %115)
  %117 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %10, align 8
  %118 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %117, align 8
  %119 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = call i32 @ocfs2_inode_lock(i32* %120, i32* null, i32 1)
  store i32 %121, i32* %12, align 4
  %122 = load i32, i32* %12, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %140

124:                                              ; preds = %111
  %125 = load i32, i32* %12, align 4
  %126 = call i32 @mlog_errno(i32 %125)
  %127 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %10, align 8
  %128 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %127, align 8
  %129 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = call i32 @inode_unlock(i32* %130)
  %132 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %10, align 8
  %133 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %132, align 8
  %134 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = call i32 @iput(i32* %135)
  %137 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %10, align 8
  %138 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %137, align 8
  %139 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %138, i32 0, i32 0
  store i32* null, i32** %139, align 8
  br label %155

140:                                              ; preds = %111
  br label %141

141:                                              ; preds = %140, %77, %68
  %142 = load i32, i32* %11, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %153

144:                                              ; preds = %141
  %145 = load i32, i32* %11, align 4
  %146 = load i32, i32* @ENOSPC, align 4
  %147 = sub nsw i32 0, %146
  %148 = icmp ne i32 %145, %147
  br i1 %148, label %149, label %152

149:                                              ; preds = %144
  %150 = load i32, i32* %11, align 4
  %151 = call i32 @mlog_errno(i32 %150)
  br label %152

152:                                              ; preds = %149, %144
  br label %155

153:                                              ; preds = %141
  br label %154

154:                                              ; preds = %153, %62
  store i32 0, i32* %11, align 4
  br label %155

155:                                              ; preds = %154, %152, %124, %58, %20
  %156 = load i32, i32* %11, align 4
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %158, label %167

158:                                              ; preds = %155
  %159 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %10, align 8
  %160 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %159, align 8
  %161 = icmp ne %struct.ocfs2_alloc_context* %160, null
  br i1 %161, label %162, label %167

162:                                              ; preds = %158
  %163 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %10, align 8
  %164 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %163, align 8
  %165 = call i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context* %164)
  %166 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %10, align 8
  store %struct.ocfs2_alloc_context* null, %struct.ocfs2_alloc_context** %166, align 8
  br label %167

167:                                              ; preds = %162, %158, %155
  %168 = load i32, i32* %11, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %167
  %171 = load i32, i32* %11, align 4
  %172 = call i32 @mlog_errno(i32 %171)
  br label %173

173:                                              ; preds = %170, %167
  %174 = load i32, i32* %11, align 4
  ret i32 %174
}

declare dso_local %struct.ocfs2_alloc_context* @kzalloc(i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i64 @ocfs2_alloc_should_use_local(%struct.ocfs2_super*, i32) #1

declare dso_local i32 @ocfs2_reserve_local_alloc_bits(%struct.ocfs2_super*, i32, %struct.ocfs2_alloc_context*) #1

declare dso_local i32 @ocfs2_reserve_cluster_bitmap_bits(%struct.ocfs2_super*, %struct.ocfs2_alloc_context*) #1

declare dso_local i32 @ocfs2_inode_unlock(i32*, i32) #1

declare dso_local i32 @inode_unlock(i32*) #1

declare dso_local i32 @ocfs2_try_to_free_truncate_log(%struct.ocfs2_super*, i32) #1

declare dso_local i32 @iput(i32*) #1

declare dso_local i32 @inode_lock(i32*) #1

declare dso_local i32 @ocfs2_inode_lock(i32*, i32*, i32) #1

declare dso_local i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
