; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_nettest.c_msock_init.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_nettest.c_msock_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock_args = type { i32, %struct.TYPE_8__, %struct.TYPE_6__, i64, i32, i64, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.sockaddr_in = type { %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.sockaddr = type { i32 }

@INADDR_ANY = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@PF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_REUSEADDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Setting SO_REUSEADDR error\00", align 1
@SO_BROADCAST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Setting SO_BROADCAST error\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"bind failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock_args*, i32)* @msock_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msock_init(%struct.sock_args* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock_args*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr_in, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sock_args* %0, %struct.sock_args** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* @INADDR_ANY, align 4
  %11 = call i32 @htonl(i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 0
  %13 = bitcast %struct.TYPE_5__* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 4, i1 false)
  %14 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 1
  %15 = load %struct.sock_args*, %struct.sock_args** %4, align 8
  %16 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @htons(i32 %17)
  store i32 %18, i32* %14, align 4
  %19 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 2
  %20 = load i32, i32* @AF_INET, align 4
  store i32 %20, i32* %19, align 4
  store i32 1, i32* %8, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %34, label %23

23:                                               ; preds = %2
  %24 = load %struct.sock_args*, %struct.sock_args** %4, align 8
  %25 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %24, i32 0, i32 5
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load %struct.sock_args*, %struct.sock_args** %4, align 8
  %30 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %28, %23, %2
  %35 = load i32, i32* @PF_INET, align 4
  %36 = load i32, i32* @SOCK_DGRAM, align 4
  %37 = call i32 @socket(i32 %35, i32 %36, i32 0)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = call i32 @log_err_errno(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %122

42:                                               ; preds = %34
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @SOL_SOCKET, align 4
  %45 = load i32, i32* @SO_REUSEADDR, align 4
  %46 = bitcast i32* %8 to i8*
  %47 = call i64 @setsockopt(i32 %43, i32 %44, i32 %45, i8* %46, i32 4)
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = call i32 @log_err_errno(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %119

51:                                               ; preds = %42
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @SOL_SOCKET, align 4
  %54 = load i32, i32* @SO_BROADCAST, align 4
  %55 = bitcast i32* %8 to i8*
  %56 = call i64 @setsockopt(i32 %52, i32 %53, i32 %54, i8* %55, i32 4)
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = call i32 @log_err_errno(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %51
  %61 = load %struct.sock_args*, %struct.sock_args** %4, align 8
  %62 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %60
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.sock_args*, %struct.sock_args** %4, align 8
  %68 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @bind_to_device(i32 %66, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  br label %119

73:                                               ; preds = %65, %60
  %74 = load %struct.sock_args*, %struct.sock_args** %4, align 8
  %75 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %73
  %79 = load i32, i32* %9, align 4
  %80 = load %struct.sock_args*, %struct.sock_args** %4, align 8
  %81 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i64 @set_multicast_if(i32 %79, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %78
  br label %119

86:                                               ; preds = %78, %73
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %6, align 4
  %89 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* %9, align 4
  %92 = bitcast %struct.sockaddr_in* %7 to %struct.sockaddr*
  %93 = call i64 @bind(i32 %91, %struct.sockaddr* %92, i32 12)
  %94 = icmp slt i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %87
  %96 = call i32 @log_err_errno(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %119

97:                                               ; preds = %87
  %98 = load i32, i32* %5, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %117

100:                                              ; preds = %97
  %101 = load i32, i32* %9, align 4
  %102 = load %struct.sock_args*, %struct.sock_args** %4, align 8
  %103 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.sock_args*, %struct.sock_args** %4, align 8
  %107 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.sock_args*, %struct.sock_args** %4, align 8
  %112 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i64 @set_membership(i32 %101, i32 %105, i32 %110, i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %100
  br label %119

117:                                              ; preds = %100, %97
  %118 = load i32, i32* %9, align 4
  store i32 %118, i32* %3, align 4
  br label %122

119:                                              ; preds = %116, %95, %85, %72, %49
  %120 = load i32, i32* %9, align 4
  %121 = call i32 @close(i32 %120)
  store i32 -1, i32* %3, align 4
  br label %122

122:                                              ; preds = %119, %117, %40
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i32 @htonl(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @log_err_errno(i8*) #1

declare dso_local i64 @setsockopt(i32, i32, i32, i8*, i32) #1

declare dso_local i64 @bind_to_device(i32, i32) #1

declare dso_local i64 @set_multicast_if(i32, i32) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i64 @set_membership(i32, i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
