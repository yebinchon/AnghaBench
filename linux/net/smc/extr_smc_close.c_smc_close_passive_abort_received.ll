; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_close.c_smc_close_passive_abort_received.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_close.c_smc_close_passive_abort_received.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_sock = type { %struct.TYPE_4__, %struct.sock }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.smc_cdc_conn_state_flags }
%struct.smc_cdc_conn_state_flags = type { i32 }
%struct.sock = type { i32 }

@SMC_CLOSED = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smc_sock*)* @smc_close_passive_abort_received to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smc_close_passive_abort_received(%struct.smc_sock* %0) #0 {
  %2 = alloca %struct.smc_sock*, align 8
  %3 = alloca %struct.smc_cdc_conn_state_flags*, align 8
  %4 = alloca %struct.sock*, align 8
  store %struct.smc_sock* %0, %struct.smc_sock** %2, align 8
  %5 = load %struct.smc_sock*, %struct.smc_sock** %2, align 8
  %6 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  store %struct.smc_cdc_conn_state_flags* %8, %struct.smc_cdc_conn_state_flags** %3, align 8
  %9 = load %struct.smc_sock*, %struct.smc_sock** %2, align 8
  %10 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %9, i32 0, i32 1
  store %struct.sock* %10, %struct.sock** %4, align 8
  %11 = load %struct.sock*, %struct.sock** %4, align 8
  %12 = getelementptr inbounds %struct.sock, %struct.sock* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %56 [
    i32 133, label %14
    i32 137, label %14
    i32 136, label %14
    i32 134, label %19
    i32 131, label %22
    i32 130, label %22
    i32 135, label %43
    i32 129, label %43
    i32 132, label %50
    i32 128, label %55
  ]

14:                                               ; preds = %1, %1, %1
  %15 = load %struct.sock*, %struct.sock** %4, align 8
  %16 = getelementptr inbounds %struct.sock, %struct.sock* %15, i32 0, i32 0
  store i32 128, i32* %16, align 4
  %17 = load %struct.sock*, %struct.sock** %4, align 8
  %18 = call i32 @sock_put(%struct.sock* %17)
  br label %56

19:                                               ; preds = %1
  %20 = load %struct.sock*, %struct.sock** %4, align 8
  %21 = getelementptr inbounds %struct.sock, %struct.sock* %20, i32 0, i32 0
  store i32 128, i32* %21, align 4
  br label %56

22:                                               ; preds = %1, %1
  %23 = load %struct.smc_cdc_conn_state_flags*, %struct.smc_cdc_conn_state_flags** %3, align 8
  %24 = getelementptr inbounds %struct.smc_cdc_conn_state_flags, %struct.smc_cdc_conn_state_flags* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = load %struct.smc_sock*, %struct.smc_sock** %2, align 8
  %29 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %28, i32 0, i32 0
  %30 = call i32 @smc_close_sent_any_close(%struct.TYPE_4__* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load %struct.sock*, %struct.sock** %4, align 8
  %34 = getelementptr inbounds %struct.sock, %struct.sock* %33, i32 0, i32 0
  store i32 128, i32* %34, align 4
  br label %40

35:                                               ; preds = %27, %22
  %36 = load i8*, i8** @SMC_CLOSED, align 8
  %37 = ptrtoint i8* %36 to i32
  %38 = load %struct.sock*, %struct.sock** %4, align 8
  %39 = getelementptr inbounds %struct.sock, %struct.sock* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  br label %40

40:                                               ; preds = %35, %32
  %41 = load %struct.sock*, %struct.sock** %4, align 8
  %42 = call i32 @sock_put(%struct.sock* %41)
  br label %56

43:                                               ; preds = %1, %1
  %44 = load i8*, i8** @SMC_CLOSED, align 8
  %45 = ptrtoint i8* %44 to i32
  %46 = load %struct.sock*, %struct.sock** %4, align 8
  %47 = getelementptr inbounds %struct.sock, %struct.sock* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.sock*, %struct.sock** %4, align 8
  %49 = call i32 @sock_put(%struct.sock* %48)
  br label %56

50:                                               ; preds = %1
  %51 = load i8*, i8** @SMC_CLOSED, align 8
  %52 = ptrtoint i8* %51 to i32
  %53 = load %struct.sock*, %struct.sock** %4, align 8
  %54 = getelementptr inbounds %struct.sock, %struct.sock* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  br label %56

55:                                               ; preds = %1
  br label %56

56:                                               ; preds = %1, %55, %50, %43, %40, %19, %14
  ret void
}

declare dso_local i32 @sock_put(%struct.sock*) #1

declare dso_local i32 @smc_close_sent_any_close(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
