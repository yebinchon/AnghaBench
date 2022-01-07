; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/extr_timer.c_dccp_write_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/extr_timer.c_dccp_write_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64 }
%struct.inet_connection_sock = type { i32, i64 }

@DCCP_REQUESTING = common dso_local global i64 0, align 8
@DCCP_PARTOPEN = common dso_local global i64 0, align 8
@sysctl_dccp_request_retries = common dso_local global i32 0, align 4
@sysctl_dccp_retries1 = common dso_local global i32 0, align 4
@sysctl_dccp_retries2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*)* @dccp_write_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dccp_write_timeout(%struct.sock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.inet_connection_sock*, align 8
  %5 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  %6 = load %struct.sock*, %struct.sock** %3, align 8
  %7 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %6)
  store %struct.inet_connection_sock* %7, %struct.inet_connection_sock** %4, align 8
  %8 = load %struct.sock*, %struct.sock** %3, align 8
  %9 = getelementptr inbounds %struct.sock, %struct.sock* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @DCCP_REQUESTING, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.sock*, %struct.sock** %3, align 8
  %15 = getelementptr inbounds %struct.sock, %struct.sock* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @DCCP_PARTOPEN, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %39

19:                                               ; preds = %13, %1
  %20 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %4, align 8
  %21 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load %struct.sock*, %struct.sock** %3, align 8
  %26 = call i32 @dst_negative_advice(%struct.sock* %25)
  br label %27

27:                                               ; preds = %24, %19
  %28 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %4, align 8
  %29 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %36

33:                                               ; preds = %27
  %34 = load i32, i32* @sysctl_dccp_request_retries, align 4
  %35 = sext i32 %34 to i64
  br label %36

36:                                               ; preds = %33, %32
  %37 = phi i64 [ %30, %32 ], [ %35, %33 ]
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %5, align 4
  br label %50

39:                                               ; preds = %13
  %40 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %4, align 8
  %41 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @sysctl_dccp_retries1, align 4
  %44 = icmp sge i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load %struct.sock*, %struct.sock** %3, align 8
  %47 = call i32 @dst_negative_advice(%struct.sock* %46)
  br label %48

48:                                               ; preds = %45, %39
  %49 = load i32, i32* @sysctl_dccp_retries2, align 4
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %48, %36
  %51 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %4, align 8
  %52 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = icmp sge i32 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load %struct.sock*, %struct.sock** %3, align 8
  %58 = call i32 @dccp_write_err(%struct.sock* %57)
  store i32 1, i32* %2, align 4
  br label %60

59:                                               ; preds = %50
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %59, %56
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local i32 @dst_negative_advice(%struct.sock*) #1

declare dso_local i32 @dccp_write_err(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
