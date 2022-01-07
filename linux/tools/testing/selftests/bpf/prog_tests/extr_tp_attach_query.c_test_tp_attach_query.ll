; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/prog_tests/extr_tp_attach_query.c_test_tp_attach_query.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/prog_tests/extr_tp_attach_query.c_test_tp_attach_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event_query_bpf = type { i32, i64, i64* }
%struct.perf_event_attr = type { i32, i32, i32, i32, i32 }
%struct.bpf_object = type { i32 }
%struct.bpf_prog_info = type { i64, i64, i64, i64 }

@.str = private unnamed_addr constant [20 x i8] c"./test_tracepoint.o\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"/sys/kernel/debug/tracing/events/sched/sched_switch/id\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"err %d errno %d\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"bytes %d errno %d\0A\00", align 1
@PERF_TYPE_TRACEPOINT = common dso_local global i32 0, align 4
@PERF_SAMPLE_RAW = common dso_local global i32 0, align 4
@PERF_SAMPLE_CALLCHAIN = common dso_local global i32 0, align 4
@BPF_PROG_TYPE_TRACEPOINT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"prog_load\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"bpf_obj_get_info_by_fd\00", align 1
@__NR_perf_event_open = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [16 x i8] c"perf_event_open\00", align 1
@PERF_EVENT_IOC_ENABLE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [22 x i8] c"perf_event_ioc_enable\00", align 1
@PERF_EVENT_IOC_QUERY_BPF = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [25 x i8] c"perf_event_ioc_query_bpf\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"err %d errno %d query->prog_cnt %u\0A\00", align 1
@PERF_EVENT_IOC_SET_BPF = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [23 x i8] c"perf_event_ioc_set_bpf\00", align 1
@EFAULT = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [39 x i8] c"#%d saved_prog_id %x query prog_id %x\0A\00", align 1
@PERF_EVENT_IOC_DISABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_tp_attach_query() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [3 x i32], align 4
  %8 = alloca [3 x i32], align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca [3 x i64], align 16
  %12 = alloca i8*, align 8
  %13 = alloca %struct.perf_event_query_bpf*, align 8
  %14 = alloca %struct.perf_event_attr, align 4
  %15 = alloca [3 x %struct.bpf_object*], align 16
  %16 = alloca %struct.bpf_prog_info, align 8
  %17 = alloca [256 x i8], align 16
  store i32 3, i32* %1, align 4
  store i64 0, i64* %9, align 8
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  %18 = bitcast %struct.perf_event_attr* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %18, i8 0, i64 20, i1 false)
  store i32 0, i32* %2, align 4
  br label %19

19:                                               ; preds = %26, %0
  %20 = load i32, i32* %2, align 4
  %21 = icmp slt i32 %20, 3
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = load i32, i32* %2, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [3 x %struct.bpf_object*], [3 x %struct.bpf_object*]* %15, i64 0, i64 %24
  store %struct.bpf_object* null, %struct.bpf_object** %25, align 8
  br label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %2, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %2, align 4
  br label %19

