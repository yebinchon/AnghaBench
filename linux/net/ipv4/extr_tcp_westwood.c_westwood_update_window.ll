; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_westwood.c_westwood_update_window.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_westwood.c_westwood_update_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.westwood = type { i64, i64, i64, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@tcp_jiffies32 = common dso_local global i64 0, align 8
@u32 = common dso_local global i32 0, align 4
@TCP_WESTWOOD_RTT_MIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @westwood_update_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @westwood_update_window(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.westwood*, align 8
  %4 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %5 = load %struct.sock*, %struct.sock** %2, align 8
  %6 = call %struct.westwood* @inet_csk_ca(%struct.sock* %5)
  store %struct.westwood* %6, %struct.westwood** %3, align 8
  %7 = load i64, i64* @tcp_jiffies32, align 8
  %8 = load %struct.westwood*, %struct.westwood** %3, align 8
  %9 = getelementptr inbounds %struct.westwood, %struct.westwood* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = sub nsw i64 %7, %10
  store i64 %11, i64* %4, align 8
  %12 = load %struct.westwood*, %struct.westwood** %3, align 8
  %13 = getelementptr inbounds %struct.westwood, %struct.westwood* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %1
  %17 = load %struct.sock*, %struct.sock** %2, align 8
  %18 = call %struct.TYPE_2__* @tcp_sk(%struct.sock* %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.westwood*, %struct.westwood** %3, align 8
  %22 = getelementptr inbounds %struct.westwood, %struct.westwood* %21, i32 0, i32 4
  store i32 %20, i32* %22, align 8
  %23 = load %struct.westwood*, %struct.westwood** %3, align 8
  %24 = getelementptr inbounds %struct.westwood, %struct.westwood* %23, i32 0, i32 3
  store i64 0, i64* %24, align 8
  br label %25

25:                                               ; preds = %16, %1
  %26 = load %struct.westwood*, %struct.westwood** %3, align 8
  %27 = getelementptr inbounds %struct.westwood, %struct.westwood* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %48

30:                                               ; preds = %25
  %31 = load i64, i64* %4, align 8
  %32 = load i32, i32* @u32, align 4
  %33 = load %struct.westwood*, %struct.westwood** %3, align 8
  %34 = getelementptr inbounds %struct.westwood, %struct.westwood* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* @TCP_WESTWOOD_RTT_MIN, align 4
  %37 = call i64 @max_t(i32 %32, i64 %35, i32 %36)
  %38 = icmp sgt i64 %31, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %30
  %40 = load %struct.westwood*, %struct.westwood** %3, align 8
  %41 = load i64, i64* %4, align 8
  %42 = call i32 @westwood_filter(%struct.westwood* %40, i64 %41)
  %43 = load %struct.westwood*, %struct.westwood** %3, align 8
  %44 = getelementptr inbounds %struct.westwood, %struct.westwood* %43, i32 0, i32 1
  store i64 0, i64* %44, align 8
  %45 = load i64, i64* @tcp_jiffies32, align 8
  %46 = load %struct.westwood*, %struct.westwood** %3, align 8
  %47 = getelementptr inbounds %struct.westwood, %struct.westwood* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  br label %48

48:                                               ; preds = %39, %30, %25
  ret void
}

declare dso_local %struct.westwood* @inet_csk_ca(%struct.sock*) #1

declare dso_local %struct.TYPE_2__* @tcp_sk(%struct.sock*) #1

declare dso_local i64 @max_t(i32, i64, i32) #1

declare dso_local i32 @westwood_filter(%struct.westwood*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
