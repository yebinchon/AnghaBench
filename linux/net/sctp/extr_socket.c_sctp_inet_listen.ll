; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_socket.c_sctp_inet_listen.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_socket.c_sctp_inet_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i64, %struct.sock* }
%struct.sock = type { i32, i64, i32 }
%struct.sctp_endpoint = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i64, %struct.sctp_endpoint* }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@UDP_HIGH_BANDWIDTH = common dso_local global i32 0, align 4
@SS_UNCONNECTED = common dso_local global i64 0, align 8
@LISTENING = common dso_local global i32 0, align 4
@CLOSED = common dso_local global i32 0, align 4
@SCTP_SS_CLOSED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_inet_listen(%struct.socket* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.socket*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sctp_endpoint*, align 8
  %8 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.socket*, %struct.socket** %4, align 8
  %10 = getelementptr inbounds %struct.socket, %struct.socket* %9, i32 0, i32 1
  %11 = load %struct.sock*, %struct.sock** %10, align 8
  store %struct.sock* %11, %struct.sock** %6, align 8
  %12 = load %struct.sock*, %struct.sock** %6, align 8
  %13 = call %struct.TYPE_4__* @sctp_sk(%struct.sock* %12)
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 2
  %15 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %14, align 8
  store %struct.sctp_endpoint* %15, %struct.sctp_endpoint** %7, align 8
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %3, align 4
  br label %105

25:                                               ; preds = %2
  %26 = load %struct.sock*, %struct.sock** %6, align 8
  %27 = call i32 @lock_sock(%struct.sock* %26)
  %28 = load %struct.sock*, %struct.sock** %6, align 8
  %29 = load i32, i32* @UDP_HIGH_BANDWIDTH, align 4
  %30 = call i64 @sctp_style(%struct.sock* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %101

33:                                               ; preds = %25
  %34 = load %struct.socket*, %struct.socket** %4, align 8
  %35 = getelementptr inbounds %struct.socket, %struct.socket* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @SS_UNCONNECTED, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %101

40:                                               ; preds = %33
  %41 = load %struct.sock*, %struct.sock** %6, align 8
  %42 = load i32, i32* @LISTENING, align 4
  %43 = call i64 @sctp_sstate(%struct.sock* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %40
  %46 = load %struct.sock*, %struct.sock** %6, align 8
  %47 = load i32, i32* @CLOSED, align 4
  %48 = call i64 @sctp_sstate(%struct.sock* %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  br label %101

51:                                               ; preds = %45, %40
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %83, label %54

54:                                               ; preds = %51
  %55 = load %struct.sock*, %struct.sock** %6, align 8
  %56 = load i32, i32* @CLOSED, align 4
  %57 = call i64 @sctp_sstate(%struct.sock* %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %101

60:                                               ; preds = %54
  store i32 0, i32* %8, align 4
  %61 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %7, align 8
  %62 = call i32 @sctp_unhash_endpoint(%struct.sctp_endpoint* %61)
  %63 = load i32, i32* @SCTP_SS_CLOSED, align 4
  %64 = load %struct.sock*, %struct.sock** %6, align 8
  %65 = getelementptr inbounds %struct.sock, %struct.sock* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  %66 = load %struct.sock*, %struct.sock** %6, align 8
  %67 = getelementptr inbounds %struct.sock, %struct.sock* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %60
  %71 = load %struct.sock*, %struct.sock** %6, align 8
  %72 = call %struct.TYPE_4__* @sctp_sk(%struct.sock* %71)
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %70, %60
  %77 = load %struct.sock*, %struct.sock** %6, align 8
  %78 = call %struct.TYPE_4__* @sctp_sk(%struct.sock* %77)
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  store i32 1, i32* %81, align 4
  br label %82

82:                                               ; preds = %76, %70
  br label %101

83:                                               ; preds = %51
  %84 = load %struct.sock*, %struct.sock** %6, align 8
  %85 = load i32, i32* @LISTENING, align 4
  %86 = call i64 @sctp_sstate(%struct.sock* %84, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %83
  %89 = load i32, i32* %5, align 4
  %90 = load %struct.sock*, %struct.sock** %6, align 8
  %91 = getelementptr inbounds %struct.sock, %struct.sock* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  br label %100

92:                                               ; preds = %83
  %93 = load %struct.sock*, %struct.sock** %6, align 8
  %94 = load i32, i32* %5, align 4
  %95 = call i32 @sctp_listen_start(%struct.sock* %93, i32 %94)
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %8, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %92
  br label %101

99:                                               ; preds = %92
  br label %100

100:                                              ; preds = %99, %88
  store i32 0, i32* %8, align 4
  br label %101

101:                                              ; preds = %100, %98, %82, %59, %50, %39, %32
  %102 = load %struct.sock*, %struct.sock** %6, align 8
  %103 = call i32 @release_sock(%struct.sock* %102)
  %104 = load i32, i32* %8, align 4
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %101, %23
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local %struct.TYPE_4__* @sctp_sk(%struct.sock*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i64 @sctp_style(%struct.sock*, i32) #1

declare dso_local i64 @sctp_sstate(%struct.sock*, i32) #1

declare dso_local i32 @sctp_unhash_endpoint(%struct.sctp_endpoint*) #1

declare dso_local i32 @sctp_listen_start(%struct.sock*, i32) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
