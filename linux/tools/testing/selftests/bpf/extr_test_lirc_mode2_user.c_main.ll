; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_lirc_mode2_user.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_lirc_mode2_user.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_object = type { i32 }
%struct.pollfd = type { i32, i32 }
%struct.input_event = type { i64, i64, i32 }

@.str = private unnamed_addr constant [40 x i8] c"Usage: %s /dev/lircN /dev/input/eventM\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"test_lirc_mode2_kern.o\00", align 1
@BPF_PROG_TYPE_LIRC_MODE2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Failed to load bpf program\0A\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"failed to open lirc device %s: %m\0A\00", align 1
@BPF_LIRC_MODE2 = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [47 x i8] c"bpf_prog_detach2 not attached should fail: %m\0A\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"failed to open input device %s: %m\0A\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"Failed to query bpf programs on lirc device: %m\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"Expected nothing to be attached\0A\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"Failed to attach bpf to lirc device: %m\0A\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"Failed to send test IR message: %m\0A\00", align 1
@POLLIN = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [31 x i8] c"Failed to read decoded IR: %m\0A\00", align 1
@EV_MSC = common dso_local global i64 0, align 8
@MSC_SCAN = common dso_local global i64 0, align 8
@EV_REL = common dso_local global i64 0, align 8
@REL_Y = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [37 x i8] c"Expected one program to be attached\0A\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"bpf_prog_detach2: returned %m\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.bpf_object*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [10 x i32], align 16
  %14 = alloca [10 x i32], align 16
  %15 = alloca i32, align 4
  %16 = alloca %struct.pollfd, align 4
  %17 = alloca %struct.input_event, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 122541, i32* %11, align 4
  store i32 131329, i32* %12, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 3
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %23)
  store i32 2, i32* %3, align 4
  br label %196

25:                                               ; preds = %2
  %26 = load i32, i32* @BPF_PROG_TYPE_LIRC_MODE2, align 4
  %27 = call i32 @bpf_prog_load(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %26, %struct.bpf_object** %6, i32* %9)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %196

32:                                               ; preds = %25
  %33 = load i8**, i8*** %5, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 1
  %35 = load i8*, i8** %34, align 8
  %36 = load i32, i32* @O_RDWR, align 4
  %37 = load i32, i32* @O_NONBLOCK, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @open(i8* %35, i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %47

42:                                               ; preds = %32
  %43 = load i8**, i8*** %5, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 1
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i8* %45)
  store i32 1, i32* %3, align 4
  br label %196

47:                                               ; preds = %32
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @BPF_LIRC_MODE2, align 4
  %51 = call i32 @bpf_prog_detach2(i32 %48, i32 %49, i32 %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, -1
  br i1 %53, label %58, label %54

54:                                               ; preds = %47
  %55 = load i64, i64* @errno, align 8
  %56 = load i64, i64* @ENOENT, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54, %47
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %196

60:                                               ; preds = %54
  %61 = load i8**, i8*** %5, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 2
  %63 = load i8*, i8** %62, align 8
  %64 = load i32, i32* @O_RDONLY, align 4
  %65 = load i32, i32* @O_NONBLOCK, align 4
  %66 = or i32 %64, %65
  %67 = call i32 @open(i8* %63, i32 %66)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %70, label %75

70:                                               ; preds = %60
  %71 = load i8**, i8*** %5, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i64 1
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i8* %73)
  store i32 1, i32* %3, align 4
  br label %196

75:                                               ; preds = %60
  store i32 10, i32* %15, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @BPF_LIRC_MODE2, align 4
  %78 = getelementptr inbounds [10 x i32], [10 x i32]* %14, i64 0, i64 0
  %79 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 0
  %80 = call i32 @bpf_prog_query(i32 %76, i32 %77, i32 0, i32* %78, i32* %79, i32* %15)
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %75
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %196

85:                                               ; preds = %75
  %86 = load i32, i32* %15, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %85
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %196

90:                                               ; preds = %85
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* @BPF_LIRC_MODE2, align 4
  %94 = call i32 @bpf_prog_attach(i32 %91, i32 %92, i32 %93, i32 0)
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %90
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %196

99:                                               ; preds = %90
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @write(i32 %100, i32* %11, i32 4)
  store i32 %101, i32* %7, align 4
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = icmp ne i64 %103, 4
  br i1 %104, label %105, label %107

105:                                              ; preds = %99
  %106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %196

107:                                              ; preds = %99
  %108 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %16, i32 0, i32 0
  %109 = load i32, i32* %10, align 4
  store i32 %109, i32* %108, align 4
  %110 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %16, i32 0, i32 1
  %111 = load i32, i32* @POLLIN, align 4
  store i32 %111, i32* %110, align 4
  br label %112

