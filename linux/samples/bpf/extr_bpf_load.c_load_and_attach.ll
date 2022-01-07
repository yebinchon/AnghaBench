; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_bpf_load.c_load_and_attach.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_bpf_load.c_load_and_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_insn = type { i32 }
%struct.perf_event_attr = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"kprobe/\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"kretprobe/\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"tracepoint/\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"raw_tracepoint/\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"xdp\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"perf_event\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"cgroup/skb\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"cgroup/sock\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"sockops\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"sk_skb\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"sk_msg\00", align 1
@PERF_TYPE_TRACEPOINT = common dso_local global i32 0, align 4
@PERF_SAMPLE_RAW = common dso_local global i32 0, align 4
@BPF_PROG_TYPE_SOCKET_FILTER = common dso_local global i32 0, align 4
@BPF_PROG_TYPE_KPROBE = common dso_local global i32 0, align 4
@BPF_PROG_TYPE_TRACEPOINT = common dso_local global i32 0, align 4
@BPF_PROG_TYPE_RAW_TRACEPOINT = common dso_local global i32 0, align 4
@BPF_PROG_TYPE_XDP = common dso_local global i32 0, align 4
@BPF_PROG_TYPE_PERF_EVENT = common dso_local global i32 0, align 4
@BPF_PROG_TYPE_CGROUP_SKB = common dso_local global i32 0, align 4
@BPF_PROG_TYPE_CGROUP_SOCK = common dso_local global i32 0, align 4
@BPF_PROG_TYPE_SOCK_OPS = common dso_local global i32 0, align 4
@BPF_PROG_TYPE_SK_SKB = common dso_local global i32 0, align 4
@BPF_PROG_TYPE_SK_MSG = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [20 x i8] c"Unknown event '%s'\0A\00", align 1
@prog_cnt = common dso_local global i32 0, align 4
@MAX_PROGS = common dso_local global i32 0, align 4
@license = common dso_local global i32 0, align 4
@kern_version = common dso_local global i32 0, align 4
@bpf_log_buf = common dso_local global i8* null, align 8
@BPF_LOG_BUF_SIZE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [29 x i8] c"bpf_load_program() err=%d\0A%s\00", align 1
@errno = common dso_local global i32 0, align 4
@prog_fd = common dso_local global i32* null, align 8
@.str.14 = private unnamed_addr constant [21 x i8] c"invalid prog number\0A\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"tracepoint %s %s\0A\00", align 1
@event_fd = common dso_local global i32* null, align 8
@.str.16 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"event name cannot be empty\0A\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"sys_\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"%c:__x64_%s __x64_%s\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"__x64_\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"%c:%s %s\00", align 1
@.str.22 = private unnamed_addr constant [41 x i8] c"failed to create kprobe '%s' error '%s'\0A\00", align 1
@DEBUGFS = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [16 x i8] c"events/kprobes/\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"/id\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"events/\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [25 x i8] c"failed to open event %s\0A\00", align 1
@.str.27 = private unnamed_addr constant [28 x i8] c"read from '%s' failed '%s'\0A\00", align 1
@.str.28 = private unnamed_addr constant [23 x i8] c"event %d fd %d err %s\0A\00", align 1
@PERF_EVENT_IOC_ENABLE = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [43 x i8] c"ioctl PERF_EVENT_IOC_ENABLE failed err %s\0A\00", align 1
@PERF_EVENT_IOC_SET_BPF = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [44 x i8] c"ioctl PERF_EVENT_IOC_SET_BPF failed err %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.bpf_insn*, i32)* @load_and_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_and_attach(i8* %0, %struct.bpf_insn* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.bpf_insn*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca [256 x i8], align 16
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.perf_event_attr, align 4
  %28 = alloca i32, align 4
  %29 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.bpf_insn* %1, %struct.bpf_insn** %6, align 8
  store i32 %2, i32* %7, align 4
  %30 = load i8*, i8** %5, align 8
  %31 = call i64 @strncmp(i8* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %32 = icmp eq i64 %31, 0
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %8, align 4
  %34 = load i8*, i8** %5, align 8
  %35 = call i64 @strncmp(i8* %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 7)
  %36 = icmp eq i64 %35, 0
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %9, align 4
  %38 = load i8*, i8** %5, align 8
  %39 = call i64 @strncmp(i8* %38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 10)
  %40 = icmp eq i64 %39, 0
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %10, align 4
  %42 = load i8*, i8** %5, align 8
  %43 = call i64 @strncmp(i8* %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 11)
  %44 = icmp eq i64 %43, 0
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %11, align 4
  %46 = load i8*, i8** %5, align 8
  %47 = call i64 @strncmp(i8* %46, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 15)
  %48 = icmp eq i64 %47, 0
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %12, align 4
  %50 = load i8*, i8** %5, align 8
  %51 = call i64 @strncmp(i8* %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 3)
  %52 = icmp eq i64 %51, 0
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %13, align 4
  %54 = load i8*, i8** %5, align 8
  %55 = call i64 @strncmp(i8* %54, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 10)
  %56 = icmp eq i64 %55, 0
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %14, align 4
  %58 = load i8*, i8** %5, align 8
  %59 = call i64 @strncmp(i8* %58, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 10)
  %60 = icmp eq i64 %59, 0
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %15, align 4
  %62 = load i8*, i8** %5, align 8
  %63 = call i64 @strncmp(i8* %62, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 11)
  %64 = icmp eq i64 %63, 0
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %16, align 4
  %66 = load i8*, i8** %5, align 8
  %67 = call i64 @strncmp(i8* %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 7)
  %68 = icmp eq i64 %67, 0
  %69 = zext i1 %68 to i32
  store i32 %69, i32* %17, align 4
  %70 = load i8*, i8** %5, align 8
  %71 = call i64 @strncmp(i8* %70, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 6)
  %72 = icmp eq i64 %71, 0
  %73 = zext i1 %72 to i32
  store i32 %73, i32* %18, align 4
  %74 = load i8*, i8** %5, align 8
  %75 = call i64 @strncmp(i8* %74, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i32 6)
  %76 = icmp eq i64 %75, 0
  %77 = zext i1 %76 to i32
  store i32 %77, i32* %19, align 4
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = udiv i64 %79, 4
  store i64 %80, i64* %20, align 8
  %81 = bitcast %struct.perf_event_attr* %27 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %81, i8 0, i64 20, i1 false)
  %82 = load i32, i32* @PERF_TYPE_TRACEPOINT, align 4
  %83 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %27, i32 0, i32 4
  store i32 %82, i32* %83, align 4
  %84 = load i32, i32* @PERF_SAMPLE_RAW, align 4
  %85 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %27, i32 0, i32 3
  store i32 %84, i32* %85, align 4
  %86 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %27, i32 0, i32 0
  store i32 1, i32* %86, align 4
  %87 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %27, i32 0, i32 1
  store i32 1, i32* %87, align 4
  %88 = load i32, i32* %8, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %3
  %91 = load i32, i32* @BPF_PROG_TYPE_SOCKET_FILTER, align 4
  store i32 %91, i32* %21, align 4
  br label %158

