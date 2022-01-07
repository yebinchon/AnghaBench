; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_connect6_prog.c_connect_v6_prog.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_connect6_prog.c_connect_v6_prog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_sock_addr = type { i64, i8*, i8** }
%struct.bpf_sock_tuple = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64*, i8*, %struct.sockaddr_in6, %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { %struct.TYPE_4__, i8*, i32 }
%struct.TYPE_4__ = type { i8** }
%struct.bpf_sock = type { i64*, i64 }
%struct.sockaddr = type { i32 }

@DST_REWRITE_IP6_0 = common dso_local global i32 0, align 4
@DST_REWRITE_IP6_1 = common dso_local global i32 0, align 4
@DST_REWRITE_IP6_2 = common dso_local global i32 0, align 4
@DST_REWRITE_IP6_3 = common dso_local global i32 0, align 4
@DST_REWRITE_PORT6 = common dso_local global i64 0, align 8
@SOCK_STREAM = common dso_local global i64 0, align 8
@SOCK_DGRAM = common dso_local global i64 0, align 8
@BPF_F_CURRENT_NETNS = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@SRC_REWRITE_IP6_0 = common dso_local global i32 0, align 4
@SRC_REWRITE_IP6_1 = common dso_local global i32 0, align 4
@SRC_REWRITE_IP6_2 = common dso_local global i32 0, align 4
@SRC_REWRITE_IP6_3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @connect_v6_prog(%struct.bpf_sock_addr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bpf_sock_addr*, align 8
  %4 = alloca %struct.bpf_sock_tuple, align 8
  %5 = alloca %struct.sockaddr_in6, align 8
  %6 = alloca %struct.bpf_sock*, align 8
  store %struct.bpf_sock_addr* %0, %struct.bpf_sock_addr** %3, align 8
  %7 = bitcast %struct.bpf_sock_tuple* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 64, i1 false)
  %8 = getelementptr inbounds %struct.bpf_sock_tuple, %struct.bpf_sock_tuple* %4, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 3
  %10 = call i32 @memset(%struct.sockaddr_in6* %9, i32 0, i32 24)
  %11 = getelementptr inbounds %struct.bpf_sock_tuple, %struct.bpf_sock_tuple* %4, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 2
  %13 = call i32 @memset(%struct.sockaddr_in6* %12, i32 0, i32 24)
  %14 = load i32, i32* @DST_REWRITE_IP6_0, align 4
  %15 = call i8* @bpf_htonl(i32 %14)
  %16 = ptrtoint i8* %15 to i64
  %17 = getelementptr inbounds %struct.bpf_sock_tuple, %struct.bpf_sock_tuple* %4, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 0
  store i64 %16, i64* %20, align 8
  %21 = load i32, i32* @DST_REWRITE_IP6_1, align 4
  %22 = call i8* @bpf_htonl(i32 %21)
  %23 = ptrtoint i8* %22 to i64
  %24 = getelementptr inbounds %struct.bpf_sock_tuple, %struct.bpf_sock_tuple* %4, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 1
  store i64 %23, i64* %27, align 8
  %28 = load i32, i32* @DST_REWRITE_IP6_2, align 4
  %29 = call i8* @bpf_htonl(i32 %28)
  %30 = ptrtoint i8* %29 to i64
  %31 = getelementptr inbounds %struct.bpf_sock_tuple, %struct.bpf_sock_tuple* %4, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 2
  store i64 %30, i64* %34, align 8
  %35 = load i32, i32* @DST_REWRITE_IP6_3, align 4
  %36 = call i8* @bpf_htonl(i32 %35)
  %37 = ptrtoint i8* %36 to i64
  %38 = getelementptr inbounds %struct.bpf_sock_tuple, %struct.bpf_sock_tuple* %4, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 3
  store i64 %37, i64* %41, align 8
  %42 = load i64, i64* @DST_REWRITE_PORT6, align 8
  %43 = call i8* @bpf_htons(i64 %42)
  %44 = getelementptr inbounds %struct.bpf_sock_tuple, %struct.bpf_sock_tuple* %4, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  %46 = load %struct.bpf_sock_addr*, %struct.bpf_sock_addr** %3, align 8
  %47 = getelementptr inbounds %struct.bpf_sock_addr, %struct.bpf_sock_addr* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @SOCK_STREAM, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %1
  %52 = load %struct.bpf_sock_addr*, %struct.bpf_sock_addr** %3, align 8
  %53 = getelementptr inbounds %struct.bpf_sock_addr, %struct.bpf_sock_addr* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @SOCK_DGRAM, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  store i32 0, i32* %2, align 4
  br label %200

