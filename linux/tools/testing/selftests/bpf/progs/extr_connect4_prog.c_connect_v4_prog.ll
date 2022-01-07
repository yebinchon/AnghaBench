; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_connect4_prog.c_connect_v4_prog.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_connect4_prog.c_connect_v4_prog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_sock_addr = type { i64, i8*, i8* }
%struct.bpf_sock_tuple = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i8*, %struct.sockaddr_in, %struct.sockaddr_in }
%struct.sockaddr_in = type { %struct.TYPE_4__, i8*, i32 }
%struct.TYPE_4__ = type { i8* }
%struct.bpf_sock = type { i64, i64 }
%struct.sockaddr = type { i32 }

@DST_REWRITE_IP4 = common dso_local global i32 0, align 4
@DST_REWRITE_PORT4 = common dso_local global i64 0, align 8
@SOCK_STREAM = common dso_local global i64 0, align 8
@SOCK_DGRAM = common dso_local global i64 0, align 8
@BPF_F_CURRENT_NETNS = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@SRC_REWRITE_IP4 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @connect_v4_prog(%struct.bpf_sock_addr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bpf_sock_addr*, align 8
  %4 = alloca %struct.bpf_sock_tuple, align 8
  %5 = alloca %struct.sockaddr_in, align 8
  %6 = alloca %struct.bpf_sock*, align 8
  store %struct.bpf_sock_addr* %0, %struct.bpf_sock_addr** %3, align 8
  %7 = bitcast %struct.bpf_sock_tuple* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 64, i1 false)
  %8 = getelementptr inbounds %struct.bpf_sock_tuple, %struct.bpf_sock_tuple* %4, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 3
  %10 = call i32 @memset(%struct.sockaddr_in* %9, i32 0, i32 24)
  %11 = getelementptr inbounds %struct.bpf_sock_tuple, %struct.bpf_sock_tuple* %4, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 2
  %13 = call i32 @memset(%struct.sockaddr_in* %12, i32 0, i32 24)
  %14 = load i32, i32* @DST_REWRITE_IP4, align 4
  %15 = call i8* @bpf_htonl(i32 %14)
  %16 = ptrtoint i8* %15 to i64
  %17 = getelementptr inbounds %struct.bpf_sock_tuple, %struct.bpf_sock_tuple* %4, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  %19 = load i64, i64* @DST_REWRITE_PORT4, align 8
  %20 = call i8* @bpf_htons(i64 %19)
  %21 = getelementptr inbounds %struct.bpf_sock_tuple, %struct.bpf_sock_tuple* %4, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  store i8* %20, i8** %22, align 8
  %23 = load %struct.bpf_sock_addr*, %struct.bpf_sock_addr** %3, align 8
  %24 = getelementptr inbounds %struct.bpf_sock_addr, %struct.bpf_sock_addr* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SOCK_STREAM, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %1
  %29 = load %struct.bpf_sock_addr*, %struct.bpf_sock_addr** %3, align 8
  %30 = getelementptr inbounds %struct.bpf_sock_addr, %struct.bpf_sock_addr* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @SOCK_DGRAM, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %97

35:                                               ; preds = %28, %1
  %36 = load %struct.bpf_sock_addr*, %struct.bpf_sock_addr** %3, align 8
  %37 = getelementptr inbounds %struct.bpf_sock_addr, %struct.bpf_sock_addr* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @SOCK_STREAM, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load %struct.bpf_sock_addr*, %struct.bpf_sock_addr** %3, align 8
  %43 = load i32, i32* @BPF_F_CURRENT_NETNS, align 4
  %44 = call %struct.bpf_sock* @bpf_sk_lookup_tcp(%struct.bpf_sock_addr* %42, %struct.bpf_sock_tuple* %4, i32 64, i32 %43, i32 0)
  store %struct.bpf_sock* %44, %struct.bpf_sock** %6, align 8
  br label %49

45:                                               ; preds = %35
  %46 = load %struct.bpf_sock_addr*, %struct.bpf_sock_addr** %3, align 8
  %47 = load i32, i32* @BPF_F_CURRENT_NETNS, align 4
  %48 = call %struct.bpf_sock* @bpf_sk_lookup_udp(%struct.bpf_sock_addr* %46, %struct.bpf_sock_tuple* %4, i32 64, i32 %47, i32 0)
  store %struct.bpf_sock* %48, %struct.bpf_sock** %6, align 8
  br label %49

