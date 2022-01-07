; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_recovery.c_tcp_rack_update_reo_wnd.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_recovery.c_tcp_rack_update_reo_wnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.rate_sample = type { i32 }
%struct.tcp_sock = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@TCP_RACK_STATIC_REO_WND = common dso_local global i32 0, align 4
@u32 = common dso_local global i32 0, align 4
@TCP_RACK_RECOVERY_THRESH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_rack_update_reo_wnd(%struct.sock* %0, %struct.rate_sample* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.rate_sample*, align 8
  %5 = alloca %struct.tcp_sock*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.rate_sample* %1, %struct.rate_sample** %4, align 8
  %6 = load %struct.sock*, %struct.sock** %3, align 8
  %7 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %6)
  store %struct.tcp_sock* %7, %struct.tcp_sock** %5, align 8
  %8 = load %struct.sock*, %struct.sock** %3, align 8
  %9 = call %struct.TYPE_6__* @sock_net(%struct.sock* %8)
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @TCP_RACK_STATIC_REO_WND, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load %struct.rate_sample*, %struct.rate_sample** %4, align 8
  %18 = getelementptr inbounds %struct.rate_sample, %struct.rate_sample* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16, %2
  br label %77

22:                                               ; preds = %16
  %23 = load %struct.rate_sample*, %struct.rate_sample** %4, align 8
  %24 = getelementptr inbounds %struct.rate_sample, %struct.rate_sample* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %27 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @before(i32 %25, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %22
  %33 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %34 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 3
  store i64 0, i64* %35, align 8
  br label %36

36:                                               ; preds = %32, %22
  %37 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %38 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %66

42:                                               ; preds = %36
  %43 = load i32, i32* @u32, align 4
  %44 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %45 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, 1
  %49 = call i32 @min_t(i32 %43, i32 255, i32 %48)
  %50 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %51 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 8
  %53 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %54 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 3
  store i64 0, i64* %55, align 8
  %56 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %57 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %60 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 2
  store i32 %58, i32* %61, align 8
  %62 = load i32, i32* @TCP_RACK_RECOVERY_THRESH, align 4
  %63 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %64 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  store i32 %62, i32* %65, align 4
  br label %77

66:                                               ; preds = %36
  %67 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %68 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %66
  %73 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %74 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  store i32 1, i32* %75, align 8
  br label %76

76:                                               ; preds = %72, %66
  br label %77

77:                                               ; preds = %21, %76, %42
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.TYPE_6__* @sock_net(%struct.sock*) #1

declare dso_local i64 @before(i32, i32) #1

declare dso_local i32 @min_t(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
