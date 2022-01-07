; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_sockmap.c_run_options.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_sockmap.c_run_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockmap_options = type { i32, i32, i32, i32, i32 }

@BASE = common dso_local global i32 0, align 4
@BASE_SENDPAGE = common dso_local global i32 0, align 4
@prog_fd = common dso_local global i32* null, align 8
@map_fd = common dso_local global i32* null, align 8
@BPF_SK_SKB_STREAM_PARSER = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"ERROR: bpf_prog_attach (sockmap %i->%i): %d (%s)\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@BPF_SK_SKB_STREAM_VERDICT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"ERROR: bpf_prog_attach (sockmap): %d (%s)\0A\00", align 1
@BPF_CGROUP_SOCK_OPS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"ERROR: bpf_prog_attach (groups): %d (%s)\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"ERROR: test socket failed: %d\0A\00", align 1
@txmsg_pass = common dso_local global i64 0, align 8
@txmsg_noisy = common dso_local global i64 0, align 8
@txmsg_redir = common dso_local global i64 0, align 8
@txmsg_redir_noisy = common dso_local global i64 0, align 8
@txmsg_drop = common dso_local global i64 0, align 8
@txmsg_apply = common dso_local global i32 0, align 4
@txmsg_cork = common dso_local global i32 0, align 4
@BPF_SK_MSG_VERDICT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"ERROR: bpf_prog_attach (txmsg): %d (%s)\0A\00", align 1
@c1 = common dso_local global i32 0, align 4
@BPF_ANY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [45 x i8] c"ERROR: bpf_map_update_elem (txmsg):  %d (%s\0A\00", align 1
@c2 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [51 x i8] c"ERROR: bpf_map_update_elem (apply_bytes):  %d (%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"ERROR: bpf_map_update_elem (cork_bytes):  %d (%s\0A\00", align 1
@txmsg_start = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [52 x i8] c"ERROR: bpf_map_update_elem (txmsg_start):  %d (%s)\0A\00", align 1
@txmsg_end = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [50 x i8] c"ERROR: bpf_map_update_elem (txmsg_end):  %d (%s)\0A\00", align 1
@txmsg_start_push = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [57 x i8] c"ERROR: bpf_map_update_elem (txmsg_start_push):  %d (%s)\0A\00", align 1
@txmsg_end_push = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [61 x i8] c"ERROR: bpf_map_update_elem %i@%i (txmsg_end_push):  %d (%s)\0A\00", align 1
@txmsg_start_pop = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [62 x i8] c"ERROR: bpf_map_update_elem %i@%i (txmsg_start_pop):  %d (%s)\0A\00", align 1
@txmsg_pop = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [56 x i8] c"ERROR: bpf_map_update_elem %i@%i (txmsg_pop):  %d (%s)\0A\00", align 1
@txmsg_ingress = common dso_local global i64 0, align 8
@BPF_F_INGRESS = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [53 x i8] c"ERROR: bpf_map_update_elem (txmsg_ingress): %d (%s)\0A\00", align 1
@p1 = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [48 x i8] c"ERROR: bpf_map_update_elem (p1 txmsg): %d (%s)\0A\00", align 1
@.str.16 = private unnamed_addr constant [48 x i8] c"ERROR: bpf_map_update_elem (p1 redir): %d (%s)\0A\00", align 1
@p2 = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [48 x i8] c"ERROR: bpf_map_update_elem (p2 txmsg): %d (%s)\0A\00", align 1
@txmsg_skb = common dso_local global i64 0, align 8
@SENDMSG = common dso_local global i32 0, align 4
@SENDPAGE = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [50 x i8] c"ERROR: bpf_map_update_elem (c1 sockmap): %d (%s)\0A\00", align 1
@PING_PONG = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [14 x i8] c"unknown test\0A\00", align 1
@s1 = common dso_local global i32 0, align 4
@s2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockmap_options*, i32, i32)* @run_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_options(%struct.sockmap_options* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockmap_options*, align 8
  %6 = alloca i32, align 4
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
  store %struct.sockmap_options* %0, %struct.sockmap_options** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 -1, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @BASE, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @BASE_SENDPAGE, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22, %3
  br label %86

27:                                               ; preds = %22
  %28 = load i32*, i32** @prog_fd, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** @map_fd, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @BPF_SK_SKB_STREAM_PARSER, align 4
  %35 = call i32 @bpf_prog_attach(i32 %30, i32 %33, i32 %34, i32 0)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %27
  %39 = load i32, i32* @stderr, align 4
  %40 = load i32*, i32** @prog_fd, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** @map_fd, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @errno, align 4
  %48 = call i8* @strerror(i32 %47)
  %49 = call i32 (i32, i8*, ...) @fprintf(i32 %39, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %45, i32 %46, i8* %48)
  %50 = load i32, i32* %11, align 4
  store i32 %50, i32* %4, align 4
  br label %626

51:                                               ; preds = %27
  %52 = load i32*, i32** @prog_fd, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** @map_fd, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @BPF_SK_SKB_STREAM_VERDICT, align 4
  %59 = call i32 @bpf_prog_attach(i32 %54, i32 %57, i32 %58, i32 0)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %51
  %63 = load i32, i32* @stderr, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* @errno, align 4
  %66 = call i8* @strerror(i32 %65)
  %67 = call i32 (i32, i8*, ...) @fprintf(i32 %63, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %64, i8* %66)
  %68 = load i32, i32* %11, align 4
  store i32 %68, i32* %4, align 4
  br label %626

69:                                               ; preds = %51
  %70 = load i32*, i32** @prog_fd, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 2
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @BPF_CGROUP_SOCK_OPS, align 4
  %75 = call i32 @bpf_prog_attach(i32 %72, i32 %73, i32 %74, i32 0)
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %11, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %69
  %79 = load i32, i32* @stderr, align 4
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* @errno, align 4
  %82 = call i8* @strerror(i32 %81)
  %83 = call i32 (i32, i8*, ...) @fprintf(i32 %79, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %80, i8* %82)
  %84 = load i32, i32* %11, align 4
  store i32 %84, i32* %4, align 4
  br label %626

85:                                               ; preds = %69
  br label %86

86:                                               ; preds = %85, %26
  %87 = load %struct.sockmap_options*, %struct.sockmap_options** %5, align 8
  %88 = getelementptr inbounds %struct.sockmap_options, %struct.sockmap_options* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @sockmap_init_sockets(i32 %89)
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %11, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %86
  %94 = load i32, i32* @stderr, align 4
  %95 = load i32, i32* %11, align 4
  %96 = call i32 (i32, i8*, ...) @fprintf(i32 %94, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %95)
  br label %547

97:                                               ; preds = %86
  %98 = load i64, i64* @txmsg_pass, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %97
  %101 = load i32*, i32** @prog_fd, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 3
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %12, align 4
  br label %153

104:                                              ; preds = %97
  %105 = load i64, i64* @txmsg_noisy, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %104
  %108 = load i32*, i32** @prog_fd, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 4
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %12, align 4
  br label %152

111:                                              ; preds = %104
  %112 = load i64, i64* @txmsg_redir, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %111
  %115 = load i32*, i32** @prog_fd, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 5
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* %12, align 4
  br label %151

118:                                              ; preds = %111
  %119 = load i64, i64* @txmsg_redir_noisy, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %118
  %122 = load i32*, i32** @prog_fd, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 6
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %12, align 4
  br label %150

125:                                              ; preds = %118
  %126 = load i64, i64* @txmsg_drop, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %125
  %129 = load i32*, i32** @prog_fd, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 9
  %131 = load i32, i32* %130, align 4
  store i32 %131, i32* %12, align 4
  br label %149

132:                                              ; preds = %125
  %133 = load i32, i32* @txmsg_apply, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %132
  %136 = load i32*, i32** @prog_fd, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 7
  %138 = load i32, i32* %137, align 4
  store i32 %138, i32* %12, align 4
  br label %148

139:                                              ; preds = %132
  %140 = load i32, i32* @txmsg_cork, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %139
  %143 = load i32*, i32** @prog_fd, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 8
  %145 = load i32, i32* %144, align 4
  store i32 %145, i32* %12, align 4
  br label %147

146:                                              ; preds = %139
  store i32 0, i32* %12, align 4
  br label %147

147:                                              ; preds = %146, %142
  br label %148

148:                                              ; preds = %147, %135
  br label %149

149:                                              ; preds = %148, %128
  br label %150

150:                                              ; preds = %149, %121
  br label %151

151:                                              ; preds = %150, %114
  br label %152

152:                                              ; preds = %151, %107
  br label %153

153:                                              ; preds = %152, %100
  %154 = load i32, i32* %12, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %479

156:                                              ; preds = %153
  store i32 0, i32* %15, align 4
  %157 = load i32, i32* %12, align 4
  %158 = load i32*, i32** @map_fd, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 1
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @BPF_SK_MSG_VERDICT, align 4
  %162 = call i32 @bpf_prog_attach(i32 %157, i32 %160, i32 %161, i32 0)
  store i32 %162, i32* %11, align 4
  %163 = load i32, i32* %11, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %156
  %166 = load i32, i32* @stderr, align 4
  %167 = load i32, i32* %11, align 4
  %168 = load i32, i32* @errno, align 4
  %169 = call i8* @strerror(i32 %168)
  %170 = call i32 (i32, i8*, ...) @fprintf(i32 %166, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %167, i8* %169)
  br label %547

171:                                              ; preds = %156
  %172 = load i32*, i32** @map_fd, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 1
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @BPF_ANY, align 4
  %176 = call i32 @bpf_map_update_elem(i32 %174, i32* %15, i32* @c1, i32 %175)
  store i32 %176, i32* %11, align 4
  %177 = load i32, i32* %11, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %185

179:                                              ; preds = %171
  %180 = load i32, i32* @stderr, align 4
  %181 = load i32, i32* %11, align 4
  %182 = load i32, i32* @errno, align 4
  %183 = call i8* @strerror(i32 %182)
  %184 = call i32 (i32, i8*, ...) @fprintf(i32 %180, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 %181, i8* %183)
  br label %547

185:                                              ; preds = %171
  %186 = load i64, i64* @txmsg_redir, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %191, label %188

188:                                              ; preds = %185
  %189 = load i64, i64* @txmsg_redir_noisy, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %188, %185
  %192 = load i32, i32* @c2, align 4
  store i32 %192, i32* %14, align 4
  br label %195

193:                                              ; preds = %188
  %194 = load i32, i32* @c1, align 4
  store i32 %194, i32* %14, align 4
  br label %195

195:                                              ; preds = %193, %191
  %196 = load i32*, i32** @map_fd, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 2
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @BPF_ANY, align 4
  %200 = call i32 @bpf_map_update_elem(i32 %198, i32* %15, i32* %14, i32 %199)
  store i32 %200, i32* %11, align 4
  %201 = load i32, i32* %11, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %209

203:                                              ; preds = %195
  %204 = load i32, i32* @stderr, align 4
  %205 = load i32, i32* %11, align 4
  %206 = load i32, i32* @errno, align 4
  %207 = call i8* @strerror(i32 %206)
  %208 = call i32 (i32, i8*, ...) @fprintf(i32 %204, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 %205, i8* %207)
  br label %547

209:                                              ; preds = %195
  %210 = load i32, i32* @txmsg_apply, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %227

212:                                              ; preds = %209
  %213 = load i32*, i32** @map_fd, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 3
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* @BPF_ANY, align 4
  %217 = call i32 @bpf_map_update_elem(i32 %215, i32* %15, i32* @txmsg_apply, i32 %216)
  store i32 %217, i32* %11, align 4
  %218 = load i32, i32* %11, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %226

220:                                              ; preds = %212
  %221 = load i32, i32* @stderr, align 4
  %222 = load i32, i32* %11, align 4
  %223 = load i32, i32* @errno, align 4
  %224 = call i8* @strerror(i32 %223)
  %225 = call i32 (i32, i8*, ...) @fprintf(i32 %221, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0), i32 %222, i8* %224)
  br label %547

