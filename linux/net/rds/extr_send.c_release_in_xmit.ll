; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_send.c_release_in_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_send.c_release_in_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_conn_path = type { i32, i32 }

@RDS_IN_XMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rds_conn_path*)* @release_in_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @release_in_xmit(%struct.rds_conn_path* %0) #0 {
  %2 = alloca %struct.rds_conn_path*, align 8
  store %struct.rds_conn_path* %0, %struct.rds_conn_path** %2, align 8
  %3 = load i32, i32* @RDS_IN_XMIT, align 4
  %4 = load %struct.rds_conn_path*, %struct.rds_conn_path** %2, align 8
  %5 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %4, i32 0, i32 1
  %6 = call i32 @clear_bit(i32 %3, i32* %5)
  %7 = call i32 (...) @smp_mb__after_atomic()
  %8 = load %struct.rds_conn_path*, %struct.rds_conn_path** %2, align 8
  %9 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %8, i32 0, i32 0
  %10 = call i64 @waitqueue_active(i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.rds_conn_path*, %struct.rds_conn_path** %2, align 8
  %14 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %13, i32 0, i32 0
  %15 = call i32 @wake_up_all(i32* %14)
  br label %16

16:                                               ; preds = %12, %1
  ret void
}

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @smp_mb__after_atomic(...) #1

declare dso_local i64 @waitqueue_active(i32*) #1

declare dso_local i32 @wake_up_all(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
