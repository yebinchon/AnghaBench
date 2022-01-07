; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_tx_iptunnel_user.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_tx_iptunnel_user.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_prog_load_attr = type { i8*, i32 }
%struct.rlimit = type { i32, i32 }
%struct.bpf_prog_info = type { i32 }
%struct.iptnl_info = type { i16, i64, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32* }
%struct.bpf_object = type { i32 }
%struct.vip = type { i16, i32, i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.ether_addr = type { i32 }

@BPF_PROG_TYPE_XDP = common dso_local global i32 0, align 4
@RLIM_INFINITY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"i:a:p:s:d:m:T:P:FSNh\00", align 1
@AF_UNSPEC = common dso_local global i16 0, align 2
@IPPROTO_TCP = common dso_local global i8* null, align 8
@optarg = common dso_local global i8* null, align 8
@ifindex = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [89 x i8] c"The IP version of the src and dst addresses used in the IP encapsulation does not match\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Invalid mac address:%s\0A\00", align 1
@XDP_FLAGS_SKB_MODE = common dso_local global i32 0, align 4
@xdp_flags = common dso_local global i32 0, align 4
@XDP_FLAGS_DRV_MODE = common dso_local global i32 0, align 4
@XDP_FLAGS_UPDATE_IF_NOEXIST = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"Missing argument -%c\0A\00", align 1
@RLIMIT_MEMLOCK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"setrlimit(RLIMIT_MEMLOCK, RLIM_INFINITY)\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"Invalid ifname\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"%s_kern.o\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"load_bpf_file: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"rxcnt\00", align 1
@rxcnt_map_fd = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [8 x i8] c"vip2tnl\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"bpf_object__find_map_fd_by_name failed\0A\00", align 1
@SIGINT = common dso_local global i32 0, align 4
@int_exit = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@BPF_NOEXIST = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [30 x i8] c"bpf_map_update_elem(&vip2tnl)\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"link set xdp fd failed\0A\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"can't get prog info - %s\0A\00", align 1
@prog_id = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.bpf_prog_load_attr, align 8
  %7 = alloca %struct.rlimit, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca [256 x i8], align 16
  %13 = alloca %struct.bpf_prog_info, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.iptnl_info, align 8
  %17 = alloca %struct.bpf_object*, align 8
  %18 = alloca %struct.vip, align 8
  %19 = alloca [256 x i8], align 16
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i16, align 2
  %25 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %26 = getelementptr inbounds %struct.bpf_prog_load_attr, %struct.bpf_prog_load_attr* %6, i32 0, i32 0
  store i8* null, i8** %26, align 8
  %27 = getelementptr inbounds %struct.bpf_prog_load_attr, %struct.bpf_prog_load_attr* %6, i32 0, i32 1
  %28 = load i32, i32* @BPF_PROG_TYPE_XDP, align 4
  store i32 %28, i32* %27, align 8
  %29 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %7, i32 0, i32 0
  %30 = load i32, i32* @RLIM_INFINITY, align 4
  store i32 %30, i32* %29, align 4
  %31 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %7, i32 0, i32 1
  %32 = load i32, i32* @RLIM_INFINITY, align 4
  store i32 %32, i32* %31, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  %33 = bitcast [256 x i8]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %33, i8 0, i64 256, i1 false)
  %34 = bitcast %struct.bpf_prog_info* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %34, i8 0, i64 4, i1 false)
  store i32 4, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %35 = bitcast %struct.iptnl_info* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %35, i8 0, i64 32, i1 false)
  %36 = bitcast %struct.vip* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %36, i8 0, i64 24, i1 false)
  %37 = load i16, i16* @AF_UNSPEC, align 2
  %38 = getelementptr inbounds %struct.iptnl_info, %struct.iptnl_info* %16, i32 0, i32 0
  store i16 %37, i16* %38, align 8
  %39 = load i8*, i8** @IPPROTO_TCP, align 8
  %40 = getelementptr inbounds %struct.vip, %struct.vip* %18, i32 0, i32 2
  store i8* %39, i8** %40, align 8
  store i32 0, i32* %22, align 4
  br label %41

41:                                               ; preds = %79, %2
  %42 = load i32, i32* %22, align 4
  %43 = load i8*, i8** %11, align 8
  %44 = call i32 @strlen(i8* %43)
  %45 = icmp slt i32 %42, %44
  br i1 %45, label %46, label %82