226:                                              ; preds = %212
  br label %227

227:                                              ; preds = %226, %209
  %228 = load i32, i32* @txmsg_cork, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %245

230:                                              ; preds = %227
  %231 = load i32*, i32** @map_fd, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 4
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* @BPF_ANY, align 4
  %235 = call i32 @bpf_map_update_elem(i32 %233, i32* %15, i32* @txmsg_cork, i32 %234)
  store i32 %235, i32* %11, align 4
  %236 = load i32, i32* %11, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %244

238:                                              ; preds = %230
  %239 = load i32, i32* @stderr, align 4
  %240 = load i32, i32* %11, align 4
  %241 = load i32, i32* @errno, align 4
  %242 = call i8* @strerror(i32 %241)
  %243 = call i32 (i32, i8*, ...) @fprintf(i32 %239, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0), i32 %240, i8* %242)
  br label %547

244:                                              ; preds = %230
  br label %245

245:                                              ; preds = %244, %227
  %246 = load i32, i32* @txmsg_start, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %263

248:                                              ; preds = %245
  %249 = load i32*, i32** @map_fd, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 5
  %251 = load i32, i32* %250, align 4
  %252 = load i32, i32* @BPF_ANY, align 4
  %253 = call i32 @bpf_map_update_elem(i32 %251, i32* %15, i32* @txmsg_start, i32 %252)
  store i32 %253, i32* %11, align 4
  %254 = load i32, i32* %11, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %262

