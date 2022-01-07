; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_redirect_user.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_redirect_user.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rlimit = type { i32, i32 }
%struct.bpf_prog_load_attr = type { i8*, i32 }
%struct.bpf_program = type { i32 }
%struct.bpf_prog_info = type { i32 }
%struct.bpf_object = type { i32 }

@RLIM_INFINITY = common dso_local global i32 0, align 4
@BPF_PROG_TYPE_XDP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"FSN\00", align 1
@XDP_FLAGS_SKB_MODE = common dso_local global i32 0, align 4
@xdp_flags = common dso_local global i32 0, align 4
@XDP_FLAGS_DRV_MODE = common dso_local global i32 0, align 4
@XDP_FLAGS_UPDATE_IF_NOEXIST = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"usage: %s <IFNAME|IFINDEX>_IN <IFNAME|IFINDEX>_OUT\0A\00", align 1
@RLIMIT_MEMLOCK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"setrlimit(RLIMIT_MEMLOCK)\00", align 1
@ifindex_in = common dso_local global i32 0, align 4
@ifindex_out = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"input: %d output: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"%s_kern.o\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"finding a prog in obj file failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"bpf_prog_load_xattr: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"tx_port\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"rxcnt\00", align 1
@rxcnt_map_fd = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [40 x i8] c"bpf_object__find_map_fd_by_name failed\0A\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"ERROR: link set xdp fd failed on %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"can't get prog info - %s\0A\00", align 1
@prog_id = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [36 x i8] c"WARN: link set xdp fd failed on %d\0A\00", align 1
@ifindex_out_xdp_dummy_attached = common dso_local global i32 0, align 4
@dummy_prog_id = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@int_exit = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [16 x i8] c"bpf_update_elem\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.rlimit, align 4
  %7 = alloca %struct.bpf_prog_load_attr, align 8
  %8 = alloca %struct.bpf_program*, align 8
  %9 = alloca %struct.bpf_program*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.bpf_prog_info, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.bpf_object*, align 8
  %17 = alloca [256 x i8], align 16
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %21 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %6, i32 0, i32 0
  %22 = load i32, i32* @RLIM_INFINITY, align 4
  store i32 %22, i32* %21, align 4
  %23 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %6, i32 0, i32 1
  %24 = load i32, i32* @RLIM_INFINITY, align 4
  store i32 %24, i32* %23, align 4
  %25 = getelementptr inbounds %struct.bpf_prog_load_attr, %struct.bpf_prog_load_attr* %7, i32 0, i32 0
  store i8* null, i8** %25, align 8
  %26 = getelementptr inbounds %struct.bpf_prog_load_attr, %struct.bpf_prog_load_attr* %7, i32 0, i32 1
  %27 = load i32, i32* @BPF_PROG_TYPE_XDP, align 4
  store i32 %27, i32* %26, align 8
  %28 = bitcast %struct.bpf_prog_info* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %28, i8 0, i64 4, i1 false)
  store i32 4, i32* %14, align 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %15, align 8
  store i32 0, i32* %20, align 4
  br label %29

29:                                               ; preds = %56, %2
  %30 = load i32, i32* %4, align 4
  %31 = load i8**, i8*** %5, align 8
  %32 = load i8*, i8** %15, align 8
  %33 = call i32 @getopt(i32 %30, i8** %31, i8* %32)
  store i32 %33, i32* %12, align 4
  %34 = icmp ne i32 %33, -1
  br i1 %34, label %35, label %57

35:                                               ; preds = %29
  %36 = load i32, i32* %12, align 4
  switch i32 %36, label %50 [
    i32 83, label %37
    i32 78, label %41
    i32 70, label %45
  ]

37:                                               ; preds = %35
  %38 = load i32, i32* @XDP_FLAGS_SKB_MODE, align 4
  %39 = load i32, i32* @xdp_flags, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* @xdp_flags, align 4
  br label %56

41:                                               ; preds = %35
  %42 = load i32, i32* @XDP_FLAGS_DRV_MODE, align 4
  %43 = load i32, i32* @xdp_flags, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* @xdp_flags, align 4
  br label %56

45:                                               ; preds = %35
  %46 = load i32, i32* @XDP_FLAGS_UPDATE_IF_NOEXIST, align 4
  %47 = xor i32 %46, -1
  %48 = load i32, i32* @xdp_flags, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* @xdp_flags, align 4
  br label %56

50:                                               ; preds = %35
  %51 = load i8**, i8*** %5, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @basename(i8* %53)
  %55 = call i32 @usage(i32 %54)
  store i32 1, i32* %3, align 4
  br label %220

56:                                               ; preds = %45, %41, %37
  br label %29

57:                                               ; preds = %29
  %58 = load i32, i32* @optind, align 4
  %59 = load i32, i32* %4, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = load i8**, i8*** %5, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 0
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i8* %64)
  store i32 1, i32* %3, align 4
  br label %220

