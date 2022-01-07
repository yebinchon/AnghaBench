; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp.c_tcp_recv_urg.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp.c_tcp_recv_urg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i32 }
%struct.msghdr = type { i32 }
%struct.tcp_sock = type { i32 }

@SOCK_URGINLINE = common dso_local global i32 0, align 4
@TCP_URG_READ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TCP_CLOSE = common dso_local global i64 0, align 8
@SOCK_DONE = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@TCP_URG_VALID = common dso_local global i32 0, align 4
@MSG_PEEK = common dso_local global i32 0, align 4
@MSG_OOB = common dso_local global i32 0, align 4
@MSG_TRUNC = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@RCV_SHUTDOWN = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.msghdr*, i32, i32)* @tcp_recv_urg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_recv_urg(%struct.sock* %0, %struct.msghdr* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.msghdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.tcp_sock*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.msghdr* %1, %struct.msghdr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.sock*, %struct.sock** %6, align 8
  %14 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %13)
  store %struct.tcp_sock* %14, %struct.tcp_sock** %10, align 8
  %15 = load %struct.sock*, %struct.sock** %6, align 8
  %16 = load i32, i32* @SOCK_URGINLINE, align 4
  %17 = call i64 @sock_flag(%struct.sock* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %4
  %20 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %21 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %26 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @TCP_URG_READ, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24, %19, %4
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %117

33:                                               ; preds = %24
  %34 = load %struct.sock*, %struct.sock** %6, align 8
  %35 = getelementptr inbounds %struct.sock, %struct.sock* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @TCP_CLOSE, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %33
  %40 = load %struct.sock*, %struct.sock** %6, align 8
  %41 = load i32, i32* @SOCK_DONE, align 4
  %42 = call i64 @sock_flag(%struct.sock* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* @ENOTCONN, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %117

47:                                               ; preds = %39, %33
  %48 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %49 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @TCP_URG_VALID, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %100

54:                                               ; preds = %47
  store i32 0, i32* %11, align 4
  %55 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %56 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = trunc i32 %57 to i8
  store i8 %58, i8* %12, align 1
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @MSG_PEEK, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %54
  %64 = load i32, i32* @TCP_URG_READ, align 4
  %65 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %66 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  br label %67

67:                                               ; preds = %63, %54
  %68 = load i32, i32* @MSG_OOB, align 4
  %69 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %70 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %67
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* @MSG_TRUNC, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %75
  %81 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %82 = call i32 @memcpy_to_msg(%struct.msghdr* %81, i8* %12, i32 1)
  store i32 %82, i32* %11, align 4
  br label %83

83:                                               ; preds = %80, %75
  store i32 1, i32* %8, align 4
  br label %90

84:                                               ; preds = %67
  %85 = load i32, i32* @MSG_TRUNC, align 4
  %86 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %87 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %84, %83
  %91 = load i32, i32* %11, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load i32, i32* @EFAULT, align 4
  %95 = sub nsw i32 0, %94
  br label %98

96:                                               ; preds = %90
  %97 = load i32, i32* %8, align 4
  br label %98

98:                                               ; preds = %96, %93
  %99 = phi i32 [ %95, %93 ], [ %97, %96 ]
  store i32 %99, i32* %5, align 4
  br label %117

100:                                              ; preds = %47
  %101 = load %struct.sock*, %struct.sock** %6, align 8
  %102 = getelementptr inbounds %struct.sock, %struct.sock* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @TCP_CLOSE, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %113, label %106

106:                                              ; preds = %100
  %107 = load %struct.sock*, %struct.sock** %6, align 8
  %108 = getelementptr inbounds %struct.sock, %struct.sock* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @RCV_SHUTDOWN, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %106, %100
  store i32 0, i32* %5, align 4
  br label %117

114:                                              ; preds = %106
  %115 = load i32, i32* @EAGAIN, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %5, align 4
  br label %117

117:                                              ; preds = %114, %113, %98, %44, %30
  %118 = load i32, i32* %5, align 4
  ret i32 %118
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i64 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @memcpy_to_msg(%struct.msghdr*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
