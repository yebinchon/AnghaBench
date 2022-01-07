; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_redirect_cpu_user.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_redirect_cpu_user.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rlimit = type { i32, i32 }
%struct.bpf_prog_load_attr = type { i8*, i32 }
%struct.bpf_prog_info = type { i32 }
%struct.bpf_program = type { i32 }
%struct.bpf_object = type { i32 }

@RLIM_INFINITY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"xdp_cpu_map5_lb_hash_ip_pairs\00", align 1
@BPF_PROG_TYPE_UNSPEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"%s_kern.o\00", align 1
@RLIMIT_MEMLOCK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"setrlimit(RLIMIT_MEMLOCK)\00", align 1
@EXIT_FAIL = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"ERR: bpf_prog_load_xattr: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"bpf_object__find_map_fd_by_name failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"hSd:s:p:q:c:xzF\00", align 1
@long_options = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@IF_NAMESIZE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"ERR: --dev name too long\0A\00", align 1
@ifname_buf = common dso_local global i32 0, align 4
@ifname = common dso_local global i8* null, align 8
@ifindex = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [36 x i8] c"ERR: --dev name unknown err(%d):%s\0A\00", align 1
@XDP_FLAGS_SKB_MODE = common dso_local global i32 0, align 4
@xdp_flags = common dso_local global i32 0, align 4
@MAX_CPUS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [42 x i8] c"--cpu nr too large for cpumap err(%d):%s\0A\00", align 1
@XDP_FLAGS_UPDATE_IF_NOEXIST = common dso_local global i32 0, align 4
@EXIT_FAIL_OPTION = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [36 x i8] c"ERR: required option --dev missing\0A\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"ERR: required option --cpu missing\0A\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c" Specify multiple --cpu option to add more\0A\00", align 1
@SIGINT = common dso_local global i32 0, align 4
@int_exit = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [42 x i8] c"bpf_object__find_program_by_title failed\0A\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"bpf_program__fd failed\0A\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"link set xdp fd failed\0A\00", align 1
@EXIT_FAIL_XDP = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [26 x i8] c"can't get prog info - %s\0A\00", align 1
@prog_id = common dso_local global i32 0, align 4
@EXIT_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.rlimit, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.bpf_prog_load_attr, align 8
  %9 = alloca %struct.bpf_prog_info, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.bpf_program*, align 8
  %14 = alloca %struct.bpf_object*, align 8
  %15 = alloca [256 x i8], align 16
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %24 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %6, i32 0, i32 0
  store i32 10485760, i32* %24, align 4
  %25 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %6, i32 0, i32 1
  %26 = load i32, i32* @RLIM_INFINITY, align 4
  store i32 %26, i32* %25, align 4
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  %27 = getelementptr inbounds %struct.bpf_prog_load_attr, %struct.bpf_prog_load_attr* %8, i32 0, i32 0
  store i8* null, i8** %27, align 8
  %28 = getelementptr inbounds %struct.bpf_prog_load_attr, %struct.bpf_prog_load_attr* %8, i32 0, i32 1
  %29 = load i32, i32* @BPF_PROG_TYPE_UNSPEC, align 4
  store i32 %29, i32* %28, align 8
  %30 = bitcast %struct.bpf_prog_info* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %30, i8 0, i64 4, i1 false)
  store i32 4, i32* %10, align 4
  store i32 1, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 2, i32* %18, align 4
  store i32 -1, i32* %19, align 4
  store i32 192, i32* %23, align 4
  %31 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %32 = load i8**, i8*** %5, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @snprintf(i8* %31, i32 256, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %34)
  %36 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %37 = getelementptr inbounds %struct.bpf_prog_load_attr, %struct.bpf_prog_load_attr* %8, i32 0, i32 0
  store i8* %36, i8** %37, align 8
  %38 = load i32, i32* @RLIMIT_MEMLOCK, align 4
  %39 = call i64 @setrlimit(i32 %38, %struct.rlimit* %6)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %2
  %42 = call i32 @perror(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %223

43:                                               ; preds = %2
  %44 = call i64 @bpf_prog_load_xattr(%struct.bpf_prog_load_attr* %8, %struct.bpf_object** %14, i32* %22)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i32, i32* @EXIT_FAIL, align 4
  store i32 %47, i32* %3, align 4
  br label %223

48:                                               ; preds = %43
  %49 = load i32, i32* %22, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = load i32, i32* @stderr, align 4
  %53 = load i32, i32* @errno, align 4
  %54 = call i8* @strerror(i32 %53)
  %55 = call i32 (i32, i8*, ...) @fprintf(i32 %52, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %54)
  %56 = load i32, i32* @EXIT_FAIL, align 4
  store i32 %56, i32* %3, align 4
  br label %223

57:                                               ; preds = %48
  %58 = load %struct.bpf_object*, %struct.bpf_object** %14, align 8
  %59 = call i64 @init_map_fds(%struct.bpf_object* %58)
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = load i32, i32* @stderr, align 4
  %63 = call i32 (i32, i8*, ...) @fprintf(i32 %62, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  %64 = load i32, i32* @EXIT_FAIL, align 4
  store i32 %64, i32* %3, align 4
  br label %223

65:                                               ; preds = %57
  %66 = call i32 (...) @mark_cpus_unavailable()
  br label %67

67:                                               ; preds = %146, %65
  %68 = load i32, i32* %4, align 4
  %69 = load i8**, i8*** %5, align 8
  %70 = load i32, i32* @long_options, align 4
  %71 = call i32 @getopt_long(i32 %68, i8** %69, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %70, i32* %17)
  store i32 %71, i32* %20, align 4
  %72 = icmp ne i32 %71, -1
  br i1 %72, label %73, label %147

73:                                               ; preds = %67
  %74 = load i32, i32* %20, align 4
  switch i32 %74, label %141 [
    i32 100, label %75
    i32 115, label %99
    i32 83, label %103
    i32 120, label %107
    i32 122, label %108
    i32 112, label %109
    i32 99, label %111
    i32 113, label %130
    i32 70, label %134
    i32 104, label %139
  ]

75:                                               ; preds = %73
  %76 = load i8*, i8** @optarg, align 8
  %77 = call i32 @strlen(i8* %76)
  %78 = load i32, i32* @IF_NAMESIZE, align 4
  %79 = icmp sge i32 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load i32, i32* @stderr, align 4
  %82 = call i32 (i32, i8*, ...) @fprintf(i32 %81, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  br label %140

83:                                               ; preds = %75
  store i8* bitcast (i32* @ifname_buf to i8*), i8** @ifname, align 8
  %84 = load i8*, i8** @ifname, align 8
  %85 = load i8*, i8** @optarg, align 8
  %86 = load i32, i32* @IF_NAMESIZE, align 4
  %87 = call i32 @strncpy(i8* %84, i8* %85, i32 %86)
  %88 = load i8*, i8** @ifname, align 8
  %89 = call i32 @if_nametoindex(i8* %88)
  store i32 %89, i32* @ifindex, align 4
  %90 = load i32, i32* @ifindex, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %83
  %93 = load i32, i32* @stderr, align 4
  %94 = load i32, i32* @errno, align 4
  %95 = load i32, i32* @errno, align 4
  %96 = call i8* @strerror(i32 %95)
  %97 = call i32 (i32, i8*, ...) @fprintf(i32 %93, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i32 %94, i8* %96)
  br label %140

98:                                               ; preds = %83
  br label %146

99:                                               ; preds = %73
  %100 = load i8*, i8** @optarg, align 8
  %101 = call i8* @atoi(i8* %100)
  %102 = ptrtoint i8* %101 to i32
  store i32 %102, i32* %18, align 4
  br label %146

103:                                              ; preds = %73
  %104 = load i32, i32* @XDP_FLAGS_SKB_MODE, align 4
  %105 = load i32, i32* @xdp_flags, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* @xdp_flags, align 4
  br label %146

107:                                              ; preds = %73
  store i32 1, i32* %12, align 4
  br label %146

108:                                              ; preds = %73
  store i32 0, i32* %11, align 4
  br label %146

109:                                              ; preds = %73
  %110 = load i8*, i8** @optarg, align 8
  store i8* %110, i8** %7, align 8
  br label %146

111:                                              ; preds = %73
  %112 = load i8*, i8** @optarg, align 8
  %113 = call i32 @strtoul(i8* %112, i32* null, i32 0)
  store i32 %113, i32* %19, align 4
  %114 = load i32, i32* %19, align 4
  %115 = load i32, i32* @MAX_CPUS, align 4
  %116 = icmp sge i32 %114, %115
  br i1 %116, label %117, label %123

117:                                              ; preds = %111
  %118 = load i32, i32* @stderr, align 4
  %119 = load i32, i32* @errno, align 4
  %120 = load i32, i32* @errno, align 4
  %121 = call i8* @strerror(i32 %120)
  %122 = call i32 (i32, i8*, ...) @fprintf(i32 %118, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i32 %119, i8* %121)
  br label %140

123:                                              ; preds = %111
  %124 = load i32, i32* %19, align 4
  %125 = load i32, i32* %23, align 4
  %126 = load i32, i32* %16, align 4
  %127 = call i32 @create_cpu_entry(i32 %124, i32 %125, i32 %126, i32 1)
  %128 = load i32, i32* %16, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %16, align 4
  br label %146

130:                                              ; preds = %73
  %131 = load i8*, i8** @optarg, align 8
  %132 = call i8* @atoi(i8* %131)
  %133 = ptrtoint i8* %132 to i32
  store i32 %133, i32* %23, align 4
  br label %146

134:                                              ; preds = %73
  %135 = load i32, i32* @XDP_FLAGS_UPDATE_IF_NOEXIST, align 4
  %136 = xor i32 %135, -1
  %137 = load i32, i32* @xdp_flags, align 4
  %138 = and i32 %137, %136
  store i32 %138, i32* @xdp_flags, align 4
  br label %146

139:                                              ; preds = %73
  br label %140

140:                                              ; preds = %139, %117, %92, %80
  br label %141

141:                                              ; preds = %73, %140
  %142 = load i8**, i8*** %5, align 8
  %143 = load %struct.bpf_object*, %struct.bpf_object** %14, align 8
  %144 = call i32 @usage(i8** %142, %struct.bpf_object* %143)
  %145 = load i32, i32* @EXIT_FAIL_OPTION, align 4
  store i32 %145, i32* %3, align 4
  br label %223

146:                                              ; preds = %134, %130, %123, %109, %108, %107, %103, %99, %98
  br label %67

147:                                              ; preds = %67
  %148 = load i32, i32* @ifindex, align 4
  %149 = icmp eq i32 %148, -1
  br i1 %149, label %150, label %157

150:                                              ; preds = %147
  %151 = load i32, i32* @stderr, align 4
  %152 = call i32 (i32, i8*, ...) @fprintf(i32 %151, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0))
  %153 = load i8**, i8*** %5, align 8
  %154 = load %struct.bpf_object*, %struct.bpf_object** %14, align 8
  %155 = call i32 @usage(i8** %153, %struct.bpf_object* %154)
  %156 = load i32, i32* @EXIT_FAIL_OPTION, align 4
  store i32 %156, i32* %3, align 4
  br label %223

157:                                              ; preds = %147
  %158 = load i32, i32* %19, align 4
  %159 = icmp eq i32 %158, -1
  br i1 %159, label %160, label %169

160:                                              ; preds = %157
  %161 = load i32, i32* @stderr, align 4
  %162 = call i32 (i32, i8*, ...) @fprintf(i32 %161, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0))
  %163 = load i32, i32* @stderr, align 4
  %164 = call i32 (i32, i8*, ...) @fprintf(i32 %163, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i64 0, i64 0))
  %165 = load i8**, i8*** %5, align 8
  %166 = load %struct.bpf_object*, %struct.bpf_object** %14, align 8
  %167 = call i32 @usage(i8** %165, %struct.bpf_object* %166)
  %168 = load i32, i32* @EXIT_FAIL_OPTION, align 4
  store i32 %168, i32* %3, align 4
  br label %223