29:                                               ; preds = %19
  %30 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %31 = call i32 @snprintf(i8* %30, i32 256, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %32 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %33 = load i32, i32* @O_RDONLY, align 4
  %34 = call i32 @open(i8* %32, i32 %33, i32 0)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp slt i32 %35, 0
  %37 = zext i1 %36 to i32
  %38 = load i32, i32* %5, align 4
  %39 = load i64, i64* @errno, align 8
  %40 = call i64 (i32, i8*, i8*, i32, i64, ...) @CHECK(i32 %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %38, i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %29
  br label %387

43:                                               ; preds = %29
  %44 = load i32, i32* %5, align 4
  %45 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %46 = call i32 @read(i32 %44, i8* %45, i32 256)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @close(i32 %47)
  %49 = load i32, i32* %4, align 4
  %50 = icmp sle i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %43
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = icmp uge i64 %53, 256
  br label %55

55:                                               ; preds = %51, %43
  %56 = phi i1 [ true, %43 ], [ %54, %51 ]
  %57 = zext i1 %56 to i32
  %58 = load i32, i32* %4, align 4
  %59 = load i64, i64* @errno, align 8
  %60 = call i64 (i32, i8*, i8*, i32, i64, ...) @CHECK(i32 %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %58, i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  br label %387

63:                                               ; preds = %55
  %64 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %65 = call i32 @strtol(i8* %64, i32* null, i32 0)
  %66 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %14, i32 0, i32 4
  store i32 %65, i32* %66, align 4
  %67 = load i32, i32* @PERF_TYPE_TRACEPOINT, align 4
  %68 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %14, i32 0, i32 3
  store i32 %67, i32* %68, align 4
  %69 = load i32, i32* @PERF_SAMPLE_RAW, align 4
  %70 = load i32, i32* @PERF_SAMPLE_CALLCHAIN, align 4
  %71 = or i32 %69, %70
  %72 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %14, i32 0, i32 0
  store i32 %71, i32* %72, align 4
  %73 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %14, i32 0, i32 1
  store i32 1, i32* %73, align 4
  %74 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %14, i32 0, i32 2
  store i32 1, i32* %74, align 4
  %75 = call %struct.perf_event_query_bpf* @malloc(i32 48)
  store %struct.perf_event_query_bpf* %75, %struct.perf_event_query_bpf** %13, align 8
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %354, %63
  %77 = load i32, i32* %2, align 4
  %78 = icmp slt i32 %77, 3
  br i1 %78, label %79, label %357

79:                                               ; preds = %76
  %80 = load i8*, i8** %12, align 8
  %81 = load i32, i32* @BPF_PROG_TYPE_TRACEPOINT, align 4
  %82 = load i32, i32* %2, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [3 x %struct.bpf_object*], [3 x %struct.bpf_object*]* %15, i64 0, i64 %83
  %85 = load i32, i32* %2, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 %86
  %88 = call i32 @bpf_prog_load(i8* %80, i32 %81, %struct.bpf_object** %84, i32* %87)
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* %6, align 4
  %91 = load i64, i64* @errno, align 8
  %92 = call i64 (i32, i8*, i8*, i32, i64, ...) @CHECK(i32 %89, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %90, i64 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %79
  br label %375

95:                                               ; preds = %79
  %96 = call i32 @bzero(%struct.bpf_prog_info* %16, i32 32)
  %97 = getelementptr inbounds %struct.bpf_prog_info, %struct.bpf_prog_info* %16, i32 0, i32 3
  store i64 0, i64* %97, align 8
  %98 = getelementptr inbounds %struct.bpf_prog_info, %struct.bpf_prog_info* %16, i32 0, i32 2
  store i64 0, i64* %98, align 8
  %99 = getelementptr inbounds %struct.bpf_prog_info, %struct.bpf_prog_info* %16, i32 0, i32 1
  store i64 0, i64* %99, align 8
  store i64 32, i64* %10, align 8
  %100 = load i32, i32* %2, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @bpf_obj_get_info_by_fd(i32 %103, %struct.bpf_prog_info* %16, i64* %10)
  store i32 %104, i32* %6, align 4
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = load i64, i64* @errno, align 8
  %108 = call i64 (i32, i8*, i8*, i32, i64, ...) @CHECK(i32 %105, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %106, i64 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %95
  br label %375

111:                                              ; preds = %95
  %112 = getelementptr inbounds %struct.bpf_prog_info, %struct.bpf_prog_info* %16, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i32, i32* %2, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 %115
  store i64 %113, i64* %116, align 8
  %117 = load i32, i32* @__NR_perf_event_open, align 4
  %118 = call i32 @syscall(i32 %117, %struct.perf_event_attr* %14, i32 -1, i32 0, i32 -1, i32 0)
  %119 = load i32, i32* %2, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 %120
  store i32 %118, i32* %121, align 4
  %122 = load i32, i32* %2, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = icmp slt i32 %125, 0
  %127 = zext i1 %126 to i32
  %128 = load i32, i32* %2, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = load i64, i64* @errno, align 8
  %133 = call i64 (i32, i8*, i8*, i32, i64, ...) @CHECK(i32 %127, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %131, i64 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %111
  br label %369

136:                                              ; preds = %111
  %137 = load i32, i32* %2, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @PERF_EVENT_IOC_ENABLE, align 4
  %142 = call i32 (i32, i32, ...) @ioctl(i32 %140, i32 %141, i32 0)
  store i32 %142, i32* %6, align 4
  %143 = load i32, i32* %6, align 4
  %144 = load i32, i32* %6, align 4
  %145 = load i64, i64* @errno, align 8
  %146 = call i64 (i32, i8*, i8*, i32, i64, ...) @CHECK(i32 %143, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %144, i64 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %136
  br label %362

149:                                              ; preds = %136
  %150 = load i32, i32* %2, align 4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %181

152:                                              ; preds = %149
  %153 = load %struct.perf_event_query_bpf*, %struct.perf_event_query_bpf** %13, align 8
  %154 = getelementptr inbounds %struct.perf_event_query_bpf, %struct.perf_event_query_bpf* %153, i32 0, i32 0
  store i32 3, i32* %154, align 8
  %155 = load i32, i32* %2, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @PERF_EVENT_IOC_QUERY_BPF, align 4
  %160 = load %struct.perf_event_query_bpf*, %struct.perf_event_query_bpf** %13, align 8
  %161 = call i32 (i32, i32, ...) @ioctl(i32 %158, i32 %159, %struct.perf_event_query_bpf* %160)
  store i32 %161, i32* %6, align 4
  %162 = load i32, i32* %6, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %169, label %164

164:                                              ; preds = %152
  %165 = load %struct.perf_event_query_bpf*, %struct.perf_event_query_bpf** %13, align 8
  %166 = getelementptr inbounds %struct.perf_event_query_bpf, %struct.perf_event_query_bpf* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br label %169

169:                                              ; preds = %164, %152
  %170 = phi i1 [ true, %152 ], [ %168, %164 ]
  %171 = zext i1 %170 to i32
  %172 = load i32, i32* %6, align 4
  %173 = load i64, i64* @errno, align 8
  %174 = load %struct.perf_event_query_bpf*, %struct.perf_event_query_bpf** %13, align 8
  %175 = getelementptr inbounds %struct.perf_event_query_bpf, %struct.perf_event_query_bpf* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = call i64 (i32, i8*, i8*, i32, i64, ...) @CHECK(i32 %171, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i32 %172, i64 %173, i64 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %169
  br label %362

180:                                              ; preds = %169
  br label %181

181:                                              ; preds = %180, %149
  %182 = load i32, i32* %2, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @PERF_EVENT_IOC_SET_BPF, align 4
  %187 = load i32, i32* %2, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = call i32 (i32, i32, ...) @ioctl(i32 %185, i32 %186, i32 %190)
  store i32 %191, i32* %6, align 4
  %192 = load i32, i32* %6, align 4
  %193 = load i32, i32* %6, align 4
  %194 = load i64, i64* @errno, align 8
  %195 = call i64 (i32, i8*, i8*, i32, i64, ...) @CHECK(i32 %192, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %193, i64 %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %181
  br label %362

198:                                              ; preds = %181
  %199 = load i32, i32* %2, align 4
  %200 = icmp eq i32 %199, 1
  br i1 %200, label %201, label %283

201:                                              ; preds = %198
  %202 = load %struct.perf_event_query_bpf*, %struct.perf_event_query_bpf** %13, align 8
  %203 = getelementptr inbounds %struct.perf_event_query_bpf, %struct.perf_event_query_bpf* %202, i32 0, i32 0
  store i32 0, i32* %203, align 8
  %204 = load i32, i32* %2, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* @PERF_EVENT_IOC_QUERY_BPF, align 4
  %209 = load %struct.perf_event_query_bpf*, %struct.perf_event_query_bpf** %13, align 8
  %210 = call i32 (i32, i32, ...) @ioctl(i32 %207, i32 %208, %struct.perf_event_query_bpf* %209)
  store i32 %210, i32* %6, align 4
  %211 = load i32, i32* %6, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %218, label %213

213:                                              ; preds = %201
  %214 = load %struct.perf_event_query_bpf*, %struct.perf_event_query_bpf** %13, align 8
  %215 = getelementptr inbounds %struct.perf_event_query_bpf, %struct.perf_event_query_bpf* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = icmp ne i64 %216, 2
  br label %218

218:                                              ; preds = %213, %201
  %219 = phi i1 [ true, %201 ], [ %217, %213 ]
  %220 = zext i1 %219 to i32
  %221 = load i32, i32* %6, align 4
  %222 = load i64, i64* @errno, align 8
  %223 = load %struct.perf_event_query_bpf*, %struct.perf_event_query_bpf** %13, align 8
  %224 = getelementptr inbounds %struct.perf_event_query_bpf, %struct.perf_event_query_bpf* %223, i32 0, i32 1
  %225 = load i64, i64* %224, align 8
  %226 = call i64 (i32, i8*, i8*, i32, i64, ...) @CHECK(i32 %220, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i32 %221, i64 %222, i64 %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %218
  br label %362

229:                                              ; preds = %218
  %230 = load i32, i32* %2, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 %231
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* @PERF_EVENT_IOC_QUERY_BPF, align 4
  %235 = call i32 (i32, i32, ...) @ioctl(i32 %233, i32 %234, %struct.perf_event_query_bpf* inttoptr (i64 1 to %struct.perf_event_query_bpf*))
  store i32 %235, i32* %6, align 4
  %236 = load i32, i32* %6, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %242

238:                                              ; preds = %229
  %239 = load i64, i64* @errno, align 8
  %240 = load i64, i64* @EFAULT, align 8
  %241 = icmp ne i64 %239, %240
  br label %242

242:                                              ; preds = %238, %229
  %243 = phi i1 [ true, %229 ], [ %241, %238 ]
  %244 = zext i1 %243 to i32
  %245 = load i32, i32* %6, align 4
  %246 = load i64, i64* @errno, align 8
  %247 = call i64 (i32, i8*, i8*, i32, i64, ...) @CHECK(i32 %244, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %245, i64 %246)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %250

249:                                              ; preds = %242
  br label %362

250:                                              ; preds = %242
  %251 = load %struct.perf_event_query_bpf*, %struct.perf_event_query_bpf** %13, align 8
  %252 = getelementptr inbounds %struct.perf_event_query_bpf, %struct.perf_event_query_bpf* %251, i32 0, i32 0
  store i32 1, i32* %252, align 8
  %253 = load i32, i32* %2, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 %254
  %256 = load i32, i32* %255, align 4
  %257 = load i32, i32* @PERF_EVENT_IOC_QUERY_BPF, align 4
  %258 = load %struct.perf_event_query_bpf*, %struct.perf_event_query_bpf** %13, align 8
  %259 = call i32 (i32, i32, ...) @ioctl(i32 %256, i32 %257, %struct.perf_event_query_bpf* %258)
  store i32 %259, i32* %6, align 4
  %260 = load i32, i32* %6, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %271

262:                                              ; preds = %250
  %263 = load i64, i64* @errno, align 8
  %264 = load i64, i64* @ENOSPC, align 8
  %265 = icmp ne i64 %263, %264
  br i1 %265, label %271, label %266

266:                                              ; preds = %262
  %267 = load %struct.perf_event_query_bpf*, %struct.perf_event_query_bpf** %13, align 8
  %268 = getelementptr inbounds %struct.perf_event_query_bpf, %struct.perf_event_query_bpf* %267, i32 0, i32 1
  %269 = load i64, i64* %268, align 8
  %270 = icmp ne i64 %269, 2
  br label %271

271:                                              ; preds = %266, %262, %250
  %272 = phi i1 [ true, %262 ], [ true, %250 ], [ %270, %266 ]
  %273 = zext i1 %272 to i32
  %274 = load i32, i32* %6, align 4
  %275 = load i64, i64* @errno, align 8
  %276 = load %struct.perf_event_query_bpf*, %struct.perf_event_query_bpf** %13, align 8
  %277 = getelementptr inbounds %struct.perf_event_query_bpf, %struct.perf_event_query_bpf* %276, i32 0, i32 1
  %278 = load i64, i64* %277, align 8
  %279 = call i64 (i32, i8*, i8*, i32, i64, ...) @CHECK(i32 %273, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i32 %274, i64 %275, i64 %278)
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %282

281:                                              ; preds = %271
  br label %362

282:                                              ; preds = %271
  br label %283

283:                                              ; preds = %282, %198
  %284 = load %struct.perf_event_query_bpf*, %struct.perf_event_query_bpf** %13, align 8
  %285 = getelementptr inbounds %struct.perf_event_query_bpf, %struct.perf_event_query_bpf* %284, i32 0, i32 0
  store i32 3, i32* %285, align 8
  %286 = load i32, i32* %2, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 %287
  %289 = load i32, i32* %288, align 4
  %290 = load i32, i32* @PERF_EVENT_IOC_QUERY_BPF, align 4
  %291 = load %struct.perf_event_query_bpf*, %struct.perf_event_query_bpf** %13, align 8
  %292 = call i32 (i32, i32, ...) @ioctl(i32 %289, i32 %290, %struct.perf_event_query_bpf* %291)
  store i32 %292, i32* %6, align 4
  %293 = load i32, i32* %6, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %303, label %295

295:                                              ; preds = %283
  %296 = load %struct.perf_event_query_bpf*, %struct.perf_event_query_bpf** %13, align 8
  %297 = getelementptr inbounds %struct.perf_event_query_bpf, %struct.perf_event_query_bpf* %296, i32 0, i32 1
  %298 = load i64, i64* %297, align 8
  %299 = load i32, i32* %2, align 4
  %300 = add nsw i32 %299, 1
  %301 = sext i32 %300 to i64
  %302 = icmp ne i64 %298, %301
  br label %303

303:                                              ; preds = %295, %283
  %304 = phi i1 [ true, %283 ], [ %302, %295 ]
  %305 = zext i1 %304 to i32
  %306 = load i32, i32* %6, align 4
  %307 = load i64, i64* @errno, align 8
  %308 = load %struct.perf_event_query_bpf*, %struct.perf_event_query_bpf** %13, align 8
  %309 = getelementptr inbounds %struct.perf_event_query_bpf, %struct.perf_event_query_bpf* %308, i32 0, i32 1
  %310 = load i64, i64* %309, align 8
  %311 = call i64 (i32, i8*, i8*, i32, i64, ...) @CHECK(i32 %305, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i32 %306, i64 %307, i64 %310)
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %314

313:                                              ; preds = %303
  br label %362

314:                                              ; preds = %303
  store i32 0, i32* %3, align 4
  br label %315

315:                                              ; preds = %350, %314
  %316 = load i32, i32* %3, align 4
  %317 = load i32, i32* %2, align 4
  %318 = add nsw i32 %317, 1
  %319 = icmp slt i32 %316, %318
  br i1 %319, label %320, label %353

320:                                              ; preds = %315
  %321 = load i32, i32* %3, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 %322
  %324 = load i64, i64* %323, align 8
  %325 = load %struct.perf_event_query_bpf*, %struct.perf_event_query_bpf** %13, align 8
  %326 = getelementptr inbounds %struct.perf_event_query_bpf, %struct.perf_event_query_bpf* %325, i32 0, i32 2
  %327 = load i64*, i64** %326, align 8
  %328 = load i32, i32* %3, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i64, i64* %327, i64 %329
  %331 = load i64, i64* %330, align 8
  %332 = icmp ne i64 %324, %331
  %333 = zext i1 %332 to i32
  %334 = load i32, i32* %3, align 4
  %335 = load i32, i32* %3, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 %336
  %338 = load i64, i64* %337, align 8
  %339 = load %struct.perf_event_query_bpf*, %struct.perf_event_query_bpf** %13, align 8
  %340 = getelementptr inbounds %struct.perf_event_query_bpf, %struct.perf_event_query_bpf* %339, i32 0, i32 2
  %341 = load i64*, i64** %340, align 8
  %342 = load i32, i32* %3, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i64, i64* %341, i64 %343
  %345 = load i64, i64* %344, align 8
  %346 = call i64 (i32, i8*, i8*, i32, i64, ...) @CHECK(i32 %333, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i64 0, i64 0), i32 %334, i64 %338, i64 %345)
  %347 = icmp ne i64 %346, 0
  br i1 %347, label %348, label %349

348:                                              ; preds = %320
  br label %362

349:                                              ; preds = %320
  br label %350

350:                                              ; preds = %349
  %351 = load i32, i32* %3, align 4
  %352 = add nsw i32 %351, 1
  store i32 %352, i32* %3, align 4
  br label %315

353:                                              ; preds = %315
  br label %354

354:                                              ; preds = %353
  %355 = load i32, i32* %2, align 4
  %356 = add nsw i32 %355, 1
  store i32 %356, i32* %2, align 4
  br label %76

357:                                              ; preds = %76
  store i32 2, i32* %2, align 4
  br label %358

358:                                              ; preds = %381, %357
  %359 = load i32, i32* %2, align 4
  %360 = icmp sge i32 %359, 0
  br i1 %360, label %361, label %384

361:                                              ; preds = %358
  br label %362

362:                                              ; preds = %361, %348, %313, %281, %249, %228, %197, %179, %148
  %363 = load i32, i32* %2, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 %364
  %366 = load i32, i32* %365, align 4
  %367 = load i32, i32* @PERF_EVENT_IOC_DISABLE, align 4
  %368 = call i32 (i32, i32, ...) @ioctl(i32 %366, i32 %367)
  br label %369

369:                                              ; preds = %362, %135
  %370 = load i32, i32* %2, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 %371
  %373 = load i32, i32* %372, align 4
  %374 = call i32 @close(i32 %373)
  br label %375

375:                                              ; preds = %369, %110, %94
  %376 = load i32, i32* %2, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds [3 x %struct.bpf_object*], [3 x %struct.bpf_object*]* %15, i64 0, i64 %377
  %379 = load %struct.bpf_object*, %struct.bpf_object** %378, align 8
  %380 = call i32 @bpf_object__close(%struct.bpf_object* %379)
  br label %381

381:                                              ; preds = %375
  %382 = load i32, i32* %2, align 4
  %383 = add nsw i32 %382, -1
  store i32 %383, i32* %2, align 4
  br label %358

384:                                              ; preds = %358
  %385 = load %struct.perf_event_query_bpf*, %struct.perf_event_query_bpf** %13, align 8
  %386 = call i32 @free(%struct.perf_event_query_bpf* %385)
  br label %387

387:                                              ; preds = %384, %62, %42
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @snprintf(i8*, i32, i8*) #2

declare dso_local i32 @open(i8*, i32, i32) #2

declare dso_local i64 @CHECK(i32, i8*, i8*, i32, i64, ...) #2

declare dso_local i32 @read(i32, i8*, i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @strtol(i8*, i32*, i32) #2

declare dso_local %struct.perf_event_query_bpf* @malloc(i32) #2

declare dso_local i32 @bpf_prog_load(i8*, i32, %struct.bpf_object**, i32*) #2

declare dso_local i32 @bzero(%struct.bpf_prog_info*, i32) #2

declare dso_local i32 @bpf_obj_get_info_by_fd(i32, %struct.bpf_prog_info*, i64*) #2

declare dso_local i32 @syscall(i32, %struct.perf_event_attr*, i32, i32, i32, i32) #2

declare dso_local i32 @ioctl(i32, i32, ...) #2

declare dso_local i32 @bpf_object__close(%struct.bpf_object*) #2

declare dso_local i32 @free(%struct.perf_event_query_bpf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
