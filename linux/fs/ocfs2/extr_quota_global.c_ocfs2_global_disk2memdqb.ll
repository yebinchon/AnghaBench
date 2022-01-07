; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_quota_global.c_ocfs2_global_disk2memdqb.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_quota_global.c_ocfs2_global_disk2memdqb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dquot = type { i32, %struct.mem_dqblk }
%struct.mem_dqblk = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.ocfs2_global_disk_dqblk = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@DQ_LASTSET_B = common dso_local global i64 0, align 8
@QIF_ILIMITS_B = common dso_local global i64 0, align 8
@QIF_INODES_B = common dso_local global i64 0, align 8
@QIF_BLIMITS_B = common dso_local global i64 0, align 8
@QIF_SPACE_B = common dso_local global i64 0, align 8
@QIF_BTIME_B = common dso_local global i64 0, align 8
@QIF_ITIME_B = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dquot*, i8*)* @ocfs2_global_disk2memdqb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_global_disk2memdqb(%struct.dquot* %0, i8* %1) #0 {
  %3 = alloca %struct.dquot*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ocfs2_global_disk_dqblk*, align 8
  %6 = alloca %struct.mem_dqblk*, align 8
  store %struct.dquot* %0, %struct.dquot** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.ocfs2_global_disk_dqblk*
  store %struct.ocfs2_global_disk_dqblk* %8, %struct.ocfs2_global_disk_dqblk** %5, align 8
  %9 = load %struct.dquot*, %struct.dquot** %3, align 8
  %10 = getelementptr inbounds %struct.dquot, %struct.dquot* %9, i32 0, i32 1
  store %struct.mem_dqblk* %10, %struct.mem_dqblk** %6, align 8
  %11 = load i64, i64* @DQ_LASTSET_B, align 8
  %12 = load i64, i64* @QIF_ILIMITS_B, align 8
  %13 = add nsw i64 %11, %12
  %14 = load %struct.dquot*, %struct.dquot** %3, align 8
  %15 = getelementptr inbounds %struct.dquot, %struct.dquot* %14, i32 0, i32 0
  %16 = call i32 @test_bit(i64 %13, i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %31, label %18

18:                                               ; preds = %2
  %19 = load %struct.ocfs2_global_disk_dqblk*, %struct.ocfs2_global_disk_dqblk** %5, align 8
  %20 = getelementptr inbounds %struct.ocfs2_global_disk_dqblk, %struct.ocfs2_global_disk_dqblk* %19, i32 0, i32 8
  %21 = load i32, i32* %20, align 4
  %22 = call i8* @le64_to_cpu(i32 %21)
  %23 = load %struct.mem_dqblk*, %struct.mem_dqblk** %6, align 8
  %24 = getelementptr inbounds %struct.mem_dqblk, %struct.mem_dqblk* %23, i32 0, i32 7
  store i8* %22, i8** %24, align 8
  %25 = load %struct.ocfs2_global_disk_dqblk*, %struct.ocfs2_global_disk_dqblk** %5, align 8
  %26 = getelementptr inbounds %struct.ocfs2_global_disk_dqblk, %struct.ocfs2_global_disk_dqblk* %25, i32 0, i32 7
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @le64_to_cpu(i32 %27)
  %29 = load %struct.mem_dqblk*, %struct.mem_dqblk** %6, align 8
  %30 = getelementptr inbounds %struct.mem_dqblk, %struct.mem_dqblk* %29, i32 0, i32 6
  store i8* %28, i8** %30, align 8
  br label %31

31:                                               ; preds = %18, %2
  %32 = load i64, i64* @DQ_LASTSET_B, align 8
  %33 = load i64, i64* @QIF_INODES_B, align 8
  %34 = add nsw i64 %32, %33
  %35 = load %struct.dquot*, %struct.dquot** %3, align 8
  %36 = getelementptr inbounds %struct.dquot, %struct.dquot* %35, i32 0, i32 0
  %37 = call i32 @test_bit(i64 %34, i32* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %31
  %40 = load %struct.ocfs2_global_disk_dqblk*, %struct.ocfs2_global_disk_dqblk** %5, align 8
  %41 = getelementptr inbounds %struct.ocfs2_global_disk_dqblk, %struct.ocfs2_global_disk_dqblk* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @le64_to_cpu(i32 %42)
  %44 = load %struct.mem_dqblk*, %struct.mem_dqblk** %6, align 8
  %45 = getelementptr inbounds %struct.mem_dqblk, %struct.mem_dqblk* %44, i32 0, i32 5
  store i8* %43, i8** %45, align 8
  br label %46

46:                                               ; preds = %39, %31
  %47 = load i64, i64* @DQ_LASTSET_B, align 8
  %48 = load i64, i64* @QIF_BLIMITS_B, align 8
  %49 = add nsw i64 %47, %48
  %50 = load %struct.dquot*, %struct.dquot** %3, align 8
  %51 = getelementptr inbounds %struct.dquot, %struct.dquot* %50, i32 0, i32 0
  %52 = call i32 @test_bit(i64 %49, i32* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %67, label %54

54:                                               ; preds = %46
  %55 = load %struct.ocfs2_global_disk_dqblk*, %struct.ocfs2_global_disk_dqblk** %5, align 8
  %56 = getelementptr inbounds %struct.ocfs2_global_disk_dqblk, %struct.ocfs2_global_disk_dqblk* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @le64_to_cpu(i32 %57)
  %59 = load %struct.mem_dqblk*, %struct.mem_dqblk** %6, align 8
  %60 = getelementptr inbounds %struct.mem_dqblk, %struct.mem_dqblk* %59, i32 0, i32 4
  store i8* %58, i8** %60, align 8
  %61 = load %struct.ocfs2_global_disk_dqblk*, %struct.ocfs2_global_disk_dqblk** %5, align 8
  %62 = getelementptr inbounds %struct.ocfs2_global_disk_dqblk, %struct.ocfs2_global_disk_dqblk* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @le64_to_cpu(i32 %63)
  %65 = load %struct.mem_dqblk*, %struct.mem_dqblk** %6, align 8
  %66 = getelementptr inbounds %struct.mem_dqblk, %struct.mem_dqblk* %65, i32 0, i32 3
  store i8* %64, i8** %66, align 8
  br label %67

67:                                               ; preds = %54, %46
  %68 = load i64, i64* @DQ_LASTSET_B, align 8
  %69 = load i64, i64* @QIF_SPACE_B, align 8
  %70 = add nsw i64 %68, %69
  %71 = load %struct.dquot*, %struct.dquot** %3, align 8
  %72 = getelementptr inbounds %struct.dquot, %struct.dquot* %71, i32 0, i32 0
  %73 = call i32 @test_bit(i64 %70, i32* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %67
  %76 = load %struct.ocfs2_global_disk_dqblk*, %struct.ocfs2_global_disk_dqblk** %5, align 8
  %77 = getelementptr inbounds %struct.ocfs2_global_disk_dqblk, %struct.ocfs2_global_disk_dqblk* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = call i8* @le64_to_cpu(i32 %78)
  %80 = load %struct.mem_dqblk*, %struct.mem_dqblk** %6, align 8
  %81 = getelementptr inbounds %struct.mem_dqblk, %struct.mem_dqblk* %80, i32 0, i32 2
  store i8* %79, i8** %81, align 8
  br label %82

82:                                               ; preds = %75, %67
  %83 = load i64, i64* @DQ_LASTSET_B, align 8
  %84 = load i64, i64* @QIF_BTIME_B, align 8
  %85 = add nsw i64 %83, %84
  %86 = load %struct.dquot*, %struct.dquot** %3, align 8
  %87 = getelementptr inbounds %struct.dquot, %struct.dquot* %86, i32 0, i32 0
  %88 = call i32 @test_bit(i64 %85, i32* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %97, label %90

90:                                               ; preds = %82
  %91 = load %struct.ocfs2_global_disk_dqblk*, %struct.ocfs2_global_disk_dqblk** %5, align 8
  %92 = getelementptr inbounds %struct.ocfs2_global_disk_dqblk, %struct.ocfs2_global_disk_dqblk* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = call i8* @le64_to_cpu(i32 %93)
  %95 = load %struct.mem_dqblk*, %struct.mem_dqblk** %6, align 8
  %96 = getelementptr inbounds %struct.mem_dqblk, %struct.mem_dqblk* %95, i32 0, i32 1
  store i8* %94, i8** %96, align 8
  br label %97

97:                                               ; preds = %90, %82
  %98 = load i64, i64* @DQ_LASTSET_B, align 8
  %99 = load i64, i64* @QIF_ITIME_B, align 8
  %100 = add nsw i64 %98, %99
  %101 = load %struct.dquot*, %struct.dquot** %3, align 8
  %102 = getelementptr inbounds %struct.dquot, %struct.dquot* %101, i32 0, i32 0
  %103 = call i32 @test_bit(i64 %100, i32* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %112, label %105

105:                                              ; preds = %97
  %106 = load %struct.ocfs2_global_disk_dqblk*, %struct.ocfs2_global_disk_dqblk** %5, align 8
  %107 = getelementptr inbounds %struct.ocfs2_global_disk_dqblk, %struct.ocfs2_global_disk_dqblk* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i8* @le64_to_cpu(i32 %108)
  %110 = load %struct.mem_dqblk*, %struct.mem_dqblk** %6, align 8
  %111 = getelementptr inbounds %struct.mem_dqblk, %struct.mem_dqblk* %110, i32 0, i32 0
  store i8* %109, i8** %111, align 8
  br label %112

112:                                              ; preds = %105, %97
  %113 = load %struct.ocfs2_global_disk_dqblk*, %struct.ocfs2_global_disk_dqblk** %5, align 8
  %114 = getelementptr inbounds %struct.ocfs2_global_disk_dqblk, %struct.ocfs2_global_disk_dqblk* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @le32_to_cpu(i32 %115)
  %117 = load %struct.dquot*, %struct.dquot** %3, align 8
  %118 = call %struct.TYPE_2__* @OCFS2_DQUOT(%struct.dquot* %117)
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  store i32 %116, i32* %119, align 4
  ret void
}

declare dso_local i32 @test_bit(i64, i32*) #1

declare dso_local i8* @le64_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local %struct.TYPE_2__* @OCFS2_DQUOT(%struct.dquot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
