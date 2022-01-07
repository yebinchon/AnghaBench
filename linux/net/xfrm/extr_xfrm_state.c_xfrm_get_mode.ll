; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_state.c_xfrm_get_mode.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_state.c_xfrm_get_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_mode = type { i32 }

@XFRM_MODE_MAX = common dso_local global i32 0, align 4
@xfrm4_mode_map = common dso_local global %struct.xfrm_mode* null, align 8
@xfrm6_mode_map = common dso_local global %struct.xfrm_mode* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xfrm_mode* (i32, i32)* @xfrm_get_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xfrm_mode* @xfrm_get_mode(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.xfrm_mode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.xfrm_mode*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @XFRM_MODE_MAX, align 4
  %9 = icmp uge i32 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store %struct.xfrm_mode* null, %struct.xfrm_mode** %3, align 8
  br label %44

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %42 [
    i32 129, label %16
    i32 128, label %29
  ]

16:                                               ; preds = %14
  %17 = load %struct.xfrm_mode*, %struct.xfrm_mode** @xfrm4_mode_map, align 8
  %18 = load i32, i32* %4, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.xfrm_mode, %struct.xfrm_mode* %17, i64 %19
  store %struct.xfrm_mode* %20, %struct.xfrm_mode** %6, align 8
  %21 = load %struct.xfrm_mode*, %struct.xfrm_mode** %6, align 8
  %22 = getelementptr inbounds %struct.xfrm_mode, %struct.xfrm_mode* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %16
  %27 = load %struct.xfrm_mode*, %struct.xfrm_mode** %6, align 8
  store %struct.xfrm_mode* %27, %struct.xfrm_mode** %3, align 8
  br label %44

28:                                               ; preds = %16
  br label %43

29:                                               ; preds = %14
  %30 = load %struct.xfrm_mode*, %struct.xfrm_mode** @xfrm6_mode_map, align 8
  %31 = load i32, i32* %4, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.xfrm_mode, %struct.xfrm_mode* %30, i64 %32
  store %struct.xfrm_mode* %33, %struct.xfrm_mode** %6, align 8
  %34 = load %struct.xfrm_mode*, %struct.xfrm_mode** %6, align 8
  %35 = getelementptr inbounds %struct.xfrm_mode, %struct.xfrm_mode* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %29
  %40 = load %struct.xfrm_mode*, %struct.xfrm_mode** %6, align 8
  store %struct.xfrm_mode* %40, %struct.xfrm_mode** %3, align 8
  br label %44

41:                                               ; preds = %29
  br label %43

42:                                               ; preds = %14
  br label %43

43:                                               ; preds = %42, %41, %28
  store %struct.xfrm_mode* null, %struct.xfrm_mode** %3, align 8
  br label %44

44:                                               ; preds = %43, %39, %26, %13
  %45 = load %struct.xfrm_mode*, %struct.xfrm_mode** %3, align 8
  ret %struct.xfrm_mode* %45
}

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