112:                                              ; preds = %136, %107
  %113 = call i32 @poll(%struct.pollfd* %16, i32 1, i32 100)
  %114 = load i32, i32* %10, align 4
  %115 = call i32 @read(i32 %114, %struct.input_event* %17, i32 24)
  store i32 %115, i32* %7, align 4
  %116 = load i32, i32* %7, align 4
  %117 = sext i32 %116 to i64
  %118 = icmp ne i64 %117, 24
  br i1 %118, label %119, label %121

119:                                              ; preds = %112
  %120 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %196

121:                                              ; preds = %112
  %122 = getelementptr inbounds %struct.input_event, %struct.input_event* %17, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @EV_MSC, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %136

126:                                              ; preds = %121
  %127 = getelementptr inbounds %struct.input_event, %struct.input_event* %17, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @MSC_SCAN, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %136

131:                                              ; preds = %126
  %132 = getelementptr inbounds %struct.input_event, %struct.input_event* %17, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = icmp eq i32 %133, 57005
  br i1 %134, label %135, label %136

135:                                              ; preds = %131
  br label %137

136:                                              ; preds = %131, %126, %121
  br label %112

137:                                              ; preds = %135
  %138 = load i32, i32* %8, align 4
  %139 = call i32 @write(i32 %138, i32* %12, i32 4)
  store i32 %139, i32* %7, align 4
  %140 = load i32, i32* %7, align 4
  %141 = sext i32 %140 to i64
  %142 = icmp ne i64 %141, 4
  br i1 %142, label %143, label %145

143:                                              ; preds = %137
  %144 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %196

145:                                              ; preds = %137
  br label %146

146:                                              ; preds = %170, %145
  %147 = call i32 @poll(%struct.pollfd* %16, i32 1, i32 100)
  %148 = load i32, i32* %10, align 4
  %149 = call i32 @read(i32 %148, %struct.input_event* %17, i32 24)
  store i32 %149, i32* %7, align 4
  %150 = load i32, i32* %7, align 4
  %151 = sext i32 %150 to i64
  %152 = icmp ne i64 %151, 24
  br i1 %152, label %153, label %155

153:                                              ; preds = %146
  %154 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %196

155:                                              ; preds = %146
  %156 = getelementptr inbounds %struct.input_event, %struct.input_event* %17, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @EV_REL, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %170

160:                                              ; preds = %155
  %161 = getelementptr inbounds %struct.input_event, %struct.input_event* %17, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @REL_Y, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %170

165:                                              ; preds = %160
  %166 = getelementptr inbounds %struct.input_event, %struct.input_event* %17, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = icmp eq i32 %167, 1
  br i1 %168, label %169, label %170

169:                                              ; preds = %165
  br label %171

170:                                              ; preds = %165, %160, %155
  br label %146

171:                                              ; preds = %169
  store i32 10, i32* %15, align 4
  %172 = load i32, i32* %8, align 4
  %173 = load i32, i32* @BPF_LIRC_MODE2, align 4
  %174 = getelementptr inbounds [10 x i32], [10 x i32]* %14, i64 0, i64 0
  %175 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 0
  %176 = call i32 @bpf_prog_query(i32 %172, i32 %173, i32 0, i32* %174, i32* %175, i32* %15)
  store i32 %176, i32* %7, align 4
  %177 = load i32, i32* %7, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %171
  %180 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %196

181:                                              ; preds = %171
  %182 = load i32, i32* %15, align 4
  %183 = icmp ne i32 %182, 1
  br i1 %183, label %184, label %186

184:                                              ; preds = %181
  %185 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %196

186:                                              ; preds = %181
  %187 = load i32, i32* %9, align 4
  %188 = load i32, i32* %8, align 4
  %189 = load i32, i32* @BPF_LIRC_MODE2, align 4
  %190 = call i32 @bpf_prog_detach2(i32 %187, i32 %188, i32 %189)
  store i32 %190, i32* %7, align 4
  %191 = load i32, i32* %7, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %186
  %194 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %196

195:                                              ; preds = %186
  store i32 0, i32* %3, align 4
  br label %196

196:                                              ; preds = %195, %193, %184, %179, %153, %143, %119, %105, %97, %88, %83, %70, %58, %42, %30, %20
  %197 = load i32, i32* %3, align 4
  ret i32 %197
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @bpf_prog_load(i8*, i32, %struct.bpf_object**, i32*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @bpf_prog_detach2(i32, i32, i32) #1

declare dso_local i32 @bpf_prog_query(i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bpf_prog_attach(i32, i32, i32, i32) #1

declare dso_local i32 @write(i32, i32*, i32) #1

declare dso_local i32 @poll(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @read(i32, %struct.input_event*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
