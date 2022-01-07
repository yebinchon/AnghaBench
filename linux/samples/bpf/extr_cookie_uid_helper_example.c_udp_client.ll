; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_cookie_uid_helper_example.c_udp_client.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_cookie_uid_helper_example.c_udp_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32, i32, i32, i32 }
%struct.stats = type { i32, i32, i32 }
%struct.sockaddr = type { i32 }

@PF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"rcv socket creat failed!\0A\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@PORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"inet_aton\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"bind\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"send socket creat failed!\0A\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_COOKIE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"get cookie failed: %s\0A\00", align 1
@map_fd = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [41 x i8] c"socket stat found while flow not active\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"send\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"%uB != %luB\0A\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"receive\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [23 x i8] c"sender addr error: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"Message received: %c\0A\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"lookup sk stat failed, cookie: %lu\0A\00", align 1
@.str.13 = private unnamed_addr constant [62 x i8] c"cookie: %lu, uid: 0x%x, Packet Count: %lu, Bytes Count: %lu\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @udp_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udp_client() #0 {
  %1 = alloca %struct.sockaddr_in, align 4
  %2 = alloca %struct.sockaddr_in, align 4
  %3 = alloca %struct.stats, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = bitcast %struct.sockaddr_in* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 16, i1 false)
  %15 = bitcast %struct.sockaddr_in* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 16, i1 false)
  store i8 97, i8* %8, align 1
  store i32 4, i32* %12, align 4
  store i32 16, i32* %13, align 4
  %16 = load i32, i32* @PF_INET, align 4
  %17 = load i32, i32* @SOCK_DGRAM, align 4
  %18 = call i32 @socket(i32 %16, i32 %17, i32 0)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %0
  %22 = load i32, i32* @errno, align 4
  %23 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 %22, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %21, %0
  %25 = load i32, i32* @AF_INET, align 4
  %26 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %1, i32 0, i32 2
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* @PORT, align 4
  %28 = call i32 @htons(i32 %27)
  %29 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %1, i32 0, i32 1
  store i32 %28, i32* %29, align 4
  %30 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %1, i32 0, i32 0
  %31 = call i64 @inet_aton(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32* %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %24
  %34 = load i32, i32* @errno, align 4
  %35 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %36

36:                                               ; preds = %33, %24
  %37 = load i32, i32* %4, align 4
  %38 = bitcast %struct.sockaddr_in* %1 to %struct.sockaddr*
  %39 = call i32 @bind(i32 %37, %struct.sockaddr* %38, i32 16)
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32, i32* @errno, align 4
  %43 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %36
  %45 = load i32, i32* @PF_INET, align 4
  %46 = load i32, i32* @SOCK_DGRAM, align 4
  %47 = call i32 @socket(i32 %45, i32 %46, i32 0)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i32, i32* @errno, align 4
  %52 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 %51, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %53

53:                                               ; preds = %50, %44
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @SOL_SOCKET, align 4
  %56 = load i32, i32* @SO_COOKIE, align 4
  %57 = call i32 @getsockopt(i32 %54, i32 %55, i32 %56, i32* %10, i32* %12)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %53
  %61 = load i32, i32* @errno, align 4
  %62 = call i8* @strerror(i32 %61)
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8* %62)
  br label %64

64:                                               ; preds = %60, %53
  %65 = load i32, i32* @map_fd, align 4
  %66 = call i32 @bpf_map_lookup_elem(i32 %65, i32* %10, %struct.stats* %3)
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %67, -1
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load i32, i32* @errno, align 4
  %71 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 %70, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  br label %72

72:                                               ; preds = %69, %64
  store i32 0, i32* %6, align 4
  br label %73

73:                                               ; preds = %133, %72
  %74 = load i32, i32* %6, align 4
  %75 = icmp slt i32 %74, 10
  br i1 %75, label %76, label %136