169:                                              ; preds = %157
  %170 = load i32, i32* @SIGINT, align 4
  %171 = load i32, i32* @int_exit, align 4
  %172 = call i32 @signal(i32 %170, i32 %171)
  %173 = load i32, i32* @SIGTERM, align 4
  %174 = load i32, i32* @int_exit, align 4
  %175 = call i32 @signal(i32 %173, i32 %174)
  %176 = load %struct.bpf_object*, %struct.bpf_object** %14, align 8
  %177 = load i8*, i8** %7, align 8
  %178 = call %struct.bpf_program* @bpf_object__find_program_by_title(%struct.bpf_object* %176, i8* %177)
  store %struct.bpf_program* %178, %struct.bpf_program** %13, align 8
  %179 = load %struct.bpf_program*, %struct.bpf_program** %13, align 8
  %180 = icmp ne %struct.bpf_program* %179, null
  br i1 %180, label %185, label %181

181:                                              ; preds = %169
  %182 = load i32, i32* @stderr, align 4
  %183 = call i32 (i32, i8*, ...) @fprintf(i32 %182, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i64 0, i64 0))
  %184 = load i32, i32* @EXIT_FAIL, align 4
  store i32 %184, i32* %3, align 4
  br label %223

185:                                              ; preds = %169
  %186 = load %struct.bpf_program*, %struct.bpf_program** %13, align 8
  %187 = call i32 @bpf_program__fd(%struct.bpf_program* %186)
  store i32 %187, i32* %22, align 4
  %188 = load i32, i32* %22, align 4
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %190, label %194

