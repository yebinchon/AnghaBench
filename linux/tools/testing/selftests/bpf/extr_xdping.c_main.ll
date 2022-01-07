; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_xdping.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_xdping.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i32 }
%struct.rlimit = type { i32, i32 }
%struct.pinginfo = type { i32, i32, i32 }
%struct.bpf_program = type { i32 }
%struct.sockaddr_in = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.bpf_object = type { i32 }
%struct.bpf_map = type { i32 }

@XDP_FLAGS_DRV_MODE = common dso_local global i32 0, align 4
@XDP_FLAGS_SKB_MODE = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@RLIM_INFINITY = common dso_local global i32 0, align 4
@XDPING_DEFAULT_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"c:I:NsS\00", align 1
@optarg = common dso_local global i8* null, align 8
@XDPING_MAX_COUNT = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"min count is 1, max count is %d\0A\00", align 1
@ifindex = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Could not get interface %s\0A\00", align 1
@xdp_flags = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"-N or -S can be specified, not both.\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Could not resolve %s\0A\00", align 1
@RLIMIT_MEMLOCK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"setrlimit(RLIMIT_MEMLOCK)\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"%s_kern.o\00", align 1
@BPF_PROG_TYPE_XDP = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [19 x i8] c"load of %s failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"xdpserver\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"xdpclient\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"could not find xdping program\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"Could not find ping map\00", align 1
@SIGINT = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [39 x i8] c"Setting up XDP for %s, please wait...\0A\00", align 1
@.str.13 = private unnamed_addr constant [61 x i8] c"XDP setup disrupts network connectivity, hit Ctrl+C to quit\0A\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"Link set xdp fd failed for %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [47 x i8] c"Running server on %s; press Ctrl+C to exit...\0A\00", align 1
@BPF_ANY = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [40 x i8] c"could not communicate with BPF map: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [20 x i8] c"ping -c %d -I %s %s\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"\0ANormal ping RTT data\0A\00", align 1
@.str.19 = private unnamed_addr constant [60 x i8] c"[Ignore final RTT; it is distorted by XDP using the reply]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.addrinfo*, align 8
  %8 = alloca %struct.addrinfo, align 4
  %9 = alloca %struct.rlimit, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.pinginfo, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.bpf_program*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.sockaddr_in, align 4
  %17 = alloca %struct.bpf_object*, align 8
  %18 = alloca %struct.bpf_map*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca [256 x i8], align 16
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca [256 x i8], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %26 = load i32, i32* @XDP_FLAGS_DRV_MODE, align 4
  %27 = load i32, i32* @XDP_FLAGS_SKB_MODE, align 4
  %28 = or i32 %26, %27
  store i32 %28, i32* %6, align 4
  %29 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %8, i32 0, i32 0
  store i32 0, i32* %29, align 4
  %30 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %8, i32 0, i32 1
  %31 = load i32, i32* @AF_INET, align 4
  store i32 %31, i32* %30, align 4
  %32 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %9, i32 0, i32 0
  %33 = load i32, i32* @RLIM_INFINITY, align 4
  store i32 %33, i32* %32, align 4
  %34 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %9, i32 0, i32 1
  %35 = load i32, i32* @RLIM_INFINITY, align 4
  store i32 %35, i32* %34, align 4
  %36 = load i32, i32* @XDPING_DEFAULT_COUNT, align 4
  store i32 %36, i32* %10, align 4
  %37 = bitcast %struct.pinginfo* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %37, i8 0, i64 12, i1 false)
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  store i32 -1, i32* %14, align 4
  store i32 -1, i32* %15, align 4
  store i8* null, i8** %19, align 8
  store i32 1, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  br label %38

38:                                               ; preds = %86, %2
  %39 = load i32, i32* %4, align 4
  %40 = load i8**, i8*** %5, align 8
  %41 = load i8*, i8** %12, align 8
  %42 = call i32 @getopt(i32 %39, i8** %40, i8* %41)
  store i32 %42, i32* %21, align 4
  %43 = icmp ne i32 %42, -1
  br i1 %43, label %44, label %87

