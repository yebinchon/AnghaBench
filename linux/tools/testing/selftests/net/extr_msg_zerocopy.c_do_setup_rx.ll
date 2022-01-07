; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_msg_zerocopy.c_do_setup_rx.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_msg_zerocopy.c_do_setup_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PF_PACKET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Use PF_INET/SOCK_RAW to read\00", align 1
@SOCK_RAW = common dso_local global i32 0, align 4
@IPPROTO_RAW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"IPPROTO_RAW: not supported on Rx\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"socket r\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_RCVBUF = common dso_local global i32 0, align 4
@SO_RCVLOWAT = common dso_local global i32 0, align 4
@SO_REUSEPORT = common dso_local global i32 0, align 4
@cfg_dst_addr = common dso_local global i32 0, align 4
@cfg_alen = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"bind\00", align 1
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"listen\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @do_setup_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_setup_rx(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @PF_PACKET, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = call i32 @error(i32 1, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %3
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @SOCK_RAW, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %13
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @IPPROTO_RAW, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = call i32 @error(i32 1, i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %17, %13
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @socket(i32 %24, i32 %25, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load i32, i32* @errno, align 4
  %32 = call i32 @error(i32 1, i32 %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %33

33:                                               ; preds = %30, %23
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @SOL_SOCKET, align 4
  %36 = load i32, i32* @SO_RCVBUF, align 4
  %37 = call i32 @do_setsockopt(i32 %34, i32 %35, i32 %36, i32 2097152)
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @SOL_SOCKET, align 4
  %40 = load i32, i32* @SO_RCVLOWAT, align 4
  %41 = call i32 @do_setsockopt(i32 %38, i32 %39, i32 %40, i32 65536)
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @SOL_SOCKET, align 4
  %44 = load i32, i32* @SO_REUSEPORT, align 4
  %45 = call i32 @do_setsockopt(i32 %42, i32 %43, i32 %44, i32 1)
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @cfg_alen, align 4
  %48 = call i64 @bind(i32 %46, i8* bitcast (i32* @cfg_dst_addr to i8*), i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %33
  %51 = load i32, i32* @errno, align 4
  %52 = call i32 @error(i32 1, i32 %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %53

53:                                               ; preds = %50, %33
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @SOCK_STREAM, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %53
  %58 = load i32, i32* %7, align 4
  %59 = call i64 @listen(i32 %58, i32 1)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load i32, i32* @errno, align 4
  %63 = call i32 @error(i32 1, i32 %62, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %64

64:                                               ; preds = %61, %57
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @do_accept(i32 %65)
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %64, %53
  %68 = load i32, i32* %7, align 4
  ret i32 %68
}

declare dso_local i32 @error(i32, i32, i8*) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @do_setsockopt(i32, i32, i32, i32) #1

declare dso_local i64 @bind(i32, i8*, i32) #1

declare dso_local i64 @listen(i32, i32) #1

declare dso_local i32 @do_accept(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
