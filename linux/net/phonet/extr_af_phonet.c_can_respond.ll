; ModuleID = '/home/carl/AnghaBench/linux/net/phonet/extr_af_phonet.c_can_respond.c'
source_filename = "/home/carl/AnghaBench/linux/net/phonet/extr_af_phonet.c_can_respond.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.phonethdr = type { i64 }
%struct.phonetmsg = type { i64, i64, i64 }

@PN_PREFIX = common dso_local global i64 0, align 8
@PN_COMMGR = common dso_local global i64 0, align 8
@PN_COMMON_MESSAGE = common dso_local global i64 0, align 8
@PN_COMM_ISA_ENTITY_NOT_REACHABLE_RESP = common dso_local global i64 0, align 8
@PN_COMM_SERVICE_NOT_IDENTIFIED_RESP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @can_respond to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @can_respond(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.phonethdr*, align 8
  %5 = alloca %struct.phonetmsg*, align 8
  %6 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %8 = call i32 @pskb_may_pull(%struct.sk_buff* %7, i32 3)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %69

11:                                               ; preds = %1
  %12 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %13 = call %struct.phonethdr* @pn_hdr(%struct.sk_buff* %12)
  store %struct.phonethdr* %13, %struct.phonethdr** %4, align 8
  %14 = load %struct.phonethdr*, %struct.phonethdr** %4, align 8
  %15 = getelementptr inbounds %struct.phonethdr, %struct.phonethdr* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @PN_PREFIX, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %11
  %20 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %21 = call i32 @pskb_may_pull(%struct.sk_buff* %20, i32 5)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %69

24:                                               ; preds = %19, %11
  %25 = load %struct.phonethdr*, %struct.phonethdr** %4, align 8
  %26 = getelementptr inbounds %struct.phonethdr, %struct.phonethdr* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @PN_COMMGR, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %69

31:                                               ; preds = %24
  %32 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %33 = call %struct.phonethdr* @pn_hdr(%struct.sk_buff* %32)
  store %struct.phonethdr* %33, %struct.phonethdr** %4, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %35 = call %struct.phonetmsg* @pn_msg(%struct.sk_buff* %34)
  store %struct.phonetmsg* %35, %struct.phonetmsg** %5, align 8
  %36 = load %struct.phonetmsg*, %struct.phonetmsg** %5, align 8
  %37 = getelementptr inbounds %struct.phonetmsg, %struct.phonetmsg* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @PN_COMMON_MESSAGE, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  store i32 1, i32* %2, align 4
  br label %69

42:                                               ; preds = %31
  %43 = load %struct.phonethdr*, %struct.phonethdr** %4, align 8
  %44 = getelementptr inbounds %struct.phonethdr, %struct.phonethdr* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @PN_PREFIX, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load %struct.phonetmsg*, %struct.phonetmsg** %5, align 8
  %50 = getelementptr inbounds %struct.phonetmsg, %struct.phonetmsg* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  br label %56

52:                                               ; preds = %42
  %53 = load %struct.phonetmsg*, %struct.phonetmsg** %5, align 8
  %54 = getelementptr inbounds %struct.phonetmsg, %struct.phonetmsg* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  br label %56

56:                                               ; preds = %52, %48
  %57 = phi i64 [ %51, %48 ], [ %55, %52 ]
  store i64 %57, i64* %6, align 8
  %58 = load i64, i64* %6, align 8
  %59 = load i64, i64* @PN_COMM_ISA_ENTITY_NOT_REACHABLE_RESP, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %56
  %62 = load %struct.phonetmsg*, %struct.phonetmsg** %5, align 8
  %63 = getelementptr inbounds %struct.phonetmsg, %struct.phonetmsg* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @PN_COMM_SERVICE_NOT_IDENTIFIED_RESP, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  store i32 1, i32* %2, align 4
  br label %69

68:                                               ; preds = %61, %56
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %68, %67, %41, %30, %23, %10
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.phonethdr* @pn_hdr(%struct.sk_buff*) #1

declare dso_local %struct.phonetmsg* @pn_msg(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
