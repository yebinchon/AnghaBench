; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_sys.c_quota_refresh_group_store.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_sys.c_quota_refresh_group_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { i32 }
%struct.kqid = type { i32 }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@GRPQUOTA = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_sbd*, i8*, i64)* @quota_refresh_group_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @quota_refresh_group_store(%struct.gfs2_sbd* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gfs2_sbd*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.kqid, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.kqid, align 4
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %13 = call i32 @capable(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @EPERM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %55

18:                                               ; preds = %3
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @kstrtou32(i8* %19, i32 0, i32* %10)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %4, align 4
  br label %55

25:                                               ; preds = %18
  %26 = call i32 (...) @current_user_ns()
  %27 = load i32, i32* @GRPQUOTA, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @make_kqid(i32 %26, i32 %27, i32 %28)
  %30 = getelementptr inbounds %struct.kqid, %struct.kqid* %11, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = bitcast %struct.kqid* %8 to i8*
  %32 = bitcast %struct.kqid* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %31, i8* align 4 %32, i64 4, i1 false)
  %33 = getelementptr inbounds %struct.kqid, %struct.kqid* %8, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @qid_valid(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %25
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %55

40:                                               ; preds = %25
  %41 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %42 = getelementptr inbounds %struct.kqid, %struct.kqid* %8, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @gfs2_quota_refresh(%struct.gfs2_sbd* %41, i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  br label %52

50:                                               ; preds = %40
  %51 = load i64, i64* %7, align 8
  br label %52

52:                                               ; preds = %50, %47
  %53 = phi i64 [ %49, %47 ], [ %51, %50 ]
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %52, %37, %23, %15
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @kstrtou32(i8*, i32, i32*) #1

declare dso_local i32 @make_kqid(i32, i32, i32) #1

declare dso_local i32 @current_user_ns(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @qid_valid(i32) #1

declare dso_local i32 @gfs2_quota_refresh(%struct.gfs2_sbd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