58:                                               ; preds = %51, %1
  %59 = load %struct.bpf_sock_addr*, %struct.bpf_sock_addr** %3, align 8
  %60 = getelementptr inbounds %struct.bpf_sock_addr, %struct.bpf_sock_addr* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @SOCK_STREAM, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = load %struct.bpf_sock_addr*, %struct.bpf_sock_addr** %3, align 8
  %66 = load i32, i32* @BPF_F_CURRENT_NETNS, align 4
  %67 = call %struct.bpf_sock* @bpf_sk_lookup_tcp(%struct.bpf_sock_addr* %65, %struct.bpf_sock_tuple* %4, i32 64, i32 %66, i32 0)
  store %struct.bpf_sock* %67, %struct.bpf_sock** %6, align 8
  br label %72

68:                                               ; preds = %58
  %69 = load %struct.bpf_sock_addr*, %struct.bpf_sock_addr** %3, align 8
  %70 = load i32, i32* @BPF_F_CURRENT_NETNS, align 4
  %71 = call %struct.bpf_sock* @bpf_sk_lookup_udp(%struct.bpf_sock_addr* %69, %struct.bpf_sock_tuple* %4, i32 64, i32 %70, i32 0)
  store %struct.bpf_sock* %71, %struct.bpf_sock** %6, align 8
  br label %72

72:                                               ; preds = %68, %64
  br label %73

73:                                               ; preds = %72
  %74 = load %struct.bpf_sock*, %struct.bpf_sock** %6, align 8
  %75 = icmp ne %struct.bpf_sock* %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %73
  store i32 0, i32* %2, align 4
  br label %200

77:                                               ; preds = %73
  %78 = load %struct.bpf_sock*, %struct.bpf_sock** %6, align 8
  %79 = getelementptr inbounds %struct.bpf_sock, %struct.bpf_sock* %78, i32 0, i32 0
  %80 = load i64*, i64** %79, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 0
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds %struct.bpf_sock_tuple, %struct.bpf_sock_tuple* %4, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i64*, i64** %84, align 8
  %86 = getelementptr inbounds i64, i64* %85, i64 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %82, %87
  br i1 %88, label %131, label %89

89:                                               ; preds = %77
  %90 = load %struct.bpf_sock*, %struct.bpf_sock** %6, align 8
  %91 = getelementptr inbounds %struct.bpf_sock, %struct.bpf_sock* %90, i32 0, i32 0
  %92 = load i64*, i64** %91, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 1
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds %struct.bpf_sock_tuple, %struct.bpf_sock_tuple* %4, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i64*, i64** %96, align 8
  %98 = getelementptr inbounds i64, i64* %97, i64 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %94, %99
  br i1 %100, label %131, label %101

101:                                              ; preds = %89
  %102 = load %struct.bpf_sock*, %struct.bpf_sock** %6, align 8
  %103 = getelementptr inbounds %struct.bpf_sock, %struct.bpf_sock* %102, i32 0, i32 0
  %104 = load i64*, i64** %103, align 8
  %105 = getelementptr inbounds i64, i64* %104, i64 2
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds %struct.bpf_sock_tuple, %struct.bpf_sock_tuple* %4, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i64*, i64** %108, align 8
  %110 = getelementptr inbounds i64, i64* %109, i64 2
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %106, %111
  br i1 %112, label %131, label %113

113:                                              ; preds = %101
  %114 = load %struct.bpf_sock*, %struct.bpf_sock** %6, align 8
  %115 = getelementptr inbounds %struct.bpf_sock, %struct.bpf_sock* %114, i32 0, i32 0
  %116 = load i64*, i64** %115, align 8
  %117 = getelementptr inbounds i64, i64* %116, i64 3
  %118 = load i64, i64* %117, align 8
  %119 = getelementptr inbounds %struct.bpf_sock_tuple, %struct.bpf_sock_tuple* %4, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  %121 = load i64*, i64** %120, align 8
  %122 = getelementptr inbounds i64, i64* %121, i64 3
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %118, %123
  br i1 %124, label %131, label %125

125:                                              ; preds = %113
  %126 = load %struct.bpf_sock*, %struct.bpf_sock** %6, align 8
  %127 = getelementptr inbounds %struct.bpf_sock, %struct.bpf_sock* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @DST_REWRITE_PORT6, align 8
  %130 = icmp ne i64 %128, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %125, %113, %101, %89, %77
  %132 = load %struct.bpf_sock*, %struct.bpf_sock** %6, align 8
  %133 = call i32 @bpf_sk_release(%struct.bpf_sock* %132)
  store i32 0, i32* %2, align 4
  br label %200

