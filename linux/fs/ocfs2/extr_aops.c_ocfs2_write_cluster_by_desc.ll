; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_aops.c_ocfs2_write_cluster_by_desc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_aops.c_ocfs2_write_cluster_by_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ocfs2_alloc_context = type { i32 }
%struct.ocfs2_write_ctxt = type { i32, %struct.ocfs2_write_cluster_desc* }
%struct.ocfs2_write_cluster_desc = type { i32, i32, i32, i32, i32 }
%struct.ocfs2_super = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.address_space*, %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context*, %struct.ocfs2_write_ctxt*, i32, i32)* @ocfs2_write_cluster_by_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_write_cluster_by_desc(%struct.address_space* %0, %struct.ocfs2_alloc_context* %1, %struct.ocfs2_alloc_context* %2, %struct.ocfs2_write_ctxt* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.address_space*, align 8
  %8 = alloca %struct.ocfs2_alloc_context*, align 8
  %9 = alloca %struct.ocfs2_alloc_context*, align 8
  %10 = alloca %struct.ocfs2_write_ctxt*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ocfs2_write_cluster_desc*, align 8
  %18 = alloca %struct.ocfs2_super*, align 8
  store %struct.address_space* %0, %struct.address_space** %7, align 8
  store %struct.ocfs2_alloc_context* %1, %struct.ocfs2_alloc_context** %8, align 8
  store %struct.ocfs2_alloc_context* %2, %struct.ocfs2_alloc_context** %9, align 8
  store %struct.ocfs2_write_ctxt* %3, %struct.ocfs2_write_ctxt** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  store i32 %19, i32* %16, align 4
  %20 = load %struct.address_space*, %struct.address_space** %7, align 8
  %21 = getelementptr inbounds %struct.address_space, %struct.address_space* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.ocfs2_super* @OCFS2_SB(i32 %24)
  store %struct.ocfs2_super* %25, %struct.ocfs2_super** %18, align 8
  store i32 0, i32* %14, align 4
  br label %26

26:                                               ; preds = %93, %6
  %27 = load i32, i32* %14, align 4
  %28 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %10, align 8
  %29 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %96

32:                                               ; preds = %26
  %33 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %10, align 8
  %34 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %33, i32 0, i32 1
  %35 = load %struct.ocfs2_write_cluster_desc*, %struct.ocfs2_write_cluster_desc** %34, align 8
  %36 = load i32, i32* %14, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.ocfs2_write_cluster_desc, %struct.ocfs2_write_cluster_desc* %35, i64 %37
  store %struct.ocfs2_write_cluster_desc* %38, %struct.ocfs2_write_cluster_desc** %17, align 8
  %39 = load i32, i32* %12, align 4
  store i32 %39, i32* %16, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load %struct.ocfs2_super*, %struct.ocfs2_super** %18, align 8
  %42 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sub nsw i32 %43, 1
  %45 = and i32 %40, %44
  store i32 %45, i32* %15, align 4
  %46 = load i32, i32* %15, align 4
  %47 = load i32, i32* %16, align 4
  %48 = add i32 %46, %47
  %49 = load %struct.ocfs2_super*, %struct.ocfs2_super** %18, align 8
  %50 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ugt i32 %48, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %32
  %54 = load %struct.ocfs2_super*, %struct.ocfs2_super** %18, align 8
  %55 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %15, align 4
  %58 = sub nsw i32 %56, %57
  store i32 %58, i32* %16, align 4
  br label %59

59:                                               ; preds = %53, %32
  %60 = load %struct.address_space*, %struct.address_space** %7, align 8
  %61 = load %struct.ocfs2_write_cluster_desc*, %struct.ocfs2_write_cluster_desc** %17, align 8
  %62 = getelementptr inbounds %struct.ocfs2_write_cluster_desc, %struct.ocfs2_write_cluster_desc* %61, i32 0, i32 4
  %63 = load %struct.ocfs2_write_cluster_desc*, %struct.ocfs2_write_cluster_desc** %17, align 8
  %64 = getelementptr inbounds %struct.ocfs2_write_cluster_desc, %struct.ocfs2_write_cluster_desc* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ocfs2_write_cluster_desc*, %struct.ocfs2_write_cluster_desc** %17, align 8
  %67 = getelementptr inbounds %struct.ocfs2_write_cluster_desc, %struct.ocfs2_write_cluster_desc* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ocfs2_write_cluster_desc*, %struct.ocfs2_write_cluster_desc** %17, align 8
  %70 = getelementptr inbounds %struct.ocfs2_write_cluster_desc, %struct.ocfs2_write_cluster_desc* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %8, align 8
  %73 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %9, align 8
  %74 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %10, align 8
  %75 = load %struct.ocfs2_write_cluster_desc*, %struct.ocfs2_write_cluster_desc** %17, align 8
  %76 = getelementptr inbounds %struct.ocfs2_write_cluster_desc, %struct.ocfs2_write_cluster_desc* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %16, align 4
  %80 = call i32 @ocfs2_write_cluster(%struct.address_space* %60, i32* %62, i32 %65, i32 %68, i32 %71, %struct.ocfs2_alloc_context* %72, %struct.ocfs2_alloc_context* %73, %struct.ocfs2_write_ctxt* %74, i32 %77, i32 %78, i32 %79)
  store i32 %80, i32* %13, align 4
  %81 = load i32, i32* %13, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %59
  %84 = load i32, i32* %13, align 4
  %85 = call i32 @mlog_errno(i32 %84)
  br label %97

86:                                               ; preds = %59
  %87 = load i32, i32* %16, align 4
  %88 = load i32, i32* %12, align 4
  %89 = sub i32 %88, %87
  store i32 %89, i32* %12, align 4
  %90 = load i32, i32* %16, align 4
  %91 = load i32, i32* %11, align 4
  %92 = add i32 %91, %90
  store i32 %92, i32* %11, align 4
  br label %93

93:                                               ; preds = %86
  %94 = load i32, i32* %14, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %14, align 4
  br label %26

96:                                               ; preds = %26
  store i32 0, i32* %13, align 4
  br label %97

97:                                               ; preds = %96, %83
  %98 = load i32, i32* %13, align 4
  ret i32 %98
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @ocfs2_write_cluster(%struct.address_space*, i32*, i32, i32, i32, %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context*, %struct.ocfs2_write_ctxt*, i32, i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