92:                                               ; preds = %3
  %93 = load i32, i32* %9, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %92
  %96 = load i32, i32* %10, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %95, %92
  %99 = load i32, i32* @BPF_PROG_TYPE_KPROBE, align 4
  store i32 %99, i32* %21, align 4
  br label %157

100:                                              ; preds = %95
  %101 = load i32, i32* %11, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %100
  %104 = load i32, i32* @BPF_PROG_TYPE_TRACEPOINT, align 4
  store i32 %104, i32* %21, align 4
  br label %156

105:                                              ; preds = %100
  %106 = load i32, i32* %12, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %105
  %109 = load i32, i32* @BPF_PROG_TYPE_RAW_TRACEPOINT, align 4
  store i32 %109, i32* %21, align 4
  br label %155

110:                                              ; preds = %105
  %111 = load i32, i32* %13, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %110
  %114 = load i32, i32* @BPF_PROG_TYPE_XDP, align 4
  store i32 %114, i32* %21, align 4
  br label %154

115:                                              ; preds = %110
  %116 = load i32, i32* %14, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %115
  %119 = load i32, i32* @BPF_PROG_TYPE_PERF_EVENT, align 4
  store i32 %119, i32* %21, align 4
  br label %153

120:                                              ; preds = %115
  %121 = load i32, i32* %15, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %120
  %124 = load i32, i32* @BPF_PROG_TYPE_CGROUP_SKB, align 4
  store i32 %124, i32* %21, align 4
  br label %152

125:                                              ; preds = %120
  %126 = load i32, i32* %16, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %125
  %129 = load i32, i32* @BPF_PROG_TYPE_CGROUP_SOCK, align 4
  store i32 %129, i32* %21, align 4
  br label %151

