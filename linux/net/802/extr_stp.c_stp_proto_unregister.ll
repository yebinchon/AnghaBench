; ModuleID = '/home/carl/AnghaBench/linux/net/802/extr_stp.c_stp_proto_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/net/802/extr_stp.c_stp_proto_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stp_proto = type { i64* }

@stp_proto_mutex = common dso_local global i32 0, align 4
@stp_proto = common dso_local global i32 0, align 4
@garp_protos = common dso_local global i32* null, align 8
@GARP_ADDR_MIN = common dso_local global i64 0, align 8
@sap_registered = common dso_local global i64 0, align 8
@sap = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stp_proto_unregister(%struct.stp_proto* %0) #0 {
  %2 = alloca %struct.stp_proto*, align 8
  store %struct.stp_proto* %0, %struct.stp_proto** %2, align 8
  %3 = call i32 @mutex_lock(i32* @stp_proto_mutex)
  %4 = load %struct.stp_proto*, %struct.stp_proto** %2, align 8
  %5 = getelementptr inbounds %struct.stp_proto, %struct.stp_proto* %4, i32 0, i32 0
  %6 = load i64*, i64** %5, align 8
  %7 = call i64 @is_zero_ether_addr(i64* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @stp_proto, align 4
  %11 = call i32 @RCU_INIT_POINTER(i32 %10, i32* null)
  br label %24

12:                                               ; preds = %1
  %13 = load i32*, i32** @garp_protos, align 8
  %14 = load %struct.stp_proto*, %struct.stp_proto** %2, align 8
  %15 = getelementptr inbounds %struct.stp_proto, %struct.stp_proto* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 5
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @GARP_ADDR_MIN, align 8
  %20 = sub i64 %18, %19
  %21 = getelementptr inbounds i32, i32* %13, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @RCU_INIT_POINTER(i32 %22, i32* null)
  br label %24

24:                                               ; preds = %12, %9
  %25 = call i32 (...) @synchronize_rcu()
  %26 = load i64, i64* @sap_registered, align 8
  %27 = add nsw i64 %26, -1
  store i64 %27, i64* @sap_registered, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* @sap, align 4
  %31 = call i32 @llc_sap_put(i32 %30)
  br label %32

32:                                               ; preds = %29, %24
  %33 = call i32 @mutex_unlock(i32* @stp_proto_mutex)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @is_zero_ether_addr(i64*) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @llc_sap_put(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
