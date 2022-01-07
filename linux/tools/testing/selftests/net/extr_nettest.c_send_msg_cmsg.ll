; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_nettest.c_send_msg_cmsg.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_nettest.c_send_msg_cmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iovec = type { i32, i32 }
%struct.cmsghdr = type { i8*, i32, i32 }
%struct.msghdr = type { i32, i8*, i8*, i32, i8*, %struct.iovec* }
%struct.in_pktinfo = type { i32 }
%struct.in6_pktinfo = type { i32 }

@msg = common dso_local global i32 0, align 4
@msglen = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@SOL_IP = common dso_local global i32 0, align 4
@IP_PKTINFO = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@SOL_IPV6 = common dso_local global i32 0, align 4
@IPV6_PKTINFO = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EACCES = common dso_local global i64 0, align 8
@try_broadcast = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"sendmsg failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32, i32)* @send_msg_cmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_msg_cmsg(i32 %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [64 x i8], align 16
  %13 = alloca [2 x %struct.iovec], align 16
  %14 = alloca %struct.cmsghdr*, align 8
  %15 = alloca %struct.msghdr, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.in_pktinfo*, align 8
  %18 = alloca %struct.in6_pktinfo*, align 8
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %19 = load i32, i32* @msg, align 4
  %20 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %13, i64 0, i64 0
  %21 = getelementptr inbounds %struct.iovec, %struct.iovec* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @msglen, align 4
  %23 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %13, i64 0, i64 0
  %24 = getelementptr inbounds %struct.iovec, %struct.iovec* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 16
  %25 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %13, i64 0, i64 0
  %26 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %15, i32 0, i32 5
  store %struct.iovec* %25, %struct.iovec** %26, align 8
  %27 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %15, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %15, i32 0, i32 4
  store i8* %28, i8** %29, align 8
  %30 = load i32, i32* %9, align 4
  %31 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %15, i32 0, i32 3
  store i32 %30, i32* %31, align 8
  %32 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %33 = call i32 @memset(i8* %32, i32 0, i32 64)
  %34 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %35 = bitcast i8* %34 to %struct.cmsghdr*
  store %struct.cmsghdr* %35, %struct.cmsghdr** %14, align 8
  %36 = load %struct.cmsghdr*, %struct.cmsghdr** %14, align 8
  %37 = bitcast %struct.cmsghdr* %36 to i8*
  %38 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %15, i32 0, i32 2
  store i8* %37, i8** %38, align 8
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @AF_INET, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %62

42:                                               ; preds = %5
  %43 = load i32, i32* @SOL_IP, align 4
  %44 = load %struct.cmsghdr*, %struct.cmsghdr** %14, align 8
  %45 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @IP_PKTINFO, align 4
  %47 = load %struct.cmsghdr*, %struct.cmsghdr** %14, align 8
  %48 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  %49 = call i8* @CMSG_LEN(i32 4)
  %50 = load %struct.cmsghdr*, %struct.cmsghdr** %14, align 8
  %51 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  %52 = load %struct.cmsghdr*, %struct.cmsghdr** %14, align 8
  %53 = call i64 @CMSG_DATA(%struct.cmsghdr* %52)
  %54 = inttoptr i64 %53 to %struct.in_pktinfo*
  store %struct.in_pktinfo* %54, %struct.in_pktinfo** %17, align 8
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.in_pktinfo*, %struct.in_pktinfo** %17, align 8
  %57 = getelementptr inbounds %struct.in_pktinfo, %struct.in_pktinfo* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load %struct.cmsghdr*, %struct.cmsghdr** %14, align 8
  %59 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %15, i32 0, i32 1
  store i8* %60, i8** %61, align 8
  br label %87

62:                                               ; preds = %5
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* @AF_INET6, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %86

66:                                               ; preds = %62
  %67 = load i32, i32* @SOL_IPV6, align 4
  %68 = load %struct.cmsghdr*, %struct.cmsghdr** %14, align 8
  %69 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* @IPV6_PKTINFO, align 4
  %71 = load %struct.cmsghdr*, %struct.cmsghdr** %14, align 8
  %72 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 8
  %73 = call i8* @CMSG_LEN(i32 4)
  %74 = load %struct.cmsghdr*, %struct.cmsghdr** %14, align 8
  %75 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %74, i32 0, i32 0
  store i8* %73, i8** %75, align 8
  %76 = load %struct.cmsghdr*, %struct.cmsghdr** %14, align 8
  %77 = call i64 @CMSG_DATA(%struct.cmsghdr* %76)
  %78 = inttoptr i64 %77 to %struct.in6_pktinfo*
  store %struct.in6_pktinfo* %78, %struct.in6_pktinfo** %18, align 8
  %79 = load i32, i32* %10, align 4
  %80 = load %struct.in6_pktinfo*, %struct.in6_pktinfo** %18, align 8
  %81 = getelementptr inbounds %struct.in6_pktinfo, %struct.in6_pktinfo* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 4
  %82 = load %struct.cmsghdr*, %struct.cmsghdr** %14, align 8
  %83 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %15, i32 0, i32 1
  store i8* %84, i8** %85, align 8
  br label %86

86:                                               ; preds = %66, %62
  br label %87

87:                                               ; preds = %86, %42
  br label %88

88:                                               ; preds = %104, %87
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @sendmsg(i32 %89, %struct.msghdr* %15, i32 0)
  store i32 %90, i32* %16, align 4
  %91 = load i32, i32* %16, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %109

93:                                               ; preds = %88
  %94 = load i64, i64* @errno, align 8
  %95 = load i64, i64* @EACCES, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %107

97:                                               ; preds = %93
  %98 = load i64, i64* @try_broadcast, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %97
  store i64 0, i64* @try_broadcast, align 8
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @set_broadcast(i32 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %100
  br label %88

105:                                              ; preds = %100
  %106 = load i64, i64* @EACCES, align 8
  store i64 %106, i64* @errno, align 8
  br label %107

107:                                              ; preds = %105, %97, %93
  %108 = call i32 @log_err_errno(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %110

109:                                              ; preds = %88
  store i32 0, i32* %6, align 4
  br label %110

110:                                              ; preds = %109, %107
  %111 = load i32, i32* %6, align 4
  ret i32 %111
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i8* @CMSG_LEN(i32) #1

declare dso_local i64 @CMSG_DATA(%struct.cmsghdr*) #1

declare dso_local i32 @sendmsg(i32, %struct.msghdr*, i32) #1

declare dso_local i32 @set_broadcast(i32) #1

declare dso_local i32 @log_err_errno(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
