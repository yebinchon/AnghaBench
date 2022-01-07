; ModuleID = '/home/carl/AnghaBench/linux/fs/quota/extr_quota_v1.c_v1_commit_dqblk.c'
source_filename = "/home/carl/AnghaBench/linux/fs/quota/extr_quota_v1.c_v1_commit_dqblk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dquot = type { %struct.TYPE_10__*, %struct.TYPE_12__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_10__*, i16, i8*, i32, i32)* }
%struct.TYPE_12__ = type { i16, i32, i32 }
%struct.v1_disk_dqblk = type { i32, i32 }
%struct.TYPE_11__ = type { i64*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }

@USRQUOTA = common dso_local global i16 0, align 2
@GLOBAL_ROOT_UID = common dso_local global i32 0, align 4
@GRPQUOTA = common dso_local global i16 0, align 2
@GLOBAL_ROOT_GID = common dso_local global i32 0, align 4
@init_user_ns = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"dquota write failed\00", align 1
@EIO = common dso_local global i32 0, align 4
@DQST_WRITES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dquot*)* @v1_commit_dqblk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v1_commit_dqblk(%struct.dquot* %0) #0 {
  %2 = alloca %struct.dquot*, align 8
  %3 = alloca i16, align 2
  %4 = alloca i32, align 4
  %5 = alloca %struct.v1_disk_dqblk, align 4
  %6 = alloca { i64, i32 }, align 8
  store %struct.dquot* %0, %struct.dquot** %2, align 8
  %7 = load %struct.dquot*, %struct.dquot** %2, align 8
  %8 = getelementptr inbounds %struct.dquot, %struct.dquot* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %10 = load i16, i16* %9, align 8
  store i16 %10, i16* %3, align 2
  %11 = load %struct.dquot*, %struct.dquot** %2, align 8
  %12 = getelementptr inbounds %struct.dquot, %struct.dquot* %11, i32 0, i32 2
  %13 = call i32 @v1_mem2disk_dqblk(%struct.v1_disk_dqblk* %5, i32* %12)
  %14 = load i16, i16* %3, align 2
  %15 = sext i16 %14 to i32
  %16 = load i16, i16* @USRQUOTA, align 2
  %17 = sext i16 %16 to i32
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %1
  %20 = load %struct.dquot*, %struct.dquot** %2, align 8
  %21 = getelementptr inbounds %struct.dquot, %struct.dquot* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @GLOBAL_ROOT_UID, align 4
  %25 = call i64 @uid_eq(i32 %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %41, label %27

27:                                               ; preds = %19, %1
  %28 = load i16, i16* %3, align 2
  %29 = sext i16 %28 to i32
  %30 = load i16, i16* @GRPQUOTA, align 2
  %31 = sext i16 %30 to i32
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %33, label %66

33:                                               ; preds = %27
  %34 = load %struct.dquot*, %struct.dquot** %2, align 8
  %35 = getelementptr inbounds %struct.dquot, %struct.dquot* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @GLOBAL_ROOT_GID, align 4
  %39 = call i64 @gid_eq(i32 %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %66

41:                                               ; preds = %33, %19
  %42 = load %struct.dquot*, %struct.dquot** %2, align 8
  %43 = getelementptr inbounds %struct.dquot, %struct.dquot* %42, i32 0, i32 0
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  %45 = call %struct.TYPE_11__* @sb_dqopt(%struct.TYPE_10__* %44)
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = load i16, i16* %3, align 2
  %49 = sext i16 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.v1_disk_dqblk, %struct.v1_disk_dqblk* %5, i32 0, i32 1
  store i32 %52, i32* %53, align 4
  %54 = load %struct.dquot*, %struct.dquot** %2, align 8
  %55 = getelementptr inbounds %struct.dquot, %struct.dquot* %54, i32 0, i32 0
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = call %struct.TYPE_11__* @sb_dqopt(%struct.TYPE_10__* %56)
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = load i16, i16* %3, align 2
  %61 = sext i16 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.v1_disk_dqblk, %struct.v1_disk_dqblk* %5, i32 0, i32 0
  store i32 %64, i32* %65, align 4
  br label %66

66:                                               ; preds = %41, %33, %27
  store i32 0, i32* %4, align 4
  %67 = load %struct.dquot*, %struct.dquot** %2, align 8
  %68 = getelementptr inbounds %struct.dquot, %struct.dquot* %67, i32 0, i32 0
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %68, align 8
  %70 = call %struct.TYPE_11__* @sb_dqopt(%struct.TYPE_10__* %69)
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load i64*, i64** %71, align 8
  %73 = load i16, i16* %3, align 2
  %74 = sext i16 %73 to i64
  %75 = getelementptr inbounds i64, i64* %72, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %102

78:                                               ; preds = %66
  %79 = load %struct.dquot*, %struct.dquot** %2, align 8
  %80 = getelementptr inbounds %struct.dquot, %struct.dquot* %79, i32 0, i32 0
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i32 (%struct.TYPE_10__*, i16, i8*, i32, i32)*, i32 (%struct.TYPE_10__*, i16, i8*, i32, i32)** %84, align 8
  %86 = load %struct.dquot*, %struct.dquot** %2, align 8
  %87 = getelementptr inbounds %struct.dquot, %struct.dquot* %86, i32 0, i32 0
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %87, align 8
  %89 = load i16, i16* %3, align 2
  %90 = bitcast %struct.v1_disk_dqblk* %5 to i8*
  %91 = load %struct.dquot*, %struct.dquot** %2, align 8
  %92 = getelementptr inbounds %struct.dquot, %struct.dquot* %91, i32 0, i32 1
  %93 = bitcast { i64, i32 }* %6 to i8*
  %94 = bitcast %struct.TYPE_12__* %92 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %93, i8* align 8 %94, i64 12, i1 false)
  %95 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %6, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %6, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @from_kqid(i32* @init_user_ns, i64 %96, i32 %98)
  %100 = call i32 @v1_dqoff(i32 %99)
  %101 = call i32 %85(%struct.TYPE_10__* %88, i16 signext %89, i8* %90, i32 8, i32 %100)
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %78, %66
  %103 = load i32, i32* %4, align 4
  %104 = sext i32 %103 to i64
  %105 = icmp ne i64 %104, 8
  br i1 %105, label %106, label %117

106:                                              ; preds = %102
  %107 = load %struct.dquot*, %struct.dquot** %2, align 8
  %108 = getelementptr inbounds %struct.dquot, %struct.dquot* %107, i32 0, i32 0
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %108, align 8
  %110 = call i32 @quota_error(%struct.TYPE_10__* %109, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %111 = load i32, i32* %4, align 4
  %112 = icmp sge i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %106
  %114 = load i32, i32* @EIO, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %4, align 4
  br label %116

116:                                              ; preds = %113, %106
  br label %118

117:                                              ; preds = %102
  store i32 0, i32* %4, align 4
  br label %118

118:                                              ; preds = %117, %116
  %119 = load i32, i32* @DQST_WRITES, align 4
  %120 = call i32 @dqstats_inc(i32 %119)
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local i32 @v1_mem2disk_dqblk(%struct.v1_disk_dqblk*, i32*) #1

declare dso_local i64 @uid_eq(i32, i32) #1

declare dso_local i64 @gid_eq(i32, i32) #1

declare dso_local %struct.TYPE_11__* @sb_dqopt(%struct.TYPE_10__*) #1

declare dso_local i32 @v1_dqoff(i32) #1

declare dso_local i32 @from_kqid(i32*, i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @quota_error(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @dqstats_inc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
