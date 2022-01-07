; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_sock_addr.c_init_pktinfo.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_sock_addr.c_init_pktinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmsghdr = type { i8*, i32, i32 }
%struct.in6_pktinfo = type { i32, i32 }
%struct.in_pktinfo = type { i32, i32 }

@AF_INET = common dso_local global i32 0, align 4
@SOL_IP = common dso_local global i32 0, align 4
@IP_PKTINFO = common dso_local global i32 0, align 4
@SRC4_IP = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@SOL_IPV6 = common dso_local global i32 0, align 4
@IPV6_PKTINFO = common dso_local global i32 0, align 4
@SRC6_IP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_pktinfo(i32 %0, %struct.cmsghdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.cmsghdr*, align 8
  %6 = alloca %struct.in6_pktinfo*, align 8
  %7 = alloca %struct.in_pktinfo*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.cmsghdr* %1, %struct.cmsghdr** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @AF_INET, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %35

11:                                               ; preds = %2
  %12 = load i32, i32* @SOL_IP, align 4
  %13 = load %struct.cmsghdr*, %struct.cmsghdr** %5, align 8
  %14 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @IP_PKTINFO, align 4
  %16 = load %struct.cmsghdr*, %struct.cmsghdr** %5, align 8
  %17 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 8
  %18 = call i8* @CMSG_LEN(i32 8)
  %19 = load %struct.cmsghdr*, %struct.cmsghdr** %5, align 8
  %20 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %19, i32 0, i32 0
  store i8* %18, i8** %20, align 8
  %21 = load %struct.cmsghdr*, %struct.cmsghdr** %5, align 8
  %22 = call i64 @CMSG_DATA(%struct.cmsghdr* %21)
  %23 = inttoptr i64 %22 to %struct.in_pktinfo*
  store %struct.in_pktinfo* %23, %struct.in_pktinfo** %7, align 8
  %24 = load %struct.in_pktinfo*, %struct.in_pktinfo** %7, align 8
  %25 = call i32 @memset(%struct.in_pktinfo* %24, i32 0, i32 8)
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @SRC4_IP, align 4
  %28 = load %struct.in_pktinfo*, %struct.in_pktinfo** %7, align 8
  %29 = getelementptr inbounds %struct.in_pktinfo, %struct.in_pktinfo* %28, i32 0, i32 1
  %30 = bitcast i32* %29 to i8*
  %31 = call i32 @inet_pton(i32 %26, i32 %27, i8* %30)
  %32 = icmp ne i32 %31, 1
  br i1 %32, label %33, label %34

33:                                               ; preds = %11
  store i32 -1, i32* %3, align 4
  br label %67

34:                                               ; preds = %11
  br label %66

35:                                               ; preds = %2
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @AF_INET6, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %64

39:                                               ; preds = %35
  %40 = load i32, i32* @SOL_IPV6, align 4
  %41 = load %struct.cmsghdr*, %struct.cmsghdr** %5, align 8
  %42 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @IPV6_PKTINFO, align 4
  %44 = load %struct.cmsghdr*, %struct.cmsghdr** %5, align 8
  %45 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  %46 = call i8* @CMSG_LEN(i32 8)
  %47 = load %struct.cmsghdr*, %struct.cmsghdr** %5, align 8
  %48 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %47, i32 0, i32 0
  store i8* %46, i8** %48, align 8
  %49 = load %struct.cmsghdr*, %struct.cmsghdr** %5, align 8
  %50 = call i64 @CMSG_DATA(%struct.cmsghdr* %49)
  %51 = inttoptr i64 %50 to %struct.in6_pktinfo*
  store %struct.in6_pktinfo* %51, %struct.in6_pktinfo** %6, align 8
  %52 = load %struct.in6_pktinfo*, %struct.in6_pktinfo** %6, align 8
  %53 = bitcast %struct.in6_pktinfo* %52 to %struct.in_pktinfo*
  %54 = call i32 @memset(%struct.in_pktinfo* %53, i32 0, i32 8)
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @SRC6_IP, align 4
  %57 = load %struct.in6_pktinfo*, %struct.in6_pktinfo** %6, align 8
  %58 = getelementptr inbounds %struct.in6_pktinfo, %struct.in6_pktinfo* %57, i32 0, i32 0
  %59 = bitcast i32* %58 to i8*
  %60 = call i32 @inet_pton(i32 %55, i32 %56, i8* %59)
  %61 = icmp ne i32 %60, 1
  br i1 %61, label %62, label %63

62:                                               ; preds = %39
  store i32 -1, i32* %3, align 4
  br label %67

63:                                               ; preds = %39
  br label %65

64:                                               ; preds = %35
  store i32 -1, i32* %3, align 4
  br label %67

65:                                               ; preds = %63
  br label %66

66:                                               ; preds = %65, %34
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %66, %64, %62, %33
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i8* @CMSG_LEN(i32) #1

declare dso_local i64 @CMSG_DATA(%struct.cmsghdr*) #1

declare dso_local i32 @memset(%struct.in_pktinfo*, i32, i32) #1

declare dso_local i32 @inet_pton(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
