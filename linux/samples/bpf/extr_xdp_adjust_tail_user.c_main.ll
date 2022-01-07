; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_adjust_tail_user.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_adjust_tail_user.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rlimit = type { i32, i32 }
%struct.bpf_prog_load_attr = type { i8*, i32 }
%struct.bpf_prog_info = type { i32 }
%struct.bpf_object = type { i32 }
%struct.bpf_map = type { i32 }

@RLIM_INFINITY = common dso_local global i32 0, align 4
@BPF_PROG_TYPE_XDP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"i:T:SNFh\00", align 1
@optarg = common dso_local global i32 0, align 4
@ifindex = common dso_local global i8* null, align 8
@XDP_FLAGS_SKB_MODE = common dso_local global i32 0, align 4
@xdp_flags = common dso_local global i32 0, align 4
@XDP_FLAGS_DRV_MODE = common dso_local global i32 0, align 4
@XDP_FLAGS_UPDATE_IF_NOEXIST = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Missing argument -%c\0A\00", align 1
@RLIMIT_MEMLOCK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"setrlimit(RLIMIT_MEMLOCK, RLIM_INFINITY)\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Invalid ifname\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"%s_kern.o\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"finding a map in obj file failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"load_bpf_file: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"link set xdp fd failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"can't get prog info - %s\0A\00", align 1
@prog_id = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.rlimit, align 4
  %7 = alloca %struct.bpf_prog_load_attr, align 8
  %8 = alloca [256 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca %struct.bpf_prog_info, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.bpf_object*, align 8
  %18 = alloca %struct.bpf_map*, align 8
  %19 = alloca [256 x i8], align 16
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
  %28 = bitcast [256 x i8]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %28, i8 0, i64 256, i1 false)
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  %29 = bitcast %struct.bpf_prog_info* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %29, i8 0, i64 4, i1 false)
  store i32 4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %30

30:                                               ; preds = %68, %2
  %31 = load i32, i32* %13, align 4
  %32 = load i8*, i8** %9, align 8
  %33 = call i32 @strlen(i8* %32)
  %34 = icmp slt i32 %31, %33
  br i1 %34, label %35, label %71

35:                                               ; preds = %30
  %36 = load i8*, i8** %9, align 8
  %37 = load i32, i32* %13, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 104
  br i1 %42, label %43, label %67

43:                                               ; preds = %35
  %44 = load i8*, i8** %9, align 8
  %45 = load i32, i32* %13, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp sle i32 97, %49
  br i1 %50, label %51, label %67

51:                                               ; preds = %43
  %52 = load i8*, i8** %9, align 8
  %53 = load i32, i32* %13, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp sle i32 %57, 122
  br i1 %58, label %59, label %67

59:                                               ; preds = %51
  %60 = load i8*, i8** %9, align 8
  %61 = load i32, i32* %13, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i64
  %66 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 %65
  store i8 1, i8* %66, align 1
  br label %67

67:                                               ; preds = %59, %51, %43, %35
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %13, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %13, align 4
  br label %30

71:                                               ; preds = %30
  br label %72

72:                                               ; preds = %111, %71
  %73 = load i32, i32* %4, align 4
  %74 = load i8**, i8*** %5, align 8
  %75 = load i8*, i8** %9, align 8
  %76 = call i32 @getopt(i32 %73, i8** %74, i8* %75)
  store i32 %76, i32* %16, align 4
  %77 = icmp ne i32 %76, -1
  br i1 %77, label %78, label %115

78:                                               ; preds = %72
  %79 = load i32, i32* %16, align 4
  switch i32 %79, label %106 [
    i32 105, label %80
    i32 84, label %89
    i32 83, label %93
    i32 78, label %97
    i32 70, label %101
  ]

80:                                               ; preds = %78
  %81 = load i32, i32* @optarg, align 4
  %82 = call i8* @if_nametoindex(i32 %81)
  store i8* %82, i8** @ifindex, align 8
  %83 = load i8*, i8** @ifindex, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %80
  %86 = load i32, i32* @optarg, align 4
  %87 = call i8* @atoi(i32 %86)
  store i8* %87, i8** @ifindex, align 8
  br label %88

