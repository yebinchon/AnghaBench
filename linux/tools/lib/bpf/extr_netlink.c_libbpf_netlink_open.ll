; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_netlink.c_libbpf_netlink_open.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_netlink.c_libbpf_netlink_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_nl = type { i32, i32 }
%struct.sockaddr = type { i32 }

@AF_NETLINK = common dso_local global i32 0, align 4
@SOCK_RAW = common dso_local global i32 0, align 4
@NETLINK_ROUTE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@SOL_NETLINK = common dso_local global i32 0, align 4
@NETLINK_EXT_ACK = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Netlink error reporting not supported\0A\00", align 1
@LIBBPF_ERRNO__INTERNAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libbpf_netlink_open(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.sockaddr_nl, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 1, i32* %6, align 4
  %9 = call i32 @memset(%struct.sockaddr_nl* %4, i32 0, i32 8)
  %10 = load i32, i32* @AF_NETLINK, align 4
  %11 = getelementptr inbounds %struct.sockaddr_nl, %struct.sockaddr_nl* %4, i32 0, i32 1
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* @AF_NETLINK, align 4
  %13 = load i32, i32* @SOCK_RAW, align 4
  %14 = load i32, i32* @NETLINK_ROUTE, align 4
  %15 = call i32 @socket(i32 %12, i32 %13, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @errno, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %62

21:                                               ; preds = %1
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @SOL_NETLINK, align 4
  %24 = load i32, i32* @NETLINK_EXT_ACK, align 4
  %25 = call i64 @setsockopt(i32 %22, i32 %23, i32 %24, i32* %6, i32 4)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* @stderr, align 4
  %29 = call i32 @fprintf(i32 %28, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %21
  %31 = load i32, i32* %8, align 4
  %32 = bitcast %struct.sockaddr_nl* %4 to %struct.sockaddr*
  %33 = call i64 @bind(i32 %31, %struct.sockaddr* %32, i32 8)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* @errno, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %7, align 4
  br label %58

38:                                               ; preds = %30
  store i32 8, i32* %5, align 4
  %39 = load i32, i32* %8, align 4
  %40 = bitcast %struct.sockaddr_nl* %4 to %struct.sockaddr*
  %41 = call i64 @getsockname(i32 %39, %struct.sockaddr* %40, i32* %5)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, i32* @errno, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %7, align 4
  br label %58

46:                                               ; preds = %38
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = icmp ne i64 %48, 8
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i32, i32* @LIBBPF_ERRNO__INTERNAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %7, align 4
  br label %58

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.sockaddr_nl, %struct.sockaddr_nl* %4, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %3, align 8
  store i32 %55, i32* %56, align 4
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %2, align 4
  br label %62

58:                                               ; preds = %50, %43, %35
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @close(i32 %59)
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %58, %53, %18
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @memset(%struct.sockaddr_nl*, i32, i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i64 @setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i64 @getsockname(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
