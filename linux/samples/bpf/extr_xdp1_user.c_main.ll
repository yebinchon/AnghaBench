; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_xdp1_user.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_xdp1_user.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rlimit = type { i32, i32 }
%struct.bpf_prog_load_attr = type { i8*, i32 }
%struct.bpf_prog_info = type { i32 }
%struct.bpf_object = type { i32 }
%struct.bpf_map = type { i32 }

@RLIM_INFINITY = common dso_local global i32 0, align 4
@BPF_PROG_TYPE_XDP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"FSN\00", align 1
@XDP_FLAGS_SKB_MODE = common dso_local global i32 0, align 4
@xdp_flags = common dso_local global i32 0, align 4
@XDP_FLAGS_DRV_MODE = common dso_local global i32 0, align 4
@XDP_FLAGS_UPDATE_IF_NOEXIST = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@RLIMIT_MEMLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"setrlimit(RLIMIT_MEMLOCK)\00", align 1
@ifindex = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"if_nametoindex\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"%s_kern.o\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"finding a map in obj file failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"load_bpf_file: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@int_exit = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"link set xdp fd failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"can't get prog info - %s\0A\00", align 1
@prog_id = common dso_local global i32 0, align 4

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
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.bpf_object*, align 8
  %15 = alloca %struct.bpf_map*, align 8
  %16 = alloca [256 x i8], align 16
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
  %25 = bitcast %struct.bpf_prog_info* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %25, i8 0, i64 4, i1 false)
  store i32 4, i32* %9, align 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  br label %26

26:                                               ; preds = %53, %2
  %27 = load i32, i32* %4, align 4
  %28 = load i8**, i8*** %5, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = call i32 @getopt(i32 %27, i8** %28, i8* %29)
  store i32 %30, i32* %13, align 4
  %31 = icmp ne i32 %30, -1
  br i1 %31, label %32, label %54

32:                                               ; preds = %26
  %33 = load i32, i32* %13, align 4
  switch i32 %33, label %47 [
    i32 83, label %34
    i32 78, label %38
    i32 70, label %42
  ]

34:                                               ; preds = %32
  %35 = load i32, i32* @XDP_FLAGS_SKB_MODE, align 4
  %36 = load i32, i32* @xdp_flags, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* @xdp_flags, align 4
  br label %53

38:                                               ; preds = %32
  %39 = load i32, i32* @XDP_FLAGS_DRV_MODE, align 4
  %40 = load i32, i32* @xdp_flags, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* @xdp_flags, align 4
  br label %53

42:                                               ; preds = %32
  %43 = load i32, i32* @XDP_FLAGS_UPDATE_IF_NOEXIST, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* @xdp_flags, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* @xdp_flags, align 4
  br label %53

47:                                               ; preds = %32
  %48 = load i8**, i8*** %5, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @basename(i8* %50)
  %52 = call i32 @usage(i32 %51)
  store i32 1, i32* %3, align 4
  br label %137

53:                                               ; preds = %42, %38, %34
  br label %26

54:                                               ; preds = %26
  %55 = load i32, i32* @optind, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  %59 = load i8**, i8*** %5, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @basename(i8* %61)
  %63 = call i32 @usage(i32 %62)
  store i32 1, i32* %3, align 4
  br label %137

