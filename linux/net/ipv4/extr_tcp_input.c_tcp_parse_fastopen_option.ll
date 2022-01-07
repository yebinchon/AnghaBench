; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_parse_fastopen_option.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_parse_fastopen_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_fastopen_cookie = type { i32, i32, i32 }

@TCP_FASTOPEN_COOKIE_MIN = common dso_local global i32 0, align 4
@TCP_FASTOPEN_COOKIE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i32, %struct.tcp_fastopen_cookie*, i32)* @tcp_parse_fastopen_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_parse_fastopen_option(i32 %0, i8* %1, i32 %2, %struct.tcp_fastopen_cookie* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.tcp_fastopen_cookie*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.tcp_fastopen_cookie* %3, %struct.tcp_fastopen_cookie** %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load %struct.tcp_fastopen_cookie*, %struct.tcp_fastopen_cookie** %9, align 8
  %12 = icmp ne %struct.tcp_fastopen_cookie* %11, null
  br i1 %12, label %13, label %23

13:                                               ; preds = %5
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %13
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %6, align 4
  %21 = and i32 %20, 1
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19, %16, %13, %5
  br label %51

24:                                               ; preds = %19
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @TCP_FASTOPEN_COOKIE_MIN, align 4
  %27 = icmp sge i32 %25, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %24
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @TCP_FASTOPEN_COOKIE_MAX, align 4
  %31 = icmp sle i32 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = load %struct.tcp_fastopen_cookie*, %struct.tcp_fastopen_cookie** %9, align 8
  %34 = getelementptr inbounds %struct.tcp_fastopen_cookie, %struct.tcp_fastopen_cookie* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i8*, i8** %7, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @memcpy(i32 %35, i8* %36, i32 %37)
  br label %44

39:                                               ; preds = %28, %24
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 -1, i32* %6, align 4
  br label %43

43:                                               ; preds = %42, %39
  br label %44

44:                                               ; preds = %43, %32
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.tcp_fastopen_cookie*, %struct.tcp_fastopen_cookie** %9, align 8
  %47 = getelementptr inbounds %struct.tcp_fastopen_cookie, %struct.tcp_fastopen_cookie* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.tcp_fastopen_cookie*, %struct.tcp_fastopen_cookie** %9, align 8
  %50 = getelementptr inbounds %struct.tcp_fastopen_cookie, %struct.tcp_fastopen_cookie* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  br label %51

51:                                               ; preds = %44, %23
  ret void
}

declare dso_local i32 @memcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
