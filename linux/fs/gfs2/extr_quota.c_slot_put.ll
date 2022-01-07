; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_quota.c_slot_put.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_quota.c_slot_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_quota_data = type { i32, i32, %struct.gfs2_sbd* }
%struct.gfs2_sbd = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gfs2_quota_data*)* @slot_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slot_put(%struct.gfs2_quota_data* %0) #0 {
  %2 = alloca %struct.gfs2_quota_data*, align 8
  %3 = alloca %struct.gfs2_sbd*, align 8
  store %struct.gfs2_quota_data* %0, %struct.gfs2_quota_data** %2, align 8
  %4 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %2, align 8
  %5 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %4, i32 0, i32 2
  %6 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  store %struct.gfs2_sbd* %6, %struct.gfs2_sbd** %3, align 8
  %7 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %8 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %7, i32 0, i32 0
  %9 = call i32 @spin_lock(i32* %8)
  %10 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %11 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %2, align 8
  %12 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @gfs2_assert(%struct.gfs2_sbd* %10, i32 %13)
  %15 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %2, align 8
  %16 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %16, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %34, label %20

20:                                               ; preds = %1
  %21 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %2, align 8
  %22 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %25 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @test_and_clear_bit(i32 %23, i32 %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i32 @BUG_ON(i32 %30)
  %32 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %2, align 8
  %33 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %32, i32 0, i32 0
  store i32 -1, i32* %33, align 8
  br label %34

34:                                               ; preds = %20, %1
  %35 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %36 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %35, i32 0, i32 0
  %37 = call i32 @spin_unlock(i32* %36)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @gfs2_assert(%struct.gfs2_sbd*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @test_and_clear_bit(i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