256:                                              ; preds = %248
  %257 = load i32, i32* @stderr, align 4
  %258 = load i32, i32* %11, align 4
  %259 = load i32, i32* @errno, align 4
  %260 = call i8* @strerror(i32 %259)
  %261 = call i32 (i32, i8*, ...) @fprintf(i32 %257, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.8, i64 0, i64 0), i32 %258, i8* %260)
  br label %547

262:                                              ; preds = %248
  br label %263

263:                                              ; preds = %262, %245
  %264 = load i32, i32* @txmsg_end, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %281

266:                                              ; preds = %263
  store i32 1, i32* %15, align 4
  %267 = load i32*, i32** @map_fd, align 8
  %268 = getelementptr inbounds i32, i32* %267, i64 5
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* @BPF_ANY, align 4
  %271 = call i32 @bpf_map_update_elem(i32 %269, i32* %15, i32* @txmsg_end, i32 %270)
  store i32 %271, i32* %11, align 4
  %272 = load i32, i32* %11, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %280

274:                                              ; preds = %266
  %275 = load i32, i32* @stderr, align 4
  %276 = load i32, i32* %11, align 4
  %277 = load i32, i32* @errno, align 4
  %278 = call i8* @strerror(i32 %277)
  %279 = call i32 (i32, i8*, ...) @fprintf(i32 %275, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.9, i64 0, i64 0), i32 %276, i8* %278)
  br label %547

