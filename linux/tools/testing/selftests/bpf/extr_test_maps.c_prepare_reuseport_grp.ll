; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_maps.c_prepare_reuseport_grp.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_maps.c_prepare_reuseport_grp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in6 = type { i64, i32, i32 }
%struct.sockaddr = type { i32 }

@AF_INET6 = common dso_local global i32 0, align 4
@in6addr_any = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"socket()\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"sock_type:%d fd64:%lld errno:%d\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_REUSEPORT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"setsockopt(SO_REUSEPORT)\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"err:%d errno:%d\0A\00", align 1
@BPF_ANY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"reuseport array update unbound sk\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"sock_type:%d err:%d errno:%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"bind()\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"getsockname()\00", align 1
@SO_COOKIE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [22 x i8] c"getsockopt(SO_COOKIE)\00", align 1
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [40 x i8] c"reuseport array update non-listening sk\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"listen()\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"sock_type:%d, err:%d errno:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i64, i32*, i32*, i32)* @prepare_reuseport_grp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_reuseport_grp(i32 %0, i32 %1, i64 %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.sockaddr_in6, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %16, align 4
  store i32 1, i32* %17, align 4
  %24 = load i32, i32* @AF_INET6, align 4
  %25 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %15, i32 0, i32 2
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* @in6addr_any, align 4
  %27 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %15, i32 0, i32 1
  store i32 %26, i32* %27, align 8
  %28 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %15, i32 0, i32 0
  store i64 0, i64* %28, align 8
  store i32 16, i32* %14, align 4
  store i32 4, i32* %13, align 4
  store i32 0, i32* %18, align 4
  br label %29

29:                                               ; preds = %160, %6
  %30 = load i32, i32* %18, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %163

33:                                               ; preds = %29
  %34 = load i32, i32* @AF_INET6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @socket(i32 %34, i32 %35, i32 0)
  store i32 %36, i32* %22, align 4
  %37 = load i32, i32* %22, align 4
  %38 = icmp eq i32 %37, -1
  %39 = zext i1 %38 to i32
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %22, align 4
  %42 = load i32, i32* @errno, align 4
  %43 = call i32 (i32, i8*, i8*, i32, i32, ...) @CHECK(i32 %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %40, i32 %41, i32 %42)
  %44 = load i32, i32* %22, align 4
  %45 = load i32, i32* @SOL_SOCKET, align 4
  %46 = load i32, i32* @SO_REUSEPORT, align 4
  %47 = call i32 @setsockopt(i32 %44, i32 %45, i32 %46, i32* %17, i32 4)
  store i32 %47, i32* %23, align 4
  %48 = load i32, i32* %23, align 4
  %49 = icmp eq i32 %48, -1
  %50 = zext i1 %49 to i32
  %51 = load i32, i32* %23, align 4
  %52 = load i32, i32* @errno, align 4
  %53 = call i32 (i32, i8*, i8*, i32, i32, ...) @CHECK(i32 %50, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %51, i32 %52)
  %54 = load i64, i64* %9, align 8
  %55 = icmp eq i64 %54, 4
  br i1 %55, label %56, label %58

56:                                               ; preds = %33
  %57 = bitcast i32* %22 to i8*
  store i8* %57, i8** %20, align 8
  br label %66

58:                                               ; preds = %33
  %59 = load i64, i64* %9, align 8
  %60 = icmp eq i64 %59, 4
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  %63 = load i32, i32* %22, align 4
  %64 = sext i32 %63 to i64
  store i64 %64, i64* %21, align 8
  %65 = bitcast i64* %21 to i8*
  store i8* %65, i8** %20, align 8
  br label %66

66:                                               ; preds = %58, %56
  %67 = load i32, i32* %8, align 4
  %68 = load i8*, i8** %20, align 8
  %69 = load i32, i32* @BPF_ANY, align 4
  %70 = call i32 @bpf_map_update_elem(i32 %67, i32* %16, i8* %68, i32 %69)
  store i32 %70, i32* %23, align 4
  %71 = load i32, i32* %23, align 4
  %72 = icmp ne i32 %71, -1
  br i1 %72, label %77, label %73

73:                                               ; preds = %66
  %74 = load i32, i32* @errno, align 4
  %75 = load i32, i32* @EINVAL, align 4
  %76 = icmp ne i32 %74, %75
  br label %77

