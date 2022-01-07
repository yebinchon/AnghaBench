; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_skb_cgroup_id_user.c_mk_dst_addr.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_skb_cgroup_id_user.c_mk_dst_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in6 = type { i32, i32, i32, i32 }

@AF_INET6 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Invalid IPv6: %s\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to get index of iface: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, %struct.sockaddr_in6*)* @mk_dst_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mk_dst_addr(i8* %0, i8* %1, %struct.sockaddr_in6* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sockaddr_in6*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.sockaddr_in6* %2, %struct.sockaddr_in6** %7, align 8
  %8 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %7, align 8
  %9 = call i32 @memset(%struct.sockaddr_in6* %8, i32 0, i32 16)
  %10 = load i32, i32* @AF_INET6, align 4
  %11 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %7, align 8
  %12 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %11, i32 0, i32 3
  store i32 %10, i32* %12, align 4
  %13 = call i32 @htons(i32 1025)
  %14 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %7, align 8
  %15 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @AF_INET6, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %7, align 8
  %19 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %18, i32 0, i32 1
  %20 = call i32 @inet_pton(i32 %16, i8* %17, i32* %19)
  %21 = icmp ne i32 %20, 1
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @log_err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %23)
  store i32 -1, i32* %4, align 4
  br label %38

25:                                               ; preds = %3
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @if_nametoindex(i8* %26)
  %28 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %7, align 8
  %29 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %7, align 8
  %31 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %25
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @log_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  store i32 -1, i32* %4, align 4
  br label %38

37:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %37, %34, %22
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @memset(%struct.sockaddr_in6*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @inet_pton(i32, i8*, i32*) #1

declare dso_local i32 @log_err(i8*, i8*) #1

declare dso_local i32 @if_nametoindex(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
