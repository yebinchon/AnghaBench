; ModuleID = '/home/carl/AnghaBench/linux/tools/hv/extr_hv_vss_daemon.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/hv/extr_hv_vss_daemon.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i8*, i8, i32, i32 }
%struct.pollfd = type { i32, i64, i32 }
%struct.hv_vss_msg = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@main.long_options = internal global [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8 -128, i32 0, i32 104 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8 -128, i32 0, i32 110 }, %struct.option zeroinitializer], align 16
@.str = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"no-daemon\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"hn\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"Hyper-V VSS\00", align 1
@LOG_USER = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"VSS starting; pid is:%d\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"/dev/vmbus/hv_vss\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [44 x i8] c"open /dev/vmbus/hv_vss failed; error: %d %s\00", align 1
@errno = common dso_local global i64 0, align 8
@VSS_OP_REGISTER1 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [44 x i8] c"registration to kernel failed; error: %d %s\00", align 1
@POLLIN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [25 x i8] c"poll failed; error:%d %s\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [28 x i8] c"invalid version negotiation\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"VSS: kernel module version: %d\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"read failed; error:%d %s\00", align 1
@HV_S_OK = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [16 x i8] c"VSS: op=%s: %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"FREEZE\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"THAW\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"failed\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"succeeded\00", align 1
@HV_E_FAIL = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [14 x i8] c"op=%d failed!\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"report it with these files:\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"/etc/fstab and /proc/mounts\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"VSS: op=CHECK HOT BACKUP\0A\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"Illegal op:%d\0A\00", align 1
@.str.22 = private unnamed_addr constant [27 x i8] c"write failed; error: %d %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pollfd, align 8
  %10 = alloca i32, align 4
  %11 = alloca [1 x %struct.hv_vss_msg], align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 1, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 1, i32* %15, align 4
  br label %17

17:                                               ; preds = %34, %2
  %18 = load i32, i32* %4, align 4
  %19 = load i8**, i8*** %5, align 8
  %20 = call i32 @getopt_long(i32 %18, i8** %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @main.long_options, i64 0, i64 0), i32* %13)
  store i32 %20, i32* %14, align 4
  %21 = icmp ne i32 %20, -1
  br i1 %21, label %22, label %35

22:                                               ; preds = %17
  %23 = load i32, i32* %14, align 4
  switch i32 %23, label %29 [
    i32 110, label %24
    i32 104, label %25
  ]

24:                                               ; preds = %22
  store i32 0, i32* %12, align 4
  br label %34

25:                                               ; preds = %22
  %26 = load i8**, i8*** %5, align 8
  %27 = call i32 @print_usage(i8** %26)
  %28 = call i32 @exit(i32 0) #3
  unreachable

29:                                               ; preds = %22
  %30 = load i8**, i8*** %5, align 8
  %31 = call i32 @print_usage(i8** %30)
  %32 = load i32, i32* @EXIT_FAILURE, align 4
  %33 = call i32 @exit(i32 %32) #3
  unreachable

34:                                               ; preds = %24
  br label %17

35:                                               ; preds = %17
  %36 = load i32, i32* %12, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = call i64 @daemon(i32 1, i32 0)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 1, i32* %3, align 4
  br label %200

