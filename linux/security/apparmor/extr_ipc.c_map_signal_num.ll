; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_ipc.c_map_signal_num.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_ipc.c_map_signal_num.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIGRTMAX = common dso_local global i32 0, align 4
@SIGUNKNOWN = common dso_local global i32 0, align 4
@SIGRTMIN = common dso_local global i32 0, align 4
@SIGRT_BASE = common dso_local global i32 0, align 4
@MAXMAPPED_SIG = common dso_local global i32 0, align 4
@sig_map = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @map_signal_num to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_signal_num(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @SIGRTMAX, align 4
  %6 = icmp sgt i32 %4, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @SIGUNKNOWN, align 4
  store i32 %8, i32* %2, align 4
  br label %33

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @SIGRTMIN, align 4
  %12 = icmp sge i32 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %9
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @SIGRTMIN, align 4
  %16 = sub nsw i32 %14, %15
  %17 = load i32, i32* @SIGRT_BASE, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %2, align 4
  br label %33

19:                                               ; preds = %9
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @MAXMAPPED_SIG, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load i32*, i32** @sig_map, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %2, align 4
  br label %33

29:                                               ; preds = %19
  br label %30

30:                                               ; preds = %29
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* @SIGUNKNOWN, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %31, %23, %13, %7
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