46:                                               ; preds = %41
  %47 = load i8*, i8** %11, align 8
  %48 = load i32, i32* %22, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %52, 104
  br i1 %53, label %54, label %78

54:                                               ; preds = %46
  %55 = load i8*, i8** %11, align 8
  %56 = load i32, i32* %22, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp sle i32 97, %60
  br i1 %61, label %62, label %78

62:                                               ; preds = %54
  %63 = load i8*, i8** %11, align 8
  %64 = load i32, i32* %22, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp sle i32 %68, 122
  br i1 %69, label %70, label %78

70:                                               ; preds = %62
  %71 = load i8*, i8** %11, align 8
  %72 = load i32, i32* %22, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i64
  %77 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 %76
  store i8 1, i8* %77, align 1
  br label %78

78:                                               ; preds = %70, %62, %54, %46
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %22, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %22, align 4
  br label %41

82:                                               ; preds = %41
  br label %83

83:                                               ; preds = %204, %82
  %84 = load i32, i32* %4, align 4
  %85 = load i8**, i8*** %5, align 8
  %86 = load i8*, i8** %11, align 8
  %87 = call i32 @getopt(i32 %84, i8** %85, i8* %86)
  store i32 %87, i32* %20, align 4
  %88 = icmp ne i32 %87, -1
  br i1 %88, label %89, label %208

89:                                               ; preds = %83
  %90 = load i32, i32* %20, align 4
  switch i32 %90, label %199 [
    i32 105, label %91
    i32 97, label %100
    i32 112, label %116
    i32 80, label %122
    i32 115, label %126
    i32 100, label %126
    i32 109, label %170
    i32 84, label %182
    i32 83, label %186
    i32 78, label %190
    i32 70, label %194
  ]

91:                                               ; preds = %89
  %92 = load i8*, i8** @optarg, align 8
  %93 = call i8* @if_nametoindex(i8* %92)
  store i8* %93, i8** @ifindex, align 8
  %94 = load i8*, i8** @ifindex, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %99, label %96

96:                                               ; preds = %91
  %97 = load i8*, i8** @optarg, align 8
  %98 = call i8* @atoi(i8* %97)
  store i8* %98, i8** @ifindex, align 8
  br label %99

99:                                               ; preds = %96, %91
  br label %204

100:                                              ; preds = %89
  %101 = load i8*, i8** @optarg, align 8
  %102 = getelementptr inbounds %struct.vip, %struct.vip* %18, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = call i8* @parse_ipstr(i8* %101, i32* %104)
  %106 = ptrtoint i8* %105 to i16
  %107 = getelementptr inbounds %struct.vip, %struct.vip* %18, i32 0, i32 0
  store i16 %106, i16* %107, align 8
  %108 = getelementptr inbounds %struct.vip, %struct.vip* %18, i32 0, i32 0
  %109 = load i16, i16* %108, align 8
  %110 = zext i16 %109 to i32
  %111 = load i16, i16* @AF_UNSPEC, align 2
  %112 = zext i16 %111 to i32
  %113 = icmp eq i32 %110, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %100
  store i32 1, i32* %3, align 4
  br label %335

115:                                              ; preds = %100
  br label %204

116:                                              ; preds = %89
  %117 = load i8*, i8** @optarg, align 8
  %118 = call i32 @parse_ports(i8* %117, i32* %8, i32* %9)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %116
  store i32 1, i32* %3, align 4
  br label %335

121:                                              ; preds = %116
  br label %204

122:                                              ; preds = %89
  %123 = load i8*, i8** @optarg, align 8
  %124 = call i8* @atoi(i8* %123)
  %125 = getelementptr inbounds %struct.vip, %struct.vip* %18, i32 0, i32 2
  store i8* %124, i8** %125, align 8
  br label %204

126:                                              ; preds = %89, %89
  %127 = load i32, i32* %20, align 4
  %128 = icmp eq i32 %127, 115
  br i1 %128, label %129, label %133

129:                                              ; preds = %126
  %130 = getelementptr inbounds %struct.iptnl_info, %struct.iptnl_info* %16, i32 0, i32 3
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  store i32* %132, i32** %25, align 8
  br label %137

133:                                              ; preds = %126
  %134 = getelementptr inbounds %struct.iptnl_info, %struct.iptnl_info* %16, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  store i32* %136, i32** %25, align 8
  br label %137