280:                                              ; preds = %266
  br label %281

281:                                              ; preds = %280, %263
  %282 = load i32, i32* @txmsg_start_push, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %299

284:                                              ; preds = %281
  store i32 2, i32* %15, align 4
  %285 = load i32*, i32** @map_fd, align 8
  %286 = getelementptr inbounds i32, i32* %285, i64 5
  %287 = load i32, i32* %286, align 4
  %288 = load i32, i32* @BPF_ANY, align 4
  %289 = call i32 @bpf_map_update_elem(i32 %287, i32* %15, i32* @txmsg_start_push, i32 %288)
  store i32 %289, i32* %11, align 4
  %290 = load i32, i32* %11, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %298

292:                                              ; preds = %284
  %293 = load i32, i32* @stderr, align 4
  %294 = load i32, i32* %11, align 4
  %295 = load i32, i32* @errno, align 4
  %296 = call i8* @strerror(i32 %295)
  %297 = call i32 (i32, i8*, ...) @fprintf(i32 %293, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.10, i64 0, i64 0), i32 %294, i8* %296)
  br label %547

298:                                              ; preds = %284
  br label %299

299:                                              ; preds = %298, %281
  %300 = load i32, i32* @txmsg_end_push, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %319

302:                                              ; preds = %299
  store i32 3, i32* %15, align 4
  %303 = load i32*, i32** @map_fd, align 8
  %304 = getelementptr inbounds i32, i32* %303, i64 5
  %305 = load i32, i32* %304, align 4
  %306 = load i32, i32* @BPF_ANY, align 4
  %307 = call i32 @bpf_map_update_elem(i32 %305, i32* %15, i32* @txmsg_end_push, i32 %306)
  store i32 %307, i32* %11, align 4
  %308 = load i32, i32* %11, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %318

310:                                              ; preds = %302
  %311 = load i32, i32* @stderr, align 4
  %312 = load i32, i32* @txmsg_end_push, align 4
  %313 = load i32, i32* %15, align 4
  %314 = load i32, i32* %11, align 4
  %315 = load i32, i32* @errno, align 4
  %316 = call i8* @strerror(i32 %315)
  %317 = call i32 (i32, i8*, ...) @fprintf(i32 %311, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.11, i64 0, i64 0), i32 %312, i32 %313, i32 %314, i8* %316)
  br label %547

318:                                              ; preds = %302
  br label %319

319:                                              ; preds = %318, %299
  %320 = load i32, i32* @txmsg_start_pop, align 4
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %339

322:                                              ; preds = %319
  store i32 4, i32* %15, align 4
  %323 = load i32*, i32** @map_fd, align 8
  %324 = getelementptr inbounds i32, i32* %323, i64 5
  %325 = load i32, i32* %324, align 4
  %326 = load i32, i32* @BPF_ANY, align 4
  %327 = call i32 @bpf_map_update_elem(i32 %325, i32* %15, i32* @txmsg_start_pop, i32 %326)
  store i32 %327, i32* %11, align 4
  %328 = load i32, i32* %11, align 4
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %338

330:                                              ; preds = %322
  %331 = load i32, i32* @stderr, align 4
  %332 = load i32, i32* @txmsg_start_pop, align 4
  %333 = load i32, i32* %15, align 4
  %334 = load i32, i32* %11, align 4
  %335 = load i32, i32* @errno, align 4
  %336 = call i8* @strerror(i32 %335)
  %337 = call i32 (i32, i8*, ...) @fprintf(i32 %331, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.12, i64 0, i64 0), i32 %332, i32 %333, i32 %334, i8* %336)
  br label %547

338:                                              ; preds = %322
  br label %345

339:                                              ; preds = %319
  store i32 4, i32* %15, align 4
  %340 = load i32*, i32** @map_fd, align 8
  %341 = getelementptr inbounds i32, i32* %340, i64 5
  %342 = load i32, i32* %341, align 4
  %343 = load i32, i32* @BPF_ANY, align 4
  %344 = call i32 @bpf_map_update_elem(i32 %342, i32* %15, i32* @txmsg_start_pop, i32 %343)
  br label %345

345:                                              ; preds = %339, %338
  %346 = load i32, i32* @txmsg_pop, align 4
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %365

348:                                              ; preds = %345
  store i32 5, i32* %15, align 4
  %349 = load i32*, i32** @map_fd, align 8
  %350 = getelementptr inbounds i32, i32* %349, i64 5
  %351 = load i32, i32* %350, align 4
  %352 = load i32, i32* @BPF_ANY, align 4
  %353 = call i32 @bpf_map_update_elem(i32 %351, i32* %15, i32* @txmsg_pop, i32 %352)
  store i32 %353, i32* %11, align 4
  %354 = load i32, i32* %11, align 4
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %364

