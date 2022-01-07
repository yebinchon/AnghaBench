; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_test_sock_fields_kern.c_egress_read_sock_fields.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_test_sock_fields_kern.c_egress_read_sock_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_spinlock_cnt = type { i32, i32 }
%struct.__sk_buff = type { %struct.bpf_sock* }
%struct.bpf_sock = type { i32, i64, i64, i64, i32 }
%struct.sockaddr_in6 = type { i32 }
%struct.bpf_tcp_sock = type { i32 }

@__const.egress_read_sock_fields.cli_cnt_init = private unnamed_addr constant %struct.bpf_spinlock_cnt { i32 60319, i32 0 }, align 4
@ADDR_SRV_IDX = common dso_local global i64 0, align 8
@ADDR_CLI_IDX = common dso_local global i64 0, align 8
@EGRESS_LINUM_IDX = common dso_local global i64 0, align 8
@RETURN = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@IPPROTO_TCP = common dso_local global i64 0, align 8
@addr_map = common dso_local global i32 0, align 4
@EGRESS_SRV_IDX = common dso_local global i64 0, align 8
@EGRESS_CLI_IDX = common dso_local global i64 0, align 8
@sock_result_map = common dso_local global i32 0, align 4
@tcp_sock_result_map = common dso_local global i32 0, align 4
@sk_pkt_out_cnt = common dso_local global i32 0, align 4
@sk_pkt_out_cnt10 = common dso_local global i32 0, align 4
@BPF_SK_STORAGE_GET_F_CREATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @egress_read_sock_fields(%struct.__sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.__sk_buff*, align 8
  %4 = alloca %struct.bpf_spinlock_cnt, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.bpf_spinlock_cnt*, align 8
  %9 = alloca %struct.bpf_spinlock_cnt*, align 8
  %10 = alloca %struct.sockaddr_in6*, align 8
  %11 = alloca %struct.sockaddr_in6*, align 8
  %12 = alloca %struct.bpf_tcp_sock*, align 8
  %13 = alloca %struct.bpf_tcp_sock*, align 8
  %14 = alloca %struct.bpf_sock*, align 8
  %15 = alloca %struct.bpf_sock*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.__sk_buff* %0, %struct.__sk_buff** %3, align 8
  %18 = bitcast %struct.bpf_spinlock_cnt* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 bitcast (%struct.bpf_spinlock_cnt* @__const.egress_read_sock_fields.cli_cnt_init to i8*), i64 8, i1 false)
  %19 = load i64, i64* @ADDR_SRV_IDX, align 8
  store i64 %19, i64* %5, align 8
  %20 = load i64, i64* @ADDR_CLI_IDX, align 8
  store i64 %20, i64* %6, align 8
  %21 = load i64, i64* @EGRESS_LINUM_IDX, align 8
  store i64 %21, i64* %17, align 8
  %22 = load %struct.__sk_buff*, %struct.__sk_buff** %3, align 8
  %23 = getelementptr inbounds %struct.__sk_buff, %struct.__sk_buff* %22, i32 0, i32 0
  %24 = load %struct.bpf_sock*, %struct.bpf_sock** %23, align 8
  store %struct.bpf_sock* %24, %struct.bpf_sock** %14, align 8
  %25 = load %struct.bpf_sock*, %struct.bpf_sock** %14, align 8
  %26 = icmp ne %struct.bpf_sock* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %1
  %28 = load %struct.bpf_sock*, %struct.bpf_sock** %14, align 8
  %29 = getelementptr inbounds %struct.bpf_sock, %struct.bpf_sock* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %30, 10
  br i1 %31, label %32, label %34

32:                                               ; preds = %27, %1
  %33 = load i32, i32* @RETURN, align 4
  br label %34

34:                                               ; preds = %32, %27
  %35 = load %struct.bpf_sock*, %struct.bpf_sock** %14, align 8
  %36 = call %struct.bpf_sock* @bpf_sk_fullsock(%struct.bpf_sock* %35)
  store %struct.bpf_sock* %36, %struct.bpf_sock** %14, align 8
  %37 = load %struct.bpf_sock*, %struct.bpf_sock** %14, align 8
  %38 = icmp ne %struct.bpf_sock* %37, null
  br i1 %38, label %39, label %57

39:                                               ; preds = %34
  %40 = load %struct.bpf_sock*, %struct.bpf_sock** %14, align 8
  %41 = getelementptr inbounds %struct.bpf_sock, %struct.bpf_sock* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @AF_INET6, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %57, label %45

45:                                               ; preds = %39
  %46 = load %struct.bpf_sock*, %struct.bpf_sock** %14, align 8
  %47 = getelementptr inbounds %struct.bpf_sock, %struct.bpf_sock* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @IPPROTO_TCP, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %57, label %51

