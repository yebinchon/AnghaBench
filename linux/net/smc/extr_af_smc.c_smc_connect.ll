; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_af_smc.c_smc_connect.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_af_smc.c_smc_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.sockaddr = type { i64 }
%struct.smc_sock = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@EISCONN = common dso_local global i32 0, align 4
@EALREADY = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32, i32)* @smc_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smc_connect(%struct.socket* %0, %struct.sockaddr* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.smc_sock*, align 8
  %11 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.socket*, %struct.socket** %5, align 8
  %13 = getelementptr inbounds %struct.socket, %struct.socket* %12, i32 0, i32 0
  %14 = load %struct.sock*, %struct.sock** %13, align 8
  store %struct.sock* %14, %struct.sock** %9, align 8
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %11, align 4
  %17 = load %struct.sock*, %struct.sock** %9, align 8
  %18 = call %struct.smc_sock* @smc_sk(%struct.sock* %17)
  store %struct.smc_sock* %18, %struct.smc_sock** %10, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = icmp ult i64 %20, 8
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  br label %111

23:                                               ; preds = %4
  %24 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %25 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @AF_INET, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %23
  %30 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %31 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @AF_INET6, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %111

36:                                               ; preds = %29, %23
  %37 = load %struct.sock*, %struct.sock** %9, align 8
  %38 = call i32 @lock_sock(%struct.sock* %37)
  %39 = load %struct.sock*, %struct.sock** %9, align 8
  %40 = getelementptr inbounds %struct.sock, %struct.sock* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %42 [
    i32 129, label %43
    i32 128, label %46
  ]

42:                                               ; preds = %36
  br label %108

43:                                               ; preds = %36
  %44 = load i32, i32* @EISCONN, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %11, align 4
  br label %108

46:                                               ; preds = %36
  store i32 0, i32* %11, align 4
  br label %47

47:                                               ; preds = %46
  %48 = load %struct.smc_sock*, %struct.smc_sock** %10, align 8
  %49 = call i32 @smc_copy_sock_settings_to_clc(%struct.smc_sock* %48)
  %50 = load %struct.smc_sock*, %struct.smc_sock** %10, align 8
  %51 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %50, i32 0, i32 3
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call %struct.TYPE_3__* @tcp_sk(i32 %54)
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  store i32 1, i32* %56, align 4
  %57 = load %struct.smc_sock*, %struct.smc_sock** %10, align 8
  %58 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %47
  %62 = load i32, i32* @EALREADY, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %11, align 4
  br label %108

64:                                               ; preds = %47
  %65 = load %struct.smc_sock*, %struct.smc_sock** %10, align 8
  %66 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %65, i32 0, i32 3
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @kernel_connect(%struct.TYPE_4__* %67, %struct.sockaddr* %68, i32 %69, i32 %70)
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %11, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %64
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* @EINPROGRESS, align 4
  %77 = sub nsw i32 0, %76
  %78 = icmp ne i32 %75, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %108

80:                                               ; preds = %74, %64
  %81 = load %struct.smc_sock*, %struct.smc_sock** %10, align 8
  %82 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %81, i32 0, i32 2
  %83 = call i32 @sock_hold(i32* %82)
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @O_NONBLOCK, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %80
  %89 = load %struct.smc_sock*, %struct.smc_sock** %10, align 8
  %90 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %89, i32 0, i32 1
  %91 = call i64 @schedule_work(i32* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = load %struct.smc_sock*, %struct.smc_sock** %10, align 8
  %95 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %94, i32 0, i32 0
  store i32 1, i32* %95, align 8
  br label %96

96:                                               ; preds = %93, %88
  %97 = load i32, i32* @EINPROGRESS, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %11, align 4
  br label %107

99:                                               ; preds = %80
  %100 = load %struct.smc_sock*, %struct.smc_sock** %10, align 8
  %101 = call i32 @__smc_connect(%struct.smc_sock* %100)
  store i32 %101, i32* %11, align 4
  %102 = load i32, i32* %11, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  br label %108

105:                                              ; preds = %99
  store i32 0, i32* %11, align 4
  br label %106

106:                                              ; preds = %105
  br label %107

107:                                              ; preds = %106, %96
  br label %108

108:                                              ; preds = %107, %104, %79, %61, %43, %42
  %109 = load %struct.sock*, %struct.sock** %9, align 8
  %110 = call i32 @release_sock(%struct.sock* %109)
  br label %111

111:                                              ; preds = %108, %35, %22
  %112 = load i32, i32* %11, align 4
  ret i32 %112
}

declare dso_local %struct.smc_sock* @smc_sk(%struct.sock*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @smc_copy_sock_settings_to_clc(%struct.smc_sock*) #1

declare dso_local %struct.TYPE_3__* @tcp_sk(i32) #1

declare dso_local i32 @kernel_connect(%struct.TYPE_4__*, %struct.sockaddr*, i32, i32) #1

declare dso_local i32 @sock_hold(i32*) #1

declare dso_local i64 @schedule_work(i32*) #1

declare dso_local i32 @__smc_connect(%struct.smc_sock*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
