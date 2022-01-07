; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_quota.c_gfs2_quota_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_quota.c_gfs2_quota_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i64, i32*, %struct.gfs2_quota_data** }
%struct.gfs2_quota_data = type { i32, i32 }
%struct.gfs2_sbd = type { i32 }

@GIF_QD_LOCKED = common dso_local global i32 0, align 4
@qd_lock = common dso_local global i32 0, align 4
@QDF_LOCKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gfs2_quota_unlock(%struct.gfs2_inode* %0) #0 {
  %2 = alloca %struct.gfs2_inode*, align 8
  %3 = alloca %struct.gfs2_sbd*, align 8
  %4 = alloca [4 x %struct.gfs2_quota_data*], align 16
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.gfs2_quota_data*, align 8
  %9 = alloca i32, align 4
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %2, align 8
  %10 = load %struct.gfs2_inode*, %struct.gfs2_inode** %2, align 8
  %11 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %10, i32 0, i32 2
  %12 = call %struct.gfs2_sbd* @GFS2_SB(i32* %11)
  store %struct.gfs2_sbd* %12, %struct.gfs2_sbd** %3, align 8
  store i32 0, i32* %5, align 4
  %13 = load i32, i32* @GIF_QD_LOCKED, align 4
  %14 = load %struct.gfs2_inode*, %struct.gfs2_inode** %2, align 8
  %15 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %14, i32 0, i32 1
  %16 = call i32 @test_and_clear_bit(i32 %13, i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  br label %108

19:                                               ; preds = %1
  store i64 0, i64* %6, align 8
  br label %20

20:                                               ; preds = %83, %19
  %21 = load i64, i64* %6, align 8
  %22 = load %struct.gfs2_inode*, %struct.gfs2_inode** %2, align 8
  %23 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ult i64 %21, %26
  br i1 %27, label %28, label %86

28:                                               ; preds = %20
  %29 = load %struct.gfs2_inode*, %struct.gfs2_inode** %2, align 8
  %30 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  %33 = load %struct.gfs2_quota_data**, %struct.gfs2_quota_data*** %32, align 8
  %34 = load i64, i64* %6, align 8
  %35 = getelementptr inbounds %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %33, i64 %34
  %36 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %35, align 8
  store %struct.gfs2_quota_data* %36, %struct.gfs2_quota_data** %8, align 8
  %37 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %8, align 8
  %38 = call i32 @need_sync(%struct.gfs2_quota_data* %37)
  store i32 %38, i32* %9, align 4
  %39 = load %struct.gfs2_inode*, %struct.gfs2_inode** %2, align 8
  %40 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* %6, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = call i32 @gfs2_glock_dq_uninit(i32* %45)
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %28
  br label %83

50:                                               ; preds = %28
  %51 = call i32 @spin_lock(i32* @qd_lock)
  %52 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %53 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %8, align 8
  %54 = call i32 @qd_check_sync(%struct.gfs2_sbd* %52, %struct.gfs2_quota_data* %53, i32* null)
  store i32 %54, i32* %7, align 4
  %55 = call i32 @spin_unlock(i32* @qd_lock)
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %50
  br label %83

59:                                               ; preds = %50
  %60 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %61 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %8, align 8
  %62 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @gfs2_assert_warn(%struct.gfs2_sbd* %60, i32 %63)
  %65 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %8, align 8
  %66 = call i64 @bh_get(%struct.gfs2_quota_data* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %59
  %69 = load i32, i32* @QDF_LOCKED, align 4
  %70 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %8, align 8
  %71 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %70, i32 0, i32 0
  %72 = call i32 @clear_bit(i32 %69, i32* %71)
  %73 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %8, align 8
  %74 = call i32 @slot_put(%struct.gfs2_quota_data* %73)
  %75 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %8, align 8
  %76 = call i32 @qd_put(%struct.gfs2_quota_data* %75)
  br label %83

77:                                               ; preds = %59
  %78 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %8, align 8
  %79 = load i32, i32* %5, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %5, align 4
  %81 = zext i32 %79 to i64
  %82 = getelementptr inbounds [4 x %struct.gfs2_quota_data*], [4 x %struct.gfs2_quota_data*]* %4, i64 0, i64 %81
  store %struct.gfs2_quota_data* %78, %struct.gfs2_quota_data** %82, align 8
  br label %83

83:                                               ; preds = %77, %68, %58, %49
  %84 = load i64, i64* %6, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %6, align 8
  br label %20

86:                                               ; preds = %20
  %87 = load i32, i32* %5, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %107

89:                                               ; preds = %86
  %90 = load i32, i32* %5, align 4
  %91 = getelementptr inbounds [4 x %struct.gfs2_quota_data*], [4 x %struct.gfs2_quota_data*]* %4, i64 0, i64 0
  %92 = call i32 @do_sync(i32 %90, %struct.gfs2_quota_data** %91)
  store i64 0, i64* %6, align 8
  br label %93

93:                                               ; preds = %103, %89
  %94 = load i64, i64* %6, align 8
  %95 = load i32, i32* %5, align 4
  %96 = zext i32 %95 to i64
  %97 = icmp ult i64 %94, %96
  br i1 %97, label %98, label %106

98:                                               ; preds = %93
  %99 = load i64, i64* %6, align 8
  %100 = getelementptr inbounds [4 x %struct.gfs2_quota_data*], [4 x %struct.gfs2_quota_data*]* %4, i64 0, i64 %99
  %101 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %100, align 8
  %102 = call i32 @qd_unlock(%struct.gfs2_quota_data* %101)
  br label %103

103:                                              ; preds = %98
  %104 = load i64, i64* %6, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %6, align 8
  br label %93

106:                                              ; preds = %93
  br label %107

107:                                              ; preds = %106, %86
  br label %108

108:                                              ; preds = %107, %18
  %109 = load %struct.gfs2_inode*, %struct.gfs2_inode** %2, align 8
  %110 = call i32 @gfs2_quota_unhold(%struct.gfs2_inode* %109)
  ret void
}

declare dso_local %struct.gfs2_sbd* @GFS2_SB(i32*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @need_sync(%struct.gfs2_quota_data*) #1

declare dso_local i32 @gfs2_glock_dq_uninit(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @qd_check_sync(%struct.gfs2_sbd*, %struct.gfs2_quota_data*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @gfs2_assert_warn(%struct.gfs2_sbd*, i32) #1

declare dso_local i64 @bh_get(%struct.gfs2_quota_data*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @slot_put(%struct.gfs2_quota_data*) #1

declare dso_local i32 @qd_put(%struct.gfs2_quota_data*) #1

declare dso_local i32 @do_sync(i32, %struct.gfs2_quota_data**) #1

declare dso_local i32 @qd_unlock(%struct.gfs2_quota_data*) #1

declare dso_local i32 @gfs2_quota_unhold(%struct.gfs2_inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
