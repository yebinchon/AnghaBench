; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_buf.c___xfs_buf_ioacct_dec.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_buf.c___xfs_buf_ioacct_dec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_buf = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@XFS_BSTATE_IN_FLIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfs_buf*)* @__xfs_buf_ioacct_dec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__xfs_buf_ioacct_dec(%struct.xfs_buf* %0) #0 {
  %2 = alloca %struct.xfs_buf*, align 8
  store %struct.xfs_buf* %0, %struct.xfs_buf** %2, align 8
  %3 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %4 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %3, i32 0, i32 2
  %5 = call i32 @lockdep_assert_held(i32* %4)
  %6 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %7 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @XFS_BSTATE_IN_FLIGHT, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %1
  %13 = load i32, i32* @XFS_BSTATE_IN_FLIGHT, align 4
  %14 = xor i32 %13, -1
  %15 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %16 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = and i32 %17, %14
  store i32 %18, i32* %16, align 8
  %19 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %20 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i32 @percpu_counter_dec(i32* %22)
  br label %24

24:                                               ; preds = %12, %1
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @percpu_counter_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
