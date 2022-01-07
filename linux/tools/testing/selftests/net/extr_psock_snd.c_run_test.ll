; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_psock_snd.c_run_test.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_psock_snd.c_run_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cfg_payload_len = common dso_local global i32 0, align 4
@DATA_LEN = common dso_local global i32 0, align 4
@cfg_use_vlan = common dso_local global i32 0, align 4
@tbuf = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"close s\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"close r\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @run_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_test() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 (...) @setup_rx()
  store i32 %4, i32* %1, align 4
  %5 = call i32 (...) @setup_sniffer()
  store i32 %5, i32* %2, align 4
  %6 = call i32 (...) @do_tx()
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @cfg_payload_len, align 4
  %8 = load i32, i32* @DATA_LEN, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %22

10:                                               ; preds = %0
  %11 = load i32, i32* @cfg_use_vlan, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %10
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = sub i64 %16, 4
  %18 = trunc i64 %17 to i32
  %19 = load i64, i64* @tbuf, align 8
  %20 = add i64 %19, 4
  %21 = call i32 @do_rx(i32 %14, i32 %18, i64 %20)
  br label %22

22:                                               ; preds = %13, %10, %0
  %23 = load i32, i32* %1, align 4
  %24 = load i32, i32* @cfg_payload_len, align 4
  %25 = load i64, i64* @tbuf, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %25, %27
  %29 = load i32, i32* @cfg_payload_len, align 4
  %30 = sext i32 %29 to i64
  %31 = sub nsw i64 %28, %30
  %32 = call i32 @do_rx(i32 %23, i32 %24, i64 %31)
  %33 = load i32, i32* %2, align 4
  %34 = call i64 @close(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %22
  %37 = load i32, i32* @errno, align 4
  %38 = call i32 @error(i32 1, i32 %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %36, %22
  %40 = load i32, i32* %1, align 4
  %41 = call i64 @close(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i32, i32* @errno, align 4
  %45 = call i32 @error(i32 1, i32 %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %39
  ret void
}

declare dso_local i32 @setup_rx(...) #1

declare dso_local i32 @setup_sniffer(...) #1

declare dso_local i32 @do_tx(...) #1

declare dso_local i32 @do_rx(i32, i32, i64) #1

declare dso_local i64 @close(i32) #1

declare dso_local i32 @error(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