190:                                              ; preds = %185
  %191 = load i32, i32* @stderr, align 4
  %192 = call i32 (i32, i8*, ...) @fprintf(i32 %191, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0))
  %193 = load i32, i32* @EXIT_FAIL, align 4
  store i32 %193, i32* %3, align 4
  br label %223

194:                                              ; preds = %185
  %195 = load i32, i32* @ifindex, align 4
  %196 = load i32, i32* %22, align 4
  %197 = load i32, i32* @xdp_flags, align 4
  %198 = call i64 @bpf_set_link_xdp_fd(i32 %195, i32 %196, i32 %197)
  %199 = icmp slt i64 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %194
  %201 = load i32, i32* @stderr, align 4
  %202 = call i32 (i32, i8*, ...) @fprintf(i32 %201, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0))
  %203 = load i32, i32* @EXIT_FAIL_XDP, align 4
  store i32 %203, i32* %3, align 4
  br label %223

204:                                              ; preds = %194
  %205 = load i32, i32* %22, align 4
  %206 = call i32 @bpf_obj_get_info_by_fd(i32 %205, %struct.bpf_prog_info* %9, i32* %10)
  store i32 %206, i32* %21, align 4
  %207 = load i32, i32* %21, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %214

209:                                              ; preds = %204
  %210 = load i32, i32* @errno, align 4
  %211 = call i8* @strerror(i32 %210)
  %212 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i64 0, i64 0), i8* %211)
  %213 = load i32, i32* %21, align 4
  store i32 %213, i32* %3, align 4
  br label %223

