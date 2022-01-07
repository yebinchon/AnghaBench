; ModuleID = '/home/carl/AnghaBench/linux/tools/firewire/extr_nosy-dump.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/firewire/extr_nosy-dump.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pollfd = type { i32, i64, i8* }

@SIGINT = common dso_local global i32 0, align 4
@sigint_handler = common dso_local global i32 0, align 4
@sys_sigint_handler = common dso_local global i32 0, align 4
@options = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@option_version = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"dump tool for nosy sniffer, version %s\0A\00", align 1
@VERSION = common dso_local global i8* null, align 8
@__BYTE_ORDER = common dso_local global i64 0, align 8
@__LITTLE_ENDIAN = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"warning: nosy has only been tested on little endian machines\0A\00", align 1
@option_input = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Could not open %s, %m\0A\00", align 1
@option_nosy_device = common dso_local global i8* null, align 8
@O_RDWR = common dso_local global i32 0, align 4
@option_view = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"transaction\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@option_output = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@_IOLBF = common dso_local global i32 0, align 4
@BUFSIZ = common dso_local global i32 0, align 4
@option_iso = common dso_local global i32 0, align 4
@TCODE_STREAM_DATA = common dso_local global i32 0, align 4
@option_cycle_start = common dso_local global i32 0, align 4
@TCODE_CYCLE_START = common dso_local global i32 0, align 4
@NOSY_IOC_FILTER = common dso_local global i32 0, align 4
@NOSY_IOC_START = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i8* null, align 8
@STDIN_FILENO = common dso_local global i32 0, align 4
@run = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [131072 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  %16 = alloca [2 x %struct.pollfd], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 -1, i32* %11, align 4
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  %17 = load i32, i32* @SIGINT, align 4
  %18 = load i32, i32* @sigint_handler, align 4
  %19 = call i32 @signal(i32 %17, i32 %18)
  store i32 %19, i32* @sys_sigint_handler, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i8**, i8*** %5, align 8
  %22 = load i32, i32* @options, align 4
  %23 = call i32 @poptGetContext(i32* null, i32 %20, i8** %21, i32 %22, i32 0)
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* %14, align 4
  %25 = call i32 @poptGetNextOpt(i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %26, -1
  br i1 %27, label %28, label %32

28:                                               ; preds = %2
  %29 = load i32, i32* %14, align 4
  %30 = load i32, i32* @stdout, align 4
  %31 = call i32 @poptPrintUsage(i32 %29, i32 %30, i32 0)
  store i32 -1, i32* %3, align 4
  br label %227

32:                                               ; preds = %2
  %33 = load i64, i64* @option_version, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i8*, i8** @VERSION, align 8
  %37 = call i32 @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %36)
  store i32 0, i32* %3, align 4
  br label %227

38:                                               ; preds = %32
  %39 = load i64, i64* @__BYTE_ORDER, align 8
  %40 = load i64, i64* @__LITTLE_ENDIAN, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32, i32* @stderr, align 4
  %44 = call i32 (i32, i8*, ...) @fprintf(i32 %43, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0))
  br label %45

45:                                               ; preds = %42, %38
  %46 = load i8*, i8** @option_input, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %58

