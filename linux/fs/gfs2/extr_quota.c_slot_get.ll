; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_quota.c_slot_get.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_quota.c_slot_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_quota_data = type { i64, i32, %struct.gfs2_sbd* }
%struct.gfs2_sbd = type { i32, i32, i32 }

@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_quota_data*)* @slot_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @slot_get(%struct.gfs2_quota_data* %0) #0 {
  %2 = alloca %struct.gfs2_quota_data*, align 8
  %3 = alloca %struct.gfs2_sbd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.gfs2_quota_data* %0, %struct.gfs2_quota_data** %2, align 8
  %6 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %2, align 8
  %7 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %6, i32 0, i32 2
  %8 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  store %struct.gfs2_sbd* %8, %struct.gfs2_sbd** %3, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %10 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %9, i32 0, i32 1
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %2, align 8
  %13 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %41

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOSPC, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  %20 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %21 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %24 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @find_first_zero_bit(i32 %22, i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %29 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ult i32 %27, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %17
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %35 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @set_bit(i32 %33, i32 %36)
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %2, align 8
  %40 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %32, %16
  %42 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %2, align 8
  %43 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* %43, align 8
  br label %46

46:                                               ; preds = %41, %17
  %47 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %48 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %47, i32 0, i32 1
  %49 = call i32 @spin_unlock(i32* %48)
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @find_first_zero_bit(i32, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
