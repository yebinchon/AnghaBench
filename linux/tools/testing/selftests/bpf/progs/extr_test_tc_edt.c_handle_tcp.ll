; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_test_tc_edt.c_handle_tcp.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_test_tc_edt.c_handle_tcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__sk_buff = type { i64 }
%struct.tcphdr = type { i64 }

@TC_ACT_SHOT = common dso_local global i32 0, align 4
@TC_ACT_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.__sk_buff*, %struct.tcphdr*)* @handle_tcp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_tcp(%struct.__sk_buff* %0, %struct.tcphdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__sk_buff*, align 8
  %5 = alloca %struct.tcphdr*, align 8
  %6 = alloca i8*, align 8
  store %struct.__sk_buff* %0, %struct.__sk_buff** %4, align 8
  store %struct.tcphdr* %1, %struct.tcphdr** %5, align 8
  %7 = load %struct.__sk_buff*, %struct.__sk_buff** %4, align 8
  %8 = getelementptr inbounds %struct.__sk_buff, %struct.__sk_buff* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to i8*
  store i8* %10, i8** %6, align 8
  %11 = load %struct.tcphdr*, %struct.tcphdr** %5, align 8
  %12 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %11, i64 1
  %13 = bitcast %struct.tcphdr* %12 to i8*
  %14 = load i8*, i8** %6, align 8
  %15 = icmp ugt i8* %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @TC_ACT_SHOT, align 4
  store i32 %17, i32* %3, align 4
  br label %29

18:                                               ; preds = %2
  %19 = load %struct.tcphdr*, %struct.tcphdr** %5, align 8
  %20 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i64 @bpf_htons(i32 9000)
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load %struct.__sk_buff*, %struct.__sk_buff** %4, align 8
  %26 = call i32 @throttle_flow(%struct.__sk_buff* %25)
  store i32 %26, i32* %3, align 4
  br label %29

27:                                               ; preds = %18
  %28 = load i32, i32* @TC_ACT_OK, align 4
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %27, %24, %16
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i64 @bpf_htons(i32) #1

declare dso_local i32 @throttle_flow(%struct.__sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
