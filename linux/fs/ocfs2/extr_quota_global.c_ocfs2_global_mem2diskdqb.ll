; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_quota_global.c_ocfs2_global_mem2diskdqb.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_quota_global.c_ocfs2_global_mem2diskdqb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dquot = type { i32, %struct.mem_dqblk }
%struct.mem_dqblk = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ocfs2_global_disk_dqblk = type { i64, i64, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_2__ = type { i32 }

@init_user_ns = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.dquot*)* @ocfs2_global_mem2diskdqb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_global_mem2diskdqb(i8* %0, %struct.dquot* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.dquot*, align 8
  %5 = alloca %struct.ocfs2_global_disk_dqblk*, align 8
  %6 = alloca %struct.mem_dqblk*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.dquot* %1, %struct.dquot** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.ocfs2_global_disk_dqblk*
  store %struct.ocfs2_global_disk_dqblk* %8, %struct.ocfs2_global_disk_dqblk** %5, align 8
  %9 = load %struct.dquot*, %struct.dquot** %4, align 8
  %10 = getelementptr inbounds %struct.dquot, %struct.dquot* %9, i32 0, i32 1
  store %struct.mem_dqblk* %10, %struct.mem_dqblk** %6, align 8
  %11 = load %struct.dquot*, %struct.dquot** %4, align 8
  %12 = getelementptr inbounds %struct.dquot, %struct.dquot* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @from_kqid(i32* @init_user_ns, i32 %13)
  %15 = call i8* @cpu_to_le32(i32 %14)
  %16 = load %struct.ocfs2_global_disk_dqblk*, %struct.ocfs2_global_disk_dqblk** %5, align 8
  %17 = getelementptr inbounds %struct.ocfs2_global_disk_dqblk, %struct.ocfs2_global_disk_dqblk* %16, i32 0, i32 11
  store i8* %15, i8** %17, align 8
  %18 = load %struct.dquot*, %struct.dquot** %4, align 8
  %19 = call %struct.TYPE_2__* @OCFS2_DQUOT(%struct.dquot* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i8* @cpu_to_le32(i32 %21)
  %23 = load %struct.ocfs2_global_disk_dqblk*, %struct.ocfs2_global_disk_dqblk** %5, align 8
  %24 = getelementptr inbounds %struct.ocfs2_global_disk_dqblk, %struct.ocfs2_global_disk_dqblk* %23, i32 0, i32 10
  store i8* %22, i8** %24, align 8
  %25 = load %struct.mem_dqblk*, %struct.mem_dqblk** %6, align 8
  %26 = getelementptr inbounds %struct.mem_dqblk, %struct.mem_dqblk* %25, i32 0, i32 7
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @cpu_to_le64(i32 %27)
  %29 = load %struct.ocfs2_global_disk_dqblk*, %struct.ocfs2_global_disk_dqblk** %5, align 8
  %30 = getelementptr inbounds %struct.ocfs2_global_disk_dqblk, %struct.ocfs2_global_disk_dqblk* %29, i32 0, i32 9
  store i8* %28, i8** %30, align 8
  %31 = load %struct.mem_dqblk*, %struct.mem_dqblk** %6, align 8
  %32 = getelementptr inbounds %struct.mem_dqblk, %struct.mem_dqblk* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @cpu_to_le64(i32 %33)
  %35 = load %struct.ocfs2_global_disk_dqblk*, %struct.ocfs2_global_disk_dqblk** %5, align 8
  %36 = getelementptr inbounds %struct.ocfs2_global_disk_dqblk, %struct.ocfs2_global_disk_dqblk* %35, i32 0, i32 8
  store i8* %34, i8** %36, align 8
  %37 = load %struct.mem_dqblk*, %struct.mem_dqblk** %6, align 8
  %38 = getelementptr inbounds %struct.mem_dqblk, %struct.mem_dqblk* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = call i8* @cpu_to_le64(i32 %39)
  %41 = load %struct.ocfs2_global_disk_dqblk*, %struct.ocfs2_global_disk_dqblk** %5, align 8
  %42 = getelementptr inbounds %struct.ocfs2_global_disk_dqblk, %struct.ocfs2_global_disk_dqblk* %41, i32 0, i32 7
  store i8* %40, i8** %42, align 8
  %43 = load %struct.mem_dqblk*, %struct.mem_dqblk** %6, align 8
  %44 = getelementptr inbounds %struct.mem_dqblk, %struct.mem_dqblk* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @cpu_to_le64(i32 %45)
  %47 = load %struct.ocfs2_global_disk_dqblk*, %struct.ocfs2_global_disk_dqblk** %5, align 8
  %48 = getelementptr inbounds %struct.ocfs2_global_disk_dqblk, %struct.ocfs2_global_disk_dqblk* %47, i32 0, i32 6
  store i8* %46, i8** %48, align 8
  %49 = load %struct.mem_dqblk*, %struct.mem_dqblk** %6, align 8
  %50 = getelementptr inbounds %struct.mem_dqblk, %struct.mem_dqblk* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call i8* @cpu_to_le64(i32 %51)
  %53 = load %struct.ocfs2_global_disk_dqblk*, %struct.ocfs2_global_disk_dqblk** %5, align 8
  %54 = getelementptr inbounds %struct.ocfs2_global_disk_dqblk, %struct.ocfs2_global_disk_dqblk* %53, i32 0, i32 5
  store i8* %52, i8** %54, align 8
  %55 = load %struct.mem_dqblk*, %struct.mem_dqblk** %6, align 8
  %56 = getelementptr inbounds %struct.mem_dqblk, %struct.mem_dqblk* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @cpu_to_le64(i32 %57)
  %59 = load %struct.ocfs2_global_disk_dqblk*, %struct.ocfs2_global_disk_dqblk** %5, align 8
  %60 = getelementptr inbounds %struct.ocfs2_global_disk_dqblk, %struct.ocfs2_global_disk_dqblk* %59, i32 0, i32 4
  store i8* %58, i8** %60, align 8
  %61 = load %struct.mem_dqblk*, %struct.mem_dqblk** %6, align 8
  %62 = getelementptr inbounds %struct.mem_dqblk, %struct.mem_dqblk* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @cpu_to_le64(i32 %63)
  %65 = load %struct.ocfs2_global_disk_dqblk*, %struct.ocfs2_global_disk_dqblk** %5, align 8
  %66 = getelementptr inbounds %struct.ocfs2_global_disk_dqblk, %struct.ocfs2_global_disk_dqblk* %65, i32 0, i32 3
  store i8* %64, i8** %66, align 8
  %67 = load %struct.mem_dqblk*, %struct.mem_dqblk** %6, align 8
  %68 = getelementptr inbounds %struct.mem_dqblk, %struct.mem_dqblk* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i8* @cpu_to_le64(i32 %69)
  %71 = load %struct.ocfs2_global_disk_dqblk*, %struct.ocfs2_global_disk_dqblk** %5, align 8
  %72 = getelementptr inbounds %struct.ocfs2_global_disk_dqblk, %struct.ocfs2_global_disk_dqblk* %71, i32 0, i32 2
  store i8* %70, i8** %72, align 8
  %73 = load %struct.ocfs2_global_disk_dqblk*, %struct.ocfs2_global_disk_dqblk** %5, align 8
  %74 = getelementptr inbounds %struct.ocfs2_global_disk_dqblk, %struct.ocfs2_global_disk_dqblk* %73, i32 0, i32 0
  store i64 0, i64* %74, align 8
  %75 = load %struct.ocfs2_global_disk_dqblk*, %struct.ocfs2_global_disk_dqblk** %5, align 8
  %76 = getelementptr inbounds %struct.ocfs2_global_disk_dqblk, %struct.ocfs2_global_disk_dqblk* %75, i32 0, i32 1
  store i64 0, i64* %76, align 8
  ret void
}

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @from_kqid(i32*, i32) #1

declare dso_local %struct.TYPE_2__* @OCFS2_DQUOT(%struct.dquot*) #1

declare dso_local i8* @cpu_to_le64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
