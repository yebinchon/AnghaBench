; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_router_ipv4_user.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_router_ipv4_user.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rlimit = type { i32, i32 }
%struct.bpf_prog_load_attr = type { i8*, i32 }
%struct.bpf_prog_info = type { i32 }
%struct.bpf_object = type { i32 }

@RLIM_INFINITY = common dso_local global i32 0, align 4
@BPF_PROG_TYPE_XDP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"SF\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%s_kern.o\00", align 1
@total_ifindex = common dso_local global i32 0, align 4
@XDP_FLAGS_SKB_MODE = common dso_local global i32 0, align 4
@flags = common dso_local global i32 0, align 4
@XDP_FLAGS_UPDATE_IF_NOEXIST = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@RLIMIT_MEMLOCK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"setrlimit(RLIMIT_MEMLOCK)\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"\0A**************loading bpf file*********************\0A\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"bpf_prog_load_xattr: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"lpm_map\00", align 1
@lpm_map_fd = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [6 x i8] c"rxcnt\00", align 1
@rxcnt_map_fd = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [10 x i8] c"arp_table\00", align 1
@arp_table_map_fd = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [12 x i8] c"exact_match\00", align 1
@exact_match_map_fd = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [8 x i8] c"tx_port\00", align 1
@tx_port_map_fd = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [40 x i8] c"bpf_object__find_map_fd_by_name failed\0A\00", align 1
@ifindex_list = common dso_local global i32* null, align 8
@.str.11 = private unnamed_addr constant [38 x i8] c"Couldn't translate interface name: %s\00", align 1
@prog_id_list = common dso_local global i32* null, align 8
@.str.12 = private unnamed_addr constant [24 x i8] c"link set xdp fd failed\0A\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"can't get prog info - %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"Attached to %d\0A\00", align 1
@SIGINT = common dso_local global i32 0, align 4
@int_exit = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [59 x i8] c"*******************ROUTE TABLE*************************\0A\0A\0A\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [59 x i8] c"*******************ARP TABLE***************************\0A\0A\0A\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"Error in receiving route update\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.rlimit, align 4
  %7 = alloca %struct.bpf_prog_load_attr, align 8
  %8 = alloca %struct.bpf_prog_info, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.bpf_object*, align 8
  %12 = alloca [256 x i8], align 16
  %13 = alloca i8**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %19 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %6, i32 0, i32 0
  %20 = load i32, i32* @RLIM_INFINITY, align 4
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %6, i32 0, i32 1
  %22 = load i32, i32* @RLIM_INFINITY, align 4
  store i32 %22, i32* %21, align 4
  %23 = getelementptr inbounds %struct.bpf_prog_load_attr, %struct.bpf_prog_load_attr* %7, i32 0, i32 0
  store i8* null, i8** %23, align 8
  %24 = getelementptr inbounds %struct.bpf_prog_load_attr, %struct.bpf_prog_load_attr* %7, i32 0, i32 1
  %25 = load i32, i32* @BPF_PROG_TYPE_XDP, align 4
  store i32 %25, i32* %24, align 8
  %26 = bitcast %struct.bpf_prog_info* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %26, i8 0, i64 4, i1 false)
  store i32 4, i32* %9, align 4
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  store i32 1, i32* %17, align 4
  %27 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %28 = load i8**, i8*** %5, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @snprintf(i8* %27, i32 256, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  %32 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %33 = getelementptr inbounds %struct.bpf_prog_load_attr, %struct.bpf_prog_load_attr* %7, i32 0, i32 0
  store i8* %32, i8** %33, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sub nsw i32 %34, 1
  store i32 %35, i32* @total_ifindex, align 4
  %36 = load i8**, i8*** %5, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 1
  store i8** %37, i8*** %13, align 8
  br label %38

38:                                               ; preds = %69, %2
  %39 = load i32, i32* %4, align 4
  %40 = load i8**, i8*** %5, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = call i32 @getopt(i32 %39, i8** %40, i8* %41)
  store i32 %42, i32* %15, align 4
  %43 = icmp ne i32 %42, -1
  br i1 %43, label %44, label %70

44:                                               ; preds = %38
  %45 = load i32, i32* %15, align 4
  switch i32 %45, label %63 [
    i32 83, label %46
    i32 70, label %54
  ]

46:                                               ; preds = %44
  %47 = load i32, i32* @XDP_FLAGS_SKB_MODE, align 4
  %48 = load i32, i32* @flags, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* @flags, align 4
  %50 = load i32, i32* @total_ifindex, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* @total_ifindex, align 4
  %52 = load i8**, i8*** %13, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i32 1
  store i8** %53, i8*** %13, align 8
  br label %69

54:                                               ; preds = %44
  %55 = load i32, i32* @XDP_FLAGS_UPDATE_IF_NOEXIST, align 4
  %56 = xor i32 %55, -1
  %57 = load i32, i32* @flags, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* @flags, align 4
  %59 = load i32, i32* @total_ifindex, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* @total_ifindex, align 4
  %61 = load i8**, i8*** %13, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i32 1
  store i8** %62, i8*** %13, align 8
  br label %69

63:                                               ; preds = %44
  %64 = load i8**, i8*** %5, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @basename(i8* %66)
  %68 = call i32 @usage(i32 %67)
  store i32 1, i32* %3, align 4
  br label %240

69:                                               ; preds = %54, %46
  br label %38

70:                                               ; preds = %38
  %71 = load i32, i32* @optind, align 4
  %72 = load i32, i32* %4, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %70
  %75 = load i8**, i8*** %5, align 8
  %76 = getelementptr inbounds i8*, i8** %75, i64 0
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @basename(i8* %77)
  %79 = call i32 @usage(i32 %78)
  store i32 1, i32* %3, align 4
  br label %240

80:                                               ; preds = %70
  %81 = load i32, i32* @RLIMIT_MEMLOCK, align 4
  %82 = call i64 @setrlimit(i32 %81, %struct.rlimit* %6)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = call i32 @perror(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %240

86:                                               ; preds = %80
  %87 = call i64 @bpf_prog_load_xattr(%struct.bpf_prog_load_attr* %7, %struct.bpf_object** %11, i32* %14)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  store i32 1, i32* %3, align 4
  br label %240

90:                                               ; preds = %86
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0))
  %92 = load i32, i32* %14, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %90
  %95 = load i32, i32* @errno, align 4
  %96 = call i8* @strerror(i32 %95)
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8* %96)
  store i32 1, i32* %3, align 4
  br label %240