88:                                               ; preds = %85, %80
  br label %111

89:                                               ; preds = %78
  %90 = load i32, i32* @optarg, align 4
  %91 = call i8* @atoi(i32 %90)
  %92 = ptrtoint i8* %91 to i32
  store i32 %92, i32* %12, align 4
  br label %111

93:                                               ; preds = %78
  %94 = load i32, i32* @XDP_FLAGS_SKB_MODE, align 4
  %95 = load i32, i32* @xdp_flags, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* @xdp_flags, align 4
  br label %111

97:                                               ; preds = %78
  %98 = load i32, i32* @XDP_FLAGS_DRV_MODE, align 4
  %99 = load i32, i32* @xdp_flags, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* @xdp_flags, align 4
  br label %111

101:                                              ; preds = %78
  %102 = load i32, i32* @XDP_FLAGS_UPDATE_IF_NOEXIST, align 4
  %103 = xor i32 %102, -1
  %104 = load i32, i32* @xdp_flags, align 4
  %105 = and i32 %104, %103
  store i32 %105, i32* @xdp_flags, align 4
  br label %111

106:                                              ; preds = %78
  %107 = load i8**, i8*** %5, align 8
  %108 = getelementptr inbounds i8*, i8** %107, i64 0
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 @usage(i8* %109)
  store i32 1, i32* %3, align 4
  br label %216

111:                                              ; preds = %101, %97, %93, %89, %88
  %112 = load i32, i32* %16, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 %113
  store i8 0, i8* %114, align 1
  br label %72

115:                                              ; preds = %72
  store i32 0, i32* %13, align 4
  br label %116

116:                                              ; preds = %146, %115
  %117 = load i32, i32* %13, align 4
  %118 = load i8*, i8** %9, align 8
  %119 = call i32 @strlen(i8* %118)
  %120 = icmp slt i32 %117, %119
  br i1 %120, label %121, label %149

121:                                              ; preds = %116
  %122 = load i8*, i8** %9, align 8
  %123 = load i32, i32* %13, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, i8* %122, i64 %124
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 %128
  %130 = load i8, i8* %129, align 1
  %131 = icmp ne i8 %130, 0
  br i1 %131, label %132, label %145

132:                                              ; preds = %121
  %133 = load i32, i32* @stderr, align 4
  %134 = load i8*, i8** %9, align 8
  %135 = load i32, i32* %13, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8, i8* %134, i64 %136
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  %140 = call i32 (i32, i8*, ...) @fprintf(i32 %133, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %139)
  %141 = load i8**, i8*** %5, align 8
  %142 = getelementptr inbounds i8*, i8** %141, i64 0
  %143 = load i8*, i8** %142, align 8
  %144 = call i32 @usage(i8* %143)
  store i32 1, i32* %3, align 4
  br label %216

145:                                              ; preds = %121
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %13, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %13, align 4
  br label %116

