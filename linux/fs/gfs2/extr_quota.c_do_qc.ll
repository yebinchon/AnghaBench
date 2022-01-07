; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_quota.c_do_qc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_quota.c_do_qc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_quota_data = type { i32, i64, %struct.TYPE_6__, i32, %struct.gfs2_quota_change*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64 }
%struct.gfs2_quota_change = type { i8*, i8*, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.gfs2_sbd* }
%struct.gfs2_sbd = type { i32, i32 }
%struct.gfs2_inode = type { i32 }

@QDF_CHANGE = common dso_local global i32 0, align 4
@USRQUOTA = common dso_local global i64 0, align 8
@GFS2_QCF_USER = common dso_local global i32 0, align 4
@init_user_ns = common dso_local global i32 0, align 4
@qd_lock = common dso_local global i32 0, align 4
@QDF_QMSG_QUIET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gfs2_quota_data*, i64)* @do_qc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_qc(%struct.gfs2_quota_data* %0, i64 %1) #0 {
  %3 = alloca %struct.gfs2_quota_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.gfs2_sbd*, align 8
  %6 = alloca %struct.gfs2_inode*, align 8
  %7 = alloca %struct.gfs2_quota_change*, align 8
  %8 = alloca i64, align 8
  store %struct.gfs2_quota_data* %0, %struct.gfs2_quota_data** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %3, align 8
  %10 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %9, i32 0, i32 5
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %13, align 8
  store %struct.gfs2_sbd* %14, %struct.gfs2_sbd** %5, align 8
  %15 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %16 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.gfs2_inode* @GFS2_I(i32 %17)
  store %struct.gfs2_inode* %18, %struct.gfs2_inode** %6, align 8
  %19 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %3, align 8
  %20 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %19, i32 0, i32 4
  %21 = load %struct.gfs2_quota_change*, %struct.gfs2_quota_change** %20, align 8
  store %struct.gfs2_quota_change* %21, %struct.gfs2_quota_change** %7, align 8
  %22 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %23 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %22, i32 0, i32 0
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %26 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %3, align 8
  %29 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @gfs2_trans_add_meta(i32 %27, i32 %30)
  %32 = load i32, i32* @QDF_CHANGE, align 4
  %33 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %3, align 8
  %34 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %33, i32 0, i32 0
  %35 = call i32 @test_bit(i32 %32, i32* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %62, label %37

37:                                               ; preds = %2
  %38 = load %struct.gfs2_quota_change*, %struct.gfs2_quota_change** %7, align 8
  %39 = getelementptr inbounds %struct.gfs2_quota_change, %struct.gfs2_quota_change* %38, i32 0, i32 2
  store i64 0, i64* %39, align 8
  %40 = load %struct.gfs2_quota_change*, %struct.gfs2_quota_change** %7, align 8
  %41 = getelementptr inbounds %struct.gfs2_quota_change, %struct.gfs2_quota_change* %40, i32 0, i32 1
  store i8* null, i8** %41, align 8
  %42 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %3, align 8
  %43 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @USRQUOTA, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %37
  %49 = load i32, i32* @GFS2_QCF_USER, align 4
  %50 = call i8* @cpu_to_be32(i32 %49)
  %51 = load %struct.gfs2_quota_change*, %struct.gfs2_quota_change** %7, align 8
  %52 = getelementptr inbounds %struct.gfs2_quota_change, %struct.gfs2_quota_change* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  br label %53

53:                                               ; preds = %48, %37
  %54 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %3, align 8
  %55 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @from_kqid(i32* @init_user_ns, i64 %57)
  %59 = call i8* @cpu_to_be32(i32 %58)
  %60 = load %struct.gfs2_quota_change*, %struct.gfs2_quota_change** %7, align 8
  %61 = getelementptr inbounds %struct.gfs2_quota_change, %struct.gfs2_quota_change* %60, i32 0, i32 0
  store i8* %59, i8** %61, align 8
  br label %62

62:                                               ; preds = %53, %2
  %63 = load %struct.gfs2_quota_change*, %struct.gfs2_quota_change** %7, align 8
  %64 = getelementptr inbounds %struct.gfs2_quota_change, %struct.gfs2_quota_change* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = call i64 @be64_to_cpu(i64 %65)
  %67 = load i64, i64* %4, align 8
  %68 = add nsw i64 %66, %67
  store i64 %68, i64* %8, align 8
  %69 = load i64, i64* %8, align 8
  %70 = call i64 @cpu_to_be64(i64 %69)
  %71 = load %struct.gfs2_quota_change*, %struct.gfs2_quota_change** %7, align 8
  %72 = getelementptr inbounds %struct.gfs2_quota_change, %struct.gfs2_quota_change* %71, i32 0, i32 2
  store i64 %70, i64* %72, align 8
  %73 = call i32 @spin_lock(i32* @qd_lock)
  %74 = load i64, i64* %8, align 8
  %75 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %3, align 8
  %76 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %75, i32 0, i32 1
  store i64 %74, i64* %76, align 8
  %77 = call i32 @spin_unlock(i32* @qd_lock)
  %78 = load i64, i64* %8, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %99, label %80

80:                                               ; preds = %62
  %81 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %82 = load i32, i32* @QDF_CHANGE, align 4
  %83 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %3, align 8
  %84 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %83, i32 0, i32 0
  %85 = call i32 @test_bit(i32 %82, i32* %84)
  %86 = call i32 @gfs2_assert_warn(%struct.gfs2_sbd* %81, i32 %85)
  %87 = load i32, i32* @QDF_CHANGE, align 4
  %88 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %3, align 8
  %89 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %88, i32 0, i32 0
  %90 = call i32 @clear_bit(i32 %87, i32* %89)
  %91 = load %struct.gfs2_quota_change*, %struct.gfs2_quota_change** %7, align 8
  %92 = getelementptr inbounds %struct.gfs2_quota_change, %struct.gfs2_quota_change* %91, i32 0, i32 1
  store i8* null, i8** %92, align 8
  %93 = load %struct.gfs2_quota_change*, %struct.gfs2_quota_change** %7, align 8
  %94 = getelementptr inbounds %struct.gfs2_quota_change, %struct.gfs2_quota_change* %93, i32 0, i32 0
  store i8* null, i8** %94, align 8
  %95 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %3, align 8
  %96 = call i32 @slot_put(%struct.gfs2_quota_data* %95)
  %97 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %3, align 8
  %98 = call i32 @qd_put(%struct.gfs2_quota_data* %97)
  br label %111

99:                                               ; preds = %62
  %100 = load i32, i32* @QDF_CHANGE, align 4
  %101 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %3, align 8
  %102 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %101, i32 0, i32 0
  %103 = call i32 @test_and_set_bit(i32 %100, i32* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %110, label %105

105:                                              ; preds = %99
  %106 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %3, align 8
  %107 = call i32 @qd_hold(%struct.gfs2_quota_data* %106)
  %108 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %3, align 8
  %109 = call i32 @slot_hold(%struct.gfs2_quota_data* %108)
  br label %110

110:                                              ; preds = %105, %99
  br label %111

111:                                              ; preds = %110, %80
  %112 = load i64, i64* %4, align 8
  %113 = icmp slt i64 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %111
  %115 = load i32, i32* @QDF_QMSG_QUIET, align 4
  %116 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %3, align 8
  %117 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %116, i32 0, i32 0
  %118 = call i32 @clear_bit(i32 %115, i32* %117)
  br label %119

119:                                              ; preds = %114, %111
  %120 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %121 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %120, i32 0, i32 0
  %122 = call i32 @mutex_unlock(i32* %121)
  ret void
}

declare dso_local %struct.gfs2_inode* @GFS2_I(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @gfs2_trans_add_meta(i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @from_kqid(i32*, i64) #1

declare dso_local i64 @be64_to_cpu(i64) #1

declare dso_local i64 @cpu_to_be64(i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @gfs2_assert_warn(%struct.gfs2_sbd*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @slot_put(%struct.gfs2_quota_data*) #1

declare dso_local i32 @qd_put(%struct.gfs2_quota_data*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @qd_hold(%struct.gfs2_quota_data*) #1

declare dso_local i32 @slot_hold(%struct.gfs2_quota_data*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