356:                                              ; preds = %348
  %357 = load i32, i32* @stderr, align 4
  %358 = load i32, i32* @txmsg_pop, align 4
  %359 = load i32, i32* %15, align 4
  %360 = load i32, i32* %11, align 4
  %361 = load i32, i32* @errno, align 4
  %362 = call i8* @strerror(i32 %361)
  %363 = call i32 (i32, i8*, ...) @fprintf(i32 %357, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.13, i64 0, i64 0), i32 %358, i32 %359, i32 %360, i8* %362)
  br label %547

364:                                              ; preds = %348
  br label %371

365:                                              ; preds = %345
  store i32 5, i32* %15, align 4
  %366 = load i32*, i32** @map_fd, align 8
  %367 = getelementptr inbounds i32, i32* %366, i64 5
  %368 = load i32, i32* %367, align 4
  %369 = load i32, i32* @BPF_ANY, align 4
  %370 = call i32 @bpf_map_update_elem(i32 %368, i32* %15, i32* @txmsg_pop, i32 %369)
  br label %371

371:                                              ; preds = %365, %364
  %372 = load i64, i64* @txmsg_ingress, align 8
  %373 = icmp ne i64 %372, 0
  br i1 %373, label %374, label %432

374:                                              ; preds = %371
  %375 = load i32, i32* @BPF_F_INGRESS, align 4
  store i32 %375, i32* %16, align 4
  store i32 0, i32* %15, align 4
  %376 = load i32*, i32** @map_fd, align 8
  %377 = getelementptr inbounds i32, i32* %376, i64 6
  %378 = load i32, i32* %377, align 4
  %379 = load i32, i32* @BPF_ANY, align 4
  %380 = call i32 @bpf_map_update_elem(i32 %378, i32* %15, i32* %16, i32 %379)
  store i32 %380, i32* %11, align 4
  %381 = load i32, i32* %11, align 4
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %383, label %389

383:                                              ; preds = %374
  %384 = load i32, i32* @stderr, align 4
  %385 = load i32, i32* %11, align 4
  %386 = load i32, i32* @errno, align 4
  %387 = call i8* @strerror(i32 %386)
  %388 = call i32 (i32, i8*, ...) @fprintf(i32 %384, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.14, i64 0, i64 0), i32 %385, i8* %387)
  br label %389

389:                                              ; preds = %383, %374
  store i32 1, i32* %15, align 4
  %390 = load i32*, i32** @map_fd, align 8
  %391 = getelementptr inbounds i32, i32* %390, i64 1
  %392 = load i32, i32* %391, align 4
  %393 = load i32, i32* @BPF_ANY, align 4
  %394 = call i32 @bpf_map_update_elem(i32 %392, i32* %15, i32* @p1, i32 %393)
  store i32 %394, i32* %11, align 4
  %395 = load i32, i32* %11, align 4
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %397, label %403

397:                                              ; preds = %389
  %398 = load i32, i32* @stderr, align 4
  %399 = load i32, i32* %11, align 4
  %400 = load i32, i32* @errno, align 4
  %401 = call i8* @strerror(i32 %400)
  %402 = call i32 (i32, i8*, ...) @fprintf(i32 %398, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.15, i64 0, i64 0), i32 %399, i8* %401)
  br label %403

403:                                              ; preds = %397, %389
  %404 = load i32*, i32** @map_fd, align 8
  %405 = getelementptr inbounds i32, i32* %404, i64 2
  %406 = load i32, i32* %405, align 4
  %407 = load i32, i32* @BPF_ANY, align 4
  %408 = call i32 @bpf_map_update_elem(i32 %406, i32* %15, i32* @p1, i32 %407)
  store i32 %408, i32* %11, align 4
  %409 = load i32, i32* %11, align 4
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %411, label %417

411:                                              ; preds = %403
  %412 = load i32, i32* @stderr, align 4
  %413 = load i32, i32* %11, align 4
  %414 = load i32, i32* @errno, align 4
  %415 = call i8* @strerror(i32 %414)
  %416 = call i32 (i32, i8*, ...) @fprintf(i32 %412, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.16, i64 0, i64 0), i32 %413, i8* %415)
  br label %417

417:                                              ; preds = %411, %403
  store i32 2, i32* %15, align 4
  %418 = load i32*, i32** @map_fd, align 8
  %419 = getelementptr inbounds i32, i32* %418, i64 2
  %420 = load i32, i32* %419, align 4
  %421 = load i32, i32* @BPF_ANY, align 4
  %422 = call i32 @bpf_map_update_elem(i32 %420, i32* %15, i32* @p2, i32 %421)
  store i32 %422, i32* %11, align 4
  %423 = load i32, i32* %11, align 4
  %424 = icmp ne i32 %423, 0
  br i1 %424, label %425, label %431

425:                                              ; preds = %417
  %426 = load i32, i32* @stderr, align 4
  %427 = load i32, i32* %11, align 4
  %428 = load i32, i32* @errno, align 4
  %429 = call i8* @strerror(i32 %428)
  %430 = call i32 (i32, i8*, ...) @fprintf(i32 %426, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.17, i64 0, i64 0), i32 %427, i8* %429)
  br label %431

