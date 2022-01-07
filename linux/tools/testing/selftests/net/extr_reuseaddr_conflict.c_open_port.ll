; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_reuseaddr_conflict.c_open_port.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_reuseaddr_conflict.c_open_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.sockaddr_in6 = type { i32, i32, i32 }
%struct.sockaddr_in = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@AF_INET6 = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@in6addr_any = common dso_local global i32 0, align 4
@PORT = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@SOCK_STREAM = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@IPPROTO_IPV6 = common dso_local global i32 0, align 4
@IPV6_V6ONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"setsockopt IPV6_V6ONLY\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_REUSEADDR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"setsockopt SO_REUSEADDR\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"bind\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"listen\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @open_port(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sockaddr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.sockaddr_in6, align 4
  %14 = alloca %struct.sockaddr_in, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %7, align 4
  store i32 1, i32* %8, align 4
  store i32 -1, i32* %10, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @AF_INET6, align 4
  br label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @AF_INET, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  store i32 %22, i32* %12, align 4
  %23 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %13, i32 0, i32 0
  %24 = load i32, i32* @AF_INET6, align 4
  store i32 %24, i32* %23, align 4
  %25 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %13, i32 0, i32 1
  %26 = load i32, i32* @in6addr_any, align 4
  store i32 %26, i32* %25, align 4
  %27 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %13, i32 0, i32 2
  %28 = load i32, i32* @PORT, align 4
  %29 = call i32 @htons(i32 %28)
  store i32 %29, i32* %27, align 4
  %30 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %14, i32 0, i32 0
  %31 = load i32, i32* @AF_INET, align 4
  store i32 %31, i32* %30, align 4
  %32 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %14, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %21
  %37 = load i32, i32* @INADDR_ANY, align 4
  %38 = call i32 @htonl(i32 %37)
  br label %41

39:                                               ; preds = %21
  %40 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %36
  %42 = phi i32 [ %38, %36 ], [ %40, %39 ]
  store i32 %42, i32* %33, align 4
  %43 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %14, i32 0, i32 2
  %44 = load i32, i32* @PORT, align 4
  %45 = call i32 @htons(i32 %44)
  store i32 %45, i32* %43, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = bitcast %struct.sockaddr_in6* %13 to %struct.sockaddr*
  store %struct.sockaddr* %49, %struct.sockaddr** %11, align 8
  store i32 12, i32* %9, align 4
  br label %52

50:                                               ; preds = %41
  %51 = bitcast %struct.sockaddr_in* %14 to %struct.sockaddr*
  store %struct.sockaddr* %51, %struct.sockaddr** %11, align 8
  store i32 12, i32* %9, align 4
  br label %52

52:                                               ; preds = %50, %48
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* @SOCK_STREAM, align 4
  %55 = load i32, i32* @IPPROTO_TCP, align 4
  %56 = call i32 @socket(i32 %53, i32 %54, i32 %55)
  store i32 %56, i32* %6, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %102

60:                                               ; preds = %52
  %61 = load i32, i32* %4, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %60
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @IPPROTO_IPV6, align 4
  %66 = load i32, i32* @IPV6_V6ONLY, align 4
  %67 = bitcast i32* %8 to i8*
  %68 = bitcast i8* %67 to i32*
  %69 = call i64 @setsockopt(i32 %64, i32 %65, i32 %66, i32* %68, i32 4)
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %63
  %72 = call i32 @perror(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %102

73:                                               ; preds = %63, %60
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @SOL_SOCKET, align 4
  %76 = load i32, i32* @SO_REUSEADDR, align 4
  %77 = call i64 @setsockopt(i32 %74, i32 %75, i32 %76, i32* %7, i32 4)
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = call i32 @perror(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %102

81:                                               ; preds = %73
  %82 = load i32, i32* %6, align 4
  %83 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %84 = load i32, i32* %9, align 4
  %85 = call i64 @bind(i32 %82, %struct.sockaddr* %83, i32 %84)
  %86 = icmp slt i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %81
  %88 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %102

89:                                               ; preds = %81
  %90 = load i32, i32* %5, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = load i32, i32* %6, align 4
  store i32 %93, i32* %3, align 4
  br label %106

94:                                               ; preds = %89
  %95 = load i32, i32* %6, align 4
  %96 = call i64 @listen(i32 %95, i32 1)
  %97 = icmp slt i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %94
  %99 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  br label %102

100:                                              ; preds = %94
  %101 = load i32, i32* %6, align 4
  store i32 %101, i32* %3, align 4
  br label %106

102:                                              ; preds = %98, %87, %79, %71, %58
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @close(i32 %103)
  %105 = load i32, i32* %10, align 4
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %102, %100, %92
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @inet_addr(i8*) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i64 @setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i64 @listen(i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