44:                                               ; preds = %38
  %45 = load i32, i32* %21, align 4
  switch i32 %45, label %80 [
    i32 99, label %46
    i32 73, label %60
    i32 78, label %71
    i32 115, label %75
    i32 83, label %76
  ]

46:                                               ; preds = %44
  %47 = load i8*, i8** @optarg, align 8
  %48 = call i32 @atoi(i8* %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp slt i32 %49, 1
  br i1 %50, label %55, label %51

51:                                               ; preds = %46
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @XDPING_MAX_COUNT, align 4
  %54 = icmp sgt i32 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %51, %46
  %56 = load i32, i32* @stderr, align 4
  %57 = load i32, i32* @XDPING_MAX_COUNT, align 4
  %58 = call i32 (i32, i8*, ...) @fprintf(i32 %56, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  store i32 1, i32* %3, align 4
  br label %297

59:                                               ; preds = %51
  br label %86

60:                                               ; preds = %44
  %61 = load i8*, i8** @optarg, align 8
  store i8* %61, i8** %19, align 8
  %62 = load i8*, i8** %19, align 8
  %63 = call i32 @if_nametoindex(i8* %62)
  store i32 %63, i32* @ifindex, align 4
  %64 = load i32, i32* @ifindex, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %60
  %67 = load i32, i32* @stderr, align 4
  %68 = load i8*, i8** %19, align 8
  %69 = call i32 (i32, i8*, ...) @fprintf(i32 %67, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %68)
  store i32 1, i32* %3, align 4
  br label %297

70:                                               ; preds = %60
  br label %86

71:                                               ; preds = %44
  %72 = load i32, i32* @XDP_FLAGS_DRV_MODE, align 4
  %73 = load i32, i32* @xdp_flags, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* @xdp_flags, align 4
  br label %86

75:                                               ; preds = %44
  store i32 1, i32* %24, align 4
  br label %86

76:                                               ; preds = %44
  %77 = load i32, i32* @XDP_FLAGS_SKB_MODE, align 4
  %78 = load i32, i32* @xdp_flags, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* @xdp_flags, align 4
  br label %86

80:                                               ; preds = %44
  %81 = load i8**, i8*** %5, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i64 0
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @basename(i8* %83)
  %85 = call i32 @show_usage(i32 %84)
  store i32 1, i32* %3, align 4
  br label %297

86:                                               ; preds = %76, %75, %71, %70, %59
  br label %38

87:                                               ; preds = %38
  %88 = load i8*, i8** %19, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %96, label %90

90:                                               ; preds = %87
  %91 = load i8**, i8*** %5, align 8
  %92 = getelementptr inbounds i8*, i8** %91, i64 0
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @basename(i8* %93)
  %95 = call i32 @show_usage(i32 %94)
  store i32 1, i32* %3, align 4
  br label %297

96:                                               ; preds = %87
  %97 = load i32, i32* %24, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %109, label %99

99:                                               ; preds = %96
  %100 = load i32, i32* @optind, align 4
  %101 = load i32, i32* %4, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %109

103:                                              ; preds = %99
  %104 = load i8**, i8*** %5, align 8
  %105 = getelementptr inbounds i8*, i8** %104, i64 0
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 @basename(i8* %106)
  %108 = call i32 @show_usage(i32 %107)
  store i32 1, i32* %3, align 4
  br label %297

109:                                              ; preds = %99, %96
  %110 = load i32, i32* @xdp_flags, align 4
  %111 = load i32, i32* %6, align 4
  %112 = and i32 %110, %111
  %113 = load i32, i32* %6, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %123

115:                                              ; preds = %109
  %116 = load i32, i32* @stderr, align 4
  %117 = call i32 (i32, i8*, ...) @fprintf(i32 %116, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %118 = load i8**, i8*** %5, align 8
  %119 = getelementptr inbounds i8*, i8** %118, i64 0
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 @basename(i8* %120)
  %122 = call i32 @show_usage(i32 %121)
  store i32 1, i32* %3, align 4
  br label %297

123:                                              ; preds = %109
  %124 = load i32, i32* %24, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %155, label %126

126:                                              ; preds = %123
  %127 = load i8**, i8*** %5, align 8
  %128 = load i32, i32* @optind, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8*, i8** %127, i64 %129
  %131 = load i8*, i8** %130, align 8
  %132 = call i64 @getaddrinfo(i8* %131, i32* null, %struct.addrinfo* %8, %struct.addrinfo** %7)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %137, label %134

134:                                              ; preds = %126
  %135 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %136 = icmp ne %struct.addrinfo* %135, null
  br i1 %136, label %145, label %137

137:                                              ; preds = %134, %126
  %138 = load i32, i32* @stderr, align 4
  %139 = load i8**, i8*** %5, align 8
  %140 = load i32, i32* @optind, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8*, i8** %139, i64 %141
  %143 = load i8*, i8** %142, align 8
  %144 = call i32 (i32, i8*, ...) @fprintf(i32 %138, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* %143)
  store i32 1, i32* %3, align 4
  br label %297

145:                                              ; preds = %134
  %146 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %147 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @memcpy(%struct.sockaddr_in* %16, i32 %148, i32 4)
  %150 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %16, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  store i32 %152, i32* %23, align 4
  %153 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %154 = call i32 @freeaddrinfo(%struct.addrinfo* %153)
  br label %155

155:                                              ; preds = %145, %123
  %156 = load i32, i32* @RLIMIT_MEMLOCK, align 4
  %157 = call i64 @setrlimit(i32 %156, %struct.rlimit* %9)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %155
  %160 = call i32 @perror(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %297

161:                                              ; preds = %155
  %162 = getelementptr inbounds [256 x i8], [256 x i8]* %20, i64 0, i64 0
  %163 = load i8**, i8*** %5, align 8
  %164 = getelementptr inbounds i8*, i8** %163, i64 0
  %165 = load i8*, i8** %164, align 8
  %166 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %162, i32 256, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* %165)
  %167 = getelementptr inbounds [256 x i8], [256 x i8]* %20, i64 0, i64 0
  %168 = load i32, i32* @BPF_PROG_TYPE_XDP, align 4
  %169 = call i64 @bpf_prog_load(i8* %167, i32 %168, %struct.bpf_object** %17, i32* %14)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %161
  %172 = load i32, i32* @stderr, align 4
  %173 = getelementptr inbounds [256 x i8], [256 x i8]* %20, i64 0, i64 0
  %174 = call i32 (i32, i8*, ...) @fprintf(i32 %172, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i8* %173)
  store i32 1, i32* %3, align 4
  br label %297

175:                                              ; preds = %161
  %176 = load %struct.bpf_object*, %struct.bpf_object** %17, align 8
  %177 = load i32, i32* %24, align 4
  %178 = icmp ne i32 %177, 0
  %179 = zext i1 %178 to i64
  %180 = select i1 %178, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)
  %181 = call %struct.bpf_program* @bpf_object__find_program_by_title(%struct.bpf_object* %176, i8* %180)
  store %struct.bpf_program* %181, %struct.bpf_program** %13, align 8
  %182 = load %struct.bpf_program*, %struct.bpf_program** %13, align 8
  %183 = icmp ne %struct.bpf_program* %182, null
  br i1 %183, label %184, label %187

184:                                              ; preds = %175
  %185 = load %struct.bpf_program*, %struct.bpf_program** %13, align 8
  %186 = call i32 @bpf_program__fd(%struct.bpf_program* %185)
  store i32 %186, i32* %14, align 4
  br label %187

187:                                              ; preds = %184, %175
  %188 = load %struct.bpf_program*, %struct.bpf_program** %13, align 8
  %189 = icmp ne %struct.bpf_program* %188, null
  br i1 %189, label %190, label %193

190:                                              ; preds = %187
  %191 = load i32, i32* %14, align 4
  %192 = icmp slt i32 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %190, %187
  %194 = load i32, i32* @stderr, align 4
  %195 = call i32 (i32, i8*, ...) @fprintf(i32 %194, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %297

196:                                              ; preds = %190
  %197 = load %struct.bpf_object*, %struct.bpf_object** %17, align 8
  %198 = call %struct.bpf_map* @bpf_map__next(i32* null, %struct.bpf_object* %197)
  store %struct.bpf_map* %198, %struct.bpf_map** %18, align 8
  %199 = load %struct.bpf_map*, %struct.bpf_map** %18, align 8
  %200 = icmp ne %struct.bpf_map* %199, null
  br i1 %200, label %201, label %204

201:                                              ; preds = %196
  %202 = load %struct.bpf_map*, %struct.bpf_map** %18, align 8
  %203 = call i32 @bpf_map__fd(%struct.bpf_map* %202)
  store i32 %203, i32* %15, align 4
  br label %204

204:                                              ; preds = %201, %196
  %205 = load %struct.bpf_map*, %struct.bpf_map** %18, align 8
  %206 = icmp ne %struct.bpf_map* %205, null
  br i1 %206, label %207, label %210

207:                                              ; preds = %204
  %208 = load i32, i32* %15, align 4
  %209 = icmp slt i32 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %207, %204
  %211 = load i32, i32* @stderr, align 4
  %212 = call i32 (i32, i8*, ...) @fprintf(i32 %211, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0))
  br label %283

213:                                              ; preds = %207
  %214 = load i32, i32* @SIGINT, align 4
  %215 = call i32 @signal(i32 %214, i32 (i32)* @cleanup)
  %216 = load i32, i32* @SIGTERM, align 4
  %217 = call i32 @signal(i32 %216, i32 (i32)* @cleanup)
  %218 = load i8*, i8** %19, align 8
  %219 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i64 0, i64 0), i8* %218)
  %220 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.13, i64 0, i64 0))
  %221 = load i32, i32* @ifindex, align 4
  %222 = load i32, i32* %14, align 4
  %223 = load i32, i32* @xdp_flags, align 4
  %224 = call i64 @bpf_set_link_xdp_fd(i32 %221, i32 %222, i32 %223)
  %225 = icmp slt i64 %224, 0
  br i1 %225, label %226, label %230