431:                                              ; preds = %425, %417
  br label %432

432:                                              ; preds = %431, %371
  %433 = load i64, i64* @txmsg_skb, align 8
  %434 = icmp ne i64 %433, 0
  br i1 %434, label %435, label %478

435:                                              ; preds = %432
  %436 = load i32, i32* %7, align 4
  %437 = load i32, i32* @SENDMSG, align 4
  %438 = icmp eq i32 %436, %437
  br i1 %438, label %443, label %439

439:                                              ; preds = %435
  %440 = load i32, i32* %7, align 4
  %441 = load i32, i32* @SENDPAGE, align 4
  %442 = icmp eq i32 %440, %441
  br i1 %442, label %443, label %445

443:                                              ; preds = %439, %435
  %444 = load i32, i32* @p2, align 4
  br label %447

445:                                              ; preds = %439
  %446 = load i32, i32* @p1, align 4
  br label %447

447:                                              ; preds = %445, %443
  %448 = phi i32 [ %444, %443 ], [ %446, %445 ]
  store i32 %448, i32* %17, align 4
  %449 = load i32, i32* @BPF_F_INGRESS, align 4
  store i32 %449, i32* %18, align 4
  store i32 0, i32* %15, align 4
  %450 = load i32*, i32** @map_fd, align 8
  %451 = getelementptr inbounds i32, i32* %450, i64 7
  %452 = load i32, i32* %451, align 4
  %453 = load i32, i32* @BPF_ANY, align 4
  %454 = call i32 @bpf_map_update_elem(i32 %452, i32* %15, i32* %18, i32 %453)
  store i32 %454, i32* %11, align 4
  %455 = load i32, i32* %11, align 4
  %456 = icmp ne i32 %455, 0
  br i1 %456, label %457, label %463

457:                                              ; preds = %447
  %458 = load i32, i32* @stderr, align 4
  %459 = load i32, i32* %11, align 4
  %460 = load i32, i32* @errno, align 4
  %461 = call i8* @strerror(i32 %460)
  %462 = call i32 (i32, i8*, ...) @fprintf(i32 %458, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.14, i64 0, i64 0), i32 %459, i8* %461)
  br label %463

463:                                              ; preds = %457, %447
  store i32 3, i32* %15, align 4
  %464 = load i32*, i32** @map_fd, align 8
  %465 = getelementptr inbounds i32, i32* %464, i64 0
  %466 = load i32, i32* %465, align 4
  %467 = load i32, i32* @BPF_ANY, align 4
  %468 = call i32 @bpf_map_update_elem(i32 %466, i32* %15, i32* %17, i32 %467)
  store i32 %468, i32* %11, align 4
  %469 = load i32, i32* %11, align 4
  %470 = icmp ne i32 %469, 0
  br i1 %470, label %471, label %477

471:                                              ; preds = %463
  %472 = load i32, i32* @stderr, align 4
  %473 = load i32, i32* %11, align 4
  %474 = load i32, i32* @errno, align 4
  %475 = call i8* @strerror(i32 %474)
  %476 = call i32 (i32, i8*, ...) @fprintf(i32 %472, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.18, i64 0, i64 0), i32 %473, i8* %475)
  br label %477

477:                                              ; preds = %471, %463
  br label %478

478:                                              ; preds = %477, %432
  br label %479

479:                                              ; preds = %478, %153
  %480 = load i64, i64* @txmsg_drop, align 8
  %481 = icmp ne i64 %480, 0
  br i1 %481, label %482, label %485

482:                                              ; preds = %479
  %483 = load %struct.sockmap_options*, %struct.sockmap_options** %5, align 8
  %484 = getelementptr inbounds %struct.sockmap_options, %struct.sockmap_options* %483, i32 0, i32 0
  store i32 1, i32* %484, align 4
  br label %485

485:                                              ; preds = %482, %479
  %486 = load i32, i32* %7, align 4
  %487 = load i32, i32* @PING_PONG, align 4
  %488 = icmp eq i32 %486, %487
  br i1 %488, label %489, label %495

489:                                              ; preds = %485
  %490 = load %struct.sockmap_options*, %struct.sockmap_options** %5, align 8
  %491 = getelementptr inbounds %struct.sockmap_options, %struct.sockmap_options* %490, i32 0, i32 3
  %492 = load i32, i32* %491, align 4
  %493 = load %struct.sockmap_options*, %struct.sockmap_options** %5, align 8
  %494 = call i32 @forever_ping_pong(i32 %492, %struct.sockmap_options* %493)
  store i32 %494, i32* %11, align 4
  br label %546

495:                                              ; preds = %485
  %496 = load i32, i32* %7, align 4
  %497 = load i32, i32* @SENDMSG, align 4
  %498 = icmp eq i32 %496, %497
  br i1 %498, label %499, label %506