130:                                              ; preds = %125
  %131 = load i32, i32* %17, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %130
  %134 = load i32, i32* @BPF_PROG_TYPE_SOCK_OPS, align 4
  store i32 %134, i32* %21, align 4
  br label %150

135:                                              ; preds = %130
  %136 = load i32, i32* %18, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %135
  %139 = load i32, i32* @BPF_PROG_TYPE_SK_SKB, align 4
  store i32 %139, i32* %21, align 4
  br label %149

140:                                              ; preds = %135
  %141 = load i32, i32* %19, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %140
  %144 = load i32, i32* @BPF_PROG_TYPE_SK_MSG, align 4
  store i32 %144, i32* %21, align 4
  br label %148

145:                                              ; preds = %140
  %146 = load i8*, i8** %5, align 8
  %147 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i8* %146)
  store i32 -1, i32* %4, align 4
  br label %443

148:                                              ; preds = %143
  br label %149

149:                                              ; preds = %148, %138
  br label %150

150:                                              ; preds = %149, %133
  br label %151

151:                                              ; preds = %150, %128
  br label %152

152:                                              ; preds = %151, %123
  br label %153

153:                                              ; preds = %152, %118
  br label %154

154:                                              ; preds = %153, %113
  br label %155

155:                                              ; preds = %154, %108
  br label %156

156:                                              ; preds = %155, %103
  br label %157

157:                                              ; preds = %156, %98
  br label %158

158:                                              ; preds = %157, %90
  %159 = load i32, i32* @prog_cnt, align 4
  %160 = load i32, i32* @MAX_PROGS, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %163

162:                                              ; preds = %158
  store i32 -1, i32* %4, align 4
  br label %443

163:                                              ; preds = %158
  %164 = load i32, i32* %21, align 4
  %165 = load %struct.bpf_insn*, %struct.bpf_insn** %6, align 8
  %166 = load i64, i64* %20, align 8
  %167 = load i32, i32* @license, align 4
  %168 = load i32, i32* @kern_version, align 4
  %169 = load i8*, i8** @bpf_log_buf, align 8
  %170 = load i32, i32* @BPF_LOG_BUF_SIZE, align 4
  %171 = call i32 @bpf_load_program(i32 %164, %struct.bpf_insn* %165, i64 %166, i32 %167, i32 %168, i8* %169, i32 %170)
  store i32 %171, i32* %23, align 4
  %172 = load i32, i32* %23, align 4
  %173 = icmp slt i32 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %163
  %175 = load i32, i32* @errno, align 4
  %176 = load i8*, i8** @bpf_log_buf, align 8
  %177 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0), i32 %175, i8* %176)
  store i32 -1, i32* %4, align 4
  br label %443

178:                                              ; preds = %163
  %179 = load i32, i32* %23, align 4
  %180 = load i32*, i32** @prog_fd, align 8
  %181 = load i32, i32* @prog_cnt, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* @prog_cnt, align 4
  %183 = sext i32 %181 to i64
  %184 = getelementptr inbounds i32, i32* %180, i64 %183
  store i32 %179, i32* %184, align 4
  %185 = load i32, i32* %13, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %196, label %187

187:                                              ; preds = %178
  %188 = load i32, i32* %14, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %196, label %190

190:                                              ; preds = %187
  %191 = load i32, i32* %15, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %196, label %193

193:                                              ; preds = %190
  %194 = load i32, i32* %16, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %193, %190, %187, %178
  store i32 0, i32* %4, align 4
  br label %443

197:                                              ; preds = %193
  %198 = load i32, i32* %8, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %209, label %200

200:                                              ; preds = %197
  %201 = load i32, i32* %17, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %209, label %203

203:                                              ; preds = %200
  %204 = load i32, i32* %18, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %209, label %206

206:                                              ; preds = %203
  %207 = load i32, i32* %19, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %237

209:                                              ; preds = %206, %203, %200, %197
  %210 = load i32, i32* %8, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %215

212:                                              ; preds = %209
  %213 = load i8*, i8** %5, align 8
  %214 = getelementptr inbounds i8, i8* %213, i64 6
  store i8* %214, i8** %5, align 8
  br label %218

215:                                              ; preds = %209
  %216 = load i8*, i8** %5, align 8
  %217 = getelementptr inbounds i8, i8* %216, i64 7
  store i8* %217, i8** %5, align 8
  br label %218

