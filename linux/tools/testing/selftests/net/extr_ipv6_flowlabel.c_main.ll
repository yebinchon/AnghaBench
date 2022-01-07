; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_ipv6_flowlabel.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_ipv6_flowlabel.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in6 = type { i32, i32, i32 }

@IN6ADDR_LOOPBACK_INIT = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@PF_INET6 = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"socket t\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"socket r\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"bind\00", align 1
@cfg_label = common dso_local global i32 0, align 4
@IPV6_FL_S_EXCL = common dso_local global i32 0, align 4
@IPV6_FL_F_CREATE = common dso_local global i32 0, align 4
@SOL_IPV6 = common dso_local global i32 0, align 4
@IPV6_FLOWINFO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"setsockopt flowinfo\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"send no label: recv auto flowlabel\0A\00", align 1
@FLOWLABEL_WILDCARD = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [41 x i8] c"send no label: recv no label (auto off)\0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"send label\0A\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"close r\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"close t\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.sockaddr_in6, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %6, i32 0, i32 0
  %11 = load i32, i32* @IN6ADDR_LOOPBACK_INIT, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %6, i32 0, i32 1
  %13 = call i32 @htons(i32 8000)
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %6, i32 0, i32 2
  %15 = load i32, i32* @AF_INET6, align 4
  store i32 %15, i32* %14, align 4
  store i32 1, i32* %7, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i8**, i8*** %5, align 8
  %18 = call i32 @parse_opts(i32 %16, i8** %17)
  %19 = load i32, i32* @PF_INET6, align 4
  %20 = load i32, i32* @SOCK_DGRAM, align 4
  %21 = call i32 @socket(i32 %19, i32 %20, i32 0)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @errno, align 4
  %26 = call i32 @error(i32 1, i32 %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %2
  %28 = load i32, i32* @PF_INET6, align 4
  %29 = load i32, i32* @SOCK_DGRAM, align 4
  %30 = call i32 @socket(i32 %28, i32 %29, i32 0)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* @errno, align 4
  %35 = call i32 @error(i32 1, i32 %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %33, %27
  %37 = load i32, i32* %8, align 4
  %38 = bitcast %struct.sockaddr_in6* %6 to i8*
  %39 = call i64 @connect(i32 %37, i8* %38, i32 12)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32, i32* @errno, align 4
  %43 = call i32 @error(i32 1, i32 %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %36
  %45 = load i32, i32* %9, align 4
  %46 = bitcast %struct.sockaddr_in6* %6 to i8*
  %47 = call i64 @bind(i32 %45, i8* %46, i32 12)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32, i32* @errno, align 4
  %51 = call i32 @error(i32 1, i32 %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %52

52:                                               ; preds = %49, %44
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @cfg_label, align 4
  %55 = load i32, i32* @IPV6_FL_S_EXCL, align 4
  %56 = load i32, i32* @IPV6_FL_F_CREATE, align 4
  %57 = call i32 @flowlabel_get(i32 %53, i32 %54, i32 %55, i32 %56)
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @SOL_IPV6, align 4
  %60 = load i32, i32* @IPV6_FLOWINFO, align 4
  %61 = call i64 @setsockopt(i32 %58, i32 %59, i32 %60, i32* %7, i32 4)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %52
  %64 = load i32, i32* @errno, align 4
  %65 = call i32 @error(i32 1, i32 %64, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %66

66:                                               ; preds = %63, %52
  %67 = call i64 (...) @get_autoflowlabel_enabled()
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %66
  %70 = load i32, i32* @stderr, align 4
  %71 = call i32 @fprintf(i32 %70, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @do_send(i32 %72, i32 0, i32 0)
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @FLOWLABEL_WILDCARD, align 4
  %76 = call i32 @do_recv(i32 %74, i32 1, i32 %75)
  br label %84

77:                                               ; preds = %66
  %78 = load i32, i32* @stderr, align 4
  %79 = call i32 @fprintf(i32 %78, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @do_send(i32 %80, i32 0, i32 0)
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @do_recv(i32 %82, i32 0, i32 0)
  br label %84

84:                                               ; preds = %77, %69
  %85 = load i32, i32* @stderr, align 4
  %86 = call i32 @fprintf(i32 %85, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @cfg_label, align 4
  %89 = call i32 @do_send(i32 %87, i32 1, i32 %88)
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* @cfg_label, align 4
  %92 = call i32 @do_recv(i32 %90, i32 1, i32 %91)
  %93 = load i32, i32* %9, align 4
  %94 = call i64 @close(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %84
  %97 = load i32, i32* @errno, align 4
  %98 = call i32 @error(i32 1, i32 %97, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  br label %99

99:                                               ; preds = %96, %84
  %100 = load i32, i32* %8, align 4
  %101 = call i64 @close(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %99
  %104 = load i32, i32* @errno, align 4
  %105 = call i32 @error(i32 1, i32 %104, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  br label %106

106:                                              ; preds = %103, %99
  ret i32 0
}

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @parse_opts(i32, i8**) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @error(i32, i32, i8*) #1

declare dso_local i64 @connect(i32, i8*, i32) #1

declare dso_local i64 @bind(i32, i8*, i32) #1

declare dso_local i32 @flowlabel_get(i32, i32, i32, i32) #1

declare dso_local i64 @setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i64 @get_autoflowlabel_enabled(...) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @do_send(i32, i32, i32) #1

declare dso_local i32 @do_recv(i32, i32, i32) #1

declare dso_local i64 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
