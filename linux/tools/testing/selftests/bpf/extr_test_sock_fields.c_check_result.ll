; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_sock_fields.c_check_result.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_sock_fields.c_check_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.bpf_tcp_sock = type { i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64*, i64* }
%struct.bpf_sock = type { i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64*, i64* }

@linum_map_fd = common dso_local global i32 0, align 4
@egress_linum_idx = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"bpf_map_lookup_elem(linum_map_fd)\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"err:%d errno:%d\00", align 1
@errno = common dso_local global i32 0, align 4
@ingress_linum_idx = common dso_local global i32 0, align 4
@sk_map_fd = common dso_local global i32 0, align 4
@egress_srv_idx = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"bpf_map_lookup_elem(sk_map_fd, &egress_srv_idx)\00", align 1
@tp_map_fd = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"bpf_map_lookup_elem(tp_map_fd, &egress_srv_idx)\00", align 1
@egress_cli_idx = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [48 x i8] c"bpf_map_lookup_elem(sk_map_fd, &egress_cli_idx)\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"bpf_map_lookup_elem(tp_map_fd, &egress_cli_idx)\00", align 1
@ingress_listen_idx = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [52 x i8] c"bpf_map_lookup_elem(sk_map_fd, &ingress_listen_idx)\00", align 1
@.str.7 = private unnamed_addr constant [52 x i8] c"bpf_map_lookup_elem(tp_map_fd, &ingress_listen_idx)\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"listen_sk: \00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"srv_sk: \00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"cli_sk: \00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"listen_tp: \00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"srv_tp: \00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"cli_tp: \00", align 1
@AF_INET6 = common dso_local global i64 0, align 8
@IPPROTO_TCP = common dso_local global i64 0, align 8
@in6addr_loopback = common dso_local global i32 0, align 4
@srv_sa6 = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@.str.15 = private unnamed_addr constant [21 x i8] c"Unexpected listen_sk\00", align 1
@.str.16 = private unnamed_addr constant [41 x i8] c"Check listen_sk output. ingress_linum:%u\00", align 1
@cli_sa6 = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.17 = private unnamed_addr constant [18 x i8] c"Unexpected srv_sk\00", align 1
@.str.18 = private unnamed_addr constant [37 x i8] c"Check srv_sk output. egress_linum:%u\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"Unexpected cli_sk\00", align 1
@.str.20 = private unnamed_addr constant [37 x i8] c"Check cli_sk output. egress_linum:%u\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"Unexpected listen_tp\00", align 1
@.str.22 = private unnamed_addr constant [41 x i8] c"Check listen_tp output. ingress_linum:%u\00", align 1
@DATA_LEN = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [18 x i8] c"Unexpected srv_tp\00", align 1
@.str.24 = private unnamed_addr constant [37 x i8] c"Check srv_tp output. egress_linum:%u\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"Unexpected cli_tp\00", align 1
@.str.26 = private unnamed_addr constant [37 x i8] c"Check cli_tp output. egress_linum:%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @check_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_result() #0 {
  %1 = alloca %struct.bpf_tcp_sock, align 8
  %2 = alloca %struct.bpf_tcp_sock, align 8
  %3 = alloca %struct.bpf_tcp_sock, align 8
  %4 = alloca %struct.bpf_sock, align 8
  %5 = alloca %struct.bpf_sock, align 8
  %6 = alloca %struct.bpf_sock, align 8
  %7 = alloca %struct.bpf_tcp_sock, align 8
  %8 = alloca %struct.bpf_tcp_sock, align 8
  %9 = alloca i32, align 4
  %10 = load i32, i32* @linum_map_fd, align 4
  %11 = call i32 @bpf_map_lookup_elem(i32 %10, i32* @egress_linum_idx, %struct.bpf_tcp_sock* %8)
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp eq i32 %12, -1
  %14 = zext i1 %13 to i32
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @errno, align 4
  %17 = call i32 (i32, i8*, i8*, ...) @CHECK(i32 %14, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %15, i32 %16)
  %18 = load i32, i32* @linum_map_fd, align 4
  %19 = call i32 @bpf_map_lookup_elem(i32 %18, i32* @ingress_linum_idx, %struct.bpf_tcp_sock* %7)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp eq i32 %20, -1
  %22 = zext i1 %21 to i32
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @errno, align 4
  %25 = call i32 (i32, i8*, i8*, ...) @CHECK(i32 %22, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %23, i32 %24)
  %26 = load i32, i32* @sk_map_fd, align 4
  %27 = bitcast %struct.bpf_sock* %4 to %struct.bpf_tcp_sock*
  %28 = call i32 @bpf_map_lookup_elem(i32 %26, i32* @egress_srv_idx, %struct.bpf_tcp_sock* %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp eq i32 %29, -1
  %31 = zext i1 %30 to i32
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @errno, align 4
  %34 = call i32 (i32, i8*, i8*, ...) @CHECK(i32 %31, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %33)
  %35 = load i32, i32* @tp_map_fd, align 4
  %36 = call i32 @bpf_map_lookup_elem(i32 %35, i32* @egress_srv_idx, %struct.bpf_tcp_sock* %1)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp eq i32 %37, -1
  %39 = zext i1 %38 to i32
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @errno, align 4
  %42 = call i32 (i32, i8*, i8*, ...) @CHECK(i32 %39, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %40, i32 %41)
  %43 = load i32, i32* @sk_map_fd, align 4
  %44 = bitcast %struct.bpf_sock* %5 to %struct.bpf_tcp_sock*
  %45 = call i32 @bpf_map_lookup_elem(i32 %43, i32* @egress_cli_idx, %struct.bpf_tcp_sock* %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp eq i32 %46, -1
  %48 = zext i1 %47 to i32
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @errno, align 4
  %51 = call i32 (i32, i8*, i8*, ...) @CHECK(i32 %48, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %49, i32 %50)
  %52 = load i32, i32* @tp_map_fd, align 4
  %53 = call i32 @bpf_map_lookup_elem(i32 %52, i32* @egress_cli_idx, %struct.bpf_tcp_sock* %2)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp eq i32 %54, -1
  %56 = zext i1 %55 to i32
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @errno, align 4
  %59 = call i32 (i32, i8*, i8*, ...) @CHECK(i32 %56, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32 %58)
  %60 = load i32, i32* @sk_map_fd, align 4
  %61 = bitcast %struct.bpf_sock* %6 to %struct.bpf_tcp_sock*
  %62 = call i32 @bpf_map_lookup_elem(i32 %60, i32* @ingress_listen_idx, %struct.bpf_tcp_sock* %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp eq i32 %63, -1
  %65 = zext i1 %64 to i32
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* @errno, align 4
  %68 = call i32 (i32, i8*, i8*, ...) @CHECK(i32 %65, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %66, i32 %67)
  %69 = load i32, i32* @tp_map_fd, align 4
  %70 = call i32 @bpf_map_lookup_elem(i32 %69, i32* @ingress_listen_idx, %struct.bpf_tcp_sock* %3)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp eq i32 %71, -1
  %73 = zext i1 %72 to i32
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @errno, align 4
  %76 = call i32 (i32, i8*, i8*, ...) @CHECK(i32 %73, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %74, i32 %75)
  %77 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  %78 = bitcast %struct.bpf_sock* %6 to %struct.bpf_tcp_sock*
  %79 = call i32 @print_sk(%struct.bpf_tcp_sock* %78)
  %80 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %81 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  %82 = bitcast %struct.bpf_sock* %4 to %struct.bpf_tcp_sock*
  %83 = call i32 @print_sk(%struct.bpf_tcp_sock* %82)
  %84 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %85 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  %86 = bitcast %struct.bpf_sock* %5 to %struct.bpf_tcp_sock*
  %87 = call i32 @print_sk(%struct.bpf_tcp_sock* %86)
  %88 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %89 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  %90 = call i32 @print_tp(%struct.bpf_tcp_sock* %3)
  %91 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %92 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0))
  %93 = call i32 @print_tp(%struct.bpf_tcp_sock* %1)
  %94 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %95 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0))
  %96 = call i32 @print_tp(%struct.bpf_tcp_sock* %2)
  %97 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %98 = getelementptr inbounds %struct.bpf_sock, %struct.bpf_sock* %6, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %99, 10
  br i1 %100, label %150, label %101

