; ModuleID = '/home/carl/AnghaBench/linux/net/phonet/extr_af_phonet.c_send_obj_unreachable.c'
source_filename = "/home/carl/AnghaBench/linux/net/phonet/extr_af_phonet.c_send_obj_unreachable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.phonethdr = type { i64, i32, i32, i32, i32 }
%struct.phonetmsg = type { i64, i32, i32, i8*, i64, i32, i8*, i32, i32 }

@PN_COMMON_MESSAGE = common dso_local global i32 0, align 4
@PN_PREFIX = common dso_local global i64 0, align 8
@PN_COMM_ISA_ENTITY_NOT_REACHABLE_RESP = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @send_obj_unreachable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_obj_unreachable(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.phonethdr*, align 8
  %4 = alloca %struct.phonetmsg*, align 8
  %5 = alloca %struct.phonetmsg, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %7 = call %struct.phonethdr* @pn_hdr(%struct.sk_buff* %6)
  store %struct.phonethdr* %7, %struct.phonethdr** %3, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %9 = call %struct.phonetmsg* @pn_msg(%struct.sk_buff* %8)
  store %struct.phonetmsg* %9, %struct.phonetmsg** %4, align 8
  %10 = call i32 @memset(%struct.phonetmsg* %5, i32 0, i32 56)
  %11 = load %struct.phonetmsg*, %struct.phonetmsg** %4, align 8
  %12 = getelementptr inbounds %struct.phonetmsg, %struct.phonetmsg* %11, i32 0, i32 8
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.phonetmsg, %struct.phonetmsg* %5, i32 0, i32 8
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* @PN_COMMON_MESSAGE, align 4
  %16 = getelementptr inbounds %struct.phonetmsg, %struct.phonetmsg* %5, i32 0, i32 1
  store i32 %15, i32* %16, align 8
  %17 = load %struct.phonethdr*, %struct.phonethdr** %3, align 8
  %18 = getelementptr inbounds %struct.phonethdr, %struct.phonethdr* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @PN_PREFIX, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %1
  %23 = load %struct.phonetmsg*, %struct.phonetmsg** %4, align 8
  %24 = getelementptr inbounds %struct.phonetmsg, %struct.phonetmsg* %23, i32 0, i32 7
  %25 = load i32, i32* %24, align 8
  %26 = getelementptr inbounds %struct.phonetmsg, %struct.phonetmsg* %5, i32 0, i32 7
  store i32 %25, i32* %26, align 8
  %27 = load i8*, i8** @PN_COMM_ISA_ENTITY_NOT_REACHABLE_RESP, align 8
  %28 = getelementptr inbounds %struct.phonetmsg, %struct.phonetmsg* %5, i32 0, i32 6
  store i8* %27, i8** %28, align 8
  %29 = load %struct.phonetmsg*, %struct.phonetmsg** %4, align 8
  %30 = getelementptr inbounds %struct.phonetmsg, %struct.phonetmsg* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = getelementptr inbounds %struct.phonetmsg, %struct.phonetmsg* %5, i32 0, i32 5
  store i32 %31, i32* %32, align 8
  %33 = getelementptr inbounds %struct.phonetmsg, %struct.phonetmsg* %5, i32 0, i32 4
  store i64 0, i64* %33, align 8
  br label %42

34:                                               ; preds = %1
  %35 = load i8*, i8** @PN_COMM_ISA_ENTITY_NOT_REACHABLE_RESP, align 8
  %36 = getelementptr inbounds %struct.phonetmsg, %struct.phonetmsg* %5, i32 0, i32 3
  store i8* %35, i8** %36, align 8
  %37 = load %struct.phonetmsg*, %struct.phonetmsg** %4, align 8
  %38 = getelementptr inbounds %struct.phonetmsg, %struct.phonetmsg* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = getelementptr inbounds %struct.phonetmsg, %struct.phonetmsg* %5, i32 0, i32 2
  store i32 %39, i32* %40, align 4
  %41 = getelementptr inbounds %struct.phonetmsg, %struct.phonetmsg* %5, i32 0, i32 0
  store i64 0, i64* %41, align 8
  br label %42

42:                                               ; preds = %34, %22
  %43 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.phonethdr*, %struct.phonethdr** %3, align 8
  %47 = getelementptr inbounds %struct.phonethdr, %struct.phonethdr* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.phonethdr*, %struct.phonethdr** %3, align 8
  %50 = getelementptr inbounds %struct.phonethdr, %struct.phonethdr* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @pn_object(i32 %48, i32 %51)
  %53 = load %struct.phonethdr*, %struct.phonethdr** %3, align 8
  %54 = getelementptr inbounds %struct.phonethdr, %struct.phonethdr* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.phonethdr*, %struct.phonethdr** %3, align 8
  %57 = getelementptr inbounds %struct.phonethdr, %struct.phonethdr* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @pn_object(i32 %55, i32 %58)
  %60 = load %struct.phonethdr*, %struct.phonethdr** %3, align 8
  %61 = getelementptr inbounds %struct.phonethdr, %struct.phonethdr* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @pn_raw_send(%struct.phonetmsg* %5, i32 56, i32 %45, i32 %52, i32 %59, i64 %62)
  ret i32 %63
}

declare dso_local %struct.phonethdr* @pn_hdr(%struct.sk_buff*) #1

declare dso_local %struct.phonetmsg* @pn_msg(%struct.sk_buff*) #1

declare dso_local i32 @memset(%struct.phonetmsg*, i32, i32) #1

declare dso_local i32 @pn_raw_send(%struct.phonetmsg*, i32, i32, i32, i32, i64) #1

declare dso_local i32 @pn_object(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
