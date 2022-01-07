; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_quota.c_qd_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_quota.c_qd_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_quota_data = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@QDF_LOCKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gfs2_quota_data*)* @qd_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qd_unlock(%struct.gfs2_quota_data* %0) #0 {
  %2 = alloca %struct.gfs2_quota_data*, align 8
  store %struct.gfs2_quota_data* %0, %struct.gfs2_quota_data** %2, align 8
  %3 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %2, align 8
  %4 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %3, i32 0, i32 1
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @QDF_LOCKED, align 4
  %10 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %2, align 8
  %11 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %10, i32 0, i32 0
  %12 = call i32 @test_bit(i32 %9, i32* %11)
  %13 = call i32 @gfs2_assert_warn(i32 %8, i32 %12)
  %14 = load i32, i32* @QDF_LOCKED, align 4
  %15 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %2, align 8
  %16 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %15, i32 0, i32 0
  %17 = call i32 @clear_bit(i32 %14, i32* %16)
  %18 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %2, align 8
  %19 = call i32 @bh_put(%struct.gfs2_quota_data* %18)
  %20 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %2, align 8
  %21 = call i32 @slot_put(%struct.gfs2_quota_data* %20)
  %22 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %2, align 8
  %23 = call i32 @qd_put(%struct.gfs2_quota_data* %22)
  ret void
}

declare dso_local i32 @gfs2_assert_warn(i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @bh_put(%struct.gfs2_quota_data*) #1

declare dso_local i32 @slot_put(%struct.gfs2_quota_data*) #1

declare dso_local i32 @qd_put(%struct.gfs2_quota_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
