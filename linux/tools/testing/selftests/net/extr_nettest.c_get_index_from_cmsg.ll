; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_nettest.c_get_index_from_cmsg.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_nettest.c_get_index_from_cmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msghdr = type { i64 }
%struct.cmsghdr = type { i64, i64 }
%struct.in_pktinfo = type { i32, i32 }
%struct.in6_pktinfo = type { i32, i32 }

@SOL_IP = common dso_local global i64 0, align 8
@IP_PKTINFO = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i32 0, align 4
@SOL_IPV6 = common dso_local global i64 0, align 8
@IPV6_PKTINFO = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"    pktinfo: ifindex %d dest addr %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msghdr*)* @get_index_from_cmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_index_from_cmsg(%struct.msghdr* %0) #0 {
  %2 = alloca %struct.msghdr*, align 8
  %3 = alloca %struct.cmsghdr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [64 x i8], align 16
  %6 = alloca %struct.in_pktinfo*, align 8
  %7 = alloca %struct.in6_pktinfo*, align 8
  store %struct.msghdr* %0, %struct.msghdr** %2, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.msghdr*, %struct.msghdr** %2, align 8
  %9 = call i64 @CMSG_FIRSTHDR(%struct.msghdr* %8)
  %10 = inttoptr i64 %9 to %struct.cmsghdr*
  store %struct.cmsghdr* %10, %struct.cmsghdr** %3, align 8
  br label %11

11:                                               ; preds = %71, %1
  %12 = load %struct.msghdr*, %struct.msghdr** %2, align 8
  %13 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load %struct.cmsghdr*, %struct.cmsghdr** %3, align 8
  %18 = icmp ne %struct.cmsghdr* %17, null
  br label %19

19:                                               ; preds = %16, %11
  %20 = phi i1 [ false, %11 ], [ %18, %16 ]
  br i1 %20, label %21, label %76

21:                                               ; preds = %19
  %22 = load %struct.cmsghdr*, %struct.cmsghdr** %3, align 8
  %23 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SOL_IP, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %45

27:                                               ; preds = %21
  %28 = load %struct.cmsghdr*, %struct.cmsghdr** %3, align 8
  %29 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @IP_PKTINFO, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %45

33:                                               ; preds = %27
  %34 = load %struct.cmsghdr*, %struct.cmsghdr** %3, align 8
  %35 = call i64 @CMSG_DATA(%struct.cmsghdr* %34)
  %36 = inttoptr i64 %35 to %struct.in_pktinfo*
  store %struct.in_pktinfo* %36, %struct.in_pktinfo** %6, align 8
  %37 = load i32, i32* @AF_INET, align 4
  %38 = load %struct.in_pktinfo*, %struct.in_pktinfo** %6, align 8
  %39 = getelementptr inbounds %struct.in_pktinfo, %struct.in_pktinfo* %38, i32 0, i32 1
  %40 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %41 = call i32 @inet_ntop(i32 %37, i32* %39, i8* %40, i32 64)
  %42 = load %struct.in_pktinfo*, %struct.in_pktinfo** %6, align 8
  %43 = getelementptr inbounds %struct.in_pktinfo, %struct.in_pktinfo* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %4, align 4
  br label %70

45:                                               ; preds = %27, %21
  %46 = load %struct.cmsghdr*, %struct.cmsghdr** %3, align 8
  %47 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @SOL_IPV6, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %69

51:                                               ; preds = %45
  %52 = load %struct.cmsghdr*, %struct.cmsghdr** %3, align 8
  %53 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @IPV6_PKTINFO, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %69

57:                                               ; preds = %51
  %58 = load %struct.cmsghdr*, %struct.cmsghdr** %3, align 8
  %59 = call i64 @CMSG_DATA(%struct.cmsghdr* %58)
  %60 = inttoptr i64 %59 to %struct.in6_pktinfo*
  store %struct.in6_pktinfo* %60, %struct.in6_pktinfo** %7, align 8
  %61 = load i32, i32* @AF_INET6, align 4
  %62 = load %struct.in6_pktinfo*, %struct.in6_pktinfo** %7, align 8
  %63 = getelementptr inbounds %struct.in6_pktinfo, %struct.in6_pktinfo* %62, i32 0, i32 1
  %64 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %65 = call i32 @inet_ntop(i32 %61, i32* %63, i8* %64, i32 64)
  %66 = load %struct.in6_pktinfo*, %struct.in6_pktinfo** %7, align 8
  %67 = getelementptr inbounds %struct.in6_pktinfo, %struct.in6_pktinfo* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %57, %51, %45
  br label %70

70:                                               ; preds = %69, %33
  br label %71

71:                                               ; preds = %70
  %72 = load %struct.msghdr*, %struct.msghdr** %2, align 8
  %73 = load %struct.cmsghdr*, %struct.cmsghdr** %3, align 8
  %74 = call i64 @CMSG_NXTHDR(%struct.msghdr* %72, %struct.cmsghdr* %73)
  %75 = inttoptr i64 %74 to %struct.cmsghdr*
  store %struct.cmsghdr* %75, %struct.cmsghdr** %3, align 8
  br label %11

76:                                               ; preds = %19
  %77 = load i32, i32* %4, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load i32, i32* %4, align 4
  %81 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %82 = call i32 @log_msg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %80, i8* %81)
  br label %83

83:                                               ; preds = %79, %76
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i64 @CMSG_FIRSTHDR(%struct.msghdr*) #1

declare dso_local i64 @CMSG_DATA(%struct.cmsghdr*) #1

declare dso_local i32 @inet_ntop(i32, i32*, i8*, i32) #1

declare dso_local i64 @CMSG_NXTHDR(%struct.msghdr*, %struct.cmsghdr*) #1

declare dso_local i32 @log_msg(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