42:                                               ; preds = %38, %35
  %43 = load i32, i32* @LOG_USER, align 4
  %44 = call i32 @openlog(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 0, i32 %43)
  %45 = load i32, i32* @LOG_INFO, align 4
  %46 = call i32 (...) @getpid()
  %47 = call i32 (i32, i8*, ...) @syslog(i32 %45, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @O_RDWR, align 4
  %49 = call i32 @open(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %42
  %53 = load i32, i32* @LOG_ERR, align 4
  %54 = load i64, i64* @errno, align 8
  %55 = load i64, i64* @errno, align 8
  %56 = call i8* @strerror(i64 %55)
  %57 = call i32 (i32, i8*, ...) @syslog(i32 %53, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i64 %54, i8* %56)
  %58 = load i32, i32* @EXIT_FAILURE, align 4
  %59 = call i32 @exit(i32 %58) #3
  unreachable

60:                                               ; preds = %42
  %61 = load i32, i32* @VSS_OP_REGISTER1, align 4
  %62 = getelementptr inbounds [1 x %struct.hv_vss_msg], [1 x %struct.hv_vss_msg]* %11, i64 0, i64 0
  %63 = getelementptr inbounds %struct.hv_vss_msg, %struct.hv_vss_msg* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store i32 %61, i32* %64, align 4
  %65 = load i32, i32* %6, align 4
  %66 = getelementptr inbounds [1 x %struct.hv_vss_msg], [1 x %struct.hv_vss_msg]* %11, i64 0, i64 0
  %67 = call i32 @write(i32 %65, %struct.hv_vss_msg* %66, i32 8)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %60
  %71 = load i32, i32* @LOG_ERR, align 4
  %72 = load i64, i64* @errno, align 8
  %73 = load i64, i64* @errno, align 8
  %74 = call i8* @strerror(i64 %73)
  %75 = call i32 (i32, i8*, ...) @syslog(i32 %71, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0), i64 %72, i8* %74)
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @close(i32 %76)
  %78 = load i32, i32* @EXIT_FAILURE, align 4
  %79 = call i32 @exit(i32 %78) #3
  unreachable

80:                                               ; preds = %60
  %81 = load i32, i32* %6, align 4
  %82 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %9, i32 0, i32 0
  store i32 %81, i32* %82, align 8
  br label %83

83:                                               ; preds = %80, %103, %119, %199
  %84 = load i32, i32* @POLLIN, align 4
  %85 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %9, i32 0, i32 2
  store i32 %84, i32* %85, align 8
  %86 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %9, i32 0, i32 1
  store i64 0, i64* %86, align 8
  %87 = call i64 @poll(%struct.pollfd* %9, i32 1, i32 -1)
  %88 = icmp slt i64 %87, 0
  br i1 %88, label %89, label %104

89:                                               ; preds = %83
  %90 = load i32, i32* @LOG_ERR, align 4
  %91 = load i64, i64* @errno, align 8
  %92 = load i64, i64* @errno, align 8
  %93 = call i8* @strerror(i64 %92)
  %94 = call i32 (i32, i8*, ...) @syslog(i32 %90, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i64 %91, i8* %93)
  %95 = load i64, i64* @errno, align 8
  %96 = load i64, i64* @EINVAL, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %89
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @close(i32 %99)
  %101 = load i32, i32* @EXIT_FAILURE, align 4
  %102 = call i32 @exit(i32 %101) #3
  unreachable

103:                                              ; preds = %89
  br label %83

104:                                              ; preds = %83
  %105 = load i32, i32* %6, align 4
  %106 = getelementptr inbounds [1 x %struct.hv_vss_msg], [1 x %struct.hv_vss_msg]* %11, i64 0, i64 0
  %107 = call i32 @read(i32 %105, %struct.hv_vss_msg* %106, i32 8)
  store i32 %107, i32* %7, align 4
  %108 = load i32, i32* %15, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %126

110:                                              ; preds = %104
  %111 = load i32, i32* %7, align 4
  %112 = sext i32 %111 to i64
  %113 = icmp ne i64 %112, 4
  br i1 %113, label %114, label %119

114:                                              ; preds = %110
  %115 = load i32, i32* @LOG_ERR, align 4
  %116 = call i32 (i32, i8*, ...) @syslog(i32 %115, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  %117 = load i32, i32* @EXIT_FAILURE, align 4
  %118 = call i32 @exit(i32 %117) #3
  unreachable

119:                                              ; preds = %110
  %120 = getelementptr inbounds [1 x %struct.hv_vss_msg], [1 x %struct.hv_vss_msg]* %11, i64 0, i64 0
  %121 = bitcast %struct.hv_vss_msg* %120 to i32*
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %16, align 4
  store i32 0, i32* %15, align 4
  %123 = load i32, i32* @LOG_INFO, align 4
  %124 = load i32, i32* %16, align 4
  %125 = call i32 (i32, i8*, ...) @syslog(i32 %123, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i32 %124)
  br label %83

126:                                              ; preds = %104
  %127 = load i32, i32* %7, align 4
  %128 = sext i32 %127 to i64
  %129 = icmp ne i64 %128, 8
  br i1 %129, label %130, label %139

130:                                              ; preds = %126
  %131 = load i32, i32* @LOG_ERR, align 4
  %132 = load i64, i64* @errno, align 8
  %133 = load i64, i64* @errno, align 8
  %134 = call i8* @strerror(i64 %133)
  %135 = call i32 (i32, i8*, ...) @syslog(i32 %131, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i64 %132, i8* %134)
  %136 = load i32, i32* %6, align 4
  %137 = call i32 @close(i32 %136)
  %138 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %138, i32* %3, align 4
  br label %200

139:                                              ; preds = %126
  %140 = getelementptr inbounds [1 x %struct.hv_vss_msg], [1 x %struct.hv_vss_msg]* %11, i64 0, i64 0
  %141 = getelementptr inbounds %struct.hv_vss_msg, %struct.hv_vss_msg* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  store i32 %143, i32* %10, align 4
  %144 = load i32, i32* @HV_S_OK, align 4
  store i32 %144, i32* %8, align 4
  %145 = load i32, i32* %10, align 4
  switch i32 %145, label %174 [
    i32 131, label %146
    i32 129, label %146
    i32 130, label %171
  ]

146:                                              ; preds = %139, %139
  %147 = load i32, i32* %10, align 4
  %148 = call i32 @vss_operate(i32 %147)
  store i32 %148, i32* %8, align 4
  %149 = load i32, i32* @LOG_INFO, align 4
  %150 = load i32, i32* %10, align 4
  %151 = icmp eq i32 %150, 131
  %152 = zext i1 %151 to i64
  %153 = select i1 %151, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0)
  %154 = load i32, i32* %8, align 4
  %155 = icmp ne i32 %154, 0
  %156 = zext i1 %155 to i64
  %157 = select i1 %155, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0)
  %158 = call i32 (i32, i8*, ...) @syslog(i32 %149, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i8* %153, i8* %157)
  %159 = load i32, i32* %8, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %170

