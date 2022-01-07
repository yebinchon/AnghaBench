; ModuleID = '/home/carl/AnghaBench/linux/net/can/extr_gw.c_cgw_chk_csum_parms.c'
source_filename = "/home/carl/AnghaBench/linux/net/can/extr_gw.c_cgw_chk_csum_parms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtcanmsg = type { i32 }

@CAN_MAX_DLEN = common dso_local global i32 0, align 4
@CGW_FLAGS_CAN_FD = common dso_local global i32 0, align 4
@CANFD_MAX_DLEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, %struct.rtcanmsg*)* @cgw_chk_csum_parms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cgw_chk_csum_parms(i32 %0, i32 %1, i32 %2, %struct.rtcanmsg* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.rtcanmsg*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.rtcanmsg* %3, %struct.rtcanmsg** %9, align 8
  %11 = load i32, i32* @CAN_MAX_DLEN, align 4
  store i32 %11, i32* %10, align 4
  %12 = load %struct.rtcanmsg*, %struct.rtcanmsg** %9, align 8
  %13 = getelementptr inbounds %struct.rtcanmsg, %struct.rtcanmsg* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @CGW_FLAGS_CAN_FD, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* @CANFD_MAX_DLEN, align 4
  store i32 %19, i32* %10, align 4
  br label %20

20:                                               ; preds = %18, %4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %10, align 4
  %23 = sub nsw i32 0, %22
  %24 = icmp sge i32 %21, %23
  br i1 %24, label %25, label %48

25:                                               ; preds = %20
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %48

29:                                               ; preds = %25
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %10, align 4
  %32 = sub nsw i32 0, %31
  %33 = icmp sge i32 %30, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %29
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %34
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %10, align 4
  %41 = sub nsw i32 0, %40
  %42 = icmp sge i32 %39, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i32 0, i32* %5, align 4
  br label %51

48:                                               ; preds = %43, %38, %34, %29, %25, %20
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %48, %47
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