98:                                               ; preds = %90
  %99 = load %struct.bpf_object*, %struct.bpf_object** %11, align 8
  %100 = call i64 @bpf_object__find_map_fd_by_name(%struct.bpf_object* %99, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  store i64 %100, i64* @lpm_map_fd, align 8
  %101 = load %struct.bpf_object*, %struct.bpf_object** %11, align 8
  %102 = call i64 @bpf_object__find_map_fd_by_name(%struct.bpf_object* %101, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  store i64 %102, i64* @rxcnt_map_fd, align 8
  %103 = load %struct.bpf_object*, %struct.bpf_object** %11, align 8
  %104 = call i64 @bpf_object__find_map_fd_by_name(%struct.bpf_object* %103, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  store i64 %104, i64* @arp_table_map_fd, align 8
  %105 = load %struct.bpf_object*, %struct.bpf_object** %11, align 8
  %106 = call i64 @bpf_object__find_map_fd_by_name(%struct.bpf_object* %105, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  store i64 %106, i64* @exact_match_map_fd, align 8
  %107 = load %struct.bpf_object*, %struct.bpf_object** %11, align 8
  %108 = call i64 @bpf_object__find_map_fd_by_name(%struct.bpf_object* %107, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  store i64 %108, i64* @tx_port_map_fd, align 8
  %109 = load i64, i64* @lpm_map_fd, align 8
  %110 = icmp slt i64 %109, 0
  br i1 %110, label %123, label %111

111:                                              ; preds = %98
  %112 = load i64, i64* @rxcnt_map_fd, align 8
  %113 = icmp slt i64 %112, 0
  br i1 %113, label %123, label %114

114:                                              ; preds = %111
  %115 = load i64, i64* @arp_table_map_fd, align 8
  %116 = icmp slt i64 %115, 0
  br i1 %116, label %123, label %117

117:                                              ; preds = %114
  %118 = load i64, i64* @exact_match_map_fd, align 8
  %119 = icmp slt i64 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %117
  %121 = load i64, i64* @tx_port_map_fd, align 8
  %122 = icmp slt i64 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %120, %117, %114, %111, %98
  %124 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %240

125:                                              ; preds = %120
  %126 = load i32, i32* @total_ifindex, align 4
  %127 = call i64 @calloc(i32 %126, i32 8)
  %128 = inttoptr i64 %127 to i32*
  store i32* %128, i32** @ifindex_list, align 8
  store i32 0, i32* %17, align 4
  br label %129

129:                                              ; preds = %155, %125
  %130 = load i32, i32* %17, align 4
  %131 = load i32, i32* @total_ifindex, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %158

133:                                              ; preds = %129
  %134 = load i8**, i8*** %13, align 8
  %135 = load i32, i32* %17, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8*, i8** %134, i64 %136
  %138 = load i8*, i8** %137, align 8
  %139 = call i32 @if_nametoindex(i8* %138)
  %140 = load i32*, i32** @ifindex_list, align 8
  %141 = load i32, i32* %17, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  store i32 %139, i32* %143, align 4
  %144 = load i32*, i32** @ifindex_list, align 8
  %145 = load i32, i32* %17, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %154, label %150

150:                                              ; preds = %133
  %151 = load i32, i32* @errno, align 4
  %152 = call i8* @strerror(i32 %151)
  %153 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0), i8* %152)
  store i32 1, i32* %3, align 4
  br label %240

154:                                              ; preds = %133
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %17, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %17, align 4
  br label %129

158:                                              ; preds = %129
  %159 = load i32, i32* @total_ifindex, align 4
  %160 = call i64 @calloc(i32 %159, i32 8)
  %161 = inttoptr i64 %160 to i32*
  store i32* %161, i32** @prog_id_list, align 8
  store i32 0, i32* %17, align 4
  br label %162

162:                                              ; preds = %219, %158
  %163 = load i32, i32* %17, align 4
  %164 = load i32, i32* @total_ifindex, align 4
  %165 = icmp slt i32 %163, %164
  br i1 %165, label %166, label %222

166:                                              ; preds = %162
  %167 = load i32*, i32** @ifindex_list, align 8
  %168 = load i32, i32* %17, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* %14, align 4
  %173 = load i32, i32* @flags, align 4
  %174 = call i64 @bpf_set_link_xdp_fd(i32 %171, i32 %172, i32 %173)
  %175 = icmp slt i64 %174, 0
  br i1 %175, label %176, label %195

176:                                              ; preds = %166
  %177 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0))
  %178 = load i32, i32* %17, align 4
  store i32 %178, i32* %18, align 4
  store i32 0, i32* %17, align 4
  br label %179

179:                                              ; preds = %191, %176
  %180 = load i32, i32* %17, align 4
  %181 = load i32, i32* %18, align 4
  %182 = icmp slt i32 %180, %181
  br i1 %182, label %183, label %194

183:                                              ; preds = %179
  %184 = load i32*, i32** @ifindex_list, align 8
  %185 = load i32, i32* %17, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @flags, align 4
  %190 = call i64 @bpf_set_link_xdp_fd(i32 %188, i32 -1, i32 %189)
  br label %191

191:                                              ; preds = %183
  %192 = load i32, i32* %17, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %17, align 4
  br label %179

194:                                              ; preds = %179
  store i32 1, i32* %3, align 4
  br label %240

195:                                              ; preds = %166
  %196 = load i32, i32* %14, align 4
  %197 = call i32 @bpf_obj_get_info_by_fd(i32 %196, %struct.bpf_prog_info* %8, i32* %9)
  store i32 %197, i32* %16, align 4
  %198 = load i32, i32* %16, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %205

200:                                              ; preds = %195
  %201 = load i32, i32* @errno, align 4
  %202 = call i8* @strerror(i32 %201)
  %203 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i8* %202)
  %204 = load i32, i32* %16, align 4
  store i32 %204, i32* %3, align 4
  br label %240

