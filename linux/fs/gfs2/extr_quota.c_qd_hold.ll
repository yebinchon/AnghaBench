; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_quota.c_qd_hold.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_quota.c_qd_hold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_quota_data = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.gfs2_sbd* }
%struct.gfs2_sbd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gfs2_quota_data*)* @qd_hold to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qd_hold(%struct.gfs2_quota_data* %0) #0 {
  %2 = alloca %struct.gfs2_quota_data*, align 8
  %3 = alloca %struct.gfs2_sbd*, align 8
  store %struct.gfs2_quota_data* %0, %struct.gfs2_quota_data** %2, align 8
  %4 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %2, align 8
  %5 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %4, i32 0, i32 1
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  store %struct.gfs2_sbd* %9, %struct.gfs2_sbd** %3, align 8
  %10 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %11 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %2, align 8
  %12 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %11, i32 0, i32 0
  %13 = call i32 @__lockref_is_dead(i32* %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @gfs2_assert(%struct.gfs2_sbd* %10, i32 %16)
  %18 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %2, align 8
  %19 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %18, i32 0, i32 0
  %20 = call i32 @lockref_get(i32* %19)
  ret void
}

declare dso_local i32 @gfs2_assert(%struct.gfs2_sbd*, i32) #1

declare dso_local i32 @__lockref_is_dead(i32*) #1

declare dso_local i32 @lockref_get(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