66:                                               ; preds = %57
  %67 = load i32, i32* @RLIMIT_MEMLOCK, align 4
  %68 = call i64 @setrlimit(i32 %67, %struct.rlimit* %6)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = call i32 @perror(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %220

72:                                               ; preds = %66
  %73 = load i8**, i8*** %5, align 8
  %74 = load i32, i32* @optind, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8*, i8** %73, i64 %75
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @if_nametoindex(i8* %77)
  store i32 %78, i32* @ifindex_in, align 4
  %79 = load i32, i32* @ifindex_in, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %88, label %81

81:                                               ; preds = %72
  %82 = load i8**, i8*** %5, align 8
  %83 = load i32, i32* @optind, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8*, i8** %82, i64 %84
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @strtoul(i8* %86, i32* null, i32 0)
  store i32 %87, i32* @ifindex_in, align 4
  br label %88

88:                                               ; preds = %81, %72
  %89 = load i8**, i8*** %5, align 8
  %90 = load i32, i32* @optind, align 4
  %91 = add nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8*, i8** %89, i64 %92
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 @if_nametoindex(i8* %94)
  store i32 %95, i32* @ifindex_out, align 4
  %96 = load i32, i32* @ifindex_out, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %106, label %98

98:                                               ; preds = %88
  %99 = load i8**, i8*** %5, align 8
  %100 = load i32, i32* @optind, align 4
  %101 = add nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8*, i8** %99, i64 %102
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @strtoul(i8* %104, i32* null, i32 0)
  store i32 %105, i32* @ifindex_out, align 4
  br label %106

106:                                              ; preds = %98, %88
  %107 = load i32, i32* @ifindex_in, align 4
  %108 = load i32, i32* @ifindex_out, align 4
  %109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %107, i32 %108)
  %110 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %111 = load i8**, i8*** %5, align 8
  %112 = getelementptr inbounds i8*, i8** %111, i64 0
  %113 = load i8*, i8** %112, align 8
  %114 = call i32 @snprintf(i8* %110, i32 256, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %113)
  %115 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %116 = getelementptr inbounds %struct.bpf_prog_load_attr, %struct.bpf_prog_load_attr* %7, i32 0, i32 0
  store i8* %115, i8** %116, align 8
  %117 = call i64 @bpf_prog_load_xattr(%struct.bpf_prog_load_attr* %7, %struct.bpf_object** %16, i32* %10)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %106
  store i32 1, i32* %3, align 4
  br label %220

120:                                              ; preds = %106
  %121 = load %struct.bpf_object*, %struct.bpf_object** %16, align 8
  %122 = call %struct.bpf_program* @bpf_program__next(%struct.bpf_program* null, %struct.bpf_object* %121)
  store %struct.bpf_program* %122, %struct.bpf_program** %8, align 8
  %123 = load %struct.bpf_program*, %struct.bpf_program** %8, align 8
  %124 = load %struct.bpf_object*, %struct.bpf_object** %16, align 8
  %125 = call %struct.bpf_program* @bpf_program__next(%struct.bpf_program* %123, %struct.bpf_object* %124)
  store %struct.bpf_program* %125, %struct.bpf_program** %9, align 8
  %126 = load %struct.bpf_program*, %struct.bpf_program** %8, align 8
  %127 = icmp ne %struct.bpf_program* %126, null
  br i1 %127, label %128, label %131

128:                                              ; preds = %120
  %129 = load %struct.bpf_program*, %struct.bpf_program** %9, align 8
  %130 = icmp ne %struct.bpf_program* %129, null
  br i1 %130, label %133, label %131

131:                                              ; preds = %128, %120
  %132 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %220

133:                                              ; preds = %128
  %134 = load %struct.bpf_program*, %struct.bpf_program** %9, align 8
  %135 = call i32 @bpf_program__fd(%struct.bpf_program* %134)
  store i32 %135, i32* %18, align 4
  %136 = load i32, i32* %10, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %141, label %138

138:                                              ; preds = %133
  %139 = load i32, i32* %18, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %138, %133
  %142 = load i32, i32* @errno, align 4
  %143 = call i8* @strerror(i32 %142)
  %144 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i8* %143)
  store i32 1, i32* %3, align 4
  br label %220

145:                                              ; preds = %138
  %146 = load %struct.bpf_object*, %struct.bpf_object** %16, align 8
  %147 = call i8* @bpf_object__find_map_fd_by_name(%struct.bpf_object* %146, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %148 = ptrtoint i8* %147 to i32
  store i32 %148, i32* %11, align 4
  %149 = load %struct.bpf_object*, %struct.bpf_object** %16, align 8
  %150 = call i8* @bpf_object__find_map_fd_by_name(%struct.bpf_object* %149, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  store i8* %150, i8** @rxcnt_map_fd, align 8
  %151 = load i32, i32* %11, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %156, label %153

153:                                              ; preds = %145
  %154 = load i8*, i8** @rxcnt_map_fd, align 8
  %155 = icmp ult i8* %154, null
  br i1 %155, label %156, label %158

156:                                              ; preds = %153, %145
  %157 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %220

158:                                              ; preds = %153
  %159 = load i32, i32* @ifindex_in, align 4
  %160 = load i32, i32* %10, align 4
  %161 = load i32, i32* @xdp_flags, align 4
  %162 = call i64 @bpf_set_link_xdp_fd(i32 %159, i32 %160, i32 %161)
  %163 = icmp slt i64 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %158
  %165 = load i32, i32* @ifindex_in, align 4
  %166 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i32 %165)
  store i32 1, i32* %3, align 4
  br label %220

167:                                              ; preds = %158
  %168 = load i32, i32* %10, align 4
  %169 = call i32 @bpf_obj_get_info_by_fd(i32 %168, %struct.bpf_prog_info* %13, i32* %14)
  store i32 %169, i32* %19, align 4
  %170 = load i32, i32* %19, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %167
  %173 = load i32, i32* @errno, align 4
  %174 = call i8* @strerror(i32 %173)
  %175 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0), i8* %174)
  %176 = load i32, i32* %19, align 4
  store i32 %176, i32* %3, align 4
  br label %220