101:                                              ; preds = %0
  %102 = getelementptr inbounds %struct.bpf_sock, %struct.bpf_sock* %6, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @AF_INET6, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %150, label %106

106:                                              ; preds = %101
  %107 = getelementptr inbounds %struct.bpf_sock, %struct.bpf_sock* %6, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @IPPROTO_TCP, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %150, label %111

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct.bpf_sock, %struct.bpf_sock* %6, i32 0, i32 12
  %113 = load i64*, i64** %112, align 8
  %114 = call i64 @memcmp(i64* %113, i32* @in6addr_loopback, i32 8)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %150, label %116

116:                                              ; preds = %111
  %117 = getelementptr inbounds %struct.bpf_sock, %struct.bpf_sock* %6, i32 0, i32 11
  %118 = load i64*, i64** %117, align 8
  %119 = getelementptr inbounds i64, i64* %118, i64 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %150, label %122

122:                                              ; preds = %116
  %123 = getelementptr inbounds %struct.bpf_sock, %struct.bpf_sock* %6, i32 0, i32 11
  %124 = load i64*, i64** %123, align 8
  %125 = getelementptr inbounds i64, i64* %124, i64 1
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %150, label %128

128:                                              ; preds = %122
  %129 = getelementptr inbounds %struct.bpf_sock, %struct.bpf_sock* %6, i32 0, i32 11
  %130 = load i64*, i64** %129, align 8
  %131 = getelementptr inbounds i64, i64* %130, i64 2
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %150, label %134

