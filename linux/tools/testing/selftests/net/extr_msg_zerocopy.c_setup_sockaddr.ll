; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_msg_zerocopy.c_setup_sockaddr.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_msg_zerocopy.c_setup_sockaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i32 }
%struct.sockaddr_in6 = type { i32, i8*, i8*, i32, i8*, i8* }
%struct.sockaddr_in = type { i32, i8*, i8*, i32, i8*, i8* }

@AF_INET = common dso_local global i8* null, align 8
@cfg_port = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"ipv4 parse error: %s\00", align 1
@AF_INET6 = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"ipv6 parse error: %s\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"illegal domain\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, %struct.sockaddr_storage*)* @setup_sockaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_sockaddr(i32 %0, i8* %1, %struct.sockaddr_storage* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sockaddr_storage*, align 8
  %7 = alloca %struct.sockaddr_in6*, align 8
  %8 = alloca %struct.sockaddr_in*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store %struct.sockaddr_storage* %2, %struct.sockaddr_storage** %6, align 8
  %9 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %6, align 8
  %10 = bitcast %struct.sockaddr_storage* %9 to i8*
  %11 = bitcast i8* %10 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %11, %struct.sockaddr_in6** %7, align 8
  %12 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %6, align 8
  %13 = bitcast %struct.sockaddr_storage* %12 to i8*
  %14 = bitcast i8* %13 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %14, %struct.sockaddr_in** %8, align 8
  %15 = load i32, i32* %4, align 4
  switch i32 %15, label %63 [
    i32 129, label %16
    i32 128, label %40
  ]

16:                                               ; preds = %3
  %17 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %18 = bitcast %struct.sockaddr_in* %17 to %struct.sockaddr_in6*
  %19 = call i32 @memset(%struct.sockaddr_in6* %18, i32 0, i32 48)
  %20 = load i8*, i8** @AF_INET, align 8
  %21 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %22 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %21, i32 0, i32 5
  store i8* %20, i8** %22, align 8
  %23 = load i32, i32* @cfg_port, align 4
  %24 = call i8* @htons(i32 %23)
  %25 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %26 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %25, i32 0, i32 4
  store i8* %24, i8** %26, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %39

29:                                               ; preds = %16
  %30 = load i8*, i8** @AF_INET, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %33 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %32, i32 0, i32 3
  %34 = call i32 @inet_pton(i8* %30, i8* %31, i32* %33)
  %35 = icmp ne i32 %34, 1
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %37)
  br label %39

39:                                               ; preds = %36, %29, %16
  br label %65

40:                                               ; preds = %3
  %41 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %7, align 8
  %42 = call i32 @memset(%struct.sockaddr_in6* %41, i32 0, i32 48)
  %43 = load i8*, i8** @AF_INET6, align 8
  %44 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %7, align 8
  %45 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %44, i32 0, i32 2
  store i8* %43, i8** %45, align 8
  %46 = load i32, i32* @cfg_port, align 4
  %47 = call i8* @htons(i32 %46)
  %48 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %7, align 8
  %49 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %48, i32 0, i32 1
  store i8* %47, i8** %49, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %62

52:                                               ; preds = %40
  %53 = load i8*, i8** @AF_INET6, align 8
  %54 = load i8*, i8** %5, align 8
  %55 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %7, align 8
  %56 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %55, i32 0, i32 0
  %57 = call i32 @inet_pton(i8* %53, i8* %54, i32* %56)
  %58 = icmp ne i32 %57, 1
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load i8*, i8** %5, align 8
  %61 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %60)
  br label %62

62:                                               ; preds = %59, %52, %40
  br label %65

63:                                               ; preds = %3
  %64 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %62, %39
  ret void
}

declare dso_local i32 @memset(%struct.sockaddr_in6*, i32, i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @inet_pton(i8*, i8*, i32*) #1

declare dso_local i32 @error(i32, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
