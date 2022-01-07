; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_test_tc_edt.c_handle_ipv4.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_test_tc_edt.c_handle_ipv4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__sk_buff = type { i64, i64 }
%struct.iphdr = type { i32, i64 }
%struct.tcphdr = type { i32 }

@TC_ACT_SHOT = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i64 0, align 8
@TC_ACT_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.__sk_buff*)* @handle_ipv4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_ipv4(%struct.__sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.__sk_buff*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.iphdr*, align 8
  %7 = alloca i32, align 4
  store %struct.__sk_buff* %0, %struct.__sk_buff** %3, align 8
  %8 = load %struct.__sk_buff*, %struct.__sk_buff** %3, align 8
  %9 = getelementptr inbounds %struct.__sk_buff, %struct.__sk_buff* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i8*
  store i8* %11, i8** %4, align 8
  %12 = load %struct.__sk_buff*, %struct.__sk_buff** %3, align 8
  %13 = getelementptr inbounds %struct.__sk_buff, %struct.__sk_buff* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i8*
  store i8* %15, i8** %5, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = getelementptr i8, i8* %16, i64 4
  %18 = load i8*, i8** %4, align 8
  %19 = icmp ugt i8* %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* @TC_ACT_SHOT, align 4
  store i32 %21, i32* %2, align 4
  br label %64

22:                                               ; preds = %1
  %23 = load i8*, i8** %5, align 8
  %24 = getelementptr i8, i8* %23, i64 4
  %25 = bitcast i8* %24 to %struct.iphdr*
  store %struct.iphdr* %25, %struct.iphdr** %6, align 8
  %26 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %27 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %26, i64 1
  %28 = bitcast %struct.iphdr* %27 to i8*
  %29 = load i8*, i8** %4, align 8
  %30 = icmp ugt i8* %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = load i32, i32* @TC_ACT_SHOT, align 4
  store i32 %32, i32* %2, align 4
  br label %64

33:                                               ; preds = %22
  %34 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %35 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = mul nsw i32 %36, 4
  store i32 %37, i32* %7, align 4
  %38 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %39 = bitcast %struct.iphdr* %38 to i8*
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr i8, i8* %39, i64 %41
  %43 = load i8*, i8** %4, align 8
  %44 = icmp ugt i8* %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %33
  %46 = load i32, i32* @TC_ACT_SHOT, align 4
  store i32 %46, i32* %2, align 4
  br label %64

47:                                               ; preds = %33
  %48 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %49 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @IPPROTO_TCP, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %47
  %54 = load %struct.__sk_buff*, %struct.__sk_buff** %3, align 8
  %55 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %56 = bitcast %struct.iphdr* %55 to i8*
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr i8, i8* %56, i64 %58
  %60 = bitcast i8* %59 to %struct.tcphdr*
  %61 = call i32 @handle_tcp(%struct.__sk_buff* %54, %struct.tcphdr* %60)
  store i32 %61, i32* %2, align 4
  br label %64

62:                                               ; preds = %47
  %63 = load i32, i32* @TC_ACT_OK, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %62, %53, %45, %31, %20
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @handle_tcp(%struct.__sk_buff*, %struct.tcphdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