134:                                              ; preds = %128
  %135 = getelementptr inbounds %struct.bpf_sock, %struct.bpf_sock* %6, i32 0, i32 11
  %136 = load i64*, i64** %135, align 8
  %137 = getelementptr inbounds i64, i64* %136, i64 3
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %150, label %140

140:                                              ; preds = %134
  %141 = getelementptr inbounds %struct.bpf_sock, %struct.bpf_sock* %6, i32 0, i32 3
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @srv_sa6, i32 0, i32 0), align 8
  %144 = call i64 @ntohs(i64 %143)
  %145 = icmp ne i64 %142, %144
  br i1 %145, label %150, label %146

146:                                              ; preds = %140
  %147 = getelementptr inbounds %struct.bpf_sock, %struct.bpf_sock* %6, i32 0, i32 4
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br label %150

150:                                              ; preds = %146, %140, %134, %128, %122, %116, %111, %106, %101, %0
  %151 = phi i1 [ true, %140 ], [ true, %134 ], [ true, %128 ], [ true, %122 ], [ true, %116 ], [ true, %111 ], [ true, %106 ], [ true, %101 ], [ true, %0 ], [ %149, %146 ]
  %152 = zext i1 %151 to i32
  %153 = call i32 (i32, i8*, i8*, ...) @CHECK(i32 %152, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.16, i64 0, i64 0), %struct.bpf_tcp_sock* byval(%struct.bpf_tcp_sock) align 8 %7)
  %154 = getelementptr inbounds %struct.bpf_sock, %struct.bpf_sock* %4, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = icmp eq i32 %155, 10
  br i1 %156, label %192, label %157

157:                                              ; preds = %150
  %158 = getelementptr inbounds %struct.bpf_sock, %struct.bpf_sock* %4, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %192

161:                                              ; preds = %157
  %162 = getelementptr inbounds %struct.bpf_sock, %struct.bpf_sock* %4, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @AF_INET6, align 8
  %165 = icmp ne i64 %163, %164
  br i1 %165, label %192, label %166

166:                                              ; preds = %161
  %167 = getelementptr inbounds %struct.bpf_sock, %struct.bpf_sock* %4, i32 0, i32 2
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @IPPROTO_TCP, align 8
  %170 = icmp ne i64 %168, %169
  br i1 %170, label %192, label %171

171:                                              ; preds = %166
  %172 = getelementptr inbounds %struct.bpf_sock, %struct.bpf_sock* %4, i32 0, i32 12
  %173 = load i64*, i64** %172, align 8
  %174 = call i64 @memcmp(i64* %173, i32* @in6addr_loopback, i32 8)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %192, label %176

176:                                              ; preds = %171
  %177 = getelementptr inbounds %struct.bpf_sock, %struct.bpf_sock* %4, i32 0, i32 11
  %178 = load i64*, i64** %177, align 8
  %179 = call i64 @memcmp(i64* %178, i32* @in6addr_loopback, i32 8)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %192, label %181

181:                                              ; preds = %176
  %182 = getelementptr inbounds %struct.bpf_sock, %struct.bpf_sock* %4, i32 0, i32 3
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @srv_sa6, i32 0, i32 0), align 8
  %185 = call i64 @ntohs(i64 %184)
  %186 = icmp ne i64 %183, %185
  br i1 %186, label %192, label %187

187:                                              ; preds = %181
  %188 = getelementptr inbounds %struct.bpf_sock, %struct.bpf_sock* %4, i32 0, i32 4
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cli_sa6, i32 0, i32 0), align 8
  %191 = icmp ne i64 %189, %190
  br label %192

