; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_cubic.c_hystart_update.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_cubic.c_hystart_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sock = type { i32, i32 }
%struct.bictcp = type { i32, i64, i64, i64, i64, i64 }

@hystart_detect = common dso_local global i32 0, align 4
@HYSTART_ACK_TRAIN = common dso_local global i32 0, align 4
@hystart_ack_delta = common dso_local global i64 0, align 8
@LINUX_MIB_TCPHYSTARTTRAINDETECT = common dso_local global i32 0, align 4
@LINUX_MIB_TCPHYSTARTTRAINCWND = common dso_local global i32 0, align 4
@HYSTART_DELAY = common dso_local global i32 0, align 4
@HYSTART_MIN_SAMPLES = common dso_local global i64 0, align 8
@LINUX_MIB_TCPHYSTARTDELAYDETECT = common dso_local global i32 0, align 4
@LINUX_MIB_TCPHYSTARTDELAYCWND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i64)* @hystart_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hystart_update(%struct.sock* %0, i64 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.tcp_sock*, align 8
  %6 = alloca %struct.bictcp*, align 8
  %7 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.sock*, %struct.sock** %3, align 8
  %9 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %8)
  store %struct.tcp_sock* %9, %struct.tcp_sock** %5, align 8
  %10 = load %struct.sock*, %struct.sock** %3, align 8
  %11 = call %struct.bictcp* @inet_csk_ca(%struct.sock* %10)
  store %struct.bictcp* %11, %struct.bictcp** %6, align 8
  %12 = load %struct.bictcp*, %struct.bictcp** %6, align 8
  %13 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @hystart_detect, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %141

19:                                               ; preds = %2
  %20 = load i32, i32* @hystart_detect, align 4
  %21 = load i32, i32* @HYSTART_ACK_TRAIN, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %71

24:                                               ; preds = %19
  %25 = call i64 (...) @bictcp_clock()
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load %struct.bictcp*, %struct.bictcp** %6, align 8
  %28 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = sub nsw i64 %26, %29
  %31 = load i64, i64* @hystart_ack_delta, align 8
  %32 = icmp sle i64 %30, %31
  br i1 %32, label %33, label %70

33:                                               ; preds = %24
  %34 = load i64, i64* %7, align 8
  %35 = load %struct.bictcp*, %struct.bictcp** %6, align 8
  %36 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load %struct.bictcp*, %struct.bictcp** %6, align 8
  %39 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = sub nsw i64 %37, %40
  %42 = load %struct.bictcp*, %struct.bictcp** %6, align 8
  %43 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = ashr i64 %44, 4
  %46 = icmp sgt i64 %41, %45
  br i1 %46, label %47, label %69

47:                                               ; preds = %33
  %48 = load i32, i32* @HYSTART_ACK_TRAIN, align 4
  %49 = load %struct.bictcp*, %struct.bictcp** %6, align 8
  %50 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 8
  %53 = load %struct.sock*, %struct.sock** %3, align 8
  %54 = call i32 @sock_net(%struct.sock* %53)
  %55 = load i32, i32* @LINUX_MIB_TCPHYSTARTTRAINDETECT, align 4
  %56 = call i32 @NET_INC_STATS(i32 %54, i32 %55)
  %57 = load %struct.sock*, %struct.sock** %3, align 8
  %58 = call i32 @sock_net(%struct.sock* %57)
  %59 = load i32, i32* @LINUX_MIB_TCPHYSTARTTRAINCWND, align 4
  %60 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %61 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @NET_ADD_STATS(i32 %58, i32 %59, i32 %62)
  %64 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %65 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %68 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  br label %69

69:                                               ; preds = %47, %33
  br label %70

70:                                               ; preds = %69, %24
  br label %71

71:                                               ; preds = %70, %19
  %72 = load i32, i32* @hystart_detect, align 4
  %73 = load i32, i32* @HYSTART_DELAY, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %141

76:                                               ; preds = %71
  %77 = load %struct.bictcp*, %struct.bictcp** %6, align 8
  %78 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %77, i32 0, i32 4
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @HYSTART_MIN_SAMPLES, align 8
  %81 = icmp slt i64 %79, %80
  br i1 %81, label %82, label %102

82:                                               ; preds = %76
  %83 = load %struct.bictcp*, %struct.bictcp** %6, align 8
  %84 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %83, i32 0, i32 5
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %93, label %87

87:                                               ; preds = %82
  %88 = load %struct.bictcp*, %struct.bictcp** %6, align 8
  %89 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %88, i32 0, i32 5
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* %4, align 8
  %92 = icmp sgt i64 %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %87, %82
  %94 = load i64, i64* %4, align 8
  %95 = load %struct.bictcp*, %struct.bictcp** %6, align 8
  %96 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %95, i32 0, i32 5
  store i64 %94, i64* %96, align 8
  br label %97

97:                                               ; preds = %93, %87
  %98 = load %struct.bictcp*, %struct.bictcp** %6, align 8
  %99 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %98, i32 0, i32 4
  %100 = load i64, i64* %99, align 8
  %101 = add nsw i64 %100, 1
  store i64 %101, i64* %99, align 8
  br label %140

102:                                              ; preds = %76
  %103 = load %struct.bictcp*, %struct.bictcp** %6, align 8
  %104 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %103, i32 0, i32 5
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.bictcp*, %struct.bictcp** %6, align 8
  %107 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.bictcp*, %struct.bictcp** %6, align 8
  %110 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = ashr i64 %111, 3
  %113 = trunc i64 %112 to i32
  %114 = call i64 @HYSTART_DELAY_THRESH(i32 %113)
  %115 = add nsw i64 %108, %114
  %116 = icmp sgt i64 %105, %115
  br i1 %116, label %117, label %139

117:                                              ; preds = %102
  %118 = load i32, i32* @HYSTART_DELAY, align 4
  %119 = load %struct.bictcp*, %struct.bictcp** %6, align 8
  %120 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = or i32 %121, %118
  store i32 %122, i32* %120, align 8
  %123 = load %struct.sock*, %struct.sock** %3, align 8
  %124 = call i32 @sock_net(%struct.sock* %123)
  %125 = load i32, i32* @LINUX_MIB_TCPHYSTARTDELAYDETECT, align 4
  %126 = call i32 @NET_INC_STATS(i32 %124, i32 %125)
  %127 = load %struct.sock*, %struct.sock** %3, align 8
  %128 = call i32 @sock_net(%struct.sock* %127)
  %129 = load i32, i32* @LINUX_MIB_TCPHYSTARTDELAYCWND, align 4
  %130 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %131 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @NET_ADD_STATS(i32 %128, i32 %129, i32 %132)
  %134 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %135 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %138 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 4
  br label %139

139:                                              ; preds = %117, %102
  br label %140

140:                                              ; preds = %139, %97
  br label %141

141:                                              ; preds = %18, %140, %71
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.bictcp* @inet_csk_ca(%struct.sock*) #1

declare dso_local i64 @bictcp_clock(...) #1

declare dso_local i32 @NET_INC_STATS(i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @NET_ADD_STATS(i32, i32, i32) #1

declare dso_local i64 @HYSTART_DELAY_THRESH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