499:                                              ; preds = %495
  %500 = load %struct.sockmap_options*, %struct.sockmap_options** %5, align 8
  %501 = getelementptr inbounds %struct.sockmap_options, %struct.sockmap_options* %500, i32 0, i32 1
  store i32 0, i32* %501, align 4
  %502 = load %struct.sockmap_options*, %struct.sockmap_options** %5, align 8
  %503 = getelementptr inbounds %struct.sockmap_options, %struct.sockmap_options* %502, i32 0, i32 2
  store i32 0, i32* %503, align 4
  %504 = load %struct.sockmap_options*, %struct.sockmap_options** %5, align 8
  %505 = call i32 @sendmsg_test(%struct.sockmap_options* %504)
  store i32 %505, i32* %11, align 4
  br label %545

506:                                              ; preds = %495
  %507 = load i32, i32* %7, align 4
  %508 = load i32, i32* @SENDPAGE, align 4
  %509 = icmp eq i32 %507, %508
  br i1 %509, label %510, label %517

510:                                              ; preds = %506
  %511 = load %struct.sockmap_options*, %struct.sockmap_options** %5, align 8
  %512 = getelementptr inbounds %struct.sockmap_options, %struct.sockmap_options* %511, i32 0, i32 1
  store i32 0, i32* %512, align 4
  %513 = load %struct.sockmap_options*, %struct.sockmap_options** %5, align 8
  %514 = getelementptr inbounds %struct.sockmap_options, %struct.sockmap_options* %513, i32 0, i32 2
  store i32 1, i32* %514, align 4
  %515 = load %struct.sockmap_options*, %struct.sockmap_options** %5, align 8
  %516 = call i32 @sendmsg_test(%struct.sockmap_options* %515)
  store i32 %516, i32* %11, align 4
  br label %544

517:                                              ; preds = %506
  %518 = load i32, i32* %7, align 4
  %519 = load i32, i32* @BASE, align 4
  %520 = icmp eq i32 %518, %519
  br i1 %520, label %521, label %528

521:                                              ; preds = %517
  %522 = load %struct.sockmap_options*, %struct.sockmap_options** %5, align 8
  %523 = getelementptr inbounds %struct.sockmap_options, %struct.sockmap_options* %522, i32 0, i32 1
  store i32 1, i32* %523, align 4
  %524 = load %struct.sockmap_options*, %struct.sockmap_options** %5, align 8
  %525 = getelementptr inbounds %struct.sockmap_options, %struct.sockmap_options* %524, i32 0, i32 2
  store i32 0, i32* %525, align 4
  %526 = load %struct.sockmap_options*, %struct.sockmap_options** %5, align 8
  %527 = call i32 @sendmsg_test(%struct.sockmap_options* %526)
  store i32 %527, i32* %11, align 4
  br label %543

528:                                              ; preds = %517
  %529 = load i32, i32* %7, align 4
  %530 = load i32, i32* @BASE_SENDPAGE, align 4
  %531 = icmp eq i32 %529, %530
  br i1 %531, label %532, label %539

532:                                              ; preds = %528
  %533 = load %struct.sockmap_options*, %struct.sockmap_options** %5, align 8
  %534 = getelementptr inbounds %struct.sockmap_options, %struct.sockmap_options* %533, i32 0, i32 1
  store i32 1, i32* %534, align 4
  %535 = load %struct.sockmap_options*, %struct.sockmap_options** %5, align 8
  %536 = getelementptr inbounds %struct.sockmap_options, %struct.sockmap_options* %535, i32 0, i32 2
  store i32 1, i32* %536, align 4
  %537 = load %struct.sockmap_options*, %struct.sockmap_options** %5, align 8
  %538 = call i32 @sendmsg_test(%struct.sockmap_options* %537)
  store i32 %538, i32* %11, align 4
  br label %542

539:                                              ; preds = %528
  %540 = load i32, i32* @stderr, align 4
  %541 = call i32 (i32, i8*, ...) @fprintf(i32 %540, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0))
  br label %542

542:                                              ; preds = %539, %532
  br label %543

543:                                              ; preds = %542, %521
  br label %544

544:                                              ; preds = %543, %510
  br label %545

545:                                              ; preds = %544, %499
  br label %546

546:                                              ; preds = %545, %489
  br label %547