48:                                               ; preds = %45
  %49 = load i8*, i8** @option_input, align 8
  %50 = call i32* @fopen(i8* %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %50, i32** %13, align 8
  %51 = load i32*, i32** %13, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load i32, i32* @stderr, align 4
  %55 = load i8*, i8** @option_input, align 8
  %56 = call i32 (i32, i8*, ...) @fprintf(i32 %54, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %55)
  store i32 -1, i32* %3, align 4
  br label %227

57:                                               ; preds = %48
  br label %70

58:                                               ; preds = %45
  %59 = load i8*, i8** @option_nosy_device, align 8
  %60 = load i32, i32* @O_RDWR, align 4
  %61 = call i32 @open(i8* %59, i32 %60)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = load i32, i32* @stderr, align 4
  %66 = load i8*, i8** @option_nosy_device, align 8
  %67 = call i32 (i32, i8*, ...) @fprintf(i32 %65, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %66)
  store i32 -1, i32* %3, align 4
  br label %227

68:                                               ; preds = %58
  %69 = call i32 (...) @set_input_mode()
  br label %70

70:                                               ; preds = %68, %57
  %71 = load i32, i32* @option_view, align 4
  %72 = call i64 @strcmp(i32 %71, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  store i32 128, i32* %10, align 4
  br label %82

75:                                               ; preds = %70
  %76 = load i32, i32* @option_view, align 4
  %77 = call i64 @strcmp(i32 %76, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  store i32 129, i32* %10, align 4
  br label %81

80:                                               ; preds = %75
  store i32 130, i32* %10, align 4
  br label %81

81:                                               ; preds = %80, %79
  br label %82

82:                                               ; preds = %81, %74
  %83 = load i8*, i8** @option_output, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %95

85:                                               ; preds = %82
  %86 = load i8*, i8** @option_output, align 8
  %87 = call i32* @fopen(i8* %86, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store i32* %87, i32** %12, align 8
  %88 = load i32*, i32** %12, align 8
  %89 = icmp eq i32* %88, null
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = load i32, i32* @stderr, align 4
  %92 = load i8*, i8** @option_output, align 8
  %93 = call i32 (i32, i8*, ...) @fprintf(i32 %91, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %92)
  store i32 -1, i32* %3, align 4
  br label %227

94:                                               ; preds = %85
  br label %95

95:                                               ; preds = %94, %82
  %96 = load i32, i32* @stdout, align 4
  %97 = load i32, i32* @_IOLBF, align 4
  %98 = load i32, i32* @BUFSIZ, align 4
  %99 = call i32 @setvbuf(i32 %96, i32* null, i32 %97, i32 %98)
  store i32 -1, i32* %7, align 4
  %100 = load i32, i32* @option_iso, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %108, label %102

102:                                              ; preds = %95
  %103 = load i32, i32* @TCODE_STREAM_DATA, align 4
  %104 = shl i32 1, %103
  %105 = xor i32 %104, -1
  %106 = load i32, i32* %7, align 4
  %107 = and i32 %106, %105
  store i32 %107, i32* %7, align 4
  br label %108

108:                                              ; preds = %102, %95
  %109 = load i32, i32* @option_cycle_start, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %117, label %111

111:                                              ; preds = %108
  %112 = load i32, i32* @TCODE_CYCLE_START, align 4
  %113 = shl i32 1, %112
  %114 = xor i32 %113, -1
  %115 = load i32, i32* %7, align 4
  %116 = and i32 %115, %114
  store i32 %116, i32* %7, align 4
  br label %117

117:                                              ; preds = %111, %108
  %118 = load i32, i32* %10, align 4
  %119 = icmp eq i32 %118, 129
  br i1 %119, label %120, label %124

120:                                              ; preds = %117
  %121 = load i32, i32* @TCODE_CYCLE_START, align 4
  %122 = shl i32 1, %121
  %123 = xor i32 %122, -1
  store i32 %123, i32* %7, align 4
  br label %124

124:                                              ; preds = %120, %117
  %125 = load i32, i32* %11, align 4
  %126 = load i32, i32* @NOSY_IOC_FILTER, align 4
  %127 = load i32, i32* %7, align 4
  %128 = call i32 (i32, i32, ...) @ioctl(i32 %125, i32 %126, i32 %127)
  %129 = load i32, i32* %11, align 4
  %130 = load i32, i32* @NOSY_IOC_START, align 4
  %131 = call i32 (i32, i32, ...) @ioctl(i32 %129, i32 %130)
  %132 = load i32, i32* %11, align 4
  %133 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %16, i64 0, i64 0
  %134 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 16
  %135 = load i8*, i8** @POLLIN, align 8
  %136 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %16, i64 0, i64 0
  %137 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %136, i32 0, i32 2
  store i8* %135, i8** %137, align 16
  %138 = load i32, i32* @STDIN_FILENO, align 4
  %139 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %16, i64 0, i64 1
  %140 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 8
  %141 = load i8*, i8** @POLLIN, align 8
  %142 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %16, i64 0, i64 1
  %143 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %142, i32 0, i32 2
  store i8* %141, i8** %143, align 8
  br label %144

144:                                              ; preds = %215, %189, %124
  %145 = load i64, i64* @run, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %216

147:                                              ; preds = %144
  %148 = load i32*, i32** %13, align 8
  %149 = icmp ne i32* %148, null
  br i1 %149, label %150, label %160

150:                                              ; preds = %147
  %151 = load i32*, i32** %13, align 8
  %152 = call i32 @fread(i32* %8, i32 4, i32 1, i32* %151)
  %153 = icmp ne i32 %152, 1
  br i1 %153, label %154, label %155

154:                                              ; preds = %150
  store i32 0, i32* %3, align 4
  br label %227

155:                                              ; preds = %150
  %156 = getelementptr inbounds [131072 x i32], [131072 x i32]* %6, i64 0, i64 0
  %157 = load i32, i32* %8, align 4
  %158 = load i32*, i32** %13, align 8
  %159 = call i32 @fread(i32* %156, i32 1, i32 %157, i32* %158)
  br label %191

160:                                              ; preds = %147
  %161 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %16, i64 0, i64 0
  %162 = call i32 @poll(%struct.pollfd* %161, i32 2, i32 -1)
  %163 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %16, i64 0, i64 1
  %164 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %180

167:                                              ; preds = %160
  %168 = load i32, i32* @STDIN_FILENO, align 4
  %169 = call i32 (i32, ...) @read(i32 %168, i8* %15, i64 1)
  %170 = load i8, i8* %15, align 1
  %171 = sext i8 %170 to i32
  switch i32 %171, label %179 [
    i32 113, label %172
  ]

172:                                              ; preds = %167
  %173 = load i32*, i32** %12, align 8
  %174 = icmp ne i32* %173, null
  br i1 %174, label %175, label %178

175:                                              ; preds = %172
  %176 = load i32*, i32** %12, align 8
  %177 = call i32 @fclose(i32* %176)
  br label %178

178:                                              ; preds = %175, %172
  store i32 0, i32* %3, align 4
  br label %227

179:                                              ; preds = %167
  br label %180

180:                                              ; preds = %179, %160
  %181 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %16, i64 0, i64 0
  %182 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %180
  %186 = load i32, i32* %11, align 4
  %187 = getelementptr inbounds [131072 x i32], [131072 x i32]* %6, i64 0, i64 0
  %188 = call i32 (i32, ...) @read(i32 %186, i32* %187, i64 524288)
  store i32 %188, i32* %8, align 4
  br label %190

189:                                              ; preds = %180
  br label %144

190:                                              ; preds = %185
  br label %191

191:                                              ; preds = %190, %155
  %192 = load i32*, i32** %12, align 8
  %193 = icmp ne i32* %192, null
  br i1 %193, label %194, label %201

194:                                              ; preds = %191
  %195 = load i32*, i32** %12, align 8
  %196 = call i32 @fwrite(i32* %8, i32 4, i32 1, i32* %195)
  %197 = getelementptr inbounds [131072 x i32], [131072 x i32]* %6, i64 0, i64 0
  %198 = load i32, i32* %8, align 4
  %199 = load i32*, i32** %12, align 8
  %200 = call i32 @fwrite(i32* %197, i32 1, i32 %198, i32* %199)
  br label %201

201:                                              ; preds = %194, %191
  %202 = load i32, i32* %10, align 4
  switch i32 %202, label %215 [
    i32 128, label %203
    i32 130, label %207
    i32 129, label %211
  ]

203:                                              ; preds = %201
  %204 = getelementptr inbounds [131072 x i32], [131072 x i32]* %6, i64 0, i64 0
  %205 = load i32, i32* %8, align 4
  %206 = call i32 @handle_packet(i32* %204, i32 %205)
  br label %215

207:                                              ; preds = %201
  %208 = getelementptr inbounds [131072 x i32], [131072 x i32]* %6, i64 0, i64 0
  %209 = load i32, i32* %8, align 4
  %210 = call i32 @print_packet(i32* %208, i32 %209)
  br label %215

211:                                              ; preds = %201
  %212 = getelementptr inbounds [131072 x i32], [131072 x i32]* %6, i64 0, i64 0
  %213 = load i32, i32* %8, align 4
  %214 = call i32 @print_stats(i32* %212, i32 %213)
  br label %215

215:                                              ; preds = %201, %211, %207, %203
  br label %144

216:                                              ; preds = %144
  %217 = load i32*, i32** %12, align 8
  %218 = icmp ne i32* %217, null
  br i1 %218, label %219, label %222

219:                                              ; preds = %216
  %220 = load i32*, i32** %12, align 8
  %221 = call i32 @fclose(i32* %220)
  br label %222

222:                                              ; preds = %219, %216
  %223 = load i32, i32* %11, align 4
  %224 = call i32 @close(i32 %223)
  %225 = load i32, i32* %14, align 4
  %226 = call i32 @poptFreeContext(i32 %225)
  store i32 0, i32* %3, align 4
  br label %227

227:                                              ; preds = %222, %178, %154, %90, %64, %53, %35, %28
  %228 = load i32, i32* %3, align 4
  ret i32 %228
}

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @poptGetContext(i32*, i32, i8**, i32, i32) #1

declare dso_local i32 @poptGetNextOpt(i32) #1

declare dso_local i32 @poptPrintUsage(i32, i32, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @set_input_mode(...) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @setvbuf(i32, i32*, i32, i32) #1

declare dso_local i32 @ioctl(i32, i32, ...) #1

declare dso_local i32 @fread(i32*, i32, i32, i32*) #1

declare dso_local i32 @poll(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @read(i32, ...) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @fwrite(i32*, i32, i32, i32*) #1

declare dso_local i32 @handle_packet(i32*, i32) #1

declare dso_local i32 @print_packet(i32*, i32) #1

declare dso_local i32 @print_stats(i32*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @poptFreeContext(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
