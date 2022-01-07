; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_core.c_smc_lgr_unregister_conn.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_core.c_smc_lgr_unregister_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_connection = type { i64, %struct.smc_link_group* }
%struct.smc_link_group = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smc_connection*)* @smc_lgr_unregister_conn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smc_lgr_unregister_conn(%struct.smc_connection* %0) #0 {
  %2 = alloca %struct.smc_connection*, align 8
  %3 = alloca %struct.smc_link_group*, align 8
  store %struct.smc_connection* %0, %struct.smc_connection** %2, align 8
  %4 = load %struct.smc_connection*, %struct.smc_connection** %2, align 8
  %5 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %4, i32 0, i32 1
  %6 = load %struct.smc_link_group*, %struct.smc_link_group** %5, align 8
  store %struct.smc_link_group* %6, %struct.smc_link_group** %3, align 8
  %7 = load %struct.smc_link_group*, %struct.smc_link_group** %3, align 8
  %8 = icmp ne %struct.smc_link_group* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %25

10:                                               ; preds = %1
  %11 = load %struct.smc_link_group*, %struct.smc_link_group** %3, align 8
  %12 = getelementptr inbounds %struct.smc_link_group, %struct.smc_link_group* %11, i32 0, i32 0
  %13 = call i32 @write_lock_bh(i32* %12)
  %14 = load %struct.smc_connection*, %struct.smc_connection** %2, align 8
  %15 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %10
  %19 = load %struct.smc_connection*, %struct.smc_connection** %2, align 8
  %20 = call i32 @__smc_lgr_unregister_conn(%struct.smc_connection* %19)
  br label %21

21:                                               ; preds = %18, %10
  %22 = load %struct.smc_link_group*, %struct.smc_link_group** %3, align 8
  %23 = getelementptr inbounds %struct.smc_link_group, %struct.smc_link_group* %22, i32 0, i32 0
  %24 = call i32 @write_unlock_bh(i32* %23)
  br label %25

25:                                               ; preds = %21, %9
  ret void
}

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @__smc_lgr_unregister_conn(%struct.smc_connection*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
