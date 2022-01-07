; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_output.c_tcp_cwnd_validate.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_output.c_tcp_cwnd_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.tcp_congestion_ops = type { i32 }
%struct.tcp_sock = type { i64, i64, i32, i64, i64, i32, i32, i32 }
%struct.TYPE_8__ = type { i64, %struct.tcp_congestion_ops* }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@tcp_jiffies32 = common dso_local global i64 0, align 8
@SOCK_NOSPACE = common dso_local global i32 0, align 4
@TCPF_ESTABLISHED = common dso_local global i32 0, align 4
@TCPF_CLOSE_WAIT = common dso_local global i32 0, align 4
@TCP_CHRONO_SNDBUF_LIMITED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i32)* @tcp_cwnd_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_cwnd_validate(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tcp_congestion_ops*, align 8
  %6 = alloca %struct.tcp_sock*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = call %struct.TYPE_8__* @inet_csk(%struct.sock* %7)
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %10 = load %struct.tcp_congestion_ops*, %struct.tcp_congestion_ops** %9, align 8
  store %struct.tcp_congestion_ops* %10, %struct.tcp_congestion_ops** %5, align 8
  %11 = load %struct.sock*, %struct.sock** %3, align 8
  %12 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %11)
  store %struct.tcp_sock* %12, %struct.tcp_sock** %6, align 8
  %13 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %14 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %13, i32 0, i32 7
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %17 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @before(i32 %15, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %2
  %22 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %23 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %26 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %24, %27
  br i1 %28, label %29, label %43

29:                                               ; preds = %21, %2
  %30 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %31 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %34 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %33, i32 0, i32 1
  store i64 %32, i64* %34, align 8
  %35 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %36 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %39 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %38, i32 0, i32 6
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %42 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  br label %43

43:                                               ; preds = %29, %21
  %44 = load %struct.sock*, %struct.sock** %3, align 8
  %45 = call i64 @tcp_is_cwnd_limited(%struct.sock* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %49 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %48, i32 0, i32 3
  store i64 0, i64* %49, align 8
  %50 = load i64, i64* @tcp_jiffies32, align 8
  %51 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %52 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %51, i32 0, i32 4
  store i64 %50, i64* %52, align 8
  br label %125

53:                                               ; preds = %43
  %54 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %55 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %58 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = icmp sgt i64 %56, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %53
  %62 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %63 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %66 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %65, i32 0, i32 3
  store i64 %64, i64* %66, align 8
  br label %67

67:                                               ; preds = %61, %53
  %68 = load %struct.sock*, %struct.sock** %3, align 8
  %69 = call %struct.TYPE_7__* @sock_net(%struct.sock* %68)
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %93

74:                                               ; preds = %67
  %75 = load i64, i64* @tcp_jiffies32, align 8
  %76 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %77 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %76, i32 0, i32 4
  %78 = load i64, i64* %77, align 8
  %79 = sub nsw i64 %75, %78
  %80 = load %struct.sock*, %struct.sock** %3, align 8
  %81 = call %struct.TYPE_8__* @inet_csk(%struct.sock* %80)
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp sge i64 %79, %83
  br i1 %84, label %85, label %93

85:                                               ; preds = %74
  %86 = load %struct.tcp_congestion_ops*, %struct.tcp_congestion_ops** %5, align 8
  %87 = getelementptr inbounds %struct.tcp_congestion_ops, %struct.tcp_congestion_ops* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %85
  %91 = load %struct.sock*, %struct.sock** %3, align 8
  %92 = call i32 @tcp_cwnd_application_limited(%struct.sock* %91)
  br label %93

93:                                               ; preds = %90, %85, %74, %67
  %94 = load %struct.sock*, %struct.sock** %3, align 8
  %95 = call i64 @tcp_write_queue_empty(%struct.sock* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %124

97:                                               ; preds = %93
  %98 = load %struct.sock*, %struct.sock** %3, align 8
  %99 = getelementptr inbounds %struct.sock, %struct.sock* %98, i32 0, i32 1
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = icmp ne %struct.TYPE_6__* %100, null
  br i1 %101, label %102, label %124

102:                                              ; preds = %97
  %103 = load i32, i32* @SOCK_NOSPACE, align 4
  %104 = load %struct.sock*, %struct.sock** %3, align 8
  %105 = getelementptr inbounds %struct.sock, %struct.sock* %104, i32 0, i32 1
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = call i64 @test_bit(i32 %103, i32* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %124

110:                                              ; preds = %102
  %111 = load %struct.sock*, %struct.sock** %3, align 8
  %112 = getelementptr inbounds %struct.sock, %struct.sock* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = shl i32 1, %113
  %115 = load i32, i32* @TCPF_ESTABLISHED, align 4
  %116 = load i32, i32* @TCPF_CLOSE_WAIT, align 4
  %117 = or i32 %115, %116
  %118 = and i32 %114, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %110
  %121 = load %struct.sock*, %struct.sock** %3, align 8
  %122 = load i32, i32* @TCP_CHRONO_SNDBUF_LIMITED, align 4
  %123 = call i32 @tcp_chrono_start(%struct.sock* %121, i32 %122)
  br label %124

124:                                              ; preds = %120, %110, %102, %97, %93
  br label %125

125:                                              ; preds = %124, %47
  ret void
}

declare dso_local %struct.TYPE_8__* @inet_csk(%struct.sock*) #1

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i32 @before(i32, i32) #1

declare dso_local i64 @tcp_is_cwnd_limited(%struct.sock*) #1

declare dso_local %struct.TYPE_7__* @sock_net(%struct.sock*) #1

declare dso_local i32 @tcp_cwnd_application_limited(%struct.sock*) #1

declare dso_local i64 @tcp_write_queue_empty(%struct.sock*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @tcp_chrono_start(%struct.sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
