; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_quota.c_qd_check_sync.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_quota.c_qd_check_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { i32 }
%struct.gfs2_quota_data = type { i64, i32, i32, i32, i32, i32 }

@QDF_LOCKED = common dso_local global i32 0, align 4
@QDF_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_sbd*, %struct.gfs2_quota_data*, i64*)* @qd_check_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qd_check_sync(%struct.gfs2_sbd* %0, %struct.gfs2_quota_data* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gfs2_sbd*, align 8
  %6 = alloca %struct.gfs2_quota_data*, align 8
  %7 = alloca i64*, align 8
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %5, align 8
  store %struct.gfs2_quota_data* %1, %struct.gfs2_quota_data** %6, align 8
  store i64* %2, i64** %7, align 8
  %8 = load i32, i32* @QDF_LOCKED, align 4
  %9 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %6, align 8
  %10 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %9, i32 0, i32 3
  %11 = call i64 @test_bit(i32 %8, i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %29, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @QDF_CHANGE, align 4
  %15 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %6, align 8
  %16 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %15, i32 0, i32 3
  %17 = call i64 @test_bit(i32 %14, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %13
  %20 = load i64*, i64** %7, align 8
  %21 = icmp ne i64* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %19
  %23 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %6, align 8
  %24 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64*, i64** %7, align 8
  %27 = load i64, i64* %26, align 8
  %28 = icmp sge i64 %25, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %22, %13, %3
  store i32 0, i32* %4, align 4
  br label %53

30:                                               ; preds = %22, %19
  %31 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %6, align 8
  %32 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %31, i32 0, i32 5
  %33 = call i32 @lockref_get_not_dead(i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %53

36:                                               ; preds = %30
  %37 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %6, align 8
  %38 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %37, i32 0, i32 4
  %39 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %40 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %39, i32 0, i32 0
  %41 = call i32 @list_move_tail(i32* %38, i32* %40)
  %42 = load i32, i32* @QDF_LOCKED, align 4
  %43 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %6, align 8
  %44 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %43, i32 0, i32 3
  %45 = call i32 @set_bit(i32 %42, i32* %44)
  %46 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %6, align 8
  %47 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %6, align 8
  %50 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %6, align 8
  %52 = call i32 @slot_hold(%struct.gfs2_quota_data* %51)
  store i32 1, i32* %4, align 4
  br label %53

53:                                               ; preds = %36, %35, %29
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @lockref_get_not_dead(i32*) #1

declare dso_local i32 @list_move_tail(i32*, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @slot_hold(%struct.gfs2_quota_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