76:                                               ; preds = %73
  %77 = load i32, i32* %5, align 4
  %78 = bitcast %struct.sockaddr_in* %1 to %struct.sockaddr*
  %79 = load i32, i32* %13, align 4
  %80 = call i32 @sendto(i32 %77, i8* %8, i32 1, i32 0, %struct.sockaddr* %78, i32 %79)
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %11, align 4
  %82 = icmp eq i32 %81, -1
  br i1 %82, label %83, label %86

83:                                               ; preds = %76
  %84 = load i32, i32* @errno, align 4
  %85 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 %84, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  br label %86

86:                                               ; preds = %83, %76
  %87 = load i32, i32* %11, align 4
  %88 = sext i32 %87 to i64
  %89 = icmp ne i64 %88, 1
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  %91 = load i32, i32* %11, align 4
  %92 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 %91, i64 1)
  br label %93

93:                                               ; preds = %90, %86
  %94 = load i32, i32* %4, align 4
  %95 = bitcast %struct.sockaddr_in* %2 to %struct.sockaddr*
  %96 = call i32 @recvfrom(i32 %94, i8* %9, i32 1, i32 0, %struct.sockaddr* %95, i32* %13)
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* %7, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %93
  %100 = load i32, i32* @errno, align 4
  %101 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 %100, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  br label %102

102:                                              ; preds = %99, %93
  %103 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %1, i32 0, i32 0
  %104 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %2, i32 0, i32 0
  %105 = call i32 @memcmp(i32* %103, i32* %104, i32 4)
  store i32 %105, i32* %11, align 4
  %106 = load i32, i32* %11, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %102
  %109 = load i32, i32* @EFAULT, align 4
  %110 = load i32, i32* %11, align 4
  %111 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 %109, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i32 %110)
  br label %112

112:                                              ; preds = %108, %102
  %113 = load i8, i8* %9, align 1
  %114 = sext i8 %113 to i32
  %115 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i32 %114)
  %116 = load i32, i32* @map_fd, align 4
  %117 = call i32 @bpf_map_lookup_elem(i32 %116, i32* %10, %struct.stats* %3)
  store i32 %117, i32* %11, align 4
  %118 = load i32, i32* %11, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %112
  %121 = load i32, i32* @errno, align 4
  %122 = load i32, i32* %10, align 4
  %123 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 %121, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i64 0, i64 0), i32 %122)
  br label %124

124:                                              ; preds = %120, %112
  %125 = load i32, i32* %10, align 4
  %126 = getelementptr inbounds %struct.stats, %struct.stats* %3, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = getelementptr inbounds %struct.stats, %struct.stats* %3, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = getelementptr inbounds %struct.stats, %struct.stats* %3, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.13, i64 0, i64 0), i32 %125, i32 %127, i32 %129, i32 %131)
  br label %133

133:                                              ; preds = %124
  %134 = load i32, i32* %6, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %6, align 4
  br label %73

136:                                              ; preds = %73
  %137 = load i32, i32* %5, align 4
  %138 = call i32 @close(i32 %137)
  %139 = load i32, i32* %4, align 4
  %140 = call i32 @close(i32 %139)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @socket(i32, i32, i32) #2

declare dso_local i32 @error(i32, i32, i8*, ...) #2

declare dso_local i32 @htons(i32) #2

declare dso_local i64 @inet_aton(i8*, i32*) #2

declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #2

declare dso_local i32 @getsockopt(i32, i32, i32, i32*, i32*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i8* @strerror(i32) #2

declare dso_local i32 @bpf_map_lookup_elem(i32, i32*, %struct.stats*) #2

declare dso_local i32 @sendto(i32, i8*, i32, i32, %struct.sockaddr*, i32) #2

declare dso_local i32 @recvfrom(i32, i8*, i32, i32, %struct.sockaddr*, i32*) #2

declare dso_local i32 @memcmp(i32*, i32*, i32) #2

declare dso_local i32 @close(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
