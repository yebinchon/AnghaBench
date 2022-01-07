; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_af_vsock.c___vsock_bind_stream.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_af_vsock.c___vsock_bind_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsock_sock = type { %struct.sockaddr_vm }
%struct.sockaddr_vm = type { i64, i32 }

@__vsock_bind_stream.port = internal global i64 0, align 8
@LAST_RESERVED_PORT = common dso_local global i64 0, align 8
@U32_MAX = common dso_local global i64 0, align 8
@VMADDR_PORT_ANY = common dso_local global i64 0, align 8
@MAX_PORT_RETRIES = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@CAP_NET_BIND_SERVICE = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@EADDRINUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vsock_sock*, %struct.sockaddr_vm*)* @__vsock_bind_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__vsock_bind_stream(%struct.vsock_sock* %0, %struct.sockaddr_vm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vsock_sock*, align 8
  %5 = alloca %struct.sockaddr_vm*, align 8
  %6 = alloca %struct.sockaddr_vm, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vsock_sock* %0, %struct.vsock_sock** %4, align 8
  store %struct.sockaddr_vm* %1, %struct.sockaddr_vm** %5, align 8
  %9 = load i64, i64* @__vsock_bind_stream.port, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %2
  %12 = load i64, i64* @LAST_RESERVED_PORT, align 8
  %13 = add nsw i64 %12, 1
  %14 = load i64, i64* @U32_MAX, align 8
  %15 = load i64, i64* @LAST_RESERVED_PORT, align 8
  %16 = sub nsw i64 %14, %15
  %17 = call i64 @prandom_u32_max(i64 %16)
  %18 = add nsw i64 %13, %17
  store i64 %18, i64* @__vsock_bind_stream.port, align 8
  br label %19

19:                                               ; preds = %11, %2
  %20 = load %struct.sockaddr_vm*, %struct.sockaddr_vm** %5, align 8
  %21 = getelementptr inbounds %struct.sockaddr_vm, %struct.sockaddr_vm* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.sockaddr_vm*, %struct.sockaddr_vm** %5, align 8
  %24 = getelementptr inbounds %struct.sockaddr_vm, %struct.sockaddr_vm* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @vsock_addr_init(%struct.sockaddr_vm* %6, i32 %22, i64 %25)
  %27 = load %struct.sockaddr_vm*, %struct.sockaddr_vm** %5, align 8
  %28 = getelementptr inbounds %struct.sockaddr_vm, %struct.sockaddr_vm* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @VMADDR_PORT_ANY, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %62

32:                                               ; preds = %19
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %33

33:                                               ; preds = %52, %32
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @MAX_PORT_RETRIES, align 4
  %36 = icmp ult i32 %34, %35
  br i1 %36, label %37, label %55

37:                                               ; preds = %33
  %38 = load i64, i64* @__vsock_bind_stream.port, align 8
  %39 = load i64, i64* @LAST_RESERVED_PORT, align 8
  %40 = icmp sle i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i64, i64* @LAST_RESERVED_PORT, align 8
  %43 = add nsw i64 %42, 1
  store i64 %43, i64* @__vsock_bind_stream.port, align 8
  br label %44

44:                                               ; preds = %41, %37
  %45 = load i64, i64* @__vsock_bind_stream.port, align 8
  %46 = add nsw i64 %45, 1
  store i64 %46, i64* @__vsock_bind_stream.port, align 8
  %47 = getelementptr inbounds %struct.sockaddr_vm, %struct.sockaddr_vm* %6, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = call i64 @__vsock_find_bound_socket(%struct.sockaddr_vm* %6)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %44
  store i32 1, i32* %7, align 4
  br label %55

51:                                               ; preds = %44
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %8, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %33

55:                                               ; preds = %50, %33
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* @EADDRNOTAVAIL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %97

61:                                               ; preds = %55
  br label %82

62:                                               ; preds = %19
  %63 = load %struct.sockaddr_vm*, %struct.sockaddr_vm** %5, align 8
  %64 = getelementptr inbounds %struct.sockaddr_vm, %struct.sockaddr_vm* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @LAST_RESERVED_PORT, align 8
  %67 = icmp sle i64 %65, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %62
  %69 = load i32, i32* @CAP_NET_BIND_SERVICE, align 4
  %70 = call i32 @capable(i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %68
  %73 = load i32, i32* @EACCES, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %97

75:                                               ; preds = %68, %62
  %76 = call i64 @__vsock_find_bound_socket(%struct.sockaddr_vm* %6)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i32, i32* @EADDRINUSE, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %97

81:                                               ; preds = %75
  br label %82

82:                                               ; preds = %81, %61
  %83 = load %struct.vsock_sock*, %struct.vsock_sock** %4, align 8
  %84 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.sockaddr_vm, %struct.sockaddr_vm* %6, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = getelementptr inbounds %struct.sockaddr_vm, %struct.sockaddr_vm* %6, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @vsock_addr_init(%struct.sockaddr_vm* %84, i32 %86, i64 %88)
  %90 = load %struct.vsock_sock*, %struct.vsock_sock** %4, align 8
  %91 = call i32 @__vsock_remove_bound(%struct.vsock_sock* %90)
  %92 = load %struct.vsock_sock*, %struct.vsock_sock** %4, align 8
  %93 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %92, i32 0, i32 0
  %94 = call i32 @vsock_bound_sockets(%struct.sockaddr_vm* %93)
  %95 = load %struct.vsock_sock*, %struct.vsock_sock** %4, align 8
  %96 = call i32 @__vsock_insert_bound(i32 %94, %struct.vsock_sock* %95)
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %82, %78, %72, %58
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i64 @prandom_u32_max(i64) #1

declare dso_local i32 @vsock_addr_init(%struct.sockaddr_vm*, i32, i64) #1

declare dso_local i64 @__vsock_find_bound_socket(%struct.sockaddr_vm*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @__vsock_remove_bound(%struct.vsock_sock*) #1

declare dso_local i32 @__vsock_insert_bound(i32, %struct.vsock_sock*) #1

declare dso_local i32 @vsock_bound_sockets(%struct.sockaddr_vm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
