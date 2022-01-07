; ModuleID = '/home/carl/AnghaBench/linux/net/llc/extr_llc_c_ac.c_llc_conn_ac_adjust_npta_by_rr.c'
source_filename = "/home/carl/AnghaBench/linux/net/llc/extr_llc_c_ac.c_llc_conn_ac_adjust_npta_by_rr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.llc_sock = type { i32, i32, i64, i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @llc_conn_ac_adjust_npta_by_rr(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.llc_sock*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = load %struct.sock*, %struct.sock** %3, align 8
  %7 = call %struct.llc_sock* @llc_sk(%struct.sock* %6)
  store %struct.llc_sock* %7, %struct.llc_sock** %5, align 8
  %8 = load %struct.llc_sock*, %struct.llc_sock** %5, align 8
  %9 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %51, label %12

12:                                               ; preds = %2
  %13 = load %struct.llc_sock*, %struct.llc_sock** %5, align 8
  %14 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %51, label %17

17:                                               ; preds = %12
  %18 = load %struct.llc_sock*, %struct.llc_sock** %5, align 8
  %19 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %50, label %22

22:                                               ; preds = %17
  %23 = load %struct.llc_sock*, %struct.llc_sock** %5, align 8
  %24 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %44, label %27

27:                                               ; preds = %22
  %28 = load %struct.llc_sock*, %struct.llc_sock** %5, align 8
  %29 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %28, i32 0, i32 0
  store i32 2, i32* %29, align 8
  %30 = load %struct.llc_sock*, %struct.llc_sock** %5, align 8
  %31 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %30, i32 0, i32 1
  store i32 2, i32* %31, align 4
  %32 = load %struct.llc_sock*, %struct.llc_sock** %5, align 8
  %33 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %27
  %37 = load %struct.llc_sock*, %struct.llc_sock** %5, align 8
  %38 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = sub nsw i64 %39, 1
  %41 = load %struct.llc_sock*, %struct.llc_sock** %5, align 8
  %42 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %41, i32 0, i32 2
  store i64 %40, i64* %42, align 8
  br label %43

43:                                               ; preds = %36, %27
  br label %49

44:                                               ; preds = %22
  %45 = load %struct.llc_sock*, %struct.llc_sock** %5, align 8
  %46 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sub nsw i32 %47, 1
  store i32 %48, i32* %46, align 8
  br label %49

49:                                               ; preds = %44, %43
  br label %50

50:                                               ; preds = %49, %17
  br label %54

51:                                               ; preds = %12, %2
  %52 = load %struct.llc_sock*, %struct.llc_sock** %5, align 8
  %53 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %52, i32 0, i32 3
  store i64 0, i64* %53, align 8
  br label %54

54:                                               ; preds = %51, %50
  ret i32 0
}

declare dso_local %struct.llc_sock* @llc_sk(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
