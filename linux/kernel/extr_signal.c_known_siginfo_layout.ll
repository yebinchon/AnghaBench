; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_signal.c_known_siginfo_layout.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_signal.c_known_siginfo_layout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@SI_KERNEL = common dso_local global i32 0, align 4
@SI_USER = common dso_local global i32 0, align 4
@sig_sicodes = common dso_local global %struct.TYPE_2__* null, align 8
@NSIGPOLL = common dso_local global i32 0, align 4
@SI_DETHREAD = common dso_local global i32 0, align 4
@SI_ASYNCNL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @known_siginfo_layout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @known_siginfo_layout(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @SI_KERNEL, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 1, i32* %3, align 4
  br label %50

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @SI_USER, align 4
  %13 = icmp sgt i32 %11, %12
  br i1 %13, label %14, label %36

14:                                               ; preds = %10
  %15 = load i32, i32* %4, align 4
  %16 = call i64 @sig_specific_sicodes(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %14
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sig_sicodes, align 8
  %21 = load i32, i32* %4, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp sle i32 %19, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  store i32 1, i32* %3, align 4
  br label %50

28:                                               ; preds = %18
  br label %35

29:                                               ; preds = %14
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @NSIGPOLL, align 4
  %32 = icmp sle i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i32 1, i32* %3, align 4
  br label %50

34:                                               ; preds = %29
  br label %35

35:                                               ; preds = %34, %28
  br label %48

36:                                               ; preds = %10
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @SI_DETHREAD, align 4
  %39 = icmp sge i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i32 1, i32* %3, align 4
  br label %50

41:                                               ; preds = %36
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @SI_ASYNCNL, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i32 1, i32* %3, align 4
  br label %50

46:                                               ; preds = %41
  br label %47

47:                                               ; preds = %46
  br label %48

48:                                               ; preds = %47, %35
  br label %49

49:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %45, %40, %33, %27, %9
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i64 @sig_specific_sicodes(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
