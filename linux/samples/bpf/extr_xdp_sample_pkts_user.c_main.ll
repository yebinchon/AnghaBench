; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_sample_pkts_user.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_sample_pkts_user.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rlimit = type { i32, i32 }
%struct.bpf_prog_load_attr = type { i8*, i32 }
%struct.perf_buffer_opts = type { i32 }
%struct.bpf_object = type { i32 }
%struct.bpf_map = type { i32 }

@RLIM_INFINITY = common dso_local global i32 0, align 4
@BPF_PROG_TYPE_XDP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"F\00", align 1
@XDP_FLAGS_UPDATE_IF_NOEXIST = common dso_local global i32 0, align 4
@xdp_flags = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@RLIMIT_MEMLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"setrlimit(RLIMIT_MEMLOCK)\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"%s_kern.o\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"load_bpf_file: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"finding a map in obj file failed\0A\00", align 1
@if_idx = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"Invalid ifname\0A\00", align 1
@if_name = common dso_local global i8* null, align 8
@SIGINT = common dso_local global i32 0, align 4
@sig_handler = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"signal\00", align 1
@print_bpf_output = common dso_local global i32 0, align 4
@pb = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"perf_buffer setup failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.rlimit, align 4
  %7 = alloca %struct.bpf_prog_load_attr, align 8
  %8 = alloca %struct.perf_buffer_opts, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.bpf_object*, align 8
  %14 = alloca %struct.bpf_map*, align 8
  %15 = alloca [256 x i8], align 16
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %18 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %6, i32 0, i32 0
  %19 = load i32, i32* @RLIM_INFINITY, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %6, i32 0, i32 1
  %21 = load i32, i32* @RLIM_INFINITY, align 4
  store i32 %21, i32* %20, align 4
  %22 = getelementptr inbounds %struct.bpf_prog_load_attr, %struct.bpf_prog_load_attr* %7, i32 0, i32 0
  store i8* null, i8** %22, align 8
  %23 = getelementptr inbounds %struct.bpf_prog_load_attr, %struct.bpf_prog_load_attr* %7, i32 0, i32 1
  %24 = load i32, i32* @BPF_PROG_TYPE_XDP, align 4
  store i32 %24, i32* %23, align 8
  %25 = bitcast %struct.perf_buffer_opts* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %25, i8 0, i64 4, i1 false)
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  br label %26

26:                                               ; preds = %45, %2
  %27 = load i32, i32* %4, align 4
  %28 = load i8**, i8*** %5, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = call i32 @getopt(i32 %27, i8** %28, i8* %29)
  store i32 %30, i32* %12, align 4
  %31 = icmp ne i32 %30, -1
  br i1 %31, label %32, label %46

32:                                               ; preds = %26
  %33 = load i32, i32* %12, align 4
  switch i32 %33, label %39 [
    i32 70, label %34
  ]

34:                                               ; preds = %32
  %35 = load i32, i32* @XDP_FLAGS_UPDATE_IF_NOEXIST, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* @xdp_flags, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* @xdp_flags, align 4
  br label %45

39:                                               ; preds = %32
  %40 = load i8**, i8*** %5, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @basename(i8* %42)
  %44 = call i32 @usage(i32 %43)
  store i32 1, i32* %3, align 4
  br label %163

45:                                               ; preds = %34
  br label %26

46:                                               ; preds = %26
  %47 = load i32, i32* @optind, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = load i8**, i8*** %5, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @basename(i8* %53)
  %55 = call i32 @usage(i32 %54)
  store i32 1, i32* %3, align 4
  br label %163

56:                                               ; preds = %46
  %57 = load i32, i32* @RLIMIT_MEMLOCK, align 4
  %58 = call i64 @setrlimit(i32 %57, %struct.rlimit* %6)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = call i32 @perror(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %163

62:                                               ; preds = %56
  %63 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %64 = load i8**, i8*** %5, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @snprintf(i8* %63, i32 256, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %66)
  %68 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %69 = getelementptr inbounds %struct.bpf_prog_load_attr, %struct.bpf_prog_load_attr* %7, i32 0, i32 0
  store i8* %68, i8** %69, align 8
  %70 = call i64 @bpf_prog_load_xattr(%struct.bpf_prog_load_attr* %7, %struct.bpf_object** %13, i32* %10)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %62
  store i32 1, i32* %3, align 4
  br label %163

73:                                               ; preds = %62
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* @errno, align 4
  %78 = call i8* @strerror(i32 %77)
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %78)
  store i32 1, i32* %3, align 4
  br label %163

80:                                               ; preds = %73
  %81 = load %struct.bpf_object*, %struct.bpf_object** %13, align 8
  %82 = call %struct.bpf_map* @bpf_map__next(i32* null, %struct.bpf_object* %81)
  store %struct.bpf_map* %82, %struct.bpf_map** %14, align 8
  %83 = load %struct.bpf_map*, %struct.bpf_map** %14, align 8
  %84 = icmp ne %struct.bpf_map* %83, null
  br i1 %84, label %87, label %85

85:                                               ; preds = %80
  %86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %163

