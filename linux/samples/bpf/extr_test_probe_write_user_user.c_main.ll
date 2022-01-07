; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_test_probe_write_user_user.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_test_probe_write_user_user.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { i64, %struct.TYPE_2__, i8* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"%s_kern.o\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@bpf_log_buf = common dso_local global i8* null, align 8
@AF_INET = common dso_local global i8* null, align 8
@SOCK_STREAM = common dso_local global i32 0, align 4
@INADDR_LOOPBACK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Server bound to: %s:%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"255.255.255.255\00", align 1
@map_fd = common dso_local global i32* null, align 8
@BPF_ANY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"Client connecting to: %s:%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"Server received connection from: %s:%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Client's peer address: %s:%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr, align 4
  %11 = alloca %struct.sockaddr, align 4
  %12 = alloca %struct.sockaddr, align 4
  %13 = alloca %struct.sockaddr_in*, align 8
  %14 = alloca %struct.sockaddr_in*, align 8
  %15 = alloca %struct.sockaddr_in*, align 8
  %16 = alloca [256 x i8], align 16
  %17 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %18 = bitcast %struct.sockaddr* %10 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %18, %struct.sockaddr_in** %13, align 8
  %19 = bitcast %struct.sockaddr* %11 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %19, %struct.sockaddr_in** %14, align 8
  %20 = bitcast %struct.sockaddr* %12 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %20, %struct.sockaddr_in** %15, align 8
  %21 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %22 = load i8**, i8*** %5, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @snprintf(i8* %21, i32 256, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %24)
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %27 = call i64 @load_bpf_file(i8* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %2
  %30 = load i8*, i8** @bpf_log_buf, align 8
  %31 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  store i32 1, i32* %3, align 4
  br label %154

32:                                               ; preds = %2
  %33 = load i8*, i8** @AF_INET, align 8
  %34 = load i32, i32* @SOCK_STREAM, align 4
  %35 = call i32 @socket(i8* %33, i32 %34, i32 0)
  store i32 %35, i32* %6, align 4
  %36 = icmp sgt i32 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load i8*, i8** @AF_INET, align 8
  %40 = load i32, i32* @SOCK_STREAM, align 4
  %41 = call i32 @socket(i8* %39, i32 %40, i32 0)
  store i32 %41, i32* %8, align 4
  %42 = icmp sgt i32 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = call i32 @memset(%struct.sockaddr* %10, i32 0, i32 4)
  %46 = load i8*, i8** @AF_INET, align 8
  %47 = load %struct.sockaddr_in*, %struct.sockaddr_in** %13, align 8
  %48 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %47, i32 0, i32 2
  store i8* %46, i8** %48, align 8
  %49 = load %struct.sockaddr_in*, %struct.sockaddr_in** %13, align 8
  %50 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %49, i32 0, i32 0
  store i64 0, i64* %50, align 8
  %51 = load i32, i32* @INADDR_LOOPBACK, align 4
  %52 = call i32 @htonl(i32 %51)
  %53 = load %struct.sockaddr_in*, %struct.sockaddr_in** %13, align 8
  %54 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i64 @bind(i32 %56, %struct.sockaddr* %10, i32 4)
  %58 = icmp eq i64 %57, 0
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  store i32 4, i32* %9, align 4
  %61 = load i32, i32* %6, align 4
  %62 = call i64 @getsockname(i32 %61, %struct.sockaddr* %10, i32* %9)
  %63 = icmp eq i64 %62, 0
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  %66 = load %struct.sockaddr_in*, %struct.sockaddr_in** %13, align 8
  %67 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i8* @inet_ntoa(i32 %69)
  store i8* %70, i8** %17, align 8
  %71 = load i8*, i8** %17, align 8
  %72 = load %struct.sockaddr_in*, %struct.sockaddr_in** %13, align 8
  %73 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @ntohs(i64 %74)
  %76 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %71, i32 %75)
  %77 = call i32 @memset(%struct.sockaddr* %11, i32 0, i32 4)
  %78 = load i8*, i8** @AF_INET, align 8
  %79 = load %struct.sockaddr_in*, %struct.sockaddr_in** %14, align 8
  %80 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %79, i32 0, i32 2
  store i8* %78, i8** %80, align 8
  %81 = call i64 @htons(i32 5555)
  %82 = load %struct.sockaddr_in*, %struct.sockaddr_in** %14, align 8
  %83 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %82, i32 0, i32 0
  store i64 %81, i64* %83, align 8
  %84 = call i32 @inet_addr(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %85 = load %struct.sockaddr_in*, %struct.sockaddr_in** %14, align 8
  %86 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  store i32 %84, i32* %87, align 8
  %88 = load i32*, i32** @map_fd, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @BPF_ANY, align 4
  %92 = call i32 @bpf_map_update_elem(i32 %90, %struct.sockaddr* %11, %struct.sockaddr* %10, i32 %91)
  %93 = icmp ne i32 %92, 0
  %94 = xor i1 %93, true
  %95 = zext i1 %94 to i32
  %96 = call i32 @assert(i32 %95)
  %97 = load i32, i32* %6, align 4
  %98 = call i64 @listen(i32 %97, i32 5)
  %99 = icmp eq i64 %98, 0
  %100 = zext i1 %99 to i32
  %101 = call i32 @assert(i32 %100)
  %102 = load %struct.sockaddr_in*, %struct.sockaddr_in** %14, align 8
  %103 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i8* @inet_ntoa(i32 %105)
  store i8* %106, i8** %17, align 8
  %107 = load i8*, i8** %17, align 8
  %108 = load %struct.sockaddr_in*, %struct.sockaddr_in** %14, align 8
  %109 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @ntohs(i64 %110)
  %112 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* %107, i32 %111)
  %113 = load i32, i32* %8, align 4
  %114 = call i64 @connect(i32 %113, %struct.sockaddr* %11, i32 4)
  %115 = icmp eq i64 %114, 0
  %116 = zext i1 %115 to i32
  %117 = call i32 @assert(i32 %116)
  store i32 4, i32* %9, align 4
  %118 = load %struct.sockaddr_in*, %struct.sockaddr_in** %15, align 8
  %119 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i8* @inet_ntoa(i32 %121)
  store i8* %122, i8** %17, align 8
  %123 = load i32, i32* %6, align 4
  %124 = call i32 @accept(i32 %123, %struct.sockaddr* %12, i32* %9)
  store i32 %124, i32* %7, align 4
  %125 = icmp sgt i32 %124, 0
  %126 = zext i1 %125 to i32
  %127 = call i32 @assert(i32 %126)
  %128 = load i8*, i8** %17, align 8
  %129 = load %struct.sockaddr_in*, %struct.sockaddr_in** %15, align 8
  %130 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = call i32 @ntohs(i64 %131)
  %133 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i8* %128, i32 %132)
  store i32 4, i32* %9, align 4
  %134 = load i32, i32* %8, align 4
  %135 = call i64 @getpeername(i32 %134, %struct.sockaddr* %12, i32* %9)
  %136 = icmp eq i64 %135, 0
  %137 = zext i1 %136 to i32
  %138 = call i32 @assert(i32 %137)
  %139 = load %struct.sockaddr_in*, %struct.sockaddr_in** %15, align 8
  %140 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i8* @inet_ntoa(i32 %142)
  store i8* %143, i8** %17, align 8
  %144 = load i8*, i8** %17, align 8
  %145 = load %struct.sockaddr_in*, %struct.sockaddr_in** %15, align 8
  %146 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = call i32 @ntohs(i64 %147)
  %149 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i8* %144, i32 %148)
  %150 = call i64 @memcmp(%struct.sockaddr* %10, %struct.sockaddr* %12, i32 24)
  %151 = icmp eq i64 %150, 0
  %152 = zext i1 %151 to i32
  %153 = call i32 @assert(i32 %152)
  store i32 0, i32* %3, align 4
  br label %154

154:                                              ; preds = %32, %29
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i64 @load_bpf_file(i8*) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @socket(i8*, i32, i32) #1

declare dso_local i32 @memset(%struct.sockaddr*, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i64 @getsockname(i32, %struct.sockaddr*, i32*) #1

declare dso_local i8* @inet_ntoa(i32) #1

declare dso_local i32 @ntohs(i64) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @inet_addr(i8*) #1

declare dso_local i32 @bpf_map_update_elem(i32, %struct.sockaddr*, %struct.sockaddr*, i32) #1

declare dso_local i64 @listen(i32, i32) #1

declare dso_local i64 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @accept(i32, %struct.sockaddr*, i32*) #1

declare dso_local i64 @getpeername(i32, %struct.sockaddr*, i32*) #1

declare dso_local i64 @memcmp(%struct.sockaddr*, %struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
