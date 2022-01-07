; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_sockmap.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_sockmap.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockmap_options = type { i32, i32, i32, i32, i32, i32 }

@BPF_SOCKMAP_FILENAME = common dso_local global i8* null, align 8
@PING_PONG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c":dhvc:r:i:l:t:p:q:\00", align 1
@long_options = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@txmsg_start = common dso_local global i8* null, align 8
@txmsg_end = common dso_local global i8* null, align 8
@txmsg_start_push = common dso_local global i8* null, align 8
@txmsg_end_push = common dso_local global i8* null, align 8
@txmsg_start_pop = common dso_local global i8* null, align 8
@txmsg_pop = common dso_local global i8* null, align 8
@txmsg_apply = common dso_local global i8* null, align 8
@txmsg_cork = common dso_local global i8* null, align 8
@O_DIRECTORY = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"ERROR: (%i) open cg path failed: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"ping\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"sendmsg\00", align 1
@SENDMSG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"base\00", align 1
@BASE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"base_sendpage\00", align 1
@BASE_SENDPAGE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"sendpage\00", align 1
@SENDPAGE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [44 x i8] c"%s requires cgroup option: --cgroup <path>\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"populate program: (%s) %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@running = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@running_handler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockmap_options, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 1, i32* %6, align 4
  store i32 1024, i32* %7, align 4
  store i32 1, i32* %8, align 4
  %16 = bitcast %struct.sockmap_options* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 24, i1 false)
  store i32 0, i32* %13, align 4
  %17 = load i8*, i8** @BPF_SOCKMAP_FILENAME, align 8
  store i8* %17, i8** %14, align 8
  %18 = load i32, i32* @PING_PONG, align 4
  store i32 %18, i32* %15, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 2
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = call i32 @test_suite(i32 -1)
  store i32 %22, i32* %3, align 4
  br label %175

23:                                               ; preds = %2
  br label %24

24:                                               ; preds = %129, %23
  %25 = load i32, i32* %4, align 4
  %26 = load i8**, i8*** %5, align 8
  %27 = load i32, i32* @long_options, align 4
  %28 = call i32 @getopt_long(i32 %25, i8** %26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %27, i32* %11)
  store i32 %28, i32* %10, align 4
  %29 = icmp ne i32 %28, -1
  br i1 %29, label %30, label %130

30:                                               ; preds = %24
  %31 = load i32, i32* %10, align 4
  switch i32 %31, label %126 [
    i32 115, label %32
    i32 101, label %35
    i32 112, label %38
    i32 113, label %41
    i32 119, label %44
    i32 120, label %47
    i32 97, label %50
    i32 107, label %53
    i32 99, label %56
    i32 114, label %70
    i32 118, label %74
    i32 105, label %76
    i32 108, label %80
    i32 100, label %84
    i32 116, label %86
    i32 0, label %124
    i32 104, label %125
  ]

32:                                               ; preds = %30
  %33 = load i8*, i8** @optarg, align 8
  %34 = call i8* @atoi(i8* %33)
  store i8* %34, i8** @txmsg_start, align 8
  br label %129

35:                                               ; preds = %30
  %36 = load i8*, i8** @optarg, align 8
  %37 = call i8* @atoi(i8* %36)
  store i8* %37, i8** @txmsg_end, align 8
  br label %129

38:                                               ; preds = %30
  %39 = load i8*, i8** @optarg, align 8
  %40 = call i8* @atoi(i8* %39)
  store i8* %40, i8** @txmsg_start_push, align 8
  br label %129

41:                                               ; preds = %30
  %42 = load i8*, i8** @optarg, align 8
  %43 = call i8* @atoi(i8* %42)
  store i8* %43, i8** @txmsg_end_push, align 8
  br label %129

44:                                               ; preds = %30
  %45 = load i8*, i8** @optarg, align 8
  %46 = call i8* @atoi(i8* %45)
  store i8* %46, i8** @txmsg_start_pop, align 8
  br label %129

47:                                               ; preds = %30
  %48 = load i8*, i8** @optarg, align 8
  %49 = call i8* @atoi(i8* %48)
  store i8* %49, i8** @txmsg_pop, align 8
  br label %129