51:                                               ; preds = %45
  %52 = load %struct.bpf_sock*, %struct.bpf_sock** %14, align 8
  %53 = getelementptr inbounds %struct.bpf_sock, %struct.bpf_sock* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @is_loopback6(i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %51, %45, %39, %34
  %58 = load i32, i32* @RETURN, align 4
  br label %59

59:                                               ; preds = %57, %51
  %60 = load %struct.bpf_sock*, %struct.bpf_sock** %14, align 8
  %61 = call %struct.bpf_tcp_sock* @bpf_tcp_sock(%struct.bpf_sock* %60)
  store %struct.bpf_tcp_sock* %61, %struct.bpf_tcp_sock** %12, align 8
  %62 = load %struct.bpf_tcp_sock*, %struct.bpf_tcp_sock** %12, align 8
  %63 = icmp ne %struct.bpf_tcp_sock* %62, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %59
  %65 = load i32, i32* @RETURN, align 4
  br label %66

66:                                               ; preds = %64, %59
  %67 = call i8* @bpf_map_lookup_elem(i32* @addr_map, i64* %5)
  %68 = bitcast i8* %67 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %68, %struct.sockaddr_in6** %10, align 8
  %69 = call i8* @bpf_map_lookup_elem(i32* @addr_map, i64* %6)
  %70 = bitcast i8* %69 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %70, %struct.sockaddr_in6** %11, align 8
  %71 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %72 = icmp ne %struct.sockaddr_in6* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %66
  %74 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %11, align 8
  %75 = icmp ne %struct.sockaddr_in6* %74, null
  br i1 %75, label %78, label %76

76:                                               ; preds = %73, %66
  %77 = load i32, i32* @RETURN, align 4
  br label %78

78:                                               ; preds = %76, %73
  %79 = load %struct.bpf_sock*, %struct.bpf_sock** %14, align 8
  %80 = getelementptr inbounds %struct.bpf_sock, %struct.bpf_sock* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %83 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @bpf_ntohs(i32 %84)
  %86 = icmp eq i64 %81, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %78
  %88 = load i64, i64* @EGRESS_SRV_IDX, align 8
  store i64 %88, i64* %7, align 8
  br label %103

89:                                               ; preds = %78
  %90 = load %struct.bpf_sock*, %struct.bpf_sock** %14, align 8
  %91 = getelementptr inbounds %struct.bpf_sock, %struct.bpf_sock* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %11, align 8
  %94 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i64 @bpf_ntohs(i32 %95)
  %97 = icmp eq i64 %92, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %89
  %99 = load i64, i64* @EGRESS_CLI_IDX, align 8
  store i64 %99, i64* %7, align 8
  br label %102

100:                                              ; preds = %89
  %101 = load i32, i32* @RETURN, align 4
  br label %102

102:                                              ; preds = %100, %98
  br label %103

103:                                              ; preds = %102, %87
  %104 = call i8* @bpf_map_lookup_elem(i32* @sock_result_map, i64* %7)
  %105 = bitcast i8* %104 to %struct.bpf_sock*
  store %struct.bpf_sock* %105, %struct.bpf_sock** %15, align 8
  %106 = call i8* @bpf_map_lookup_elem(i32* @tcp_sock_result_map, i64* %7)
  %107 = bitcast i8* %106 to %struct.bpf_tcp_sock*
  store %struct.bpf_tcp_sock* %107, %struct.bpf_tcp_sock** %13, align 8
  %108 = load %struct.bpf_sock*, %struct.bpf_sock** %15, align 8
  %109 = icmp ne %struct.bpf_sock* %108, null
  br i1 %109, label %110, label %113

110:                                              ; preds = %103
  %111 = load %struct.bpf_tcp_sock*, %struct.bpf_tcp_sock** %13, align 8
  %112 = icmp ne %struct.bpf_tcp_sock* %111, null
  br i1 %112, label %115, label %113

113:                                              ; preds = %110, %103
  %114 = load i32, i32* @RETURN, align 4
  br label %115

115:                                              ; preds = %113, %110
  %116 = load %struct.bpf_sock*, %struct.bpf_sock** %15, align 8
  %117 = load %struct.bpf_sock*, %struct.bpf_sock** %14, align 8
  %118 = call i32 @skcpy(%struct.bpf_sock* %116, %struct.bpf_sock* %117)
  %119 = load %struct.bpf_tcp_sock*, %struct.bpf_tcp_sock** %13, align 8
  %120 = load %struct.bpf_tcp_sock*, %struct.bpf_tcp_sock** %12, align 8
  %121 = call i32 @tpcpy(%struct.bpf_tcp_sock* %119, %struct.bpf_tcp_sock* %120)
  %122 = load i64, i64* %7, align 8
  %123 = load i64, i64* @EGRESS_SRV_IDX, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %130

125:                                              ; preds = %115
  %126 = load %struct.bpf_sock*, %struct.bpf_sock** %14, align 8
  %127 = call %struct.bpf_spinlock_cnt* @bpf_sk_storage_get(i32* @sk_pkt_out_cnt, %struct.bpf_sock* %126, %struct.bpf_spinlock_cnt* null, i32 0)
  store %struct.bpf_spinlock_cnt* %127, %struct.bpf_spinlock_cnt** %8, align 8
  %128 = load %struct.bpf_sock*, %struct.bpf_sock** %14, align 8
  %129 = call %struct.bpf_spinlock_cnt* @bpf_sk_storage_get(i32* @sk_pkt_out_cnt10, %struct.bpf_sock* %128, %struct.bpf_spinlock_cnt* null, i32 0)
  store %struct.bpf_spinlock_cnt* %129, %struct.bpf_spinlock_cnt** %9, align 8
  br label %137

130:                                              ; preds = %115
  %131 = load %struct.bpf_sock*, %struct.bpf_sock** %14, align 8
  %132 = load i32, i32* @BPF_SK_STORAGE_GET_F_CREATE, align 4
  %133 = call %struct.bpf_spinlock_cnt* @bpf_sk_storage_get(i32* @sk_pkt_out_cnt, %struct.bpf_sock* %131, %struct.bpf_spinlock_cnt* %4, i32 %132)
  store %struct.bpf_spinlock_cnt* %133, %struct.bpf_spinlock_cnt** %8, align 8
  %134 = load %struct.bpf_sock*, %struct.bpf_sock** %14, align 8
  %135 = load i32, i32* @BPF_SK_STORAGE_GET_F_CREATE, align 4
  %136 = call %struct.bpf_spinlock_cnt* @bpf_sk_storage_get(i32* @sk_pkt_out_cnt10, %struct.bpf_sock* %134, %struct.bpf_spinlock_cnt* %4, i32 %135)
  store %struct.bpf_spinlock_cnt* %136, %struct.bpf_spinlock_cnt** %9, align 8
  br label %137

137:                                              ; preds = %130, %125
  %138 = load %struct.bpf_spinlock_cnt*, %struct.bpf_spinlock_cnt** %8, align 8
  %139 = icmp ne %struct.bpf_spinlock_cnt* %138, null
  br i1 %139, label %140, label %143

140:                                              ; preds = %137
  %141 = load %struct.bpf_spinlock_cnt*, %struct.bpf_spinlock_cnt** %9, align 8
  %142 = icmp ne %struct.bpf_spinlock_cnt* %141, null
  br i1 %142, label %145, label %143

143:                                              ; preds = %140, %137
  %144 = load i32, i32* @RETURN, align 4
  br label %145

145:                                              ; preds = %143, %140
  %146 = load %struct.bpf_spinlock_cnt*, %struct.bpf_spinlock_cnt** %8, align 8
  %147 = getelementptr inbounds %struct.bpf_spinlock_cnt, %struct.bpf_spinlock_cnt* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %147, align 4
  %150 = load %struct.bpf_spinlock_cnt*, %struct.bpf_spinlock_cnt** %9, align 8
  %151 = getelementptr inbounds %struct.bpf_spinlock_cnt, %struct.bpf_spinlock_cnt* %150, i32 0, i32 1
  %152 = call i32 @bpf_spin_lock(i32* %151)
  %153 = load %struct.bpf_spinlock_cnt*, %struct.bpf_spinlock_cnt** %9, align 8
  %154 = getelementptr inbounds %struct.bpf_spinlock_cnt, %struct.bpf_spinlock_cnt* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = add nsw i32 %155, 10
  store i32 %156, i32* %154, align 4
  %157 = load %struct.bpf_spinlock_cnt*, %struct.bpf_spinlock_cnt** %9, align 8
  %158 = getelementptr inbounds %struct.bpf_spinlock_cnt, %struct.bpf_spinlock_cnt* %157, i32 0, i32 1
  %159 = call i32 @bpf_spin_unlock(i32* %158)
  %160 = load i32, i32* @RETURN, align 4
  %161 = load i32, i32* %2, align 4
  ret i32 %161
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.bpf_sock* @bpf_sk_fullsock(%struct.bpf_sock*) #2

declare dso_local i32 @is_loopback6(i32) #2

declare dso_local %struct.bpf_tcp_sock* @bpf_tcp_sock(%struct.bpf_sock*) #2

declare dso_local i8* @bpf_map_lookup_elem(i32*, i64*) #2

declare dso_local i64 @bpf_ntohs(i32) #2

declare dso_local i32 @skcpy(%struct.bpf_sock*, %struct.bpf_sock*) #2

declare dso_local i32 @tpcpy(%struct.bpf_tcp_sock*, %struct.bpf_tcp_sock*) #2

declare dso_local %struct.bpf_spinlock_cnt* @bpf_sk_storage_get(i32*, %struct.bpf_sock*, %struct.bpf_spinlock_cnt*, i32) #2

declare dso_local i32 @bpf_spin_lock(i32*) #2

declare dso_local i32 @bpf_spin_unlock(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
