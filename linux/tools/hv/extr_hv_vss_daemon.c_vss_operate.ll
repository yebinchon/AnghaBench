; ModuleID = '/home/carl/AnghaBench/linux/tools/hv/extr_hv_vss_daemon.c_vss_operate.c'
source_filename = "/home/carl/AnghaBench/linux/tools/hv/extr_hv_vss_daemon.c_vss_operate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mntent = type { i8*, i8*, i32 }
%struct.stat = type { i32 }

@__const.vss_operate.match = private unnamed_addr constant [6 x i8] c"/dev/\00", align 1
@FIFREEZE = common dso_local global i32 0, align 4
@FITHAW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"/proc/mounts\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Can't stat: %s; error:%d %s!\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"/sys/dev/block/%d:%d\00", align 1
@MNTOPT_RO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"vfat\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"FREEZE of %s failed; error:%d %s\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"FREEZE of / failed; error:%d %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @vss_operate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vss_operate(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [6 x i8], align 1
  %5 = alloca i32*, align 8
  %6 = alloca %struct.mntent*, align 8
  %7 = alloca %struct.stat, align 4
  %8 = alloca [1024 x i8], align 16
  %9 = alloca [23 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %14 = bitcast [6 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %14, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @__const.vss_operate.match, i32 0, i32 0), i64 6, i1 false)
  %15 = bitcast [1024 x i8]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %15, i8 0, i64 1024, i1 false)
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %16 = load i32, i32* %3, align 4
  switch i32 %16, label %21 [
    i32 129, label %17
    i32 128, label %19
  ]

17:                                               ; preds = %1
  %18 = load i32, i32* @FIFREEZE, align 4
  store i32 %18, i32* %10, align 4
  br label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @FITHAW, align 4
  store i32 %20, i32* %10, align 4
  br label %22

21:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %156

