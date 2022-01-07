; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_nettest.c_tcp_md5sig.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_nettest.c_tcp_md5sig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_md5sig = type { i32, i32, i32 }

@IPPROTO_TCP = common dso_local global i32 0, align 4
@TCP_MD5SIG = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"setsockopt(TCP_MD5SIG)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i8*)* @tcp_md5sig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_md5sig(i32 %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.tcp_md5sig, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 @strlen(i8* %15)
  br label %18

17:                                               ; preds = %4
  br label %18

18:                                               ; preds = %17, %14
  %19 = phi i32 [ %16, %14 ], [ 0, %17 ]
  store i32 %19, i32* %10, align 4
  %20 = call i32 @memset(%struct.tcp_md5sig* %9, i32 0, i32 12)
  %21 = getelementptr inbounds %struct.tcp_md5sig, %struct.tcp_md5sig* %9, i32 0, i32 2
  %22 = ptrtoint i32* %21 to i32
  %23 = load i8*, i8** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @memcpy(i32 %22, i8* %23, i32 %24)
  %26 = load i32, i32* %10, align 4
  %27 = getelementptr inbounds %struct.tcp_md5sig, %struct.tcp_md5sig* %9, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %18
  %31 = getelementptr inbounds %struct.tcp_md5sig, %struct.tcp_md5sig* %9, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i8*, i8** %8, align 8
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @memcpy(i32 %32, i8* %33, i32 %34)
  br label %36

36:                                               ; preds = %30, %18
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @IPPROTO_TCP, align 4
  %39 = load i32, i32* @TCP_MD5SIG, align 4
  %40 = call i32 @setsockopt(i32 %37, i32 %38, i32 %39, %struct.tcp_md5sig* %9, i32 12)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %36
  %44 = load i64, i64* @errno, align 8
  %45 = load i64, i64* @ENOENT, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i32 0, i32* %11, align 4
  br label %50

48:                                               ; preds = %43
  %49 = call i32 @log_err_errno(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %47
  br label %51

51:                                               ; preds = %50, %36
  %52 = load i32, i32* %11, align 4
  ret i32 %52
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memset(%struct.tcp_md5sig*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @setsockopt(i32, i32, i32, %struct.tcp_md5sig*, i32) #1

declare dso_local i32 @log_err_errno(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
