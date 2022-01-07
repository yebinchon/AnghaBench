; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_msg_zerocopy.c_do_flush_datagram.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_msg_zerocopy.c_do_flush_datagram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSG_DONTWAIT = common dso_local global i32 0, align 4
@MSG_TRUNC = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@cfg_family = common dso_local global i64 0, align 8
@PF_INET = common dso_local global i64 0, align 8
@SOCK_RAW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"recv\00", align 1
@cfg_payload_len = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"recv: ret=%u != %u\00", align 1
@payload = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"recv: data mismatch\00", align 1
@packets = common dso_local global i32 0, align 4
@bytes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @do_flush_datagram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_flush_datagram(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [64 x i8], align 16
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %8 = load i32, i32* %3, align 4
  %9 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %10 = load i32, i32* @MSG_DONTWAIT, align 4
  %11 = load i32, i32* @MSG_TRUNC, align 4
  %12 = or i32 %10, %11
  %13 = call i32 @recv(i32 %8, i8* %9, i32 64, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load i64, i64* @errno, align 8
  %18 = load i64, i64* @EAGAIN, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %81

21:                                               ; preds = %16, %2
  %22 = load i64, i64* @cfg_family, align 8
  %23 = load i64, i64* @PF_INET, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %38

25:                                               ; preds = %21
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @SOCK_RAW, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %25
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = add i64 %31, 4
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = sub i64 %35, 4
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %29, %25, %21
  %39 = load i32, i32* %5, align 4
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i64, i64* @errno, align 8
  %43 = call i32 (i32, i64, i8*, ...) @error(i32 1, i64 %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %38
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @cfg_payload_len, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @cfg_payload_len, align 4
  %51 = call i32 (i32, i64, i8*, ...) @error(i32 1, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %48, %44
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = sub i64 64, %56
  %58 = icmp ugt i64 %54, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %52
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = sub i64 64, %61
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %59, %52
  %65 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = load i32, i32* @payload, align 4
  %70 = load i32, i32* %5, align 4
  %71 = call i64 @memcmp(i8* %68, i32 %69, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %64
  %74 = call i32 (i32, i64, i8*, ...) @error(i32 1, i64 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %75

75:                                               ; preds = %73, %64
  %76 = load i32, i32* @packets, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* @packets, align 4
  %78 = load i32, i32* @cfg_payload_len, align 4
  %79 = load i32, i32* @bytes, align 4
  %80 = add nsw i32 %79, %78
  store i32 %80, i32* @bytes, align 4
  br label %81

81:                                               ; preds = %75, %20
  ret void
}

declare dso_local i32 @recv(i32, i8*, i32, i32) #1

declare dso_local i32 @error(i32, i64, i8*, ...) #1

declare dso_local i64 @memcmp(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
