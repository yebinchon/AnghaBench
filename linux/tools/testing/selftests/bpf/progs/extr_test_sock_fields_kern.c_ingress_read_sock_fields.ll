; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_test_sock_fields_kern.c_ingress_read_sock_fields.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_test_sock_fields_kern.c_ingress_read_sock_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__sk_buff = type { %struct.bpf_sock* }
%struct.bpf_sock = type { i64, i64, i32, i32 }
%struct.bpf_tcp_sock = type { i32 }
%struct.sockaddr_in6 = type { i32 }

@ADDR_SRV_IDX = common dso_local global i32 0, align 4
@INGRESS_LISTEN_IDX = common dso_local global i32 0, align 4
@INGRESS_LINUM_IDX = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@RETURN = common dso_local global i32 0, align 4
@addr_map = common dso_local global i32 0, align 4
@sock_result_map = common dso_local global i32 0, align 4
@tcp_sock_result_map = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ingress_read_sock_fields(%struct.__sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.__sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.bpf_tcp_sock*, align 8
  %7 = alloca %struct.bpf_tcp_sock*, align 8
  %8 = alloca %struct.bpf_sock*, align 8
  %9 = alloca %struct.bpf_sock*, align 8
  %10 = alloca %struct.sockaddr_in6*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.__sk_buff* %0, %struct.__sk_buff** %3, align 8
  %13 = load i32, i32* @ADDR_SRV_IDX, align 4
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* @INGRESS_LISTEN_IDX, align 4
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* @INGRESS_LINUM_IDX, align 4
  store i32 %15, i32* %12, align 4
  %16 = load %struct.__sk_buff*, %struct.__sk_buff** %3, align 8
  %17 = getelementptr inbounds %struct.__sk_buff, %struct.__sk_buff* %16, i32 0, i32 0
  %18 = load %struct.bpf_sock*, %struct.bpf_sock** %17, align 8
  store %struct.bpf_sock* %18, %struct.bpf_sock** %8, align 8
  %19 = load %struct.bpf_sock*, %struct.bpf_sock** %8, align 8
  %20 = icmp ne %struct.bpf_sock* %19, null
  br i1 %20, label %21, label %33

21:                                               ; preds = %1
  %22 = load %struct.bpf_sock*, %struct.bpf_sock** %8, align 8
  %23 = getelementptr inbounds %struct.bpf_sock, %struct.bpf_sock* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @AF_INET6, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = load %struct.bpf_sock*, %struct.bpf_sock** %8, align 8
  %29 = getelementptr inbounds %struct.bpf_sock, %struct.bpf_sock* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @is_loopback6(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %27, %21, %1
  %34 = load i32, i32* @RETURN, align 4
  br label %35

35:                                               ; preds = %33, %27
  %36 = call i8* @bpf_map_lookup_elem(i32* @addr_map, i32* %4)
  %37 = bitcast i8* %36 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %37, %struct.sockaddr_in6** %10, align 8
  %38 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %39 = icmp ne %struct.sockaddr_in6* %38, null
  br i1 %39, label %40, label %49

40:                                               ; preds = %35
  %41 = load %struct.bpf_sock*, %struct.bpf_sock** %8, align 8
  %42 = getelementptr inbounds %struct.bpf_sock, %struct.bpf_sock* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %45 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @bpf_ntohs(i32 %46)
  %48 = icmp ne i64 %43, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %40, %35
  %50 = load i32, i32* @RETURN, align 4
  br label %51

51:                                               ; preds = %49, %40
  %52 = load %struct.bpf_sock*, %struct.bpf_sock** %8, align 8
  %53 = getelementptr inbounds %struct.bpf_sock, %struct.bpf_sock* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 10
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = load %struct.bpf_sock*, %struct.bpf_sock** %8, align 8
  %58 = getelementptr inbounds %struct.bpf_sock, %struct.bpf_sock* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 12
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32, i32* @RETURN, align 4
  br label %63

63:                                               ; preds = %61, %56, %51
  %64 = load %struct.bpf_sock*, %struct.bpf_sock** %8, align 8
  %65 = call %struct.bpf_sock* @bpf_get_listener_sock(%struct.bpf_sock* %64)
  store %struct.bpf_sock* %65, %struct.bpf_sock** %8, align 8
  %66 = load %struct.bpf_sock*, %struct.bpf_sock** %8, align 8
  %67 = icmp ne %struct.bpf_sock* %66, null
  br i1 %67, label %70, label %68

68:                                               ; preds = %63
  %69 = load i32, i32* @RETURN, align 4
  br label %70

70:                                               ; preds = %68, %63
  %71 = load %struct.bpf_sock*, %struct.bpf_sock** %8, align 8
  %72 = call %struct.bpf_tcp_sock* @bpf_tcp_sock(%struct.bpf_sock* %71)
  store %struct.bpf_tcp_sock* %72, %struct.bpf_tcp_sock** %6, align 8
  %73 = load %struct.bpf_tcp_sock*, %struct.bpf_tcp_sock** %6, align 8
  %74 = icmp ne %struct.bpf_tcp_sock* %73, null
  br i1 %74, label %77, label %75

75:                                               ; preds = %70
  %76 = load i32, i32* @RETURN, align 4
  br label %77

77:                                               ; preds = %75, %70
  %78 = call i8* @bpf_map_lookup_elem(i32* @sock_result_map, i32* %5)
  %79 = bitcast i8* %78 to %struct.bpf_sock*
  store %struct.bpf_sock* %79, %struct.bpf_sock** %9, align 8
  %80 = call i8* @bpf_map_lookup_elem(i32* @tcp_sock_result_map, i32* %5)
  %81 = bitcast i8* %80 to %struct.bpf_tcp_sock*
  store %struct.bpf_tcp_sock* %81, %struct.bpf_tcp_sock** %7, align 8
  %82 = load %struct.bpf_sock*, %struct.bpf_sock** %9, align 8
  %83 = icmp ne %struct.bpf_sock* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %77
  %85 = load %struct.bpf_tcp_sock*, %struct.bpf_tcp_sock** %7, align 8
  %86 = icmp ne %struct.bpf_tcp_sock* %85, null
  br i1 %86, label %89, label %87

87:                                               ; preds = %84, %77
  %88 = load i32, i32* @RETURN, align 4
  br label %89

89:                                               ; preds = %87, %84
  %90 = load %struct.bpf_sock*, %struct.bpf_sock** %9, align 8
  %91 = load %struct.bpf_sock*, %struct.bpf_sock** %8, align 8
  %92 = call i32 @skcpy(%struct.bpf_sock* %90, %struct.bpf_sock* %91)
  %93 = load %struct.bpf_tcp_sock*, %struct.bpf_tcp_sock** %7, align 8
  %94 = load %struct.bpf_tcp_sock*, %struct.bpf_tcp_sock** %6, align 8
  %95 = call i32 @tpcpy(%struct.bpf_tcp_sock* %93, %struct.bpf_tcp_sock* %94)
  %96 = load i32, i32* @RETURN, align 4
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i32 @is_loopback6(i32) #1

declare dso_local i8* @bpf_map_lookup_elem(i32*, i32*) #1

declare dso_local i64 @bpf_ntohs(i32) #1

declare dso_local %struct.bpf_sock* @bpf_get_listener_sock(%struct.bpf_sock*) #1

declare dso_local %struct.bpf_tcp_sock* @bpf_tcp_sock(%struct.bpf_sock*) #1

declare dso_local i32 @skcpy(%struct.bpf_sock*, %struct.bpf_sock*) #1

declare dso_local i32 @tpcpy(%struct.bpf_tcp_sock*, %struct.bpf_tcp_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