149:                                              ; preds = %116
  %150 = load i32, i32* @RLIMIT_MEMLOCK, align 4
  %151 = call i64 @setrlimit(i32 %150, %struct.rlimit* %6)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %149
  %154 = call i32 @perror(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %216

155:                                              ; preds = %149
  %156 = load i8*, i8** @ifindex, align 8
  %157 = icmp ne i8* %156, null
  br i1 %157, label %161, label %158

158:                                              ; preds = %155
  %159 = load i32, i32* @stderr, align 4
  %160 = call i32 (i32, i8*, ...) @fprintf(i32 %159, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %216

161:                                              ; preds = %155
  %162 = getelementptr inbounds [256 x i8], [256 x i8]* %19, i64 0, i64 0
  %163 = load i8**, i8*** %5, align 8
  %164 = getelementptr inbounds i8*, i8** %163, i64 0
  %165 = load i8*, i8** %164, align 8
  %166 = call i32 @snprintf(i8* %162, i32 256, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %165)
  %167 = getelementptr inbounds [256 x i8], [256 x i8]* %19, i64 0, i64 0
  %168 = getelementptr inbounds %struct.bpf_prog_load_attr, %struct.bpf_prog_load_attr* %7, i32 0, i32 0
  store i8* %167, i8** %168, align 8
  %169 = call i64 @bpf_prog_load_xattr(%struct.bpf_prog_load_attr* %7, %struct.bpf_object** %17, i32* %14)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %161
  store i32 1, i32* %3, align 4
  br label %216

172:                                              ; preds = %161
  %173 = load %struct.bpf_object*, %struct.bpf_object** %17, align 8
  %174 = call %struct.bpf_map* @bpf_map__next(i32* null, %struct.bpf_object* %173)
  store %struct.bpf_map* %174, %struct.bpf_map** %18, align 8
  %175 = load %struct.bpf_map*, %struct.bpf_map** %18, align 8
  %176 = icmp ne %struct.bpf_map* %175, null
  br i1 %176, label %179, label %177

177:                                              ; preds = %172
  %178 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %216

179:                                              ; preds = %172
  %180 = load %struct.bpf_map*, %struct.bpf_map** %18, align 8
  %181 = call i32 @bpf_map__fd(%struct.bpf_map* %180)
  store i32 %181, i32* %15, align 4
  %182 = load i32, i32* %14, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %188, label %184

184:                                              ; preds = %179
  %185 = load i32, i32* @errno, align 4
  %186 = call i8* @strerror(i32 %185)
  %187 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8* %186)
  store i32 1, i32* %3, align 4
  br label %216

188:                                              ; preds = %179
  %189 = load i32, i32* @SIGINT, align 4
  %190 = call i32 @signal(i32 %189, i32 (i32)* @int_exit)
  %191 = load i32, i32* @SIGTERM, align 4
  %192 = call i32 @signal(i32 %191, i32 (i32)* @int_exit)
  %193 = load i8*, i8** @ifindex, align 8
  %194 = load i32, i32* %14, align 4
  %195 = load i32, i32* @xdp_flags, align 4
  %196 = call i64 @bpf_set_link_xdp_fd(i8* %193, i32 %194, i32 %195)
  %197 = icmp slt i64 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %188
  %199 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %216

200:                                              ; preds = %188
  %201 = load i32, i32* %14, align 4
  %202 = call i32 @bpf_obj_get_info_by_fd(i32 %201, %struct.bpf_prog_info* %10, i32* %11)
  store i32 %202, i32* %20, align 4
  %203 = load i32, i32* %20, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %209

205:                                              ; preds = %200
  %206 = load i32, i32* @errno, align 4
  %207 = call i8* @strerror(i32 %206)
  %208 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i8* %207)
  store i32 1, i32* %3, align 4
  br label %216

209:                                              ; preds = %200
  %210 = getelementptr inbounds %struct.bpf_prog_info, %struct.bpf_prog_info* %10, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  store i32 %211, i32* @prog_id, align 4
  %212 = load i32, i32* %15, align 4
  %213 = load i32, i32* %12, align 4
  %214 = call i32 @poll_stats(i32 %212, i32 %213)
  %215 = call i32 @int_exit(i32 0)
  store i32 0, i32* %3, align 4
  br label %216

216:                                              ; preds = %209, %205, %198, %184, %177, %171, %158, %153, %132, %106
  %217 = load i32, i32* %3, align 4
  ret i32 %217
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i8* @if_nametoindex(i32) #2

declare dso_local i8* @atoi(i32) #2

declare dso_local i32 @usage(i8*) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i64 @setrlimit(i32, %struct.rlimit*) #2

declare dso_local i32 @perror(i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i64 @bpf_prog_load_xattr(%struct.bpf_prog_load_attr*, %struct.bpf_object**, i32*) #2

declare dso_local %struct.bpf_map* @bpf_map__next(i32*, %struct.bpf_object*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @bpf_map__fd(%struct.bpf_map*) #2

declare dso_local i8* @strerror(i32) #2

declare dso_local i32 @signal(i32, i32 (i32)*) #2

declare dso_local i32 @int_exit(i32) #2

declare dso_local i64 @bpf_set_link_xdp_fd(i8*, i32, i32) #2

declare dso_local i32 @bpf_obj_get_info_by_fd(i32, %struct.bpf_prog_info*, i32*) #2

declare dso_local i32 @poll_stats(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