226:                                              ; preds = %213
  %227 = load i32, i32* @stderr, align 4
  %228 = load i8*, i8** %19, align 8
  %229 = call i32 (i32, i8*, ...) @fprintf(i32 %227, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0), i8* %228)
  br label %283

230:                                              ; preds = %213
  %231 = load i32, i32* %24, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %243

233:                                              ; preds = %230
  %234 = load i32, i32* %14, align 4
  %235 = call i32 @close(i32 %234)
  %236 = load i32, i32* %15, align 4
  %237 = call i32 @close(i32 %236)
  %238 = load i8*, i8** %19, align 8
  %239 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.15, i64 0, i64 0), i8* %238)
  br label %240

240:                                              ; preds = %241, %233
  br label %241

241:                                              ; preds = %240
  br i1 true, label %240, label %242

242:                                              ; preds = %241
  br label %243

243:                                              ; preds = %242, %230
  %244 = load i32, i32* %10, align 4
  %245 = call i32 @htons(i32 %244)
  %246 = getelementptr inbounds %struct.pinginfo, %struct.pinginfo* %11, i32 0, i32 1
  store i32 %245, i32* %246, align 4
  %247 = load i32, i32* %10, align 4
  %248 = getelementptr inbounds %struct.pinginfo, %struct.pinginfo* %11, i32 0, i32 0
  store i32 %247, i32* %248, align 4
  %249 = load i32, i32* %15, align 4
  %250 = load i32, i32* @BPF_ANY, align 4
  %251 = call i64 @bpf_map_update_elem(i32 %249, i32* %23, %struct.pinginfo* %11, i32 %250)
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %259