49:                                               ; preds = %45, %41
  br label %50

50:                                               ; preds = %49
  %51 = load %struct.bpf_sock*, %struct.bpf_sock** %6, align 8
  %52 = icmp ne %struct.bpf_sock* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %50
  store i32 0, i32* %2, align 4
  br label %97

54:                                               ; preds = %50
  %55 = load %struct.bpf_sock*, %struct.bpf_sock** %6, align 8
  %56 = getelementptr inbounds %struct.bpf_sock, %struct.bpf_sock* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.bpf_sock_tuple, %struct.bpf_sock_tuple* %4, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %57, %60
  br i1 %61, label %68, label %62

62:                                               ; preds = %54
  %63 = load %struct.bpf_sock*, %struct.bpf_sock** %6, align 8
  %64 = getelementptr inbounds %struct.bpf_sock, %struct.bpf_sock* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @DST_REWRITE_PORT4, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %62, %54
  %69 = load %struct.bpf_sock*, %struct.bpf_sock** %6, align 8
  %70 = call i32 @bpf_sk_release(%struct.bpf_sock* %69)
  store i32 0, i32* %2, align 4
  br label %97

71:                                               ; preds = %62
  %72 = load %struct.bpf_sock*, %struct.bpf_sock** %6, align 8
  %73 = call i32 @bpf_sk_release(%struct.bpf_sock* %72)
  %74 = load i32, i32* @DST_REWRITE_IP4, align 4
  %75 = call i8* @bpf_htonl(i32 %74)
  %76 = load %struct.bpf_sock_addr*, %struct.bpf_sock_addr** %3, align 8
  %77 = getelementptr inbounds %struct.bpf_sock_addr, %struct.bpf_sock_addr* %76, i32 0, i32 2
  store i8* %75, i8** %77, align 8
  %78 = load i64, i64* @DST_REWRITE_PORT4, align 8
  %79 = call i8* @bpf_htons(i64 %78)
  %80 = load %struct.bpf_sock_addr*, %struct.bpf_sock_addr** %3, align 8
  %81 = getelementptr inbounds %struct.bpf_sock_addr, %struct.bpf_sock_addr* %80, i32 0, i32 1
  store i8* %79, i8** %81, align 8
  %82 = call i32 @memset(%struct.sockaddr_in* %5, i32 0, i32 24)
  %83 = load i32, i32* @AF_INET, align 4
  %84 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i32 0, i32 2
  store i32 %83, i32* %84, align 8
  %85 = call i8* @bpf_htons(i64 0)
  %86 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i32 0, i32 1
  store i8* %85, i8** %86, align 8
  %87 = load i32, i32* @SRC_REWRITE_IP4, align 4
  %88 = call i8* @bpf_htonl(i32 %87)
  %89 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  store i8* %88, i8** %90, align 8
  %91 = load %struct.bpf_sock_addr*, %struct.bpf_sock_addr** %3, align 8
  %92 = bitcast %struct.sockaddr_in* %5 to %struct.sockaddr*
  %93 = call i64 @bpf_bind(%struct.bpf_sock_addr* %91, %struct.sockaddr* %92, i32 24)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %71
  store i32 0, i32* %2, align 4
  br label %97

96:                                               ; preds = %71
  store i32 1, i32* %2, align 4
  br label %97

97:                                               ; preds = %96, %95, %68, %53, %34
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memset(%struct.sockaddr_in*, i32, i32) #2

declare dso_local i8* @bpf_htonl(i32) #2

declare dso_local i8* @bpf_htons(i64) #2

declare dso_local %struct.bpf_sock* @bpf_sk_lookup_tcp(%struct.bpf_sock_addr*, %struct.bpf_sock_tuple*, i32, i32, i32) #2

declare dso_local %struct.bpf_sock* @bpf_sk_lookup_udp(%struct.bpf_sock_addr*, %struct.bpf_sock_tuple*, i32, i32, i32) #2

declare dso_local i32 @bpf_sk_release(%struct.bpf_sock*) #2

declare dso_local i64 @bpf_bind(%struct.bpf_sock_addr*, %struct.sockaddr*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