547:                                              ; preds = %546, %356, %330, %310, %292, %274, %256, %238, %220, %203, %179, %165, %93
  %548 = load i32*, i32** @prog_fd, align 8
  %549 = getelementptr inbounds i32, i32* %548, i64 2
  %550 = load i32, i32* %549, align 4
  %551 = load i32, i32* %6, align 4
  %552 = load i32, i32* @BPF_CGROUP_SOCK_OPS, align 4
  %553 = call i32 @bpf_prog_detach2(i32 %550, i32 %551, i32 %552)
  %554 = load i32*, i32** @prog_fd, align 8
  %555 = getelementptr inbounds i32, i32* %554, i64 0
  %556 = load i32, i32* %555, align 4
  %557 = load i32*, i32** @map_fd, align 8
  %558 = getelementptr inbounds i32, i32* %557, i64 0
  %559 = load i32, i32* %558, align 4
  %560 = load i32, i32* @BPF_SK_SKB_STREAM_PARSER, align 4
  %561 = call i32 @bpf_prog_detach2(i32 %556, i32 %559, i32 %560)
  %562 = load i32*, i32** @prog_fd, align 8
  %563 = getelementptr inbounds i32, i32* %562, i64 1
  %564 = load i32, i32* %563, align 4
  %565 = load i32*, i32** @map_fd, align 8
  %566 = getelementptr inbounds i32, i32* %565, i64 0
  %567 = load i32, i32* %566, align 4
  %568 = load i32, i32* @BPF_SK_SKB_STREAM_VERDICT, align 4
  %569 = call i32 @bpf_prog_detach2(i32 %564, i32 %567, i32 %568)
  %570 = load i32, i32* %12, align 4
  %571 = icmp sge i32 %570, 0
  br i1 %571, label %572, label %579

572:                                              ; preds = %547
  %573 = load i32, i32* %12, align 4
  %574 = load i32*, i32** @map_fd, align 8
  %575 = getelementptr inbounds i32, i32* %574, i64 1
  %576 = load i32, i32* %575, align 4
  %577 = load i32, i32* @BPF_SK_MSG_VERDICT, align 4
  %578 = call i32 @bpf_prog_detach2(i32 %573, i32 %576, i32 %577)
  br label %579

579:                                              ; preds = %572, %547
  store i32 0, i32* %8, align 4
  br label %580

580:                                              ; preds = %609, %579
  %581 = load i32, i32* %8, align 4
  %582 = icmp slt i32 %581, 8
  br i1 %582, label %583, label %612

583:                                              ; preds = %580
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  %584 = load i32*, i32** @map_fd, align 8
  %585 = load i32, i32* %8, align 4
  %586 = sext i32 %585 to i64
  %587 = getelementptr inbounds i32, i32* %584, i64 %586
  %588 = load i32, i32* %587, align 4
  %589 = load i32, i32* @BPF_ANY, align 4
  %590 = call i32 @bpf_map_update_elem(i32 %588, i32* %9, i32* %13, i32 %589)
  br label %591

591:                                              ; preds = %599, %583
  %592 = load i32*, i32** @map_fd, align 8
  %593 = load i32, i32* %8, align 4
  %594 = sext i32 %593 to i64
  %595 = getelementptr inbounds i32, i32* %592, i64 %594
  %596 = load i32, i32* %595, align 4
  %597 = call i64 @bpf_map_get_next_key(i32 %596, i32* %9, i32* %10)
  %598 = icmp eq i64 %597, 0
  br i1 %598, label %599, label %608

599:                                              ; preds = %591
  %600 = load i32*, i32** @map_fd, align 8
  %601 = load i32, i32* %8, align 4
  %602 = sext i32 %601 to i64
  %603 = getelementptr inbounds i32, i32* %600, i64 %602
  %604 = load i32, i32* %603, align 4
  %605 = load i32, i32* @BPF_ANY, align 4
  %606 = call i32 @bpf_map_update_elem(i32 %604, i32* %9, i32* %13, i32 %605)
  %607 = load i32, i32* %10, align 4
  store i32 %607, i32* %9, align 4
  br label %591

608:                                              ; preds = %591
  br label %609

609:                                              ; preds = %608
  %610 = load i32, i32* %8, align 4
  %611 = add nsw i32 %610, 1
  store i32 %611, i32* %8, align 4
  br label %580

612:                                              ; preds = %580
  %613 = load i32, i32* @s1, align 4
  %614 = call i32 @close(i32 %613)
  %615 = load i32, i32* @s2, align 4
  %616 = call i32 @close(i32 %615)
  %617 = load i32, i32* @p1, align 4
  %618 = call i32 @close(i32 %617)
  %619 = load i32, i32* @p2, align 4
  %620 = call i32 @close(i32 %619)
  %621 = load i32, i32* @c1, align 4
  %622 = call i32 @close(i32 %621)
  %623 = load i32, i32* @c2, align 4
  %624 = call i32 @close(i32 %623)
  %625 = load i32, i32* %11, align 4
  store i32 %625, i32* %4, align 4
  br label %626

626:                                              ; preds = %612, %78, %62, %38
  %627 = load i32, i32* %4, align 4
  ret i32 %627
}

declare dso_local i32 @bpf_prog_attach(i32, i32, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @sockmap_init_sockets(i32) #1

declare dso_local i32 @bpf_map_update_elem(i32, i32*, i32*, i32) #1

declare dso_local i32 @forever_ping_pong(i32, %struct.sockmap_options*) #1

declare dso_local i32 @sendmsg_test(%struct.sockmap_options*) #1

declare dso_local i32 @bpf_prog_detach2(i32, i32, i32) #1

declare dso_local i64 @bpf_map_get_next_key(i32, i32*, i32*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
