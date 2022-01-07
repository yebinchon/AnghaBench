; ModuleID = '/home/carl/AnghaBench/linux/samples/mic/mpssd/extr_mpssd.c_set_log_buf_info.c'
source_filename = "/home/carl/AnghaBench/linux/samples/mic/mpssd/extr_mpssd.c_set_log_buf_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mic_info = type { i32 }

@__const.set_log_buf_info.system_map = private unnamed_addr constant [29 x i8] c"/lib/firmware/mic/System.map\00", align 16
@O_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"%s: Opening System.map failed: %d\0A\00", align 1
@errno = common dso_local global i8* null, align 8
@SEEK_END = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"%s: Reading System.map size failed: %d\0A\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"%s: mmap of System.map failed: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"__log_buf\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"%s: __log_buf not found: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"log_buf_addr\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"%s: log_buf_addr: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"log_buf_len\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"%s: log_buf_len not found: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"%s: log_buf_len: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mic_info*)* @set_log_buf_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_log_buf_info(%struct.mic_info* %0) #0 {
  %2 = alloca %struct.mic_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca [29 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [17 x i8], align 16
  store %struct.mic_info* %0, %struct.mic_info** %2, align 8
  %9 = bitcast [29 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 getelementptr inbounds ([29 x i8], [29 x i8]* @__const.set_log_buf_info.system_map, i32 0, i32 0), i64 29, i1 false)
  %10 = bitcast [17 x i8]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 17, i1 false)
  %11 = getelementptr inbounds [29 x i8], [29 x i8]* %5, i64 0, i64 0
  %12 = load i32, i32* @O_RDONLY, align 4
  %13 = call i32 @open(i8* %11, i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.mic_info*, %struct.mic_info** %2, align 8
  %18 = getelementptr inbounds %struct.mic_info, %struct.mic_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i8*, i8** @errno, align 8
  %21 = call i32 @mpsslog(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %19, i8* %20)
  br label %119

22:                                               ; preds = %1
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @SEEK_END, align 4
  %25 = call i64 @lseek(i32 %23, i32 0, i32 %24)
  store i64 %25, i64* %4, align 8
  %26 = load i64, i64* %4, align 8
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %22
  %29 = load %struct.mic_info*, %struct.mic_info** %2, align 8
  %30 = getelementptr inbounds %struct.mic_info, %struct.mic_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i8*, i8** @errno, align 8
  %33 = call i32 @mpsslog(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %31, i8* %32)
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @close(i32 %34)
  br label %119

36:                                               ; preds = %22
  %37 = load i64, i64* %4, align 8
  %38 = load i32, i32* @PROT_READ, align 4
  %39 = load i32, i32* @MAP_PRIVATE, align 4
  %40 = load i32, i32* %3, align 4
  %41 = call i8* @mmap(i32* null, i64 %37, i32 %38, i32 %39, i32 %40, i32 0)
  store i8* %41, i8** %6, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = load i8*, i8** @MAP_FAILED, align 8
  %44 = icmp eq i8* %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %36
  %46 = load %struct.mic_info*, %struct.mic_info** %2, align 8
  %47 = getelementptr inbounds %struct.mic_info, %struct.mic_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i8*, i8** @errno, align 8
  %50 = call i32 @mpsslog(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %48, i8* %49)
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @close(i32 %51)
  br label %119

53:                                               ; preds = %36
  %54 = load i8*, i8** %6, align 8
  %55 = call i8* @strstr(i8* %54, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  store i8* %55, i8** %7, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %69, label %58

58:                                               ; preds = %53
  %59 = load %struct.mic_info*, %struct.mic_info** %2, align 8
  %60 = getelementptr inbounds %struct.mic_info, %struct.mic_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i8*, i8** @errno, align 8
  %63 = call i32 @mpsslog(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %61, i8* %62)
  %64 = load i8*, i8** %6, align 8
  %65 = load i64, i64* %4, align 8
  %66 = call i32 @munmap(i8* %64, i64 %65)
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @close(i32 %67)
  br label %119

69:                                               ; preds = %53
  %70 = getelementptr inbounds [17 x i8], [17 x i8]* %8, i64 0, i64 0
  %71 = load i8*, i8** %7, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 -19
  %73 = call i32 @strncpy(i8* %70, i8* %72, i32 16)
  %74 = load %struct.mic_info*, %struct.mic_info** %2, align 8
  %75 = getelementptr inbounds %struct.mic_info, %struct.mic_info* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds [17 x i8], [17 x i8]* %8, i64 0, i64 0
  %78 = call i32 @setsysfs(i32 %76, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* %77)
  %79 = load %struct.mic_info*, %struct.mic_info** %2, align 8
  %80 = getelementptr inbounds %struct.mic_info, %struct.mic_info* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds [17 x i8], [17 x i8]* %8, i64 0, i64 0
  %83 = call i32 @mpsslog(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %81, i8* %82)
  %84 = load i8*, i8** %6, align 8
  %85 = call i8* @strstr(i8* %84, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  store i8* %85, i8** %7, align 8
  %86 = load i8*, i8** %7, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %99, label %88

88:                                               ; preds = %69
  %89 = load %struct.mic_info*, %struct.mic_info** %2, align 8
  %90 = getelementptr inbounds %struct.mic_info, %struct.mic_info* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i8*, i8** @errno, align 8
  %93 = call i32 @mpsslog(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i32 %91, i8* %92)
  %94 = load i8*, i8** %6, align 8
  %95 = load i64, i64* %4, align 8
  %96 = call i32 @munmap(i8* %94, i64 %95)
  %97 = load i32, i32* %3, align 4
  %98 = call i32 @close(i32 %97)
  br label %119

99:                                               ; preds = %69
  %100 = getelementptr inbounds [17 x i8], [17 x i8]* %8, i64 0, i64 0
  %101 = load i8*, i8** %7, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 -19
  %103 = call i32 @strncpy(i8* %100, i8* %102, i32 16)
  %104 = load %struct.mic_info*, %struct.mic_info** %2, align 8
  %105 = getelementptr inbounds %struct.mic_info, %struct.mic_info* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = getelementptr inbounds [17 x i8], [17 x i8]* %8, i64 0, i64 0
  %108 = call i32 @setsysfs(i32 %106, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8* %107)
  %109 = load %struct.mic_info*, %struct.mic_info** %2, align 8
  %110 = getelementptr inbounds %struct.mic_info, %struct.mic_info* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds [17 x i8], [17 x i8]* %8, i64 0, i64 0
  %113 = call i32 @mpsslog(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32 %111, i8* %112)
  %114 = load i8*, i8** %6, align 8
  %115 = load i64, i64* %4, align 8
  %116 = call i32 @munmap(i8* %114, i64 %115)
  %117 = load i32, i32* %3, align 4
  %118 = call i32 @close(i32 %117)
  br label %119

119:                                              ; preds = %99, %88, %58, %45, %28, %16
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i32 @mpsslog(i8*, i32, i8*) #2

declare dso_local i64 @lseek(i32, i32, i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i8* @mmap(i32*, i64, i32, i32, i32, i32) #2

declare dso_local i8* @strstr(i8*, i8*) #2

declare dso_local i32 @munmap(i8*, i64) #2

declare dso_local i32 @strncpy(i8*, i8*, i32) #2

declare dso_local i32 @setsysfs(i32, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