137:                                              ; preds = %133, %129
  %138 = load i8*, i8** @optarg, align 8
  %139 = load i32*, i32** %25, align 8
  %140 = call i8* @parse_ipstr(i8* %138, i32* %139)
  %141 = ptrtoint i8* %140 to i16
  store i16 %141, i16* %24, align 2
  %142 = load i16, i16* %24, align 2
  %143 = zext i16 %142 to i32
  %144 = load i16, i16* @AF_UNSPEC, align 2
  %145 = zext i16 %144 to i32
  %146 = icmp eq i32 %143, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %137
  store i32 1, i32* %3, align 4
  br label %335

148:                                              ; preds = %137
  %149 = getelementptr inbounds %struct.iptnl_info, %struct.iptnl_info* %16, i32 0, i32 0
  %150 = load i16, i16* %149, align 8
  %151 = zext i16 %150 to i32
  %152 = load i16, i16* @AF_UNSPEC, align 2
  %153 = zext i16 %152 to i32
  %154 = icmp eq i32 %151, %153
  br i1 %154, label %155, label %158

155:                                              ; preds = %148
  %156 = load i16, i16* %24, align 2
  %157 = getelementptr inbounds %struct.iptnl_info, %struct.iptnl_info* %16, i32 0, i32 0
  store i16 %156, i16* %157, align 8
  br label %169

158:                                              ; preds = %148
  %159 = getelementptr inbounds %struct.iptnl_info, %struct.iptnl_info* %16, i32 0, i32 0
  %160 = load i16, i16* %159, align 8
  %161 = zext i16 %160 to i32
  %162 = load i16, i16* %24, align 2
  %163 = zext i16 %162 to i32
  %164 = icmp ne i32 %161, %163
  br i1 %164, label %165, label %168