50:                                               ; preds = %30
  %51 = load i8*, i8** @optarg, align 8
  %52 = call i8* @atoi(i8* %51)
  store i8* %52, i8** @txmsg_apply, align 8
  br label %129

53:                                               ; preds = %30
  %54 = load i8*, i8** @optarg, align 8
  %55 = call i8* @atoi(i8* %54)
  store i8* %55, i8** @txmsg_cork, align 8
  br label %129

56:                                               ; preds = %30
  %57 = load i8*, i8** @optarg, align 8
  %58 = load i32, i32* @O_DIRECTORY, align 4
  %59 = load i32, i32* @O_RDONLY, align 4
  %60 = call i32 @open(i8* %57, i32 %58, i32 %59)
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %13, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %56
  %64 = load i32, i32* @stderr, align 4
  %65 = load i32, i32* %13, align 4
  %66 = load i8*, i8** @optarg, align 8
  %67 = call i32 (i32, i8*, ...) @fprintf(i32 %64, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %65, i8* %66)
  %68 = load i32, i32* %13, align 4
  store i32 %68, i32* %3, align 4
  br label %175

69:                                               ; preds = %56
  br label %129

70:                                               ; preds = %30
  %71 = load i8*, i8** @optarg, align 8
  %72 = call i8* @atoi(i8* %71)
  %73 = ptrtoint i8* %72 to i32
  store i32 %73, i32* %8, align 4
  br label %129

74:                                               ; preds = %30
  %75 = getelementptr inbounds %struct.sockmap_options, %struct.sockmap_options* %9, i32 0, i32 0
  store i32 1, i32* %75, align 4
  br label %129

76:                                               ; preds = %30
  %77 = load i8*, i8** @optarg, align 8
  %78 = call i8* @atoi(i8* %77)
  %79 = ptrtoint i8* %78 to i32
  store i32 %79, i32* %6, align 4
  br label %129

80:                                               ; preds = %30
  %81 = load i8*, i8** @optarg, align 8
  %82 = call i8* @atoi(i8* %81)
  %83 = ptrtoint i8* %82 to i32
  store i32 %83, i32* %7, align 4
  br label %129

84:                                               ; preds = %30
  %85 = getelementptr inbounds %struct.sockmap_options, %struct.sockmap_options* %9, i32 0, i32 1
  store i32 1, i32* %85, align 4
  br label %129