192:                                              ; preds = %187, %181, %176, %171, %166, %161, %157, %150
  %193 = phi i1 [ true, %181 ], [ true, %176 ], [ true, %171 ], [ true, %166 ], [ true, %161 ], [ true, %157 ], [ true, %150 ], [ %191, %187 ]
  %194 = zext i1 %193 to i32
  %195 = call i32 (i32, i8*, i8*, ...) @CHECK(i32 %194, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.18, i64 0, i64 0), %struct.bpf_tcp_sock* byval(%struct.bpf_tcp_sock) align 8 %8)
  %196 = getelementptr inbounds %struct.bpf_sock, %struct.bpf_sock* %5, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = icmp eq i32 %197, 10
  br i1 %198, label %234, label %199

199:                                              ; preds = %192
  %200 = getelementptr inbounds %struct.bpf_sock, %struct.bpf_sock* %5, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %234

203:                                              ; preds = %199
  %204 = getelementptr inbounds %struct.bpf_sock, %struct.bpf_sock* %5, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @AF_INET6, align 8
  %207 = icmp ne i64 %205, %206
  br i1 %207, label %234, label %208

208:                                              ; preds = %203
  %209 = getelementptr inbounds %struct.bpf_sock, %struct.bpf_sock* %5, i32 0, i32 2
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* @IPPROTO_TCP, align 8
  %212 = icmp ne i64 %210, %211
  br i1 %212, label %234, label %213

213:                                              ; preds = %208
  %214 = getelementptr inbounds %struct.bpf_sock, %struct.bpf_sock* %5, i32 0, i32 12
  %215 = load i64*, i64** %214, align 8
  %216 = call i64 @memcmp(i64* %215, i32* @in6addr_loopback, i32 8)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %234, label %218

218:                                              ; preds = %213
  %219 = getelementptr inbounds %struct.bpf_sock, %struct.bpf_sock* %5, i32 0, i32 11
  %220 = load i64*, i64** %219, align 8
  %221 = call i64 @memcmp(i64* %220, i32* @in6addr_loopback, i32 8)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %234, label %223

223:                                              ; preds = %218
  %224 = getelementptr inbounds %struct.bpf_sock, %struct.bpf_sock* %5, i32 0, i32 3
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cli_sa6, i32 0, i32 0), align 8
  %227 = call i64 @ntohs(i64 %226)
  %228 = icmp ne i64 %225, %227
  br i1 %228, label %234, label %229

229:                                              ; preds = %223
  %230 = getelementptr inbounds %struct.bpf_sock, %struct.bpf_sock* %5, i32 0, i32 4
  %231 = load i64, i64* %230, align 8
  %232 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @srv_sa6, i32 0, i32 0), align 8
  %233 = icmp ne i64 %231, %232
  br label %234

234:                                              ; preds = %229, %223, %218, %213, %208, %203, %199, %192
  %235 = phi i1 [ true, %223 ], [ true, %218 ], [ true, %213 ], [ true, %208 ], [ true, %203 ], [ true, %199 ], [ true, %192 ], [ %233, %229 ]
  %236 = zext i1 %235 to i32
  %237 = call i32 (i32, i8*, i8*, ...) @CHECK(i32 %236, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.20, i64 0, i64 0), %struct.bpf_tcp_sock* byval(%struct.bpf_tcp_sock) align 8 %8)
  %238 = getelementptr inbounds %struct.bpf_tcp_sock, %struct.bpf_tcp_sock* %3, i32 0, i32 5
  %239 = load i32, i32* %238, align 8
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %253, label %241

241:                                              ; preds = %234
  %242 = getelementptr inbounds %struct.bpf_tcp_sock, %struct.bpf_tcp_sock* %3, i32 0, i32 6
  %243 = load i32, i32* %242, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %253, label %245

245:                                              ; preds = %241
  %246 = getelementptr inbounds %struct.bpf_tcp_sock, %struct.bpf_tcp_sock* %3, i32 0, i32 10
  %247 = load i64, i64* %246, align 8
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %253, label %249

249:                                              ; preds = %245
  %250 = getelementptr inbounds %struct.bpf_tcp_sock, %struct.bpf_tcp_sock* %3, i32 0, i32 7
  %251 = load i32, i32* %250, align 8
  %252 = icmp ne i32 %251, 0
  br label %253