134:                                              ; preds = %125
  %135 = load %struct.bpf_sock*, %struct.bpf_sock** %6, align 8
  %136 = call i32 @bpf_sk_release(%struct.bpf_sock* %135)
  %137 = load i32, i32* @DST_REWRITE_IP6_0, align 4
  %138 = call i8* @bpf_htonl(i32 %137)
  %139 = load %struct.bpf_sock_addr*, %struct.bpf_sock_addr** %3, align 8
  %140 = getelementptr inbounds %struct.bpf_sock_addr, %struct.bpf_sock_addr* %139, i32 0, i32 2
  %141 = load i8**, i8*** %140, align 8
  %142 = getelementptr inbounds i8*, i8** %141, i64 0
  store i8* %138, i8** %142, align 8
  %143 = load i32, i32* @DST_REWRITE_IP6_1, align 4
  %144 = call i8* @bpf_htonl(i32 %143)
  %145 = load %struct.bpf_sock_addr*, %struct.bpf_sock_addr** %3, align 8
  %146 = getelementptr inbounds %struct.bpf_sock_addr, %struct.bpf_sock_addr* %145, i32 0, i32 2
  %147 = load i8**, i8*** %146, align 8
  %148 = getelementptr inbounds i8*, i8** %147, i64 1
  store i8* %144, i8** %148, align 8
  %149 = load i32, i32* @DST_REWRITE_IP6_2, align 4
  %150 = call i8* @bpf_htonl(i32 %149)
  %151 = load %struct.bpf_sock_addr*, %struct.bpf_sock_addr** %3, align 8
  %152 = getelementptr inbounds %struct.bpf_sock_addr, %struct.bpf_sock_addr* %151, i32 0, i32 2
  %153 = load i8**, i8*** %152, align 8
  %154 = getelementptr inbounds i8*, i8** %153, i64 2
  store i8* %150, i8** %154, align 8
  %155 = load i32, i32* @DST_REWRITE_IP6_3, align 4
  %156 = call i8* @bpf_htonl(i32 %155)
  %157 = load %struct.bpf_sock_addr*, %struct.bpf_sock_addr** %3, align 8
  %158 = getelementptr inbounds %struct.bpf_sock_addr, %struct.bpf_sock_addr* %157, i32 0, i32 2
  %159 = load i8**, i8*** %158, align 8
  %160 = getelementptr inbounds i8*, i8** %159, i64 3
  store i8* %156, i8** %160, align 8
  %161 = load i64, i64* @DST_REWRITE_PORT6, align 8
  %162 = call i8* @bpf_htons(i64 %161)
  %163 = load %struct.bpf_sock_addr*, %struct.bpf_sock_addr** %3, align 8
  %164 = getelementptr inbounds %struct.bpf_sock_addr, %struct.bpf_sock_addr* %163, i32 0, i32 1
  store i8* %162, i8** %164, align 8
  %165 = call i32 @memset(%struct.sockaddr_in6* %5, i32 0, i32 24)
  %166 = load i32, i32* @AF_INET6, align 4
  %167 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %5, i32 0, i32 2
  store i32 %166, i32* %167, align 8
  %168 = call i8* @bpf_htons(i64 0)
  %169 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %5, i32 0, i32 1
  store i8* %168, i8** %169, align 8
  %170 = load i32, i32* @SRC_REWRITE_IP6_0, align 4
  %171 = call i8* @bpf_htonl(i32 %170)
  %172 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %5, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 0
  %174 = load i8**, i8*** %173, align 8
  %175 = getelementptr inbounds i8*, i8** %174, i64 0
  store i8* %171, i8** %175, align 8
  %176 = load i32, i32* @SRC_REWRITE_IP6_1, align 4
  %177 = call i8* @bpf_htonl(i32 %176)
  %178 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %5, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 0
  %180 = load i8**, i8*** %179, align 8
  %181 = getelementptr inbounds i8*, i8** %180, i64 1
  store i8* %177, i8** %181, align 8
  %182 = load i32, i32* @SRC_REWRITE_IP6_2, align 4
  %183 = call i8* @bpf_htonl(i32 %182)
  %184 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %5, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 0
  %186 = load i8**, i8*** %185, align 8
  %187 = getelementptr inbounds i8*, i8** %186, i64 2
  store i8* %183, i8** %187, align 8
  %188 = load i32, i32* @SRC_REWRITE_IP6_3, align 4
  %189 = call i8* @bpf_htonl(i32 %188)
  %190 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %5, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 0
  %192 = load i8**, i8*** %191, align 8
  %193 = getelementptr inbounds i8*, i8** %192, i64 3
  store i8* %189, i8** %193, align 8
  %194 = load %struct.bpf_sock_addr*, %struct.bpf_sock_addr** %3, align 8
  %195 = bitcast %struct.sockaddr_in6* %5 to %struct.sockaddr*
  %196 = call i64 @bpf_bind(%struct.bpf_sock_addr* %194, %struct.sockaddr* %195, i32 24)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %134
  store i32 0, i32* %2, align 4
  br label %200

199:                                              ; preds = %134
  store i32 1, i32* %2, align 4
  br label %200

200:                                              ; preds = %199, %198, %131, %76, %57
  %201 = load i32, i32* %2, align 4
  ret i32 %201
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memset(%struct.sockaddr_in6*, i32, i32) #2

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
