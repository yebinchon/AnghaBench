; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_quota.c_need_sync.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_quota.c_need_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_quota_data = type { i64, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.gfs2_sbd* }
%struct.gfs2_sbd = type { %struct.gfs2_tune }
%struct.gfs2_tune = type { i32, i32, i32 }

@qd_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_quota_data*)* @need_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @need_sync(%struct.gfs2_quota_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gfs2_quota_data*, align 8
  %4 = alloca %struct.gfs2_sbd*, align 8
  %5 = alloca %struct.gfs2_tune*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gfs2_quota_data* %0, %struct.gfs2_quota_data** %3, align 8
  %10 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %3, align 8
  %11 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %10, i32 0, i32 2
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %14, align 8
  store %struct.gfs2_sbd* %15, %struct.gfs2_sbd** %4, align 8
  %16 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %17 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %16, i32 0, i32 0
  store %struct.gfs2_tune* %17, %struct.gfs2_tune** %5, align 8
  store i32 1, i32* %9, align 4
  %18 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %3, align 8
  %19 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %88

24:                                               ; preds = %1
  %25 = call i32 @spin_lock(i32* @qd_lock)
  %26 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %3, align 8
  %27 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %6, align 8
  %29 = call i32 @spin_unlock(i32* @qd_lock)
  %30 = load %struct.gfs2_tune*, %struct.gfs2_tune** %5, align 8
  %31 = getelementptr inbounds %struct.gfs2_tune, %struct.gfs2_tune* %30, i32 0, i32 2
  %32 = call i32 @spin_lock(i32* %31)
  %33 = load %struct.gfs2_tune*, %struct.gfs2_tune** %5, align 8
  %34 = getelementptr inbounds %struct.gfs2_tune, %struct.gfs2_tune* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %7, align 4
  %36 = load %struct.gfs2_tune*, %struct.gfs2_tune** %5, align 8
  %37 = getelementptr inbounds %struct.gfs2_tune, %struct.gfs2_tune* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %8, align 4
  %39 = load %struct.gfs2_tune*, %struct.gfs2_tune** %5, align 8
  %40 = getelementptr inbounds %struct.gfs2_tune, %struct.gfs2_tune* %39, i32 0, i32 2
  %41 = call i32 @spin_unlock(i32* %40)
  %42 = load i64, i64* %6, align 8
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %24
  store i32 0, i32* %9, align 4
  br label %86

45:                                               ; preds = %24
  %46 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %3, align 8
  %47 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @be64_to_cpu(i32 %49)
  %51 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %3, align 8
  %52 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @be64_to_cpu(i32 %54)
  %56 = icmp sge i64 %50, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %45
  store i32 0, i32* %9, align 4
  br label %85

58:                                               ; preds = %45
  %59 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %60 = call i32 @gfs2_jindex_size(%struct.gfs2_sbd* %59)
  %61 = load i32, i32* %7, align 4
  %62 = mul i32 %60, %61
  %63 = zext i32 %62 to i64
  %64 = load i64, i64* %6, align 8
  %65 = mul nsw i64 %64, %63
  store i64 %65, i64* %6, align 8
  %66 = load i64, i64* %6, align 8
  %67 = load i32, i32* %8, align 4
  %68 = call i64 @div_s64(i64 %66, i32 %67)
  store i64 %68, i64* %6, align 8
  %69 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %3, align 8
  %70 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @be64_to_cpu(i32 %72)
  %74 = load i64, i64* %6, align 8
  %75 = add nsw i64 %74, %73
  store i64 %75, i64* %6, align 8
  %76 = load i64, i64* %6, align 8
  %77 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %3, align 8
  %78 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i64 @be64_to_cpu(i32 %80)
  %82 = icmp slt i64 %76, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %58
  store i32 0, i32* %9, align 4
  br label %84

84:                                               ; preds = %83, %58
  br label %85

85:                                               ; preds = %84, %57
  br label %86

86:                                               ; preds = %85, %44
  %87 = load i32, i32* %9, align 4
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %86, %23
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i32 @gfs2_jindex_size(%struct.gfs2_sbd*) #1

declare dso_local i64 @div_s64(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
