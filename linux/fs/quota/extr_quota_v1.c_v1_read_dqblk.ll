; ModuleID = '/home/carl/AnghaBench/linux/fs/quota/extr_quota_v1.c_v1_read_dqblk.c'
source_filename = "/home/carl/AnghaBench/linux/fs/quota/extr_quota_v1.c_v1_read_dqblk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dquot = type { i32, %struct.TYPE_7__, %struct.TYPE_9__, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i64, i64, i64, i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_8__*, i32, i8*, i32, i32)* }
%struct.v1_disk_dqblk = type { i32 }
%struct.quota_info = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@init_user_ns = common dso_local global i32 0, align 4
@DQ_FAKE_B = common dso_local global i32 0, align 4
@DQST_READS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dquot*)* @v1_read_dqblk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v1_read_dqblk(%struct.dquot* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dquot*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.v1_disk_dqblk, align 4
  %6 = alloca %struct.quota_info*, align 8
  store %struct.dquot* %0, %struct.dquot** %3, align 8
  %7 = load %struct.dquot*, %struct.dquot** %3, align 8
  %8 = getelementptr inbounds %struct.dquot, %struct.dquot* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %4, align 4
  %11 = load %struct.dquot*, %struct.dquot** %3, align 8
  %12 = getelementptr inbounds %struct.dquot, %struct.dquot* %11, i32 0, i32 3
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = call %struct.quota_info* @sb_dqopt(%struct.TYPE_8__* %13)
  store %struct.quota_info* %14, %struct.quota_info** %6, align 8
  %15 = load %struct.quota_info*, %struct.quota_info** %6, align 8
  %16 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %81

26:                                               ; preds = %1
  %27 = call i32 @memset(%struct.v1_disk_dqblk* %5, i32 0, i32 4)
  %28 = load %struct.dquot*, %struct.dquot** %3, align 8
  %29 = getelementptr inbounds %struct.dquot, %struct.dquot* %28, i32 0, i32 3
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32 (%struct.TYPE_8__*, i32, i8*, i32, i32)*, i32 (%struct.TYPE_8__*, i32, i8*, i32, i32)** %33, align 8
  %35 = load %struct.dquot*, %struct.dquot** %3, align 8
  %36 = getelementptr inbounds %struct.dquot, %struct.dquot* %35, i32 0, i32 3
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = bitcast %struct.v1_disk_dqblk* %5 to i8*
  %40 = load %struct.dquot*, %struct.dquot** %3, align 8
  %41 = getelementptr inbounds %struct.dquot, %struct.dquot* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @from_kqid(i32* @init_user_ns, i32 %43)
  %45 = call i32 @v1_dqoff(i32 %44)
  %46 = call i32 %34(%struct.TYPE_8__* %37, i32 %38, i8* %39, i32 4, i32 %45)
  %47 = load %struct.dquot*, %struct.dquot** %3, align 8
  %48 = getelementptr inbounds %struct.dquot, %struct.dquot* %47, i32 0, i32 1
  %49 = call i32 @v1_disk2mem_dqblk(%struct.TYPE_7__* %48, %struct.v1_disk_dqblk* %5)
  %50 = load %struct.dquot*, %struct.dquot** %3, align 8
  %51 = getelementptr inbounds %struct.dquot, %struct.dquot* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %78

55:                                               ; preds = %26
  %56 = load %struct.dquot*, %struct.dquot** %3, align 8
  %57 = getelementptr inbounds %struct.dquot, %struct.dquot* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %78

61:                                               ; preds = %55
  %62 = load %struct.dquot*, %struct.dquot** %3, align 8
  %63 = getelementptr inbounds %struct.dquot, %struct.dquot* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %61
  %68 = load %struct.dquot*, %struct.dquot** %3, align 8
  %69 = getelementptr inbounds %struct.dquot, %struct.dquot* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %67
  %74 = load i32, i32* @DQ_FAKE_B, align 4
  %75 = load %struct.dquot*, %struct.dquot** %3, align 8
  %76 = getelementptr inbounds %struct.dquot, %struct.dquot* %75, i32 0, i32 0
  %77 = call i32 @set_bit(i32 %74, i32* %76)
  br label %78

78:                                               ; preds = %73, %67, %61, %55, %26
  %79 = load i32, i32* @DQST_READS, align 4
  %80 = call i32 @dqstats_inc(i32 %79)
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %78, %23
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local %struct.quota_info* @sb_dqopt(%struct.TYPE_8__*) #1

declare dso_local i32 @memset(%struct.v1_disk_dqblk*, i32, i32) #1

declare dso_local i32 @v1_dqoff(i32) #1

declare dso_local i32 @from_kqid(i32*, i32) #1

declare dso_local i32 @v1_disk2mem_dqblk(%struct.TYPE_7__*, %struct.v1_disk_dqblk*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @dqstats_inc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
