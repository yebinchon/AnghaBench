; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_reuseport_bpf.c_new_any_sockaddr.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_reuseport_bpf.c_new_any_sockaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.sockaddr_storage = type { i32 }
%struct.sockaddr_in = type { i32, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr_in6 = type { i32, i8*, i32 }

@INADDR_ANY = common dso_local global i32 0, align 4
@in6addr_any = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Unsupported family %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sockaddr* (i32, i32)* @new_any_sockaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sockaddr* @new_any_sockaddr(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr_storage*, align 8
  %6 = alloca %struct.sockaddr_in*, align 8
  %7 = alloca %struct.sockaddr_in6*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = call %struct.sockaddr_storage* @malloc(i32 4)
  store %struct.sockaddr_storage* %8, %struct.sockaddr_storage** %5, align 8
  %9 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %5, align 8
  %10 = call i32 @memset(%struct.sockaddr_storage* %9, i32 0, i32 4)
  %11 = load i32, i32* %3, align 4
  switch i32 %11, label %38 [
    i32 129, label %12
    i32 128, label %26
  ]

12:                                               ; preds = %2
  %13 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %5, align 8
  %14 = bitcast %struct.sockaddr_storage* %13 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %14, %struct.sockaddr_in** %6, align 8
  %15 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %16 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %15, i32 0, i32 0
  store i32 129, i32* %16, align 8
  %17 = load i32, i32* @INADDR_ANY, align 4
  %18 = call i32 @htonl(i32 %17)
  %19 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %20 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i8* @htons(i32 %22)
  %24 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %25 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %24, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  br label %41

26:                                               ; preds = %2
  %27 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %5, align 8
  %28 = bitcast %struct.sockaddr_storage* %27 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %28, %struct.sockaddr_in6** %7, align 8
  %29 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %7, align 8
  %30 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %29, i32 0, i32 0
  store i32 128, i32* %30, align 8
  %31 = load i32, i32* @in6addr_any, align 4
  %32 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %7, align 8
  %33 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i8* @htons(i32 %34)
  %36 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %7, align 8
  %37 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  br label %41

38:                                               ; preds = %2
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @error(i32 1, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %38, %26, %12
  %42 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %5, align 8
  %43 = bitcast %struct.sockaddr_storage* %42 to %struct.sockaddr*
  ret %struct.sockaddr* %43
}

declare dso_local %struct.sockaddr_storage* @malloc(i32) #1

declare dso_local i32 @memset(%struct.sockaddr_storage*, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @error(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