161:                                              ; preds = %146
  %162 = load i32, i32* @HV_E_FAIL, align 4
  store i32 %162, i32* %8, align 4
  %163 = load i32, i32* @LOG_ERR, align 4
  %164 = load i32, i32* %10, align 4
  %165 = call i32 (i32, i8*, ...) @syslog(i32 %163, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 %164)
  %166 = load i32, i32* @LOG_ERR, align 4
  %167 = call i32 (i32, i8*, ...) @syslog(i32 %166, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i64 0, i64 0))
  %168 = load i32, i32* @LOG_ERR, align 4
  %169 = call i32 (i32, i8*, ...) @syslog(i32 %168, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i64 0, i64 0))
  br label %170

170:                                              ; preds = %161, %146
  br label %178

171:                                              ; preds = %139
  %172 = load i32, i32* @LOG_INFO, align 4
  %173 = call i32 (i32, i8*, ...) @syslog(i32 %172, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i64 0, i64 0))
  br label %178

174:                                              ; preds = %139
  %175 = load i32, i32* @LOG_ERR, align 4
  %176 = load i32, i32* %10, align 4
  %177 = call i32 (i32, i8*, ...) @syslog(i32 %175, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 %176)
  br label %178

178:                                              ; preds = %174, %171, %170
  %179 = load i32, i32* %8, align 4
  %180 = getelementptr inbounds [1 x %struct.hv_vss_msg], [1 x %struct.hv_vss_msg]* %11, i64 0, i64 0
  %181 = getelementptr inbounds %struct.hv_vss_msg, %struct.hv_vss_msg* %180, i32 0, i32 0
  store i32 %179, i32* %181, align 4
  %182 = load i32, i32* %6, align 4
  %183 = getelementptr inbounds [1 x %struct.hv_vss_msg], [1 x %struct.hv_vss_msg]* %11, i64 0, i64 0
  %184 = call i32 @write(i32 %182, %struct.hv_vss_msg* %183, i32 8)
  store i32 %184, i32* %7, align 4
  %185 = load i32, i32* %7, align 4
  %186 = sext i32 %185 to i64
  %187 = icmp ne i64 %186, 8
  br i1 %187, label %188, label %199

188:                                              ; preds = %178
  %189 = load i32, i32* @LOG_ERR, align 4
  %190 = load i64, i64* @errno, align 8
  %191 = load i64, i64* @errno, align 8
  %192 = call i8* @strerror(i64 %191)
  %193 = call i32 (i32, i8*, ...) @syslog(i32 %189, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.22, i64 0, i64 0), i64 %190, i8* %192)
  %194 = load i32, i32* %10, align 4
  %195 = icmp eq i32 %194, 131
  br i1 %195, label %196, label %198

196:                                              ; preds = %188
  %197 = call i32 @vss_operate(i32 129)
  br label %198

198:                                              ; preds = %196, %188
  br label %199

199:                                              ; preds = %198, %178
  br label %83

200:                                              ; preds = %130, %41
  %201 = load i32, i32* %3, align 4
  ret i32 %201
}

declare dso_local i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #1

declare dso_local i32 @print_usage(i8**) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @daemon(i32, i32) #1

declare dso_local i32 @openlog(i8*, i32, i32) #1

declare dso_local i32 @syslog(i32, i8*, ...) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i8* @strerror(i64) #1

declare dso_local i32 @write(i32, %struct.hv_vss_msg*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @poll(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @read(i32, %struct.hv_vss_msg*, i32) #1

declare dso_local i32 @vss_operate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