218:                                              ; preds = %215, %212
  %219 = load i8*, i8** %5, align 8
  %220 = load i8, i8* %219, align 1
  %221 = sext i8 %220 to i32
  %222 = icmp ne i32 %221, 47
  br i1 %222, label %223, label %224

223:                                              ; preds = %218
  store i32 0, i32* %4, align 4
  br label %443

224:                                              ; preds = %218
  %225 = load i8*, i8** %5, align 8
  %226 = getelementptr inbounds i8, i8* %225, i32 1
  store i8* %226, i8** %5, align 8
  %227 = load i8*, i8** %5, align 8
  %228 = load i8, i8* %227, align 1
  %229 = call i64 @isdigit(i8 signext %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %233, label %231

231:                                              ; preds = %224
  %232 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %443

233:                                              ; preds = %224
  %234 = load i8*, i8** %5, align 8
  %235 = load i32, i32* %23, align 4
  %236 = call i32 @populate_prog_array(i8* %234, i32 %235)
  store i32 %236, i32* %4, align 4
  br label %443

237:                                              ; preds = %206
  %238 = load i32, i32* %12, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %260

240:                                              ; preds = %237
  %241 = load i8*, i8** %5, align 8
  %242 = getelementptr inbounds i8, i8* %241, i64 15
  %243 = load i32, i32* %23, align 4
  %244 = call i32 @bpf_raw_tracepoint_open(i8* %242, i32 %243)
  store i32 %244, i32* %24, align 4
  %245 = load i32, i32* %24, align 4
  %246 = icmp slt i32 %245, 0
  br i1 %246, label %247, label %253

247:                                              ; preds = %240
  %248 = load i8*, i8** %5, align 8
  %249 = getelementptr inbounds i8, i8* %248, i64 15
  %250 = load i32, i32* @errno, align 4
  %251 = call i8* @strerror(i32 %250)
  %252 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), i8* %249, i8* %251)
  store i32 -1, i32* %4, align 4
  br label %443

253:                                              ; preds = %240
  %254 = load i32, i32* %24, align 4
  %255 = load i32*, i32** @event_fd, align 8
  %256 = load i32, i32* @prog_cnt, align 4
  %257 = sub nsw i32 %256, 1
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i32, i32* %255, i64 %258
  store i32 %254, i32* %259, align 4
  store i32 0, i32* %4, align 4
  br label %443

260:                                              ; preds = %237
  %261 = load i32, i32* %9, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %266, label %263

263:                                              ; preds = %260
  %264 = load i32, i32* %10, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %348

266:                                              ; preds = %263, %260
  store i32 1, i32* %28, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0), i8** %29, align 8
  %267 = load i32, i32* %9, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %272

269:                                              ; preds = %266
  %270 = load i8*, i8** %5, align 8
  %271 = getelementptr inbounds i8, i8* %270, i64 7
  store i8* %271, i8** %5, align 8
  br label %275

272:                                              ; preds = %266
  %273 = load i8*, i8** %5, align 8
  %274 = getelementptr inbounds i8, i8* %273, i64 10
  store i8* %274, i8** %5, align 8
  br label %275

275:                                              ; preds = %272, %269
  %276 = load i8*, i8** %5, align 8
  %277 = load i8, i8* %276, align 1
  %278 = sext i8 %277 to i32
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %280, label %282

280:                                              ; preds = %275
  %281 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %443

282:                                              ; preds = %275
  %283 = load i8*, i8** %5, align 8
  %284 = load i8, i8* %283, align 1
  %285 = call i64 @isdigit(i8 signext %284)
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %291

287:                                              ; preds = %282
  %288 = load i8*, i8** %5, align 8
  %289 = load i32, i32* %23, align 4
  %290 = call i32 @populate_prog_array(i8* %288, i32 %289)
  store i32 %290, i32* %4, align 4
  br label %443

291:                                              ; preds = %282
  %292 = load i8*, i8** %5, align 8
  %293 = call i64 @strncmp(i8* %292, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i32 4)
  %294 = icmp eq i64 %293, 0
  br i1 %294, label %295, label %311