77:                                               ; preds = %73, %66
  %78 = phi i1 [ true, %66 ], [ %76, %73 ]
  %79 = zext i1 %78 to i32
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %23, align 4
  %82 = load i32, i32* @errno, align 4
  %83 = call i32 (i32, i8*, i8*, i32, i32, ...) @CHECK(i32 %79, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %80, i32 %81, i32 %82)
  %84 = load i32, i32* %22, align 4
  %85 = bitcast %struct.sockaddr_in6* %15 to %struct.sockaddr*
  %86 = call i32 @bind(i32 %84, %struct.sockaddr* %85, i32 16)
  store i32 %86, i32* %23, align 4
  %87 = load i32, i32* %23, align 4
  %88 = icmp eq i32 %87, -1
  %89 = zext i1 %88 to i32
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* %23, align 4
  %92 = load i32, i32* @errno, align 4
  %93 = call i32 (i32, i8*, i8*, i32, i32, ...) @CHECK(i32 %89, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %90, i32 %91, i32 %92)
  %94 = load i32, i32* %18, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %107

96:                                               ; preds = %77
  %97 = load i32, i32* %22, align 4
  %98 = bitcast %struct.sockaddr_in6* %15 to %struct.sockaddr*
  %99 = call i32 @getsockname(i32 %97, %struct.sockaddr* %98, i32* %14)
  store i32 %99, i32* %23, align 4
  %100 = load i32, i32* %23, align 4
  %101 = icmp eq i32 %100, -1
  %102 = zext i1 %101 to i32
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* %23, align 4
  %105 = load i32, i32* @errno, align 4
  %106 = call i32 (i32, i8*, i8*, i32, i32, ...) @CHECK(i32 %102, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %103, i32 %104, i32 %105)
  br label %107

107:                                              ; preds = %96, %77
  %108 = load i32, i32* %22, align 4
  %109 = load i32, i32* @SOL_SOCKET, align 4
  %110 = load i32, i32* @SO_COOKIE, align 4
  %111 = call i32 @getsockopt(i32 %108, i32 %109, i32 %110, i32* %19, i32* %13)
  store i32 %111, i32* %23, align 4
  %112 = load i32, i32* %23, align 4
  %113 = icmp eq i32 %112, -1
  %114 = zext i1 %113 to i32
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* %23, align 4
  %117 = load i32, i32* @errno, align 4
  %118 = call i32 (i32, i8*, i8*, i32, i32, ...) @CHECK(i32 %114, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %115, i32 %116, i32 %117)
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* @SOCK_STREAM, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %149

122:                                              ; preds = %107
  %123 = load i32, i32* %8, align 4
  %124 = load i8*, i8** %20, align 8
  %125 = load i32, i32* @BPF_ANY, align 4
  %126 = call i32 @bpf_map_update_elem(i32 %123, i32* %16, i8* %124, i32 %125)
  store i32 %126, i32* %23, align 4
  %127 = load i32, i32* %23, align 4
  %128 = icmp ne i32 %127, -1
  br i1 %128, label %133, label %129

129:                                              ; preds = %122
  %130 = load i32, i32* @errno, align 4
  %131 = load i32, i32* @EINVAL, align 4
  %132 = icmp ne i32 %130, %131
  br label %133

133:                                              ; preds = %129, %122
  %134 = phi i1 [ true, %122 ], [ %132, %129 ]
  %135 = zext i1 %134 to i32
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* %23, align 4
  %138 = load i32, i32* @errno, align 4
  %139 = call i32 (i32, i8*, i8*, i32, i32, ...) @CHECK(i32 %135, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %136, i32 %137, i32 %138)
  %140 = load i32, i32* %22, align 4
  %141 = call i32 @listen(i32 %140, i32 0)
  store i32 %141, i32* %23, align 4
  %142 = load i32, i32* %23, align 4
  %143 = icmp eq i32 %142, -1
  %144 = zext i1 %143 to i32
  %145 = load i32, i32* %7, align 4
  %146 = load i32, i32* %23, align 4
  %147 = load i32, i32* @errno, align 4
  %148 = call i32 (i32, i8*, i8*, i32, i32, ...) @CHECK(i32 %144, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0), i32 %145, i32 %146, i32 %147)
  br label %149

149:                                              ; preds = %133, %107
  %150 = load i32, i32* %22, align 4
  %151 = load i32*, i32** %10, align 8
  %152 = load i32, i32* %18, align 4
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  store i32 %150, i32* %154, align 4
  %155 = load i32, i32* %19, align 4
  %156 = load i32*, i32** %11, align 8
  %157 = load i32, i32* %18, align 4
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  store i32 %155, i32* %159, align 4
  br label %160

160:                                              ; preds = %149
  %161 = load i32, i32* %18, align 4
  %162 = add i32 %161, 1
  store i32 %162, i32* %18, align 4
  br label %29

163:                                              ; preds = %29
  ret void
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @CHECK(i32, i8*, i8*, i32, i32, ...) #1

declare dso_local i32 @setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @bpf_map_update_elem(i32, i32*, i8*, i32) #1

declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @getsockname(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @getsockopt(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @listen(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