177:                                              ; preds = %167
  %178 = getelementptr inbounds %struct.bpf_prog_info, %struct.bpf_prog_info* %13, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  store i32 %179, i32* @prog_id, align 4
  %180 = load i32, i32* @ifindex_out, align 4
  %181 = load i32, i32* %18, align 4
  %182 = load i32, i32* @xdp_flags, align 4
  %183 = load i32, i32* @XDP_FLAGS_UPDATE_IF_NOEXIST, align 4
  %184 = or i32 %182, %183
  %185 = call i64 @bpf_set_link_xdp_fd(i32 %180, i32 %181, i32 %184)
  %186 = icmp slt i64 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %177
  %188 = load i32, i32* @ifindex_out, align 4
  %189 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i64 0, i64 0), i32 %188)
  store i32 0, i32* @ifindex_out_xdp_dummy_attached, align 4
  br label %190

190:                                              ; preds = %187, %177
  %191 = call i32 @memset(%struct.bpf_prog_info* %13, i32 0, i32 4)
  %192 = load i32, i32* %18, align 4
  %193 = call i32 @bpf_obj_get_info_by_fd(i32 %192, %struct.bpf_prog_info* %13, i32* %14)
  store i32 %193, i32* %19, align 4
  %194 = load i32, i32* %19, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %201

196:                                              ; preds = %190
  %197 = load i32, i32* @errno, align 4
  %198 = call i8* @strerror(i32 %197)
  %199 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0), i8* %198)
  %200 = load i32, i32* %19, align 4
  store i32 %200, i32* %3, align 4
  br label %220

201:                                              ; preds = %190
  %202 = getelementptr inbounds %struct.bpf_prog_info, %struct.bpf_prog_info* %13, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  store i32 %203, i32* @dummy_prog_id, align 4
  %204 = load i32, i32* @SIGINT, align 4
  %205 = load i32, i32* @int_exit, align 4
  %206 = call i32 @signal(i32 %204, i32 %205)
  %207 = load i32, i32* @SIGTERM, align 4
  %208 = load i32, i32* @int_exit, align 4
  %209 = call i32 @signal(i32 %207, i32 %208)
  %210 = load i32, i32* %11, align 4
  %211 = call i32 @bpf_map_update_elem(i32 %210, i32* %20, i32* @ifindex_out, i32 0)
  store i32 %211, i32* %19, align 4
  %212 = load i32, i32* %19, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %216

214:                                              ; preds = %201
  %215 = call i32 @perror(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0))
  br label %219

216:                                              ; preds = %201
  %217 = load i32, i32* @ifindex_out, align 4
  %218 = call i32 @poll_stats(i32 2, i32 %217)
  br label %219

219:                                              ; preds = %216, %214
  store i32 0, i32* %3, align 4
  br label %220

220:                                              ; preds = %219, %196, %172, %164, %156, %141, %131, %119, %70, %61, %50
  %221 = load i32, i32* %3, align 4
  ret i32 %221
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i32 @usage(i32) #2

declare dso_local i32 @basename(i8*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i64 @setrlimit(i32, %struct.rlimit*) #2

declare dso_local i32 @perror(i8*) #2

declare dso_local i32 @if_nametoindex(i8*) #2

declare dso_local i32 @strtoul(i8*, i32*, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i64 @bpf_prog_load_xattr(%struct.bpf_prog_load_attr*, %struct.bpf_object**, i32*) #2

declare dso_local %struct.bpf_program* @bpf_program__next(%struct.bpf_program*, %struct.bpf_object*) #2

declare dso_local i32 @bpf_program__fd(%struct.bpf_program*) #2

declare dso_local i8* @strerror(i32) #2

declare dso_local i8* @bpf_object__find_map_fd_by_name(%struct.bpf_object*, i8*) #2

declare dso_local i64 @bpf_set_link_xdp_fd(i32, i32, i32) #2

declare dso_local i32 @bpf_obj_get_info_by_fd(i32, %struct.bpf_prog_info*, i32*) #2

declare dso_local i32 @memset(%struct.bpf_prog_info*, i32, i32) #2

declare dso_local i32 @signal(i32, i32) #2

declare dso_local i32 @bpf_map_update_elem(i32, i32*, i32*, i32) #2

declare dso_local i32 @poll_stats(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