295:                                              ; preds = %291
  %296 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 0
  %297 = load i32, i32* %9, align 4
  %298 = icmp ne i32 %297, 0
  %299 = zext i1 %298 to i64
  %300 = select i1 %298, i32 112, i32 114
  %301 = trunc i32 %300 to i8
  %302 = load i8*, i8** %5, align 8
  %303 = load i8*, i8** %5, align 8
  %304 = call i32 @snprintf(i8* %296, i32 256, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0), i8 signext %301, i8* %302, i8* %303)
  %305 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 0
  %306 = call i32 @write_kprobe_events(i8* %305)
  store i32 %306, i32* %25, align 4
  %307 = load i32, i32* %25, align 4
  %308 = icmp sge i32 %307, 0
  br i1 %308, label %309, label %310

309:                                              ; preds = %295
  store i32 0, i32* %28, align 4
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), i8** %29, align 8
  br label %310

310:                                              ; preds = %309, %295
  br label %311

311:                                              ; preds = %310, %291
  %312 = load i32, i32* %28, align 4
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %334

314:                                              ; preds = %311
  %315 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 0
  %316 = load i32, i32* %9, align 4
  %317 = icmp ne i32 %316, 0
  %318 = zext i1 %317 to i64
  %319 = select i1 %317, i32 112, i32 114
  %320 = trunc i32 %319 to i8
  %321 = load i8*, i8** %5, align 8
  %322 = load i8*, i8** %5, align 8
  %323 = call i32 @snprintf(i8* %315, i32 256, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0), i8 signext %320, i8* %321, i8* %322)
  %324 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 0
  %325 = call i32 @write_kprobe_events(i8* %324)
  store i32 %325, i32* %25, align 4
  %326 = load i32, i32* %25, align 4
  %327 = icmp slt i32 %326, 0
  br i1 %327, label %328, label %333

328:                                              ; preds = %314
  %329 = load i8*, i8** %5, align 8
  %330 = load i32, i32* @errno, align 4
  %331 = call i8* @strerror(i32 %330)
  %332 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.22, i64 0, i64 0), i8* %329, i8* %331)
  store i32 -1, i32* %4, align 4
  br label %443

333:                                              ; preds = %314
  br label %334

334:                                              ; preds = %333, %311
  %335 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 0
  %336 = load i32, i32* @DEBUGFS, align 4
  %337 = call i32 @strcpy(i8* %335, i32 %336)
  %338 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 0
  %339 = call i32 @strcat(i8* %338, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i64 0, i64 0))
  %340 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 0
  %341 = load i8*, i8** %29, align 8
  %342 = call i32 @strcat(i8* %340, i8* %341)
  %343 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 0
  %344 = load i8*, i8** %5, align 8
  %345 = call i32 @strcat(i8* %343, i8* %344)
  %346 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 0
  %347 = call i32 @strcat(i8* %346, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0))
  br label %372

348:                                              ; preds = %263
  %349 = load i32, i32* %11, align 4
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %371

351:                                              ; preds = %348
  %352 = load i8*, i8** %5, align 8
  %353 = getelementptr inbounds i8, i8* %352, i64 11
  store i8* %353, i8** %5, align 8
  %354 = load i8*, i8** %5, align 8
  %355 = load i8, i8* %354, align 1
  %356 = sext i8 %355 to i32
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %358, label %360

358:                                              ; preds = %351
  %359 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %443

360:                                              ; preds = %351
  %361 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 0
  %362 = load i32, i32* @DEBUGFS, align 4
  %363 = call i32 @strcpy(i8* %361, i32 %362)
  %364 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 0
  %365 = call i32 @strcat(i8* %364, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0))
  %366 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 0
  %367 = load i8*, i8** %5, align 8
  %368 = call i32 @strcat(i8* %366, i8* %367)
  %369 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 0
  %370 = call i32 @strcat(i8* %369, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0))
  br label %371

371:                                              ; preds = %360, %348
  br label %372

372:                                              ; preds = %371, %334
  %373 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 0
  %374 = load i32, i32* @O_RDONLY, align 4
  %375 = call i32 @open(i8* %373, i32 %374, i32 0)
  store i32 %375, i32* %24, align 4
  %376 = load i32, i32* %24, align 4
  %377 = icmp slt i32 %376, 0
  br i1 %377, label %378, label %381

378:                                              ; preds = %372
  %379 = load i8*, i8** %5, align 8
  %380 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.26, i64 0, i64 0), i8* %379)
  store i32 -1, i32* %4, align 4
  br label %443

381:                                              ; preds = %372
  %382 = load i32, i32* %24, align 4
  %383 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 0
  %384 = call i32 @read(i32 %382, i8* %383, i32 256)
  store i32 %384, i32* %25, align 4
  %385 = load i32, i32* %25, align 4
  %386 = icmp slt i32 %385, 0
  br i1 %386, label %391, label %387