64:                                               ; preds = %54
  %65 = load i32, i32* @RLIMIT_MEMLOCK, align 4
  %66 = call i64 @setrlimit(i32 %65, %struct.rlimit* %6)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = call i32 @perror(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %137

70:                                               ; preds = %64
  %71 = load i8**, i8*** %5, align 8
  %72 = load i32, i32* @optind, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8*, i8** %71, i64 %73
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @if_nametoindex(i8* %75)
  store i32 %76, i32* @ifindex, align 4
  %77 = load i32, i32* @ifindex, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %70
  %80 = call i32 @perror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %137

81:                                               ; preds = %70
  %82 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %83 = load i8**, i8*** %5, align 8
  %84 = getelementptr inbounds i8*, i8** %83, i64 0
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @snprintf(i8* %82, i32 256, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %85)
  %87 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %88 = getelementptr inbounds %struct.bpf_prog_load_attr, %struct.bpf_prog_load_attr* %7, i32 0, i32 0
  store i8* %87, i8** %88, align 8
  %89 = call i64 @bpf_prog_load_xattr(%struct.bpf_prog_load_attr* %7, %struct.bpf_object** %14, i32* %11)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %81
  store i32 1, i32* %3, align 4
  br label %137

92:                                               ; preds = %81
  %93 = load %struct.bpf_object*, %struct.bpf_object** %14, align 8
  %94 = call %struct.bpf_map* @bpf_map__next(i32* null, %struct.bpf_object* %93)
  store %struct.bpf_map* %94, %struct.bpf_map** %15, align 8
  %95 = load %struct.bpf_map*, %struct.bpf_map** %15, align 8
  %96 = icmp ne %struct.bpf_map* %95, null
  br i1 %96, label %99, label %97

97:                                               ; preds = %92
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %137

99:                                               ; preds = %92
  %100 = load %struct.bpf_map*, %struct.bpf_map** %15, align 8
  %101 = call i32 @bpf_map__fd(%struct.bpf_map* %100)
  store i32 %101, i32* %12, align 4
  %102 = load i32, i32* %11, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %108, label %104

104:                                              ; preds = %99
  %105 = load i32, i32* @errno, align 4
  %106 = call i8* @strerror(i32 %105)
  %107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* %106)
  store i32 1, i32* %3, align 4
  br label %137

108:                                              ; preds = %99
  %109 = load i32, i32* @SIGINT, align 4
  %110 = load i32, i32* @int_exit, align 4
  %111 = call i32 @signal(i32 %109, i32 %110)
  %112 = load i32, i32* @SIGTERM, align 4
  %113 = load i32, i32* @int_exit, align 4
  %114 = call i32 @signal(i32 %112, i32 %113)
  %115 = load i32, i32* @ifindex, align 4
  %116 = load i32, i32* %11, align 4
  %117 = load i32, i32* @xdp_flags, align 4
  %118 = call i64 @bpf_set_link_xdp_fd(i32 %115, i32 %116, i32 %117)
  %119 = icmp slt i64 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %108
  %121 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %137

122:                                              ; preds = %108
  %123 = load i32, i32* %11, align 4
  %124 = call i32 @bpf_obj_get_info_by_fd(i32 %123, %struct.bpf_prog_info* %8, i32* %9)
  store i32 %124, i32* %17, align 4
  %125 = load i32, i32* %17, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %122
  %128 = load i32, i32* @errno, align 4
  %129 = call i8* @strerror(i32 %128)
  %130 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* %129)
  %131 = load i32, i32* %17, align 4
  store i32 %131, i32* %3, align 4
  br label %137

132:                                              ; preds = %122
  %133 = getelementptr inbounds %struct.bpf_prog_info, %struct.bpf_prog_info* %8, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* @prog_id, align 4
  %135 = load i32, i32* %12, align 4
  %136 = call i32 @poll_stats(i32 %135, i32 2)
  store i32 0, i32* %3, align 4
  br label %137

137:                                              ; preds = %132, %127, %120, %104, %97, %91, %79, %68, %58, %47
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i32 @usage(i32) #2

declare dso_local i32 @basename(i8*) #2

declare dso_local i64 @setrlimit(i32, %struct.rlimit*) #2

declare dso_local i32 @perror(i8*) #2

declare dso_local i32 @if_nametoindex(i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i64 @bpf_prog_load_xattr(%struct.bpf_prog_load_attr*, %struct.bpf_object**, i32*) #2

declare dso_local %struct.bpf_map* @bpf_map__next(i32*, %struct.bpf_object*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @bpf_map__fd(%struct.bpf_map*) #2

declare dso_local i8* @strerror(i32) #2

declare dso_local i32 @signal(i32, i32) #2

declare dso_local i64 @bpf_set_link_xdp_fd(i32, i32, i32) #2

declare dso_local i32 @bpf_obj_get_info_by_fd(i32, %struct.bpf_prog_info*, i32*) #2

declare dso_local i32 @poll_stats(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