87:                                               ; preds = %80
  %88 = load %struct.bpf_map*, %struct.bpf_map** %14, align 8
  %89 = call i32 @bpf_map__fd(%struct.bpf_map* %88)
  store i32 %89, i32* %11, align 4
  %90 = load i8**, i8*** %5, align 8
  %91 = load i32, i32* @optind, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8*, i8** %90, i64 %92
  %94 = load i8*, i8** %93, align 8
  %95 = call i64 @if_nametoindex(i8* %94)
  store i64 %95, i64* @if_idx, align 8
  %96 = load i64, i64* @if_idx, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %105, label %98

98:                                               ; preds = %87
  %99 = load i8**, i8*** %5, align 8
  %100 = load i32, i32* @optind, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8*, i8** %99, i64 %101
  %103 = load i8*, i8** %102, align 8
  %104 = call i64 @strtoul(i8* %103, i32* null, i32 0)
  store i64 %104, i64* @if_idx, align 8
  br label %105

105:                                              ; preds = %98, %87
  %106 = load i64, i64* @if_idx, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %105
  %109 = load i32, i32* @stderr, align 4
  %110 = call i32 @fprintf(i32 %109, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %163

111:                                              ; preds = %105
  %112 = load i8**, i8*** %5, align 8
  %113 = load i32, i32* @optind, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8*, i8** %112, i64 %114
  %116 = load i8*, i8** %115, align 8
  store i8* %116, i8** @if_name, align 8
  %117 = load i64, i64* @if_idx, align 8
  %118 = load i32, i32* %10, align 4
  %119 = load i8*, i8** @if_name, align 8
  %120 = call i32 @do_attach(i64 %117, i32 %118, i8* %119)
  store i32 %120, i32* %17, align 4
  %121 = load i32, i32* %17, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %111
  %124 = load i32, i32* %17, align 4
  store i32 %124, i32* %3, align 4
  br label %163

125:                                              ; preds = %111
  %126 = load i32, i32* @SIGINT, align 4
  %127 = load i32, i32* @sig_handler, align 4
  %128 = call i64 @signal(i32 %126, i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %140, label %130

130:                                              ; preds = %125
  %131 = load i32, i32* @SIGHUP, align 4
  %132 = load i32, i32* @sig_handler, align 4
  %133 = call i64 @signal(i32 %131, i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %140, label %135

135:                                              ; preds = %130
  %136 = load i32, i32* @SIGTERM, align 4
  %137 = load i32, i32* @sig_handler, align 4
  %138 = call i64 @signal(i32 %136, i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %135, %130, %125
  %141 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %163

142:                                              ; preds = %135
  %143 = load i32, i32* @print_bpf_output, align 4
  %144 = getelementptr inbounds %struct.perf_buffer_opts, %struct.perf_buffer_opts* %8, i32 0, i32 0
  store i32 %143, i32* %144, align 4
  %145 = load i32, i32* %11, align 4
  %146 = call i32 @perf_buffer__new(i32 %145, i32 8, %struct.perf_buffer_opts* %8)
  store i32 %146, i32* @pb, align 4
  %147 = load i32, i32* @pb, align 4
  %148 = call i32 @libbpf_get_error(i32 %147)
  store i32 %148, i32* %17, align 4
  %149 = load i32, i32* %17, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %142
  %152 = call i32 @perror(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %163

153:                                              ; preds = %142
  br label %154

154:                                              ; preds = %158, %153
  %155 = load i32, i32* @pb, align 4
  %156 = call i32 @perf_buffer__poll(i32 %155, i32 1000)
  store i32 %156, i32* %16, align 4
  %157 = icmp sge i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %154
  br label %154

159:                                              ; preds = %154
  %160 = load i32, i32* @SIGINT, align 4
  %161 = call i32 @kill(i32 0, i32 %160)
  %162 = load i32, i32* %16, align 4
  store i32 %162, i32* %3, align 4
  br label %163

163:                                              ; preds = %159, %151, %140, %123, %108, %85, %76, %72, %60, %50, %39
  %164 = load i32, i32* %3, align 4
  ret i32 %164
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i32 @usage(i32) #2

declare dso_local i32 @basename(i8*) #2

declare dso_local i64 @setrlimit(i32, %struct.rlimit*) #2

declare dso_local i32 @perror(i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i64 @bpf_prog_load_xattr(%struct.bpf_prog_load_attr*, %struct.bpf_object**, i32*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i8* @strerror(i32) #2

declare dso_local %struct.bpf_map* @bpf_map__next(i32*, %struct.bpf_object*) #2

declare dso_local i32 @bpf_map__fd(%struct.bpf_map*) #2

declare dso_local i64 @if_nametoindex(i8*) #2

declare dso_local i64 @strtoul(i8*, i32*, i32) #2

declare dso_local i32 @fprintf(i32, i8*) #2

declare dso_local i32 @do_attach(i64, i32, i8*) #2

declare dso_local i64 @signal(i32, i32) #2

declare dso_local i32 @perf_buffer__new(i32, i32, %struct.perf_buffer_opts*) #2

declare dso_local i32 @libbpf_get_error(i32) #2

declare dso_local i32 @perf_buffer__poll(i32, i32) #2

declare dso_local i32 @kill(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
