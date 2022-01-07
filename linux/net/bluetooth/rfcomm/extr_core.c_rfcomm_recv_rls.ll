; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_core.c_rfcomm_recv_rls.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_core.c_rfcomm_recv_rls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfcomm_session = type { i32 }
%struct.sk_buff = type { i64 }
%struct.rfcomm_rls = type { i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"dlci %d cr %d status 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rfcomm_session*, i32, %struct.sk_buff*)* @rfcomm_recv_rls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rfcomm_recv_rls(%struct.rfcomm_session* %0, i32 %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rfcomm_session*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.rfcomm_rls*, align 8
  %9 = alloca i32, align 4
  store %struct.rfcomm_session* %0, %struct.rfcomm_session** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i8*
  %14 = bitcast i8* %13 to %struct.rfcomm_rls*
  store %struct.rfcomm_rls* %14, %struct.rfcomm_rls** %8, align 8
  %15 = load %struct.rfcomm_rls*, %struct.rfcomm_rls** %8, align 8
  %16 = getelementptr inbounds %struct.rfcomm_rls, %struct.rfcomm_rls* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @__get_dlci(i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.rfcomm_rls*, %struct.rfcomm_rls** %8, align 8
  %22 = getelementptr inbounds %struct.rfcomm_rls, %struct.rfcomm_rls* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @BT_DBG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20, i32 %23)
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %35

28:                                               ; preds = %3
  %29 = load %struct.rfcomm_session*, %struct.rfcomm_session** %5, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.rfcomm_rls*, %struct.rfcomm_rls** %8, align 8
  %32 = getelementptr inbounds %struct.rfcomm_rls, %struct.rfcomm_rls* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @rfcomm_send_rls(%struct.rfcomm_session* %29, i32 0, i32 %30, i32 %33)
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %28, %27
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @__get_dlci(i32) #1

declare dso_local i32 @BT_DBG(i8*, i32, i32, i32) #1

declare dso_local i32 @rfcomm_send_rls(%struct.rfcomm_session*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