205:                                              ; preds = %195
  %206 = getelementptr inbounds %struct.bpf_prog_info, %struct.bpf_prog_info* %8, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = load i32*, i32** @prog_id_list, align 8
  %209 = load i32, i32* %17, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %208, i64 %210
  store i32 %207, i32* %211, align 4
  %212 = call i32 @memset(%struct.bpf_prog_info* %8, i32 0, i32 4)
  %213 = load i32*, i32** @ifindex_list, align 8
  %214 = load i32, i32* %17, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %213, i64 %215
  %217 = load i32, i32* %216, align 4
  %218 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 %217)
  br label %219

219:                                              ; preds = %205
  %220 = load i32, i32* %17, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %17, align 4
  br label %162

222:                                              ; preds = %162
  %223 = load i32, i32* @SIGINT, align 4
  %224 = load i32, i32* @int_exit, align 4
  %225 = call i32 @signal(i32 %223, i32 %224)
  %226 = load i32, i32* @SIGTERM, align 4
  %227 = load i32, i32* @int_exit, align 4
  %228 = call i32 @signal(i32 %226, i32 %227)
  %229 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.15, i64 0, i64 0))
  %230 = load i32, i32* @AF_INET, align 4
  %231 = call i32 @get_route_table(i32 %230)
  %232 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.16, i64 0, i64 0))
  %233 = load i32, i32* @AF_INET, align 4
  %234 = call i32 @get_arp_table(i32 %233)
  %235 = call i64 (...) @monitor_route()
  %236 = icmp slt i64 %235, 0
  br i1 %236, label %237, label %239

