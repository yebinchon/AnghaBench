; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_quota_global.c_ocfs2_alloc_dquot.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_quota_global.c_ocfs2_alloc_dquot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dquot = type { i32 }
%struct.super_block = type { i32 }
%struct.ocfs2_dquot = type { %struct.dquot }

@ocfs2_dquot_cachep = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dquot* (%struct.super_block*, i32)* @ocfs2_alloc_dquot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dquot* @ocfs2_alloc_dquot(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.dquot*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ocfs2_dquot*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @ocfs2_dquot_cachep, align 4
  %8 = load i32, i32* @GFP_NOFS, align 4
  %9 = call %struct.ocfs2_dquot* @kmem_cache_zalloc(i32 %7, i32 %8)
  store %struct.ocfs2_dquot* %9, %struct.ocfs2_dquot** %6, align 8
  %10 = load %struct.ocfs2_dquot*, %struct.ocfs2_dquot** %6, align 8
  %11 = icmp ne %struct.ocfs2_dquot* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.dquot* null, %struct.dquot** %3, align 8
  br label %16

13:                                               ; preds = %2
  %14 = load %struct.ocfs2_dquot*, %struct.ocfs2_dquot** %6, align 8
  %15 = getelementptr inbounds %struct.ocfs2_dquot, %struct.ocfs2_dquot* %14, i32 0, i32 0
  store %struct.dquot* %15, %struct.dquot** %3, align 8
  br label %16

16:                                               ; preds = %13, %12
  %17 = load %struct.dquot*, %struct.dquot** %3, align 8
  ret %struct.dquot* %17
}

declare dso_local %struct.ocfs2_dquot* @kmem_cache_zalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
