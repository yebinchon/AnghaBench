; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_quota.c_gfs2_quota_change.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_quota.c_gfs2_quota_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i64, %struct.gfs2_quota_data** }
%struct.gfs2_quota_data = type { i32 }
%struct.gfs2_sbd = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@GFS2_QUOTA_ON = common dso_local global i64 0, align 8
@GFS2_DIF_SYSTEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gfs2_quota_change(%struct.gfs2_inode* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.gfs2_inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.gfs2_quota_data*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.gfs2_sbd*, align 8
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %13 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %12, i32 0, i32 2
  %14 = call %struct.gfs2_sbd* @GFS2_SB(i32* %13)
  store %struct.gfs2_sbd* %14, %struct.gfs2_sbd** %11, align 8
  %15 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %11, align 8
  %16 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @GFS2_QUOTA_ON, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %26, label %21

21:                                               ; preds = %4
  %22 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %11, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i64 @gfs2_assert_warn(%struct.gfs2_sbd* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21, %4
  br label %76

27:                                               ; preds = %21
  %28 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %29 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @GFS2_DIF_SYSTEM, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %76

35:                                               ; preds = %27
  store i64 0, i64* %10, align 8
  br label %36

36:                                               ; preds = %73, %35
  %37 = load i64, i64* %10, align 8
  %38 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %39 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %38, i32 0, i32 1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ult i64 %37, %42
  br i1 %43, label %44, label %76

44:                                               ; preds = %36
  %45 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %46 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %45, i32 0, i32 1
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load %struct.gfs2_quota_data**, %struct.gfs2_quota_data*** %48, align 8
  %50 = load i64, i64* %10, align 8
  %51 = getelementptr inbounds %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %49, i64 %50
  %52 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %51, align 8
  store %struct.gfs2_quota_data* %52, %struct.gfs2_quota_data** %9, align 8
  %53 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %9, align 8
  %54 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @make_kqid_uid(i32 %56)
  %58 = call i64 @qid_eq(i32 %55, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %68, label %60

60:                                               ; preds = %44
  %61 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %9, align 8
  %62 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @make_kqid_gid(i32 %64)
  %66 = call i64 @qid_eq(i32 %63, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %60, %44
  %69 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %9, align 8
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @do_qc(%struct.gfs2_quota_data* %69, i32 %70)
  br label %72

72:                                               ; preds = %68, %60
  br label %73

73:                                               ; preds = %72
  %74 = load i64, i64* %10, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %10, align 8
  br label %36

76:                                               ; preds = %26, %34, %36
  ret void
}

declare dso_local %struct.gfs2_sbd* @GFS2_SB(i32*) #1

declare dso_local i64 @gfs2_assert_warn(%struct.gfs2_sbd*, i32) #1

declare dso_local i64 @qid_eq(i32, i32) #1

declare dso_local i32 @make_kqid_uid(i32) #1

declare dso_local i32 @make_kqid_gid(i32) #1

declare dso_local i32 @do_qc(%struct.gfs2_quota_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
