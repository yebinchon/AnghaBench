; ModuleID = '/home/carl/AnghaBench/linux/net/netlink/extr_af_netlink.c_do_one_set_err.c'
source_filename = "/home/carl/AnghaBench/linux/net/netlink/extr_af_netlink.c_do_one_set_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i32 (%struct.sock*)* }
%struct.netlink_set_err_data = type { i64, i32, i64, %struct.sock* }
%struct.netlink_sock = type { i64, i32, i32, i32 }

@ENOBUFS = common dso_local global i64 0, align 8
@NETLINK_F_RECV_NO_ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.netlink_set_err_data*)* @do_one_set_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_one_set_err(%struct.sock* %0, %struct.netlink_set_err_data* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.netlink_set_err_data*, align 8
  %5 = alloca %struct.netlink_sock*, align 8
  %6 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.netlink_set_err_data* %1, %struct.netlink_set_err_data** %4, align 8
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = call %struct.netlink_sock* @nlk_sk(%struct.sock* %7)
  store %struct.netlink_sock* %8, %struct.netlink_sock** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.sock*, %struct.sock** %3, align 8
  %10 = load %struct.netlink_set_err_data*, %struct.netlink_set_err_data** %4, align 8
  %11 = getelementptr inbounds %struct.netlink_set_err_data, %struct.netlink_set_err_data* %10, i32 0, i32 3
  %12 = load %struct.sock*, %struct.sock** %11, align 8
  %13 = icmp eq %struct.sock* %9, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %78

15:                                               ; preds = %2
  %16 = load %struct.sock*, %struct.sock** %3, align 8
  %17 = call i32 @sock_net(%struct.sock* %16)
  %18 = load %struct.netlink_set_err_data*, %struct.netlink_set_err_data** %4, align 8
  %19 = getelementptr inbounds %struct.netlink_set_err_data, %struct.netlink_set_err_data* %18, i32 0, i32 3
  %20 = load %struct.sock*, %struct.sock** %19, align 8
  %21 = call i32 @sock_net(%struct.sock* %20)
  %22 = call i32 @net_eq(i32 %17, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %15
  br label %78

25:                                               ; preds = %15
  %26 = load %struct.netlink_sock*, %struct.netlink_sock** %5, align 8
  %27 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.netlink_set_err_data*, %struct.netlink_set_err_data** %4, align 8
  %30 = getelementptr inbounds %struct.netlink_set_err_data, %struct.netlink_set_err_data* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %28, %31
  br i1 %32, label %52, label %33

33:                                               ; preds = %25
  %34 = load %struct.netlink_set_err_data*, %struct.netlink_set_err_data** %4, align 8
  %35 = getelementptr inbounds %struct.netlink_set_err_data, %struct.netlink_set_err_data* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = sub nsw i32 %36, 1
  %38 = load %struct.netlink_sock*, %struct.netlink_sock** %5, align 8
  %39 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = icmp sge i32 %37, %40
  br i1 %41, label %52, label %42

42:                                               ; preds = %33
  %43 = load %struct.netlink_set_err_data*, %struct.netlink_set_err_data** %4, align 8
  %44 = getelementptr inbounds %struct.netlink_set_err_data, %struct.netlink_set_err_data* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = sub nsw i32 %45, 1
  %47 = load %struct.netlink_sock*, %struct.netlink_sock** %5, align 8
  %48 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @test_bit(i32 %46, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %42, %33, %25
  br label %78

53:                                               ; preds = %42
  %54 = load %struct.netlink_set_err_data*, %struct.netlink_set_err_data** %4, align 8
  %55 = getelementptr inbounds %struct.netlink_set_err_data, %struct.netlink_set_err_data* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @ENOBUFS, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %53
  %60 = load %struct.netlink_sock*, %struct.netlink_sock** %5, align 8
  %61 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @NETLINK_F_RECV_NO_ENOBUFS, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  store i32 1, i32* %6, align 4
  br label %78

67:                                               ; preds = %59, %53
  %68 = load %struct.netlink_set_err_data*, %struct.netlink_set_err_data** %4, align 8
  %69 = getelementptr inbounds %struct.netlink_set_err_data, %struct.netlink_set_err_data* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.sock*, %struct.sock** %3, align 8
  %72 = getelementptr inbounds %struct.sock, %struct.sock* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  %73 = load %struct.sock*, %struct.sock** %3, align 8
  %74 = getelementptr inbounds %struct.sock, %struct.sock* %73, i32 0, i32 1
  %75 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %74, align 8
  %76 = load %struct.sock*, %struct.sock** %3, align 8
  %77 = call i32 %75(%struct.sock* %76)
  br label %78

78:                                               ; preds = %67, %66, %52, %24, %14
  %79 = load i32, i32* %6, align 4
  ret i32 %79
}

declare dso_local %struct.netlink_sock* @nlk_sk(%struct.sock*) #1

declare dso_local i32 @net_eq(i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @test_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