86:                                               ; preds = %30
  %87 = load i8*, i8** @optarg, align 8
  %88 = call i32 @strcmp(i8* %87, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = load i32, i32* @PING_PONG, align 4
  store i32 %91, i32* %15, align 4
  br label %123

92:                                               ; preds = %86
  %93 = load i8*, i8** @optarg, align 8
  %94 = call i32 @strcmp(i8* %93, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = load i32, i32* @SENDMSG, align 4
  store i32 %97, i32* %15, align 4
  br label %122

98:                                               ; preds = %92
  %99 = load i8*, i8** @optarg, align 8
  %100 = call i32 @strcmp(i8* %99, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %98
  %103 = load i32, i32* @BASE, align 4
  store i32 %103, i32* %15, align 4
  br label %121

104:                                              ; preds = %98
  %105 = load i8*, i8** @optarg, align 8
  %106 = call i32 @strcmp(i8* %105, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %104
  %109 = load i32, i32* @BASE_SENDPAGE, align 4
  store i32 %109, i32* %15, align 4
  br label %120

110:                                              ; preds = %104
  %111 = load i8*, i8** @optarg, align 8
  %112 = call i32 @strcmp(i8* %111, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %110
  %115 = load i32, i32* @SENDPAGE, align 4
  store i32 %115, i32* %15, align 4
  br label %119

116:                                              ; preds = %110
  %117 = load i8**, i8*** %5, align 8
  %118 = call i32 @usage(i8** %117)
  store i32 -1, i32* %3, align 4
  br label %175

119:                                              ; preds = %114
  br label %120

120:                                              ; preds = %119, %108
  br label %121

121:                                              ; preds = %120, %102
  br label %122

122:                                              ; preds = %121, %96
  br label %123

123:                                              ; preds = %122, %90
  br label %129

124:                                              ; preds = %30
  br label %129

125:                                              ; preds = %30
  br label %126

126:                                              ; preds = %30, %125
  %127 = load i8**, i8*** %5, align 8
  %128 = call i32 @usage(i8** %127)
  store i32 -1, i32* %3, align 4
  br label %175

129:                                              ; preds = %124, %123, %84, %80, %76, %74, %70, %69, %53, %50, %47, %44, %41, %38, %35, %32
  br label %24

130:                                              ; preds = %24
  %131 = load i32, i32* %4, align 4
  %132 = icmp sle i32 %131, 3
  br i1 %132, label %133, label %139

133:                                              ; preds = %130
  %134 = load i32, i32* %13, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %133
  %137 = load i32, i32* %13, align 4
  %138 = call i32 @test_suite(i32 %137)
  store i32 %138, i32* %3, align 4
  br label %175

139:                                              ; preds = %133, %130
  %140 = load i32, i32* %13, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %148, label %142

142:                                              ; preds = %139
  %143 = load i32, i32* @stderr, align 4
  %144 = load i8**, i8*** %5, align 8
  %145 = getelementptr inbounds i8*, i8** %144, i64 0
  %146 = load i8*, i8** %145, align 8
  %147 = call i32 (i32, i8*, ...) @fprintf(i32 %143, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0), i8* %146)
  store i32 -1, i32* %3, align 4
  br label %175

148:                                              ; preds = %139
  %149 = load i8*, i8** %14, align 8
  %150 = call i32 @populate_progs(i8* %149)
  store i32 %150, i32* %12, align 4
  %151 = load i32, i32* %12, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %148
  %154 = load i32, i32* @stderr, align 4
  %155 = load i8*, i8** %14, align 8
  %156 = load i32, i32* @errno, align 4
  %157 = call i8* @strerror(i32 %156)
  %158 = call i32 (i32, i8*, ...) @fprintf(i32 %154, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i8* %155, i8* %157)
  store i32 1, i32* %3, align 4
  br label %175

159:                                              ; preds = %148
  store i32 1, i32* @running, align 4
  %160 = load i32, i32* @SIGINT, align 4
  %161 = load i32, i32* @running_handler, align 4
  %162 = call i32 @signal(i32 %160, i32 %161)
  %163 = load i32, i32* %6, align 4
  %164 = getelementptr inbounds %struct.sockmap_options, %struct.sockmap_options* %9, i32 0, i32 2
  store i32 %163, i32* %164, align 4
  %165 = load i32, i32* %7, align 4
  %166 = getelementptr inbounds %struct.sockmap_options, %struct.sockmap_options* %9, i32 0, i32 3
  store i32 %165, i32* %166, align 4
  %167 = load i32, i32* %8, align 4
  %168 = getelementptr inbounds %struct.sockmap_options, %struct.sockmap_options* %9, i32 0, i32 4
  store i32 %167, i32* %168, align 4
  %169 = load i32, i32* %13, align 4
  %170 = load i32, i32* %15, align 4
  %171 = call i32 @run_options(%struct.sockmap_options* %9, i32 %169, i32 %170)
  store i32 %171, i32* %12, align 4
  %172 = load i32, i32* %13, align 4
  %173 = call i32 @close(i32 %172)
  %174 = load i32, i32* %12, align 4
  store i32 %174, i32* %3, align 4
  br label %175

175:                                              ; preds = %159, %153, %142, %136, %126, %116, %63, %21
  %176 = load i32, i32* %3, align 4
  ret i32 %176
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @test_suite(i32) #2

declare dso_local i32 @getopt_long(i32, i8**, i8*, i32, i32*) #2

declare dso_local i8* @atoi(i8*) #2

declare dso_local i32 @open(i8*, i32, i32) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @usage(i8**) #2

declare dso_local i32 @populate_progs(i8*) #2

declare dso_local i8* @strerror(i32) #2

declare dso_local i32 @signal(i32, i32) #2

declare dso_local i32 @run_options(%struct.sockmap_options*, i32, i32) #2

declare dso_local i32 @close(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