253:                                              ; preds = %243
  %254 = load i32, i32* @stderr, align 4
  %255 = load i32, i32* @errno, align 4
  %256 = call i8* @strerror(i32 %255)
  %257 = call i32 (i32, i8*, ...) @fprintf(i32 %254, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.16, i64 0, i64 0), i8* %256)
  %258 = call i32 @cleanup(i32 0)
  br label %283

259:                                              ; preds = %243
  %260 = call i32 @sleep(i32 10)
  %261 = getelementptr inbounds [256 x i8], [256 x i8]* %25, i64 0, i64 0
  %262 = load i32, i32* %10, align 4
  %263 = load i8*, i8** %19, align 8
  %264 = load i8**, i8*** %5, align 8
  %265 = load i32, i32* @optind, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i8*, i8** %264, i64 %266
  %268 = load i8*, i8** %267, align 8
  %269 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %261, i32 256, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0), i32 %262, i8* %263, i8* %268)
  %270 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0))
  %271 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.19, i64 0, i64 0))
  %272 = getelementptr inbounds [256 x i8], [256 x i8]* %25, i64 0, i64 0
  %273 = call i32 @system(i8* %272)
  store i32 %273, i32* %22, align 4
  %274 = load i32, i32* %22, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %281, label %276

276:                                              ; preds = %259
  %277 = load i32, i32* %15, align 4
  %278 = load i32, i32* %10, align 4
  %279 = load i32, i32* %23, align 4
  %280 = call i32 @get_stats(i32 %277, i32 %278, i32 %279)
  store i32 %280, i32* %22, align 4
  br label %281

