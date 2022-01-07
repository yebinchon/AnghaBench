; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_socket_cookie.c_validate_map.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_socket_cookie.c_validate_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_map = type { i32 }
%struct.sockaddr_in6 = type { i32 }
%struct.socket_cookie = type { i32 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Map not found in BPF object\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Can't get client local addr\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Unexpected value in map: %x != %x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_map*, i32)* @validate_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_map(%struct.bpf_map* %0, i32 %1) #0 {
  %3 = alloca %struct.bpf_map*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr_in6, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.socket_cookie, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bpf_map* %0, %struct.bpf_map** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 4, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.bpf_map*, %struct.bpf_map** %3, align 8
  %12 = icmp ne %struct.bpf_map* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %43

15:                                               ; preds = %2
  %16 = load %struct.bpf_map*, %struct.bpf_map** %3, align 8
  %17 = call i32 @bpf_map__fd(%struct.bpf_map* %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = call i32 @bpf_map_lookup_elem(i32 %18, i32* %4, %struct.socket_cookie* %8)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %4, align 4
  %21 = bitcast %struct.sockaddr_in6* %6 to %struct.sockaddr*
  %22 = call i32 @getsockname(i32 %20, %struct.sockaddr* %21, i32* %7)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %15
  %26 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %44

27:                                               ; preds = %15
  %28 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %6, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ntohs(i32 %29)
  %31 = shl i32 %30, 8
  %32 = or i32 %31, 255
  store i32 %32, i32* %5, align 4
  %33 = getelementptr inbounds %struct.socket_cookie, %struct.socket_cookie* %8, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %27
  %38 = getelementptr inbounds %struct.socket_cookie, %struct.socket_cookie* %8, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %39, i32 %40)
  br label %43

42:                                               ; preds = %27
  br label %44

43:                                               ; preds = %37, %13
  store i32 -1, i32* %9, align 4
  br label %44

44:                                               ; preds = %43, %42, %25
  %45 = load i32, i32* %9, align 4
  ret i32 %45
}

declare dso_local i32 @log_err(i8*, ...) #1

declare dso_local i32 @bpf_map__fd(%struct.bpf_map*) #1

declare dso_local i32 @bpf_map_lookup_elem(i32, i32*, %struct.socket_cookie*) #1

declare dso_local i32 @getsockname(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