165:                                              ; preds = %158
  %166 = load i32, i32* @stderr, align 4
  %167 = call i32 (i32, i8*, ...) @fprintf(i32 %166, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %335

168:                                              ; preds = %158
  br label %169

169:                                              ; preds = %168, %155
  br label %204

170:                                              ; preds = %89
  %171 = load i8*, i8** @optarg, align 8
  %172 = getelementptr inbounds %struct.iptnl_info, %struct.iptnl_info* %16, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = inttoptr i64 %173 to %struct.ether_addr*
  %175 = call i32 @ether_aton_r(i8* %171, %struct.ether_addr* %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %181, label %177

177:                                              ; preds = %170
  %178 = load i32, i32* @stderr, align 4
  %179 = load i8*, i8** @optarg, align 8
  %180 = call i32 (i32, i8*, ...) @fprintf(i32 %178, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %179)
  store i32 1, i32* %3, align 4
  br label %335

181:                                              ; preds = %170
  br label %204

182:                                              ; preds = %89
  %183 = load i8*, i8** @optarg, align 8
  %184 = call i8* @atoi(i8* %183)
  %185 = ptrtoint i8* %184 to i32
  store i32 %185, i32* %15, align 4
  br label %204

186:                                              ; preds = %89
  %187 = load i32, i32* @XDP_FLAGS_SKB_MODE, align 4
  %188 = load i32, i32* @xdp_flags, align 4
  %189 = or i32 %188, %187
  store i32 %189, i32* @xdp_flags, align 4
  br label %204

190:                                              ; preds = %89
  %191 = load i32, i32* @XDP_FLAGS_DRV_MODE, align 4
  %192 = load i32, i32* @xdp_flags, align 4
  %193 = or i32 %192, %191
  store i32 %193, i32* @xdp_flags, align 4
  br label %204

194:                                              ; preds = %89
  %195 = load i32, i32* @XDP_FLAGS_UPDATE_IF_NOEXIST, align 4
  %196 = xor i32 %195, -1
  %197 = load i32, i32* @xdp_flags, align 4
  %198 = and i32 %197, %196
  store i32 %198, i32* @xdp_flags, align 4
  br label %204

199:                                              ; preds = %89
  %200 = load i8**, i8*** %5, align 8
  %201 = getelementptr inbounds i8*, i8** %200, i64 0
  %202 = load i8*, i8** %201, align 8
  %203 = call i32 @usage(i8* %202)
  store i32 1, i32* %3, align 4
  br label %335

204:                                              ; preds = %194, %190, %186, %182, %181, %169, %122, %121, %115, %99
  %205 = load i32, i32* %20, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 %206
  store i8 0, i8* %207, align 1
  br label %83

208:                                              ; preds = %83
  store i32 0, i32* %22, align 4
  br label %209

209:                                              ; preds = %239, %208
  %210 = load i32, i32* %22, align 4
  %211 = load i8*, i8** %11, align 8
  %212 = call i32 @strlen(i8* %211)
  %213 = icmp slt i32 %210, %212
  br i1 %213, label %214, label %242

214:                                              ; preds = %209
  %215 = load i8*, i8** %11, align 8
  %216 = load i32, i32* %22, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i8, i8* %215, i64 %217
  %219 = load i8, i8* %218, align 1
  %220 = sext i8 %219 to i32
  %221 = zext i32 %220 to i64
  %222 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 %221
  %223 = load i8, i8* %222, align 1
  %224 = icmp ne i8 %223, 0
  br i1 %224, label %225, label %238

225:                                              ; preds = %214
  %226 = load i32, i32* @stderr, align 4
  %227 = load i8*, i8** %11, align 8
  %228 = load i32, i32* %22, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i8, i8* %227, i64 %229
  %231 = load i8, i8* %230, align 1
  %232 = sext i8 %231 to i32
  %233 = call i32 (i32, i8*, ...) @fprintf(i32 %226, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %232)
  %234 = load i8**, i8*** %5, align 8
  %235 = getelementptr inbounds i8*, i8** %234, i64 0
  %236 = load i8*, i8** %235, align 8
  %237 = call i32 @usage(i8* %236)
  store i32 1, i32* %3, align 4
  br label %335

238:                                              ; preds = %214
  br label %239

239:                                              ; preds = %238
  %240 = load i32, i32* %22, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %22, align 4
  br label %209

242:                                              ; preds = %209
  %243 = load i32, i32* @RLIMIT_MEMLOCK, align 4
  %244 = call i64 @setrlimit(i32 %243, %struct.rlimit* %7)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %248

246:                                              ; preds = %242
  %247 = call i32 @perror(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %335

248:                                              ; preds = %242
  %249 = load i8*, i8** @ifindex, align 8
  %250 = icmp ne i8* %249, null
  br i1 %250, label %254, label %251

251:                                              ; preds = %248
  %252 = load i32, i32* @stderr, align 4
  %253 = call i32 (i32, i8*, ...) @fprintf(i32 %252, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %335

254:                                              ; preds = %248
  %255 = getelementptr inbounds [256 x i8], [256 x i8]* %19, i64 0, i64 0
  %256 = load i8**, i8*** %5, align 8
  %257 = getelementptr inbounds i8*, i8** %256, i64 0
  %258 = load i8*, i8** %257, align 8
  %259 = call i32 @snprintf(i8* %255, i32 256, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* %258)
  %260 = getelementptr inbounds [256 x i8], [256 x i8]* %19, i64 0, i64 0
  %261 = getelementptr inbounds %struct.bpf_prog_load_attr, %struct.bpf_prog_load_attr* %6, i32 0, i32 0
  store i8* %260, i8** %261, align 8
  %262 = call i64 @bpf_prog_load_xattr(%struct.bpf_prog_load_attr* %6, %struct.bpf_object** %17, i32* %21)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %265

264:                                              ; preds = %254
  store i32 1, i32* %3, align 4
  br label %335

265:                                              ; preds = %254
  %266 = load i32, i32* %21, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %272, label %268

268:                                              ; preds = %265
  %269 = load i32, i32* @errno, align 4
  %270 = call i8* @strerror(i32 %269)
  %271 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i8* %270)
  store i32 1, i32* %3, align 4
  br label %335

272:                                              ; preds = %265
  %273 = load %struct.bpf_object*, %struct.bpf_object** %17, align 8
  %274 = call i8* @bpf_object__find_map_fd_by_name(%struct.bpf_object* %273, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %275 = ptrtoint i8* %274 to i64
  store i64 %275, i64* @rxcnt_map_fd, align 8
  %276 = load %struct.bpf_object*, %struct.bpf_object** %17, align 8
  %277 = call i8* @bpf_object__find_map_fd_by_name(%struct.bpf_object* %276, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %278 = ptrtoint i8* %277 to i32
  store i32 %278, i32* %10, align 4
  %279 = load i32, i32* %10, align 4
  %280 = icmp slt i32 %279, 0
  br i1 %280, label %284, label %281

281:                                              ; preds = %272
  %282 = load i64, i64* @rxcnt_map_fd, align 8
  %283 = icmp slt i64 %282, 0
  br i1 %283, label %284, label %286

284:                                              ; preds = %281, %272
  %285 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %335

286:                                              ; preds = %281
  %287 = load i32, i32* @SIGINT, align 4
  %288 = load i32, i32* @int_exit, align 4
  %289 = call i32 @signal(i32 %287, i32 %288)
  %290 = load i32, i32* @SIGTERM, align 4
  %291 = load i32, i32* @int_exit, align 4
  %292 = call i32 @signal(i32 %290, i32 %291)
  br label %293

293:                                              ; preds = %308, %286
  %294 = load i32, i32* %8, align 4
  %295 = load i32, i32* %9, align 4
  %296 = icmp sle i32 %294, %295
  br i1 %296, label %297, label %309

297:                                              ; preds = %293
  %298 = load i32, i32* %8, align 4
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* %8, align 4
  %300 = call i32 @htons(i32 %298)
  %301 = getelementptr inbounds %struct.vip, %struct.vip* %18, i32 0, i32 1
  store i32 %300, i32* %301, align 4
  %302 = load i32, i32* %10, align 4
  %303 = load i32, i32* @BPF_NOEXIST, align 4
  %304 = call i64 @bpf_map_update_elem(i32 %302, %struct.vip* %18, %struct.iptnl_info* %16, i32 %303)
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %308

306:                                              ; preds = %297
  %307 = call i32 @perror(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %335

308:                                              ; preds = %297
  br label %293

309:                                              ; preds = %293
  %310 = load i8*, i8** @ifindex, align 8
  %311 = load i32, i32* %21, align 4
  %312 = load i32, i32* @xdp_flags, align 4
  %313 = call i64 @bpf_set_link_xdp_fd(i8* %310, i32 %311, i32 %312)
  %314 = icmp slt i64 %313, 0
  br i1 %314, label %315, label %317

315:                                              ; preds = %309
  %316 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %335

317:                                              ; preds = %309
  %318 = load i32, i32* %21, align 4
  %319 = call i32 @bpf_obj_get_info_by_fd(i32 %318, %struct.bpf_prog_info* %13, i32* %14)
  store i32 %319, i32* %23, align 4
  %320 = load i32, i32* %23, align 4
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %327

322:                                              ; preds = %317
  %323 = load i32, i32* @errno, align 4
  %324 = call i8* @strerror(i32 %323)
  %325 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i8* %324)
  %326 = load i32, i32* %23, align 4
  store i32 %326, i32* %3, align 4
  br label %335

327:                                              ; preds = %317
  %328 = getelementptr inbounds %struct.bpf_prog_info, %struct.bpf_prog_info* %13, i32 0, i32 0
  %329 = load i32, i32* %328, align 4
  store i32 %329, i32* @prog_id, align 4
  %330 = load i32, i32* %15, align 4
  %331 = call i32 @poll_stats(i32 %330)
  %332 = load i8*, i8** @ifindex, align 8
  %333 = load i32, i32* @xdp_flags, align 4
  %334 = call i64 @bpf_set_link_xdp_fd(i8* %332, i32 -1, i32 %333)
  store i32 0, i32* %3, align 4
  br label %335

335:                                              ; preds = %327, %322, %315, %306, %284, %268, %264, %251, %246, %225, %199, %177, %165, %147, %120, %114
  %336 = load i32, i32* %3, align 4
  ret i32 %336
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i8* @if_nametoindex(i8*) #2

declare dso_local i8* @atoi(i8*) #2

declare dso_local i8* @parse_ipstr(i8*, i32*) #2

declare dso_local i32 @parse_ports(i8*, i32*, i32*) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i32 @ether_aton_r(i8*, %struct.ether_addr*) #2

declare dso_local i32 @usage(i8*) #2

declare dso_local i64 @setrlimit(i32, %struct.rlimit*) #2

declare dso_local i32 @perror(i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i64 @bpf_prog_load_xattr(%struct.bpf_prog_load_attr*, %struct.bpf_object**, i32*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i8* @strerror(i32) #2

declare dso_local i8* @bpf_object__find_map_fd_by_name(%struct.bpf_object*, i8*) #2

declare dso_local i32 @signal(i32, i32) #2

declare dso_local i32 @htons(i32) #2

declare dso_local i64 @bpf_map_update_elem(i32, %struct.vip*, %struct.iptnl_info*, i32) #2

declare dso_local i64 @bpf_set_link_xdp_fd(i8*, i32, i32) #2

declare dso_local i32 @bpf_obj_get_info_by_fd(i32, %struct.bpf_prog_info*, i32*) #2

declare dso_local i32 @poll_stats(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
