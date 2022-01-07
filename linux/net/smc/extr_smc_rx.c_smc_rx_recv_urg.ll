; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_rx.c_smc_rx_recv_urg.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_rx.c_smc_rx_recv_urg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_sock = type { %struct.smc_connection, %struct.sock }
%struct.smc_connection = type { i64, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.sock = type { i64, i32 }
%struct.msghdr = type { i32 }
%union.smc_host_cursor = type { i32 }

@SOCK_URGINLINE = common dso_local global i32 0, align 4
@SMC_URG_VALID = common dso_local global i64 0, align 8
@SMC_URG_READ = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@MSG_PEEK = common dso_local global i32 0, align 4
@MSG_OOB = common dso_local global i32 0, align 4
@MSG_TRUNC = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@SMC_CLOSED = common dso_local global i64 0, align 8
@RCV_SHUTDOWN = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smc_sock*, %struct.msghdr*, i32, i32)* @smc_rx_recv_urg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smc_rx_recv_urg(%struct.smc_sock* %0, %struct.msghdr* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.smc_sock*, align 8
  %7 = alloca %struct.msghdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.smc_connection*, align 8
  %11 = alloca %union.smc_host_cursor, align 4
  %12 = alloca %struct.sock*, align 8
  %13 = alloca i32, align 4
  store %struct.smc_sock* %0, %struct.smc_sock** %6, align 8
  store %struct.msghdr* %1, %struct.msghdr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.smc_sock*, %struct.smc_sock** %6, align 8
  %15 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %14, i32 0, i32 0
  store %struct.smc_connection* %15, %struct.smc_connection** %10, align 8
  %16 = load %struct.smc_sock*, %struct.smc_sock** %6, align 8
  %17 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %16, i32 0, i32 1
  store %struct.sock* %17, %struct.sock** %12, align 8
  store i32 0, i32* %13, align 4
  %18 = load %struct.sock*, %struct.sock** %12, align 8
  %19 = load i32, i32* @SOCK_URGINLINE, align 4
  %20 = call i64 @sock_flag(%struct.sock* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %34, label %22

22:                                               ; preds = %4
  %23 = load %struct.smc_connection*, %struct.smc_connection** %10, align 8
  %24 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SMC_URG_VALID, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = load %struct.smc_connection*, %struct.smc_connection** %10, align 8
  %30 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @SMC_URG_READ, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28, %22, %4
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %133

37:                                               ; preds = %28
  %38 = load %struct.smc_connection*, %struct.smc_connection** %10, align 8
  %39 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @SMC_URG_VALID, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %116

43:                                               ; preds = %37
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @MSG_PEEK, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = load i64, i64* @SMC_URG_READ, align 8
  %50 = load %struct.smc_sock*, %struct.smc_sock** %6, align 8
  %51 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %51, i32 0, i32 0
  store i64 %49, i64* %52, align 8
  br label %53

53:                                               ; preds = %48, %43
  %54 = load i32, i32* @MSG_OOB, align 4
  %55 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %56 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %100

61:                                               ; preds = %53
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @MSG_TRUNC, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %61
  %67 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %68 = load %struct.smc_connection*, %struct.smc_connection** %10, align 8
  %69 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %68, i32 0, i32 5
  %70 = call i32 @memcpy_to_msg(%struct.msghdr* %67, i32* %69, i32 1)
  store i32 %70, i32* %13, align 4
  br label %71

71:                                               ; preds = %66, %61
  store i32 1, i32* %8, align 4
  %72 = load %struct.smc_connection*, %struct.smc_connection** %10, align 8
  %73 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %72, i32 0, i32 4
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load %struct.smc_connection*, %struct.smc_connection** %10, align 8
  %76 = call i32 @smc_curs_copy(%union.smc_host_cursor* %11, i32* %74, %struct.smc_connection* %75)
  %77 = load %struct.smc_connection*, %struct.smc_connection** %10, align 8
  %78 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %77, i32 0, i32 3
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.smc_connection*, %struct.smc_connection** %10, align 8
  %83 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %82, i32 0, i32 2
  %84 = call i32 @smc_curs_diff(i32 %81, %union.smc_host_cursor* %11, i32* %83)
  %85 = icmp sgt i32 %84, 1
  br i1 %85, label %86, label %89

86:                                               ; preds = %71
  %87 = load %struct.smc_connection*, %struct.smc_connection** %10, align 8
  %88 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %87, i32 0, i32 1
  store i32 1, i32* %88, align 8
  br label %89

89:                                               ; preds = %86, %71
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* @MSG_PEEK, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %89
  %95 = load %struct.smc_sock*, %struct.smc_sock** %6, align 8
  %96 = getelementptr inbounds %union.smc_host_cursor, %union.smc_host_cursor* %11, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @smc_rx_update_consumer(%struct.smc_sock* %95, i32 %97, i32 0)
  br label %99

99:                                               ; preds = %94, %89
  br label %106

100:                                              ; preds = %53
  %101 = load i32, i32* @MSG_TRUNC, align 4
  %102 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %103 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 4
  br label %106

106:                                              ; preds = %100, %99
  %107 = load i32, i32* %13, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load i32, i32* @EFAULT, align 4
  %111 = sub nsw i32 0, %110
  br label %114

112:                                              ; preds = %106
  %113 = load i32, i32* %8, align 4
  br label %114

114:                                              ; preds = %112, %109
  %115 = phi i32 [ %111, %109 ], [ %113, %112 ]
  store i32 %115, i32* %5, align 4
  br label %133

116:                                              ; preds = %37
  %117 = load %struct.sock*, %struct.sock** %12, align 8
  %118 = getelementptr inbounds %struct.sock, %struct.sock* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @SMC_CLOSED, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %129, label %122

122:                                              ; preds = %116
  %123 = load %struct.sock*, %struct.sock** %12, align 8
  %124 = getelementptr inbounds %struct.sock, %struct.sock* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @RCV_SHUTDOWN, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %122, %116
  store i32 0, i32* %5, align 4
  br label %133

130:                                              ; preds = %122
  %131 = load i32, i32* @EAGAIN, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %5, align 4
  br label %133

133:                                              ; preds = %130, %129, %114, %34
  %134 = load i32, i32* %5, align 4
  ret i32 %134
}

declare dso_local i64 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @memcpy_to_msg(%struct.msghdr*, i32*, i32) #1

declare dso_local i32 @smc_curs_copy(%union.smc_host_cursor*, i32*, %struct.smc_connection*) #1

declare dso_local i32 @smc_curs_diff(i32, %union.smc_host_cursor*, i32*) #1

declare dso_local i32 @smc_rx_update_consumer(%struct.smc_sock*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