237:                                              ; preds = %222
  %238 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %240

239:                                              ; preds = %222
  store i32 0, i32* %3, align 4
  br label %240

240:                                              ; preds = %239, %237, %200, %194, %150, %123, %94, %89, %84, %74, %63
  %241 = load i32, i32* %3, align 4
  ret i32 %241
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i32 @usage(i32) #2

declare dso_local i32 @basename(i8*) #2

declare dso_local i64 @setrlimit(i32, %struct.rlimit*) #2

declare dso_local i32 @perror(i8*) #2

declare dso_local i64 @bpf_prog_load_xattr(%struct.bpf_prog_load_attr*, %struct.bpf_object**, i32*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i8* @strerror(i32) #2

declare dso_local i64 @bpf_object__find_map_fd_by_name(%struct.bpf_object*, i8*) #2

declare dso_local i64 @calloc(i32, i32) #2

declare dso_local i32 @if_nametoindex(i8*) #2

declare dso_local i64 @bpf_set_link_xdp_fd(i32, i32, i32) #2

declare dso_local i32 @bpf_obj_get_info_by_fd(i32, %struct.bpf_prog_info*, i32*) #2

declare dso_local i32 @memset(%struct.bpf_prog_info*, i32, i32) #2

declare dso_local i32 @signal(i32, i32) #2

declare dso_local i32 @get_route_table(i32) #2

declare dso_local i32 @get_arp_table(i32) #2

declare dso_local i64 @monitor_route(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
