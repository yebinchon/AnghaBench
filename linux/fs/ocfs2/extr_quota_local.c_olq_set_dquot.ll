; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_quota_local.c_olq_set_dquot.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_quota_local.c_olq_set_dquot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i64 }
%struct.ocfs2_dquot = type { %struct.TYPE_4__, i64, i64, i32 }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__, %struct.super_block* }
%struct.TYPE_3__ = type { i64, i64 }
%struct.super_block = type { i32 }
%struct.ocfs2_local_disk_dqblk = type { i8*, i8*, i8* }

@init_user_ns = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buffer_head*, i8*)* @olq_set_dquot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @olq_set_dquot(%struct.buffer_head* %0, i8* %1) #0 {
  %3 = alloca %struct.buffer_head*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ocfs2_dquot*, align 8
  %6 = alloca %struct.ocfs2_local_disk_dqblk*, align 8
  %7 = alloca %struct.super_block*, align 8
  store %struct.buffer_head* %0, %struct.buffer_head** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.ocfs2_dquot*
  store %struct.ocfs2_dquot* %9, %struct.ocfs2_dquot** %5, align 8
  %10 = load %struct.ocfs2_dquot*, %struct.ocfs2_dquot** %5, align 8
  %11 = getelementptr inbounds %struct.ocfs2_dquot, %struct.ocfs2_dquot* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 3
  %13 = load %struct.super_block*, %struct.super_block** %12, align 8
  store %struct.super_block* %13, %struct.super_block** %7, align 8
  %14 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %15 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.super_block*, %struct.super_block** %7, align 8
  %18 = load %struct.ocfs2_dquot*, %struct.ocfs2_dquot** %5, align 8
  %19 = getelementptr inbounds %struct.ocfs2_dquot, %struct.ocfs2_dquot* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @ol_dqblk_block_offset(%struct.super_block* %17, i32 %20)
  %22 = add nsw i64 %16, %21
  %23 = inttoptr i64 %22 to %struct.ocfs2_local_disk_dqblk*
  store %struct.ocfs2_local_disk_dqblk* %23, %struct.ocfs2_local_disk_dqblk** %6, align 8
  %24 = load %struct.ocfs2_dquot*, %struct.ocfs2_dquot** %5, align 8
  %25 = getelementptr inbounds %struct.ocfs2_dquot, %struct.ocfs2_dquot* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @from_kqid(i32* @init_user_ns, i32 %27)
  %29 = call i8* @cpu_to_le64(i64 %28)
  %30 = load %struct.ocfs2_local_disk_dqblk*, %struct.ocfs2_local_disk_dqblk** %6, align 8
  %31 = getelementptr inbounds %struct.ocfs2_local_disk_dqblk, %struct.ocfs2_local_disk_dqblk* %30, i32 0, i32 2
  store i8* %29, i8** %31, align 8
  %32 = load %struct.ocfs2_dquot*, %struct.ocfs2_dquot** %5, align 8
  %33 = getelementptr inbounds %struct.ocfs2_dquot, %struct.ocfs2_dquot* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = call i32 @spin_lock(i32* %34)
  %36 = load %struct.ocfs2_dquot*, %struct.ocfs2_dquot** %5, align 8
  %37 = getelementptr inbounds %struct.ocfs2_dquot, %struct.ocfs2_dquot* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.ocfs2_dquot*, %struct.ocfs2_dquot** %5, align 8
  %42 = getelementptr inbounds %struct.ocfs2_dquot, %struct.ocfs2_dquot* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = sub nsw i64 %40, %43
  %45 = call i8* @cpu_to_le64(i64 %44)
  %46 = load %struct.ocfs2_local_disk_dqblk*, %struct.ocfs2_local_disk_dqblk** %6, align 8
  %47 = getelementptr inbounds %struct.ocfs2_local_disk_dqblk, %struct.ocfs2_local_disk_dqblk* %46, i32 0, i32 1
  store i8* %45, i8** %47, align 8
  %48 = load %struct.ocfs2_dquot*, %struct.ocfs2_dquot** %5, align 8
  %49 = getelementptr inbounds %struct.ocfs2_dquot, %struct.ocfs2_dquot* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.ocfs2_dquot*, %struct.ocfs2_dquot** %5, align 8
  %54 = getelementptr inbounds %struct.ocfs2_dquot, %struct.ocfs2_dquot* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = sub nsw i64 %52, %55
  %57 = call i8* @cpu_to_le64(i64 %56)
  %58 = load %struct.ocfs2_local_disk_dqblk*, %struct.ocfs2_local_disk_dqblk** %6, align 8
  %59 = getelementptr inbounds %struct.ocfs2_local_disk_dqblk, %struct.ocfs2_local_disk_dqblk* %58, i32 0, i32 0
  store i8* %57, i8** %59, align 8
  %60 = load %struct.ocfs2_dquot*, %struct.ocfs2_dquot** %5, align 8
  %61 = getelementptr inbounds %struct.ocfs2_dquot, %struct.ocfs2_dquot* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = call i32 @spin_unlock(i32* %62)
  %64 = load %struct.ocfs2_local_disk_dqblk*, %struct.ocfs2_local_disk_dqblk** %6, align 8
  %65 = getelementptr inbounds %struct.ocfs2_local_disk_dqblk, %struct.ocfs2_local_disk_dqblk* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = call i64 @le64_to_cpu(i8* %66)
  %68 = load %struct.ocfs2_local_disk_dqblk*, %struct.ocfs2_local_disk_dqblk** %6, align 8
  %69 = getelementptr inbounds %struct.ocfs2_local_disk_dqblk, %struct.ocfs2_local_disk_dqblk* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = call i64 @le64_to_cpu(i8* %70)
  %72 = load %struct.ocfs2_dquot*, %struct.ocfs2_dquot** %5, align 8
  %73 = getelementptr inbounds %struct.ocfs2_dquot, %struct.ocfs2_dquot* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i64 @from_kqid(i32* @init_user_ns, i32 %75)
  %77 = call i32 @trace_olq_set_dquot(i64 %67, i64 %71, i64 %76)
  ret void
}

declare dso_local i64 @ol_dqblk_block_offset(%struct.super_block*, i32) #1

declare dso_local i8* @cpu_to_le64(i64) #1

declare dso_local i64 @from_kqid(i32*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @trace_olq_set_dquot(i64, i64, i64) #1

declare dso_local i64 @le64_to_cpu(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