281:                                              ; preds = %276, %259
  %282 = call i32 @cleanup(i32 0)
  br label %283

283:                                              ; preds = %281, %253, %226, %210
  %284 = load i32, i32* %14, align 4
  %285 = icmp sgt i32 %284, 0
  br i1 %285, label %286, label %289

286:                                              ; preds = %283
  %287 = load i32, i32* %14, align 4
  %288 = call i32 @close(i32 %287)
  br label %289

289:                                              ; preds = %286, %283
  %290 = load i32, i32* %15, align 4
  %291 = icmp sgt i32 %290, 0
  br i1 %291, label %292, label %295

292:                                              ; preds = %289
  %293 = load i32, i32* %15, align 4
  %294 = call i32 @close(i32 %293)
  br label %295

295:                                              ; preds = %292, %289
  %296 = load i32, i32* %22, align 4
  store i32 %296, i32* %3, align 4
  br label %297

297:                                              ; preds = %295, %193, %171, %159, %137, %115, %103, %90, %80, %66, %55
  %298 = load i32, i32* %3, align 4
  ret i32 %298
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i32 @atoi(i8*) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i32 @if_nametoindex(i8*) #2

declare dso_local i32 @show_usage(i32) #2

declare dso_local i32 @basename(i8*) #2

declare dso_local i64 @getaddrinfo(i8*, i32*, %struct.addrinfo*, %struct.addrinfo**) #2

declare dso_local i32 @memcpy(%struct.sockaddr_in*, i32, i32) #2

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #2

declare dso_local i64 @setrlimit(i32, %struct.rlimit*) #2

declare dso_local i32 @perror(i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #2

declare dso_local i64 @bpf_prog_load(i8*, i32, %struct.bpf_object**, i32*) #2

declare dso_local %struct.bpf_program* @bpf_object__find_program_by_title(%struct.bpf_object*, i8*) #2

declare dso_local i32 @bpf_program__fd(%struct.bpf_program*) #2

declare dso_local %struct.bpf_map* @bpf_map__next(i32*, %struct.bpf_object*) #2

declare dso_local i32 @bpf_map__fd(%struct.bpf_map*) #2

declare dso_local i32 @signal(i32, i32 (i32)*) #2

declare dso_local i32 @cleanup(i32) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i64 @bpf_set_link_xdp_fd(i32, i32, i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @htons(i32) #2

declare dso_local i64 @bpf_map_update_elem(i32, i32*, %struct.pinginfo*, i32) #2

declare dso_local i8* @strerror(i32) #2

declare dso_local i32 @sleep(i32) #2

declare dso_local i32 @system(i8*) #2

declare dso_local i32 @get_stats(i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
