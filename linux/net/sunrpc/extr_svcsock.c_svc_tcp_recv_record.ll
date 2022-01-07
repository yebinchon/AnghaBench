; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_svcsock.c_svc_tcp_recv_record.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_svcsock.c_svc_tcp_recv_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_sock = type { i32, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, %struct.svc_serv* }
%struct.svc_serv = type { i64 }
%struct.svc_rqst = type { i32 }
%struct.kvec = type { i8*, i32 }

@.str = private unnamed_addr constant [60 x i8] c"svc: short recvfrom while reading record length (%d of %d)\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"svc: TCP record, %d bytes\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"RPC: fragment too large: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"RPC: TCP recv_record got %d\0A\00", align 1
@XPT_CLOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_sock*, %struct.svc_rqst*)* @svc_tcp_recv_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svc_tcp_recv_record(%struct.svc_sock* %0, %struct.svc_rqst* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.svc_sock*, align 8
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca %struct.svc_serv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.kvec, align 8
  store %struct.svc_sock* %0, %struct.svc_sock** %4, align 8
  store %struct.svc_rqst* %1, %struct.svc_rqst** %5, align 8
  %10 = load %struct.svc_sock*, %struct.svc_sock** %4, align 8
  %11 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load %struct.svc_serv*, %struct.svc_serv** %12, align 8
  store %struct.svc_serv* %13, %struct.svc_serv** %6, align 8
  %14 = load %struct.svc_sock*, %struct.svc_sock** %4, align 8
  %15 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = icmp ult i64 %17, 4
  br i1 %18, label %19, label %78

19:                                               ; preds = %2
  %20 = load %struct.svc_sock*, %struct.svc_sock** %4, align 8
  %21 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = sub i64 4, %23
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %7, align 4
  %26 = load %struct.svc_sock*, %struct.svc_sock** %4, align 8
  %27 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %26, i32 0, i32 3
  %28 = bitcast i32* %27 to i8*
  %29 = load %struct.svc_sock*, %struct.svc_sock** %4, align 8
  %30 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %28, i64 %32
  %34 = getelementptr inbounds %struct.kvec, %struct.kvec* %9, i32 0, i32 0
  store i8* %33, i8** %34, align 8
  %35 = load i32, i32* %7, align 4
  %36 = getelementptr inbounds %struct.kvec, %struct.kvec* %9, i32 0, i32 1
  store i32 %35, i32* %36, align 8
  %37 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @svc_recvfrom(%struct.svc_rqst* %37, %struct.kvec* %9, i32 1, i32 %38, i32 0)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %19
  br label %81

43:                                               ; preds = %19
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.svc_sock*, %struct.svc_sock** %4, align 8
  %46 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, %44
  store i32 %48, i32* %46, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ult i32 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %43
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %54)
  %56 = load i32, i32* @EAGAIN, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %93

58:                                               ; preds = %43
  %59 = load %struct.svc_sock*, %struct.svc_sock** %4, align 8
  %60 = call i32 @svc_sock_reclen(%struct.svc_sock* %59)
  %61 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load %struct.svc_sock*, %struct.svc_sock** %4, align 8
  %63 = call i32 @svc_sock_reclen(%struct.svc_sock* %62)
  %64 = sext i32 %63 to i64
  %65 = load %struct.svc_sock*, %struct.svc_sock** %4, align 8
  %66 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %64, %67
  %69 = load %struct.svc_serv*, %struct.svc_serv** %6, align 8
  %70 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp sgt i64 %68, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %58
  %74 = load %struct.svc_sock*, %struct.svc_sock** %4, align 8
  %75 = call i32 @svc_sock_reclen(%struct.svc_sock* %74)
  %76 = call i32 @net_notice_ratelimited(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %75)
  br label %85

77:                                               ; preds = %58
  br label %78

78:                                               ; preds = %77, %2
  %79 = load %struct.svc_sock*, %struct.svc_sock** %4, align 8
  %80 = call i32 @svc_sock_reclen(%struct.svc_sock* %79)
  store i32 %80, i32* %3, align 4
  br label %93

81:                                               ; preds = %42
  %82 = load i32, i32* %8, align 4
  %83 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* %8, align 4
  store i32 %84, i32* %3, align 4
  br label %93

85:                                               ; preds = %73
  %86 = load i32, i32* @XPT_CLOSE, align 4
  %87 = load %struct.svc_sock*, %struct.svc_sock** %4, align 8
  %88 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = call i32 @set_bit(i32 %86, i32* %89)
  %91 = load i32, i32* @EAGAIN, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %85, %81, %78, %52
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @svc_recvfrom(%struct.svc_rqst*, %struct.kvec*, i32, i32, i32) #1

declare dso_local i32 @dprintk(i8*, i32, ...) #1

declare dso_local i32 @svc_sock_reclen(%struct.svc_sock*) #1

declare dso_local i32 @net_notice_ratelimited(i8*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
