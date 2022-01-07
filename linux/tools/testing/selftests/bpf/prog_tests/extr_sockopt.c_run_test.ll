; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/prog_tests/extr_sockopt.c_run_test.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/prog_tests/extr_sockopt.c_run_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockopt_test = type { i64, i64, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32 }

@DENY_LOAD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"Failed to load BPF program\00", align 1
@DENY_ATTACH = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to attach BPF program\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Failed to create AF_INET socket\00", align 1
@errno = common dso_local global i64 0, align 8
@EPERM = common dso_local global i64 0, align 8
@EPERM_SETSOCKOPT = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i64 0, align 8
@EFAULT_SETSOCKOPT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"Failed to call setsockopt\00", align 1
@EPERM_GETSOCKOPT = common dso_local global i64 0, align 8
@EFAULT_GETSOCKOPT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [26 x i8] c"Failed to call getsockopt\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"getsockopt returned unexpected optlen\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"getsockopt returned unexpected optval\00", align 1
@OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.sockopt_test*)* @run_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_test(i32 %0, %struct.sockopt_test* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockopt_test*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.sockopt_test* %1, %struct.sockopt_test** %5, align 8
  store i8* null, i8** %9, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.sockopt_test*, %struct.sockopt_test** %5, align 8
  %14 = getelementptr inbounds %struct.sockopt_test, %struct.sockopt_test* %13, i32 0, i32 12
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.sockopt_test*, %struct.sockopt_test** %5, align 8
  %17 = getelementptr inbounds %struct.sockopt_test, %struct.sockopt_test* %16, i32 0, i32 11
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @load_prog(i32 %15, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %2
  %23 = load %struct.sockopt_test*, %struct.sockopt_test** %5, align 8
  %24 = getelementptr inbounds %struct.sockopt_test, %struct.sockopt_test* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @DENY_LOAD, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %204

29:                                               ; preds = %22
  %30 = call i32 @log_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %204

31:                                               ; preds = %2
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.sockopt_test*, %struct.sockopt_test** %5, align 8
  %35 = getelementptr inbounds %struct.sockopt_test, %struct.sockopt_test* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @bpf_prog_attach(i32 %32, i32 %33, i32 %36, i32 0)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %31
  %41 = load %struct.sockopt_test*, %struct.sockopt_test** %5, align 8
  %42 = getelementptr inbounds %struct.sockopt_test, %struct.sockopt_test* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @DENY_ATTACH, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %200

47:                                               ; preds = %40
  %48 = call i32 @log_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %10, align 4
  br label %200

49:                                               ; preds = %31
  %50 = load i32, i32* @AF_INET, align 4
  %51 = load i32, i32* @SOCK_STREAM, align 4
  %52 = call i32 @socket(i32 %50, i32 %51, i32 0)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = call i32 @log_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %10, align 4
  br label %193

57:                                               ; preds = %49
  %58 = load %struct.sockopt_test*, %struct.sockopt_test** %5, align 8
  %59 = getelementptr inbounds %struct.sockopt_test, %struct.sockopt_test* %58, i32 0, i32 7
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %104

62:                                               ; preds = %57
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.sockopt_test*, %struct.sockopt_test** %5, align 8
  %65 = getelementptr inbounds %struct.sockopt_test, %struct.sockopt_test* %64, i32 0, i32 10
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.sockopt_test*, %struct.sockopt_test** %5, align 8
  %68 = getelementptr inbounds %struct.sockopt_test, %struct.sockopt_test* %67, i32 0, i32 9
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.sockopt_test*, %struct.sockopt_test** %5, align 8
  %71 = getelementptr inbounds %struct.sockopt_test, %struct.sockopt_test* %70, i32 0, i32 8
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.sockopt_test*, %struct.sockopt_test** %5, align 8
  %74 = getelementptr inbounds %struct.sockopt_test, %struct.sockopt_test* %73, i32 0, i32 7
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @setsockopt(i32 %63, i32 %66, i32 %69, i32 %72, i32 %75)
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %103

79:                                               ; preds = %62
  %80 = load i64, i64* @errno, align 8
  %81 = load i64, i64* @EPERM, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %90

83:                                               ; preds = %79
  %84 = load %struct.sockopt_test*, %struct.sockopt_test** %5, align 8
  %85 = getelementptr inbounds %struct.sockopt_test, %struct.sockopt_test* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @EPERM_SETSOCKOPT, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  br label %190

90:                                               ; preds = %83, %79
  %91 = load i64, i64* @errno, align 8
  %92 = load i64, i64* @EFAULT, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %101

94:                                               ; preds = %90
  %95 = load %struct.sockopt_test*, %struct.sockopt_test** %5, align 8
  %96 = getelementptr inbounds %struct.sockopt_test, %struct.sockopt_test* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @EFAULT_SETSOCKOPT, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %94
  br label %187

101:                                              ; preds = %94, %90
  %102 = call i32 @log_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %10, align 4
  br label %190

103:                                              ; preds = %62
  br label %104

104:                                              ; preds = %103, %57
  %105 = load %struct.sockopt_test*, %struct.sockopt_test** %5, align 8
  %106 = getelementptr inbounds %struct.sockopt_test, %struct.sockopt_test* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %180

109:                                              ; preds = %104
  %110 = load %struct.sockopt_test*, %struct.sockopt_test** %5, align 8
  %111 = getelementptr inbounds %struct.sockopt_test, %struct.sockopt_test* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = call i8* @malloc(i64 %112)
  store i8* %113, i8** %9, align 8
  %114 = load %struct.sockopt_test*, %struct.sockopt_test** %5, align 8
  %115 = getelementptr inbounds %struct.sockopt_test, %struct.sockopt_test* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  store i64 %116, i64* %11, align 8
  %117 = load %struct.sockopt_test*, %struct.sockopt_test** %5, align 8
  %118 = getelementptr inbounds %struct.sockopt_test, %struct.sockopt_test* %117, i32 0, i32 6
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %109
  br label %126

122:                                              ; preds = %109
  %123 = load %struct.sockopt_test*, %struct.sockopt_test** %5, align 8
  %124 = getelementptr inbounds %struct.sockopt_test, %struct.sockopt_test* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  br label %126

126:                                              ; preds = %122, %121
  %127 = phi i64 [ %119, %121 ], [ %125, %122 ]
  store i64 %127, i64* %12, align 8
  %128 = load i32, i32* %6, align 4
  %129 = load %struct.sockopt_test*, %struct.sockopt_test** %5, align 8
  %130 = getelementptr inbounds %struct.sockopt_test, %struct.sockopt_test* %129, i32 0, i32 5
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.sockopt_test*, %struct.sockopt_test** %5, align 8
  %133 = getelementptr inbounds %struct.sockopt_test, %struct.sockopt_test* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  %135 = load i8*, i8** %9, align 8
  %136 = call i32 @getsockopt(i32 %128, i32 %131, i32 %134, i8* %135, i64* %11)
  store i32 %136, i32* %7, align 4
  %137 = load i32, i32* %7, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %163

139:                                              ; preds = %126
  %140 = load i64, i64* @errno, align 8
  %141 = load i64, i64* @EPERM, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %150

143:                                              ; preds = %139
  %144 = load %struct.sockopt_test*, %struct.sockopt_test** %5, align 8
  %145 = getelementptr inbounds %struct.sockopt_test, %struct.sockopt_test* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @EPERM_GETSOCKOPT, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %143
  br label %187

150:                                              ; preds = %143, %139
  %151 = load i64, i64* @errno, align 8
  %152 = load i64, i64* @EFAULT, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %161

154:                                              ; preds = %150
  %155 = load %struct.sockopt_test*, %struct.sockopt_test** %5, align 8
  %156 = getelementptr inbounds %struct.sockopt_test, %struct.sockopt_test* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @EFAULT_GETSOCKOPT, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %154
  br label %187

161:                                              ; preds = %154, %150
  %162 = call i32 @log_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %10, align 4
  br label %187

163:                                              ; preds = %126
  %164 = load i64, i64* %11, align 8
  %165 = load i64, i64* %12, align 8
  %166 = icmp ne i64 %164, %165
  br i1 %166, label %167, label %169

167:                                              ; preds = %163
  store i64 0, i64* @errno, align 8
  %168 = call i32 @log_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %10, align 4
  br label %187

169:                                              ; preds = %163
  %170 = load i8*, i8** %9, align 8
  %171 = load %struct.sockopt_test*, %struct.sockopt_test** %5, align 8
  %172 = getelementptr inbounds %struct.sockopt_test, %struct.sockopt_test* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = load i64, i64* %11, align 8
  %175 = call i64 @memcmp(i8* %170, i32 %173, i64 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %169
  store i64 0, i64* @errno, align 8
  %178 = call i32 @log_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* %10, align 4
  br label %187

179:                                              ; preds = %169
  br label %180

180:                                              ; preds = %179, %104
  %181 = load %struct.sockopt_test*, %struct.sockopt_test** %5, align 8
  %182 = getelementptr inbounds %struct.sockopt_test, %struct.sockopt_test* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @OK, align 8
  %185 = icmp ne i64 %183, %184
  %186 = zext i1 %185 to i32
  store i32 %186, i32* %10, align 4
  br label %187

187:                                              ; preds = %180, %177, %167, %161, %160, %149, %100
  %188 = load i8*, i8** %9, align 8
  %189 = call i32 @free(i8* %188)
  br label %190

190:                                              ; preds = %187, %101, %89
  %191 = load i32, i32* %6, align 4
  %192 = call i32 @close(i32 %191)
  br label %193

193:                                              ; preds = %190, %55
  %194 = load i32, i32* %8, align 4
  %195 = load i32, i32* %4, align 4
  %196 = load %struct.sockopt_test*, %struct.sockopt_test** %5, align 8
  %197 = getelementptr inbounds %struct.sockopt_test, %struct.sockopt_test* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = call i32 @bpf_prog_detach2(i32 %194, i32 %195, i32 %198)
  br label %200

200:                                              ; preds = %193, %47, %46
  %201 = load i32, i32* %8, align 4
  %202 = call i32 @close(i32 %201)
  %203 = load i32, i32* %10, align 4
  store i32 %203, i32* %3, align 4
  br label %204

204:                                              ; preds = %200, %29, %28
  %205 = load i32, i32* %3, align 4
  ret i32 %205
}

declare dso_local i32 @load_prog(i32, i32) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i32 @bpf_prog_attach(i32, i32, i32, i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @setsockopt(i32, i32, i32, i32, i32) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @getsockopt(i32, i32, i32, i8*, i64*) #1

declare dso_local i64 @memcmp(i8*, i32, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @bpf_prog_detach2(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
