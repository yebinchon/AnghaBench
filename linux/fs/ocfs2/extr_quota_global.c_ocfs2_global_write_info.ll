; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_quota_global.c_ocfs2_global_write_info.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_quota_global.c_ocfs2_global_write_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.quota_info = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ocfs2_mem_dqinfo* }
%struct.ocfs2_mem_dqinfo = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_global_write_info(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.quota_info*, align 8
  %7 = alloca %struct.ocfs2_mem_dqinfo*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.super_block*, %struct.super_block** %3, align 8
  %9 = call %struct.quota_info* @sb_dqopt(%struct.super_block* %8)
  store %struct.quota_info* %9, %struct.quota_info** %6, align 8
  %10 = load %struct.quota_info*, %struct.quota_info** %6, align 8
  %11 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %16, align 8
  store %struct.ocfs2_mem_dqinfo* %17, %struct.ocfs2_mem_dqinfo** %7, align 8
  %18 = load %struct.quota_info*, %struct.quota_info** %6, align 8
  %19 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %18, i32 0, i32 0
  %20 = call i32 @down_write(i32* %19)
  %21 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %7, align 8
  %22 = call i32 @ocfs2_qinfo_lock(%struct.ocfs2_mem_dqinfo* %21, i32 1)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  br label %32

26:                                               ; preds = %2
  %27 = load %struct.super_block*, %struct.super_block** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @__ocfs2_global_write_info(%struct.super_block* %27, i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %7, align 8
  %31 = call i32 @ocfs2_qinfo_unlock(%struct.ocfs2_mem_dqinfo* %30, i32 1)
  br label %32

32:                                               ; preds = %26, %25
  %33 = load %struct.quota_info*, %struct.quota_info** %6, align 8
  %34 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %33, i32 0, i32 0
  %35 = call i32 @up_write(i32* %34)
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local %struct.quota_info* @sb_dqopt(%struct.super_block*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @ocfs2_qinfo_lock(%struct.ocfs2_mem_dqinfo*, i32) #1

declare dso_local i32 @__ocfs2_global_write_info(%struct.super_block*, i32) #1

declare dso_local i32 @ocfs2_qinfo_unlock(%struct.ocfs2_mem_dqinfo*, i32) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