387:                                              ; preds = %381
  %388 = load i32, i32* %25, align 4
  %389 = sext i32 %388 to i64
  %390 = icmp uge i64 %389, 256
  br i1 %390, label %391, label %396

391:                                              ; preds = %387, %381
  %392 = load i8*, i8** %5, align 8
  %393 = load i32, i32* @errno, align 4
  %394 = call i8* @strerror(i32 %393)
  %395 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.27, i64 0, i64 0), i8* %392, i8* %394)
  store i32 -1, i32* %4, align 4
  br label %443

396:                                              ; preds = %387
  %397 = load i32, i32* %24, align 4
  %398 = call i32 @close(i32 %397)
  %399 = load i32, i32* %25, align 4
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 %400
  store i8 0, i8* %401, align 1
  %402 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 0
  %403 = call i32 @atoi(i8* %402)
  store i32 %403, i32* %26, align 4
  %404 = load i32, i32* %26, align 4
  %405 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %27, i32 0, i32 2
  store i32 %404, i32* %405, align 4
  %406 = call i32 @sys_perf_event_open(%struct.perf_event_attr* %27, i32 -1, i32 0, i32 -1, i32 0)
  store i32 %406, i32* %24, align 4
  %407 = load i32, i32* %24, align 4
  %408 = icmp slt i32 %407, 0
  br i1 %408, label %409, label %415

409:                                              ; preds = %396
  %410 = load i32, i32* %26, align 4
  %411 = load i32, i32* %24, align 4
  %412 = load i32, i32* @errno, align 4
  %413 = call i8* @strerror(i32 %412)
  %414 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.28, i64 0, i64 0), i32 %410, i32 %411, i8* %413)
  store i32 -1, i32* %4, align 4
  br label %443

415:                                              ; preds = %396
  %416 = load i32, i32* %24, align 4
  %417 = load i32*, i32** @event_fd, align 8
  %418 = load i32, i32* @prog_cnt, align 4
  %419 = sub nsw i32 %418, 1
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds i32, i32* %417, i64 %420
  store i32 %416, i32* %421, align 4
  %422 = load i32, i32* %24, align 4
  %423 = load i32, i32* @PERF_EVENT_IOC_ENABLE, align 4
  %424 = call i32 @ioctl(i32 %422, i32 %423, i32 0)
  store i32 %424, i32* %25, align 4
  %425 = load i32, i32* %25, align 4
  %426 = icmp slt i32 %425, 0
  br i1 %426, label %427, label %431

427:                                              ; preds = %415
  %428 = load i32, i32* @errno, align 4
  %429 = call i8* @strerror(i32 %428)
  %430 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.29, i64 0, i64 0), i8* %429)
  store i32 -1, i32* %4, align 4
  br label %443

431:                                              ; preds = %415
  %432 = load i32, i32* %24, align 4
  %433 = load i32, i32* @PERF_EVENT_IOC_SET_BPF, align 4
  %434 = load i32, i32* %23, align 4
  %435 = call i32 @ioctl(i32 %432, i32 %433, i32 %434)
  store i32 %435, i32* %25, align 4
  %436 = load i32, i32* %25, align 4
  %437 = icmp slt i32 %436, 0
  br i1 %437, label %438, label %442

438:                                              ; preds = %431
  %439 = load i32, i32* @errno, align 4
  %440 = call i8* @strerror(i32 %439)
  %441 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.30, i64 0, i64 0), i8* %440)
  store i32 -1, i32* %4, align 4
  br label %443

442:                                              ; preds = %431
  store i32 0, i32* %4, align 4
  br label %443

443:                                              ; preds = %442, %438, %427, %409, %391, %378, %358, %328, %287, %280, %253, %247, %233, %231, %223, %196, %174, %162, %145
  %444 = load i32, i32* %4, align 4
  ret i32 %444
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @bpf_load_program(i32, %struct.bpf_insn*, i64, i32, i32, i8*, i32) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @populate_prog_array(i8*, i32) #1

declare dso_local i32 @bpf_raw_tracepoint_open(i8*, i32) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8 signext, i8*, i8*) #1

declare dso_local i32 @write_kprobe_events(i8*) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @sys_perf_event_open(%struct.perf_event_attr*, i32, i32, i32, i32) #1

declare dso_local i32 @ioctl(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
