; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_nettest.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_nettest.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock_args = type { i64, i16, i32, i32, i32, i8*, i32, i32, i8*, i64, i32, i32, i32, i32, i32, i32 }
%struct.protoent = type { i32 }

@SOCK_STREAM = common dso_local global i64 0, align 8
@DEFAULT_PORT = common dso_local global i16 0, align 2
@AF_INET = common dso_local global i32 0, align 4
@GETOPT_STR = common dso_local global i32 0, align 4
@server_mode = common dso_local global i32 0, align 4
@optarg = external dso_local global i8*, align 8
@ADDR_TYPE_LOCAL = common dso_local global i32 0, align 4
@ADDR_TYPE_REMOTE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Invalid port\0A\00", align 1
@INT_MAX = common dso_local global i32 0, align 4
@prog_timeout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Invalid timeout\0A\00", align 1
@SOCK_DGRAM = common dso_local global i64 0, align 8
@SOCK_RAW = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"Invalid protocol\0A\00", align 1
@iter = common dso_local global i64 0, align 8
@msg = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"Invalid device name\0A\00", align 1
@interactive = common dso_local global i32 0, align 4
@ADDR_TYPE_MCAST = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@ADDR_TYPE_EXPECTED_LOCAL = common dso_local global i32 0, align 4
@ADDR_TYPE_EXPECTED_REMOTE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"Invalid expected device\0A\00", align 1
@quiet = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [74 x i8] c"MD5 passwords apply to TCP only and require a remote ip for the password\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Device binding not specified\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"Invalid number of messages to send\0A\00", align 1
@IPPROTO_TCP = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [21 x i8] c"Invalid port number\0A\00", align 1
@.str.9 = private unnamed_addr constant [55 x i8] c"Local (server mode) or remote IP (client IP) required\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.sock_args, align 8
  %7 = alloca %struct.protoent*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = bitcast %struct.sock_args* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 80, i1 false)
  %12 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %6, i32 0, i32 0
  %13 = load i64, i64* @SOCK_STREAM, align 8
  store i64 %13, i64* %12, align 8
  %14 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %6, i32 0, i32 1
  %15 = load i16, i16* @DEFAULT_PORT, align 2
  store i16 %15, i16* %14, align 8
  %16 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %6, i32 0, i32 15
  %17 = load i32, i32* @AF_INET, align 4
  store i32 %17, i32* %16, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %179, %2
  %19 = load i32, i32* %4, align 4
  %20 = load i8**, i8*** %5, align 8
  %21 = load i32, i32* @GETOPT_STR, align 4
  %22 = call i32 @getopt(i32 %19, i8** %20, i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = icmp ne i32 %22, -1
  br i1 %23, label %24, label %180

24:                                               ; preds = %18
  %25 = load i32, i32* %10, align 4
  switch i32 %25, label %174 [
    i32 115, label %26
    i32 70, label %27
    i32 108, label %28
    i32 114, label %36
    i32 112, label %44
    i32 116, label %55
    i32 68, label %64
    i32 82, label %67
    i32 80, label %71
    i32 110, label %92
    i32 76, label %95
    i32 77, label %99
    i32 83, label %102
    i32 67, label %104
    i32 100, label %106
    i32 105, label %120
    i32 103, label %121
    i32 54, label %131
    i32 98, label %134
    i32 48, label %136
    i32 49, label %144
    i32 50, label %152
    i32 113, label %173
  ]

26:                                               ; preds = %24
  store i32 1, i32* @server_mode, align 4
  br label %179

27:                                               ; preds = %24
  store i32 1, i32* %9, align 4
  br label %179

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %6, i32 0, i32 2
  store i32 1, i32* %29, align 4
  %30 = load i8*, i8** @optarg, align 8
  %31 = load i32, i32* @ADDR_TYPE_LOCAL, align 4
  %32 = call i32 @convert_addr(%struct.sock_args* %6, i8* %30, i32 %31)
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 1, i32* %3, align 4
  br label %303

35:                                               ; preds = %28
  br label %179

36:                                               ; preds = %24
  %37 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %6, i32 0, i32 3
  store i32 1, i32* %37, align 8
  %38 = load i8*, i8** @optarg, align 8
  %39 = load i32, i32* @ADDR_TYPE_REMOTE, align 4
  %40 = call i32 @convert_addr(%struct.sock_args* %6, i8* %38, i32 %39)
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i32 1, i32* %3, align 4
  br label %303

43:                                               ; preds = %36
  br label %179

44:                                               ; preds = %24
  %45 = load i8*, i8** @optarg, align 8
  %46 = call i32 @str_to_uint(i8* %45, i32 1, i32 65535, i32* %8)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i32, i32* @stderr, align 4
  %50 = call i32 @fprintf(i32 %49, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %303

51:                                               ; preds = %44
  %52 = load i32, i32* %8, align 4
  %53 = trunc i32 %52 to i16
  %54 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %6, i32 0, i32 1
  store i16 %53, i16* %54, align 8
  br label %179

55:                                               ; preds = %24
  %56 = load i8*, i8** @optarg, align 8
  %57 = load i32, i32* @INT_MAX, align 4
  %58 = call i32 @str_to_uint(i8* %56, i32 0, i32 %57, i32* @prog_timeout)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i32, i32* @stderr, align 4
  %62 = call i32 @fprintf(i32 %61, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %303

63:                                               ; preds = %55
  br label %179

64:                                               ; preds = %24
  %65 = load i64, i64* @SOCK_DGRAM, align 8
  %66 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %6, i32 0, i32 0
  store i64 %65, i64* %66, align 8
  br label %179

67:                                               ; preds = %24
  %68 = load i64, i64* @SOCK_RAW, align 8
  %69 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %6, i32 0, i32 0
  store i64 %68, i64* %69, align 8
  %70 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %6, i32 0, i32 1
  store i16 0, i16* %70, align 8
  br label %179

71:                                               ; preds = %24
  %72 = load i8*, i8** @optarg, align 8
  %73 = call %struct.protoent* @getprotobyname(i8* %72)
  store %struct.protoent* %73, %struct.protoent** %7, align 8
  %74 = load %struct.protoent*, %struct.protoent** %7, align 8
  %75 = icmp ne %struct.protoent* %74, null
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load %struct.protoent*, %struct.protoent** %7, align 8
  %78 = getelementptr inbounds %struct.protoent, %struct.protoent* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %6, i32 0, i32 4
  store i32 %79, i32* %80, align 4
  br label %91

81:                                               ; preds = %71
  %82 = load i8*, i8** @optarg, align 8
  %83 = call i32 @str_to_uint(i8* %82, i32 0, i32 65535, i32* %8)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %81
  %86 = load i32, i32* @stderr, align 4
  %87 = call i32 @fprintf(i32 %86, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %303

88:                                               ; preds = %81
  %89 = load i32, i32* %8, align 4
  %90 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %6, i32 0, i32 4
  store i32 %89, i32* %90, align 4
  br label %91

91:                                               ; preds = %88, %76
  br label %179

92:                                               ; preds = %24
  %93 = load i8*, i8** @optarg, align 8
  %94 = call i64 @atoi(i8* %93)
  store i64 %94, i64* @iter, align 8
  br label %179

95:                                               ; preds = %24
  %96 = load i8*, i8** @optarg, align 8
  %97 = call i64 @atoi(i8* %96)
  %98 = call i32* @random_msg(i64 %97)
  store i32* %98, i32** @msg, align 8
  br label %179

99:                                               ; preds = %24
  %100 = load i8*, i8** @optarg, align 8
  %101 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %6, i32 0, i32 5
  store i8* %100, i8** %101, align 8
  br label %179

102:                                              ; preds = %24
  %103 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %6, i32 0, i32 6
  store i32 1, i32* %103, align 8
  br label %179

104:                                              ; preds = %24
  %105 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %6, i32 0, i32 7
  store i32 1, i32* %105, align 4
  br label %179

106:                                              ; preds = %24
  %107 = load i8*, i8** @optarg, align 8
  %108 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %6, i32 0, i32 8
  store i8* %107, i8** %108, align 8
  %109 = load i8*, i8** @optarg, align 8
  %110 = call i8* @get_ifidx(i8* %109)
  %111 = ptrtoint i8* %110 to i64
  %112 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %6, i32 0, i32 9
  store i64 %111, i64* %112, align 8
  %113 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %6, i32 0, i32 9
  %114 = load i64, i64* %113, align 8
  %115 = icmp slt i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %106
  %117 = load i32, i32* @stderr, align 4
  %118 = call i32 @fprintf(i32 %117, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %303

119:                                              ; preds = %106
  br label %179

120:                                              ; preds = %24
  store i32 1, i32* @interactive, align 4
  br label %179

121:                                              ; preds = %24
  %122 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %6, i32 0, i32 10
  store i32 1, i32* %122, align 8
  %123 = load i8*, i8** @optarg, align 8
  %124 = load i32, i32* @ADDR_TYPE_MCAST, align 4
  %125 = call i32 @convert_addr(%struct.sock_args* %6, i8* %123, i32 %124)
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %121
  store i32 1, i32* %3, align 4
  br label %303

128:                                              ; preds = %121
  %129 = load i64, i64* @SOCK_DGRAM, align 8
  %130 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %6, i32 0, i32 0
  store i64 %129, i64* %130, align 8
  br label %179

131:                                              ; preds = %24
  %132 = load i32, i32* @AF_INET6, align 4
  %133 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %6, i32 0, i32 15
  store i32 %132, i32* %133, align 4
  br label %179

134:                                              ; preds = %24
  %135 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %6, i32 0, i32 11
  store i32 1, i32* %135, align 4
  br label %179

136:                                              ; preds = %24
  %137 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %6, i32 0, i32 12
  store i32 1, i32* %137, align 8
  %138 = load i8*, i8** @optarg, align 8
  %139 = load i32, i32* @ADDR_TYPE_EXPECTED_LOCAL, align 4
  %140 = call i32 @convert_addr(%struct.sock_args* %6, i8* %138, i32 %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %136
  store i32 1, i32* %3, align 4
  br label %303

143:                                              ; preds = %136
  br label %179

144:                                              ; preds = %24
  %145 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %6, i32 0, i32 13
  store i32 1, i32* %145, align 4
  %146 = load i8*, i8** @optarg, align 8
  %147 = load i32, i32* @ADDR_TYPE_EXPECTED_REMOTE, align 4
  %148 = call i32 @convert_addr(%struct.sock_args* %6, i8* %146, i32 %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %144
  store i32 1, i32* %3, align 4
  br label %303

151:                                              ; preds = %144
  br label %179

152:                                              ; preds = %24
  %153 = load i8*, i8** @optarg, align 8
  %154 = load i32, i32* @INT_MAX, align 4
  %155 = call i32 @str_to_uint(i8* %153, i32 0, i32 %154, i32* %8)
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %152
  %158 = load i32, i32* %8, align 4
  %159 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %6, i32 0, i32 14
  store i32 %158, i32* %159, align 8
  br label %172

160:                                              ; preds = %152
  %161 = load i8*, i8** @optarg, align 8
  %162 = call i8* @get_ifidx(i8* %161)
  %163 = ptrtoint i8* %162 to i32
  %164 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %6, i32 0, i32 14
  store i32 %163, i32* %164, align 8
  %165 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %6, i32 0, i32 14
  %166 = load i32, i32* %165, align 8
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %160
  %169 = load i32, i32* @stderr, align 4
  %170 = call i32 @fprintf(i32 %169, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %303

171:                                              ; preds = %160
  br label %172

172:                                              ; preds = %171, %157
  br label %179

173:                                              ; preds = %24
  store i32 1, i32* @quiet, align 4
  br label %179

174:                                              ; preds = %24
  %175 = load i8**, i8*** %5, align 8
  %176 = getelementptr inbounds i8*, i8** %175, i64 0
  %177 = load i8*, i8** %176, align 8
  %178 = call i32 @print_usage(i8* %177)
  store i32 1, i32* %3, align 4
  br label %303

179:                                              ; preds = %173, %172, %151, %143, %134, %131, %128, %120, %119, %104, %102, %99, %95, %92, %91, %67, %64, %63, %51, %43, %35, %27, %26
  br label %18

180:                                              ; preds = %18
  %181 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %6, i32 0, i32 5
  %182 = load i8*, i8** %181, align 8
  %183 = icmp ne i8* %182, null
  br i1 %183, label %184, label %195

184:                                              ; preds = %180
  %185 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %6, i32 0, i32 3
  %186 = load i32, i32* %185, align 8
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %193

188:                                              ; preds = %184
  %189 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %6, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @SOCK_STREAM, align 8
  %192 = icmp ne i64 %190, %191
  br i1 %192, label %193, label %195

193:                                              ; preds = %188, %184
  %194 = call i32 @log_error(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %303

195:                                              ; preds = %188, %180
  %196 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %6, i32 0, i32 6
  %197 = load i32, i32* %196, align 8
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %203, label %199

199:                                              ; preds = %195
  %200 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %6, i32 0, i32 7
  %201 = load i32, i32* %200, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %210

203:                                              ; preds = %199, %195
  %204 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %6, i32 0, i32 9
  %205 = load i64, i64* %204, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %210, label %207

207:                                              ; preds = %203
  %208 = load i32, i32* @stderr, align 4
  %209 = call i32 @fprintf(i32 %208, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %303

210:                                              ; preds = %203, %199
  %211 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %6, i32 0, i32 6
  %212 = load i32, i32* %211, align 8
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %218, label %214

214:                                              ; preds = %210
  %215 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %6, i32 0, i32 7
  %216 = load i32, i32* %215, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %220

218:                                              ; preds = %214, %210
  %219 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %6, i32 0, i32 8
  store i8* null, i8** %219, align 8
  br label %220

220:                                              ; preds = %218, %214
  %221 = load i64, i64* @iter, align 8
  %222 = icmp eq i64 %221, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %220
  %224 = load i32, i32* @stderr, align 4
  %225 = call i32 @fprintf(i32 %224, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %303

226:                                              ; preds = %220
  %227 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %6, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = load i64, i64* @SOCK_STREAM, align 8
  %230 = icmp eq i64 %228, %229
  br i1 %230, label %231, label %238

231:                                              ; preds = %226
  %232 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %6, i32 0, i32 4
  %233 = load i32, i32* %232, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %238, label %235

235:                                              ; preds = %231
  %236 = load i32, i32* @IPPROTO_TCP, align 4
  %237 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %6, i32 0, i32 4
  store i32 %236, i32* %237, align 4
  br label %238

238:                                              ; preds = %235, %231, %226
  %239 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %6, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = load i64, i64* @SOCK_DGRAM, align 8
  %242 = icmp eq i64 %240, %241
  br i1 %242, label %243, label %250

243:                                              ; preds = %238
  %244 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %6, i32 0, i32 4
  %245 = load i32, i32* %244, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %250, label %247

247:                                              ; preds = %243
  %248 = load i32, i32* @IPPROTO_UDP, align 4
  %249 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %6, i32 0, i32 4
  store i32 %248, i32* %249, align 4
  br label %250

250:                                              ; preds = %247, %243, %238
  %251 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %6, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = load i64, i64* @SOCK_STREAM, align 8
  %254 = icmp eq i64 %252, %253
  br i1 %254, label %260, label %255

255:                                              ; preds = %250
  %256 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %6, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = load i64, i64* @SOCK_DGRAM, align 8
  %259 = icmp eq i64 %257, %258
  br i1 %259, label %260, label %268

260:                                              ; preds = %255, %250
  %261 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %6, i32 0, i32 1
  %262 = load i16, i16* %261, align 8
  %263 = zext i16 %262 to i32
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %265, label %268

265:                                              ; preds = %260
  %266 = load i32, i32* @stderr, align 4
  %267 = call i32 @fprintf(i32 %266, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %303

268:                                              ; preds = %260, %255
  %269 = load i32, i32* @server_mode, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %286, label %271

271:                                              ; preds = %268
  %272 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %6, i32 0, i32 10
  %273 = load i32, i32* %272, align 8
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %286, label %275

275:                                              ; preds = %271
  %276 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %6, i32 0, i32 3
  %277 = load i32, i32* %276, align 8
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %286, label %279

279:                                              ; preds = %275
  %280 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %6, i32 0, i32 2
  %281 = load i32, i32* %280, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %286, label %283

283:                                              ; preds = %279
  %284 = load i32, i32* @stderr, align 4
  %285 = call i32 @fprintf(i32 %284, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.9, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %303

286:                                              ; preds = %279, %275, %271, %268
  %287 = load i32, i32* @interactive, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %290

289:                                              ; preds = %286
  store i32 0, i32* @prog_timeout, align 4
  store i32* null, i32** @msg, align 8
  br label %290

290:                                              ; preds = %289, %286
  %291 = load i32, i32* @server_mode, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %301

293:                                              ; preds = %290
  br label %294

294:                                              ; preds = %296, %293
  %295 = call i32 @do_server(%struct.sock_args* %6)
  store i32 %295, i32* %10, align 4
  br label %296

296:                                              ; preds = %294
  %297 = load i32, i32* %9, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %294, label %299

299:                                              ; preds = %296
  %300 = load i32, i32* %10, align 4
  store i32 %300, i32* %3, align 4
  br label %303

301:                                              ; preds = %290
  %302 = call i32 @do_client(%struct.sock_args* %6)
  store i32 %302, i32* %3, align 4
  br label %303

303:                                              ; preds = %301, %299, %283, %265, %223, %207, %193, %174, %168, %150, %142, %127, %116, %85, %60, %48, %42, %34
  %304 = load i32, i32* %3, align 4
  ret i32 %304
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @getopt(i32, i8**, i32) #2

declare dso_local i32 @convert_addr(%struct.sock_args*, i8*, i32) #2

declare dso_local i32 @str_to_uint(i8*, i32, i32, i32*) #2

declare dso_local i32 @fprintf(i32, i8*) #2

declare dso_local %struct.protoent* @getprotobyname(i8*) #2

declare dso_local i64 @atoi(i8*) #2

declare dso_local i32* @random_msg(i64) #2

declare dso_local i8* @get_ifidx(i8*) #2

declare dso_local i32 @print_usage(i8*) #2

declare dso_local i32 @log_error(i8*) #2

declare dso_local i32 @do_server(%struct.sock_args*) #2

declare dso_local i32 @do_client(%struct.sock_args*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