22:                                               ; preds = %19, %17
  %23 = call i32* @setmntent(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %23, i32** %5, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 -1, i32* %2, align 4
  br label %156

27:                                               ; preds = %22
  br label %28

28:                                               ; preds = %105, %90, %83, %76, %69, %41, %27
  %29 = load i32*, i32** %5, align 8
  %30 = call %struct.mntent* @getmntent(i32* %29)
  store %struct.mntent* %30, %struct.mntent** %6, align 8
  %31 = icmp ne %struct.mntent* %30, null
  br i1 %31, label %32, label %106

32:                                               ; preds = %28
  %33 = load %struct.mntent*, %struct.mntent** %6, align 8
  %34 = getelementptr inbounds %struct.mntent, %struct.mntent* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 0
  %37 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 0
  %38 = call i32 @strlen(i8* %37)
  %39 = call i64 @strncmp(i32 %35, i8* %36, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  br label %28

42:                                               ; preds = %32
  %43 = load %struct.mntent*, %struct.mntent** %6, align 8
  %44 = getelementptr inbounds %struct.mntent, %struct.mntent* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @stat(i32 %45, %struct.stat* %7)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %42
  %49 = load i32, i32* @LOG_ERR, align 4
  %50 = load %struct.mntent*, %struct.mntent** %6, align 8
  %51 = getelementptr inbounds %struct.mntent, %struct.mntent* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @errno, align 4
  %54 = load i32, i32* @errno, align 4
  %55 = call i32 @strerror(i32 %54)
  %56 = call i32 (i32, i8*, ...) @syslog(i32 %49, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %52, i32 %53, i32 %55)
  br label %71

57:                                               ; preds = %42
  %58 = getelementptr inbounds [23 x i8], [23 x i8]* %9, i64 0, i64 0
  %59 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @major(i32 %60)
  %62 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @minor(i32 %63)
  %65 = call i32 @sprintf(i8* %58, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %61, i32 %64)
  %66 = getelementptr inbounds [23 x i8], [23 x i8]* %9, i64 0, i64 0
  %67 = call i64 @is_dev_loop(i8* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %57
  br label %28

70:                                               ; preds = %57
  br label %71

71:                                               ; preds = %70, %48
  %72 = load %struct.mntent*, %struct.mntent** %6, align 8
  %73 = load i32, i32* @MNTOPT_RO, align 4
  %74 = call i32* @hasmntopt(%struct.mntent* %72, i32 %73)
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  br label %28

77:                                               ; preds = %71
  %78 = load %struct.mntent*, %struct.mntent** %6, align 8
  %79 = getelementptr inbounds %struct.mntent, %struct.mntent* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = call i64 @strcmp(i8* %80, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  br label %28

84:                                               ; preds = %77
  %85 = load %struct.mntent*, %struct.mntent** %6, align 8
  %86 = getelementptr inbounds %struct.mntent, %struct.mntent* %85, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  %88 = call i64 @strcmp(i8* %87, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  store i32 1, i32* %12, align 4
  br label %28

91:                                               ; preds = %84
  %92 = load %struct.mntent*, %struct.mntent** %6, align 8
  %93 = getelementptr inbounds %struct.mntent, %struct.mntent* %92, i32 0, i32 1
  %94 = load i8*, i8** %93, align 8
  %95 = load i32, i32* %10, align 4
  %96 = call i32 @vss_do_freeze(i8* %94, i32 %95)
  %97 = load i32, i32* %11, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* %11, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %91
  %102 = load i32, i32* %3, align 4
  %103 = icmp eq i32 %102, 129
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  br label %124

105:                                              ; preds = %101, %91
  br label %28

106:                                              ; preds = %28
  %107 = load i32*, i32** %5, align 8
  %108 = call i32 @endmntent(i32* %107)
  %109 = load i32, i32* %12, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %123

111:                                              ; preds = %106
  %112 = load i32, i32* %10, align 4
  %113 = call i32 @vss_do_freeze(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 %112)
  %114 = load i32, i32* %11, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %11, align 4
  %116 = load i32, i32* %11, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %111
  %119 = load i32, i32* %3, align 4
  %120 = icmp eq i32 %119, 129
  br i1 %120, label %121, label %122

121:                                              ; preds = %118
  br label %124

122:                                              ; preds = %118, %111
  br label %123

123:                                              ; preds = %122, %106
  br label %154

124:                                              ; preds = %121, %104
  %125 = load i32, i32* @errno, align 4
  store i32 %125, i32* %13, align 4
  %126 = load %struct.mntent*, %struct.mntent** %6, align 8
  %127 = icmp ne %struct.mntent* %126, null
  br i1 %127, label %128, label %136

128:                                              ; preds = %124
  %129 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %130 = load %struct.mntent*, %struct.mntent** %6, align 8
  %131 = getelementptr inbounds %struct.mntent, %struct.mntent* %130, i32 0, i32 1
  %132 = load i8*, i8** %131, align 8
  %133 = call i32 @strncpy(i8* %129, i8* %132, i32 1023)
  %134 = load i32*, i32** %5, align 8
  %135 = call i32 @endmntent(i32* %134)
  br label %136

136:                                              ; preds = %128, %124
  %137 = call i32 @vss_operate(i32 128)
  %138 = load %struct.mntent*, %struct.mntent** %6, align 8
  %139 = icmp ne %struct.mntent* %138, null
  br i1 %139, label %140, label %147

140:                                              ; preds = %136
  %141 = load i32, i32* @LOG_ERR, align 4
  %142 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %143 = load i32, i32* %13, align 4
  %144 = load i32, i32* %13, align 4
  %145 = call i32 @strerror(i32 %144)
  %146 = call i32 (i32, i8*, ...) @syslog(i32 %141, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i8* %142, i32 %143, i32 %145)
  br label %153

147:                                              ; preds = %136
  %148 = load i32, i32* @LOG_ERR, align 4
  %149 = load i32, i32* %13, align 4
  %150 = load i32, i32* %13, align 4
  %151 = call i32 @strerror(i32 %150)
  %152 = call i32 (i32, i8*, ...) @syslog(i32 %148, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %149, i32 %151)
  br label %153

153:                                              ; preds = %147, %140
  br label %154

154:                                              ; preds = %153, %123
  %155 = load i32, i32* %11, align 4
  store i32 %155, i32* %2, align 4
  br label %156

156:                                              ; preds = %154, %26, %21
  %157 = load i32, i32* %2, align 4
  ret i32 %157
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @setmntent(i8*, i8*) #2

declare dso_local %struct.mntent* @getmntent(i32*) #2

declare dso_local i64 @strncmp(i32, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i64 @stat(i32, %struct.stat*) #2

declare dso_local i32 @syslog(i32, i8*, ...) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i32 @sprintf(i8*, i8*, i32, i32) #2

declare dso_local i32 @major(i32) #2

declare dso_local i32 @minor(i32) #2

declare dso_local i64 @is_dev_loop(i8*) #2

declare dso_local i32* @hasmntopt(%struct.mntent*, i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @vss_do_freeze(i8*, i32) #2

declare dso_local i32 @endmntent(i32*) #2

declare dso_local i32 @strncpy(i8*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