214:                                              ; preds = %204
  %215 = getelementptr inbounds %struct.bpf_prog_info, %struct.bpf_prog_info* %9, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  store i32 %216, i32* @prog_id, align 4
  %217 = load i32, i32* %18, align 4
  %218 = load i32, i32* %11, align 4
  %219 = load i8*, i8** %7, align 8
  %220 = load i32, i32* %12, align 4
  %221 = call i32 @stats_poll(i32 %217, i32 %218, i8* %219, i32 %220)
  %222 = load i32, i32* @EXIT_OK, align 4
  store i32 %222, i32* %3, align 4
  br label %223

223:                                              ; preds = %214, %209, %200, %190, %181, %160, %150, %141, %61, %51, %46, %41
  %224 = load i32, i32* %3, align 4
  ret i32 %224
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i64 @setrlimit(i32, %struct.rlimit*) #2

declare dso_local i32 @perror(i8*) #2

declare dso_local i64 @bpf_prog_load_xattr(%struct.bpf_prog_load_attr*, %struct.bpf_object**, i32*) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i8* @strerror(i32) #2

declare dso_local i64 @init_map_fds(%struct.bpf_object*) #2

declare dso_local i32 @mark_cpus_unavailable(...) #2

declare dso_local i32 @getopt_long(i32, i8**, i8*, i32, i32*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @strncpy(i8*, i8*, i32) #2

declare dso_local i32 @if_nametoindex(i8*) #2

declare dso_local i8* @atoi(i8*) #2

declare dso_local i32 @strtoul(i8*, i32*, i32) #2

declare dso_local i32 @create_cpu_entry(i32, i32, i32, i32) #2

declare dso_local i32 @usage(i8**, %struct.bpf_object*) #2

declare dso_local i32 @signal(i32, i32) #2

declare dso_local %struct.bpf_program* @bpf_object__find_program_by_title(%struct.bpf_object*, i8*) #2

declare dso_local i32 @bpf_program__fd(%struct.bpf_program*) #2

declare dso_local i64 @bpf_set_link_xdp_fd(i32, i32, i32) #2

declare dso_local i32 @bpf_obj_get_info_by_fd(i32, %struct.bpf_prog_info*, i32*) #2

declare dso_local i32 @printf(i8*, i8*) #2

declare dso_local i32 @stats_poll(i32, i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
