; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_msg_zerocopy.c_do_setup_tx.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_msg_zerocopy.c_do_setup_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"socket t\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_SNDBUF = common dso_local global i32 0, align 4
@cfg_zerocopy = common dso_local global i64 0, align 8
@SO_ZEROCOPY = common dso_local global i32 0, align 4
@PF_PACKET = common dso_local global i32 0, align 4
@PF_RDS = common dso_local global i32 0, align 4
@cfg_dst_addr = common dso_local global i32 0, align 4
@cfg_alen = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@cfg_src_addr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"bind\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @do_setup_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_setup_tx(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @socket(i32 %8, i32 %9, i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @errno, align 4
  %16 = call i32 @error(i32 1, i32 %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %14, %3
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @SOL_SOCKET, align 4
  %20 = load i32, i32* @SO_SNDBUF, align 4
  %21 = call i32 @do_setsockopt(i32 %18, i32 %19, i32 %20, i32 2097152)
  %22 = load i64, i64* @cfg_zerocopy, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %17
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @SOL_SOCKET, align 4
  %27 = load i32, i32* @SO_ZEROCOPY, align 4
  %28 = call i32 @do_setsockopt(i32 %25, i32 %26, i32 %27, i32 1)
  br label %29

29:                                               ; preds = %24, %17
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @PF_PACKET, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %29
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @PF_RDS, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %33
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @cfg_alen, align 4
  %40 = call i64 @connect(i32 %38, i8* bitcast (i32* @cfg_dst_addr to i8*), i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* @errno, align 4
  %44 = call i32 @error(i32 1, i32 %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %45

45:                                               ; preds = %42, %37
  br label %46

46:                                               ; preds = %45, %33, %29
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @PF_RDS, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %46
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @cfg_alen, align 4
  %53 = call i64 @bind(i32 %51, i8* bitcast (i32* @cfg_src_addr to i8*), i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i32, i32* @errno, align 4
  %57 = call i32 @error(i32 1, i32 %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %58

58:                                               ; preds = %55, %50
  br label %59

59:                                               ; preds = %58, %46
  %60 = load i32, i32* %7, align 4
  ret i32 %60
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @error(i32, i32, i8*) #1

declare dso_local i32 @do_setsockopt(i32, i32, i32, i32) #1

declare dso_local i64 @connect(i32, i8*, i32) #1

declare dso_local i64 @bind(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
