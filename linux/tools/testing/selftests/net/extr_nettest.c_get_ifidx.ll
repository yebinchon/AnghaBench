; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_nettest.c_get_ifidx.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_nettest.c_get_ifidx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifreq = type { i32, i32 }

@PF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@IPPROTO_IP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"socket failed\00", align 1
@SIOCGIFINDEX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"ioctl(SIOCGIFINDEX) failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @get_ifidx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_ifidx(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ifreq, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9, %1
  store i32 -1, i32* %2, align 4
  br label %43

15:                                               ; preds = %9
  %16 = call i32 @memset(%struct.ifreq* %4, i32 0, i32 8)
  %17 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %4, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 @strcpy(i32 %18, i8* %19)
  %21 = load i32, i32* @PF_INET, align 4
  %22 = load i32, i32* @SOCK_DGRAM, align 4
  %23 = load i32, i32* @IPPROTO_IP, align 4
  %24 = call i32 @socket(i32 %21, i32 %22, i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %15
  %28 = call i32 @log_err_errno(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %43

29:                                               ; preds = %15
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @SIOCGIFINDEX, align 4
  %32 = bitcast %struct.ifreq* %4 to i8*
  %33 = call i32 @ioctl(i32 %30, i32 %31, i8* %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @close(i32 %34)
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = call i32 @log_err_errno(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %43

40:                                               ; preds = %29
  %41 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %4, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %40, %38, %27, %14
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @memset(%struct.ifreq*, i32, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @log_err_errno(i8*) #1

declare dso_local i32 @ioctl(i32, i32, i8*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