253:                                              ; preds = %249, %245, %241, %234
  %254 = phi i1 [ true, %245 ], [ true, %241 ], [ true, %234 ], [ %252, %249 ]
  %255 = zext i1 %254 to i32
  %256 = call i32 (i32, i8*, i8*, ...) @CHECK(i32 %255, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.22, i64 0, i64 0), %struct.bpf_tcp_sock* byval(%struct.bpf_tcp_sock) align 8 %7)
  %257 = getelementptr inbounds %struct.bpf_tcp_sock, %struct.bpf_tcp_sock* %1, i32 0, i32 5
  %258 = load i32, i32* %257, align 8
  %259 = icmp ne i32 %258, 2
  br i1 %259, label %278, label %260

260:                                              ; preds = %253
  %261 = getelementptr inbounds %struct.bpf_tcp_sock, %struct.bpf_tcp_sock* %1, i32 0, i32 6
  %262 = load i32, i32* %261, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %278, label %264

264:                                              ; preds = %260
  %265 = getelementptr inbounds %struct.bpf_tcp_sock, %struct.bpf_tcp_sock* %1, i32 0, i32 8
  %266 = load i32, i32* %265, align 4
  %267 = icmp ne i32 %266, 10
  br i1 %267, label %278, label %268

268:                                              ; preds = %264
  %269 = getelementptr inbounds %struct.bpf_tcp_sock, %struct.bpf_tcp_sock* %1, i32 0, i32 10
  %270 = load i64, i64* %269, align 8
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %278, label %272

272:                                              ; preds = %268
  %273 = getelementptr inbounds %struct.bpf_tcp_sock, %struct.bpf_tcp_sock* %1, i32 0, i32 7
  %274 = load i32, i32* %273, align 8
  %275 = load i32, i32* @DATA_LEN, align 4
  %276 = mul nsw i32 2, %275
  %277 = icmp ne i32 %274, %276
  br label %278

278:                                              ; preds = %272, %268, %264, %260, %253
  %279 = phi i1 [ true, %268 ], [ true, %264 ], [ true, %260 ], [ true, %253 ], [ %277, %272 ]
  %280 = zext i1 %279 to i32
  %281 = call i32 (i32, i8*, i8*, ...) @CHECK(i32 %280, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.24, i64 0, i64 0), %struct.bpf_tcp_sock* byval(%struct.bpf_tcp_sock) align 8 %8)
  %282 = getelementptr inbounds %struct.bpf_tcp_sock, %struct.bpf_tcp_sock* %2, i32 0, i32 5
  %283 = load i32, i32* %282, align 8
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %303, label %285

285:                                              ; preds = %278
  %286 = getelementptr inbounds %struct.bpf_tcp_sock, %struct.bpf_tcp_sock* %2, i32 0, i32 6
  %287 = load i32, i32* %286, align 4
  %288 = icmp ne i32 %287, 2
  br i1 %288, label %303, label %289

289:                                              ; preds = %285
  %290 = getelementptr inbounds %struct.bpf_tcp_sock, %struct.bpf_tcp_sock* %2, i32 0, i32 8
  %291 = load i32, i32* %290, align 4
  %292 = icmp ne i32 %291, 10
  br i1 %292, label %303, label %293

293:                                              ; preds = %289
  %294 = getelementptr inbounds %struct.bpf_tcp_sock, %struct.bpf_tcp_sock* %2, i32 0, i32 10
  %295 = load i64, i64* %294, align 8
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %303, label %297

297:                                              ; preds = %293
  %298 = getelementptr inbounds %struct.bpf_tcp_sock, %struct.bpf_tcp_sock* %2, i32 0, i32 9
  %299 = load i32, i32* %298, align 8
  %300 = load i32, i32* @DATA_LEN, align 4
  %301 = mul nsw i32 2, %300
  %302 = icmp ne i32 %299, %301
  br label %303

303:                                              ; preds = %297, %293, %289, %285, %278
  %304 = phi i1 [ true, %293 ], [ true, %289 ], [ true, %285 ], [ true, %278 ], [ %302, %297 ]
  %305 = zext i1 %304 to i32
  %306 = call i32 (i32, i8*, i8*, ...) @CHECK(i32 %305, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.26, i64 0, i64 0), %struct.bpf_tcp_sock* byval(%struct.bpf_tcp_sock) align 8 %8)
  ret void
}

declare dso_local i32 @bpf_map_lookup_elem(i32, i32*, %struct.bpf_tcp_sock*) #1

declare dso_local i32 @CHECK(i32, i8*, i8*, ...) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @print_sk(%struct.bpf_tcp_sock*) #1

declare dso_local i32 @print_tp(%struct.bpf_tcp_sock*) #1

declare dso_local i64 @memcmp(i64*, i32*, i32) #1

declare dso_local i64 @ntohs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
