; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_set_qinfo_lvb.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_set_qinfo_lvb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_lock_res = type { i32 }
%struct.ocfs2_qinfo_lvb = type { i8*, i8*, i8*, i8*, i8*, i8*, i32 }
%struct.ocfs2_mem_dqinfo = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.mem_dqinfo = type { i32, i32 }

@OCFS2_QINFO_LVB_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_lock_res*)* @ocfs2_set_qinfo_lvb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_set_qinfo_lvb(%struct.ocfs2_lock_res* %0) #0 {
  %2 = alloca %struct.ocfs2_lock_res*, align 8
  %3 = alloca %struct.ocfs2_qinfo_lvb*, align 8
  %4 = alloca %struct.ocfs2_mem_dqinfo*, align 8
  %5 = alloca %struct.mem_dqinfo*, align 8
  store %struct.ocfs2_lock_res* %0, %struct.ocfs2_lock_res** %2, align 8
  %6 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %7 = call %struct.ocfs2_mem_dqinfo* @ocfs2_lock_res_qinfo(%struct.ocfs2_lock_res* %6)
  store %struct.ocfs2_mem_dqinfo* %7, %struct.ocfs2_mem_dqinfo** %4, align 8
  %8 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %4, align 8
  %9 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %4, align 8
  %13 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.mem_dqinfo* @sb_dqinfo(i32 %11, i32 %15)
  store %struct.mem_dqinfo* %16, %struct.mem_dqinfo** %5, align 8
  %17 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %18 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %17, i32 0, i32 0
  %19 = call %struct.ocfs2_qinfo_lvb* @ocfs2_dlm_lvb(i32* %18)
  store %struct.ocfs2_qinfo_lvb* %19, %struct.ocfs2_qinfo_lvb** %3, align 8
  %20 = load i32, i32* @OCFS2_QINFO_LVB_VERSION, align 4
  %21 = load %struct.ocfs2_qinfo_lvb*, %struct.ocfs2_qinfo_lvb** %3, align 8
  %22 = getelementptr inbounds %struct.ocfs2_qinfo_lvb, %struct.ocfs2_qinfo_lvb* %21, i32 0, i32 6
  store i32 %20, i32* %22, align 8
  %23 = load %struct.mem_dqinfo*, %struct.mem_dqinfo** %5, align 8
  %24 = getelementptr inbounds %struct.mem_dqinfo, %struct.mem_dqinfo* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @cpu_to_be32(i32 %25)
  %27 = load %struct.ocfs2_qinfo_lvb*, %struct.ocfs2_qinfo_lvb** %3, align 8
  %28 = getelementptr inbounds %struct.ocfs2_qinfo_lvb, %struct.ocfs2_qinfo_lvb* %27, i32 0, i32 5
  store i8* %26, i8** %28, align 8
  %29 = load %struct.mem_dqinfo*, %struct.mem_dqinfo** %5, align 8
  %30 = getelementptr inbounds %struct.mem_dqinfo, %struct.mem_dqinfo* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @cpu_to_be32(i32 %31)
  %33 = load %struct.ocfs2_qinfo_lvb*, %struct.ocfs2_qinfo_lvb** %3, align 8
  %34 = getelementptr inbounds %struct.ocfs2_qinfo_lvb, %struct.ocfs2_qinfo_lvb* %33, i32 0, i32 4
  store i8* %32, i8** %34, align 8
  %35 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %4, align 8
  %36 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @cpu_to_be32(i32 %37)
  %39 = load %struct.ocfs2_qinfo_lvb*, %struct.ocfs2_qinfo_lvb** %3, align 8
  %40 = getelementptr inbounds %struct.ocfs2_qinfo_lvb, %struct.ocfs2_qinfo_lvb* %39, i32 0, i32 3
  store i8* %38, i8** %40, align 8
  %41 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %4, align 8
  %42 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @cpu_to_be32(i32 %44)
  %46 = load %struct.ocfs2_qinfo_lvb*, %struct.ocfs2_qinfo_lvb** %3, align 8
  %47 = getelementptr inbounds %struct.ocfs2_qinfo_lvb, %struct.ocfs2_qinfo_lvb* %46, i32 0, i32 2
  store i8* %45, i8** %47, align 8
  %48 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %4, align 8
  %49 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i8* @cpu_to_be32(i32 %51)
  %53 = load %struct.ocfs2_qinfo_lvb*, %struct.ocfs2_qinfo_lvb** %3, align 8
  %54 = getelementptr inbounds %struct.ocfs2_qinfo_lvb, %struct.ocfs2_qinfo_lvb* %53, i32 0, i32 1
  store i8* %52, i8** %54, align 8
  %55 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %4, align 8
  %56 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i8* @cpu_to_be32(i32 %58)
  %60 = load %struct.ocfs2_qinfo_lvb*, %struct.ocfs2_qinfo_lvb** %3, align 8
  %61 = getelementptr inbounds %struct.ocfs2_qinfo_lvb, %struct.ocfs2_qinfo_lvb* %60, i32 0, i32 0
  store i8* %59, i8** %61, align 8
  ret void
}

declare dso_local %struct.ocfs2_mem_dqinfo* @ocfs2_lock_res_qinfo(%struct.ocfs2_lock_res*) #1

declare dso_local %struct.mem_dqinfo* @sb_dqinfo(i32, i32) #1

declare dso_local %struct.ocfs2_qinfo_lvb* @ocfs2_dlm_lvb(i32*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
