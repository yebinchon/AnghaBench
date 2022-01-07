; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_wext-core.c_get_handler.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_wext-core.c_get_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.iw_handler_def*, %struct.TYPE_4__* }
%struct.iw_handler_def = type { i32, i32, i32**, i32** }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.iw_handler_def* }

@SIOCIWFIRSTPRIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.net_device*, i32)* @get_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_handler(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.iw_handler_def*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.iw_handler_def* null, %struct.iw_handler_def** %7, align 8
  %8 = load %struct.iw_handler_def*, %struct.iw_handler_def** %7, align 8
  %9 = icmp ne %struct.iw_handler_def* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %28

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @IW_IOCTL_IDX(i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.iw_handler_def*, %struct.iw_handler_def** %7, align 8
  %16 = getelementptr inbounds %struct.iw_handler_def, %struct.iw_handler_def* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ult i32 %14, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %11
  %20 = load %struct.iw_handler_def*, %struct.iw_handler_def** %7, align 8
  %21 = getelementptr inbounds %struct.iw_handler_def, %struct.iw_handler_def* %20, i32 0, i32 3
  %22 = load i32**, i32*** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i32*, i32** %22, i64 %24
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %3, align 8
  br label %28

27:                                               ; preds = %11
  store i32* null, i32** %3, align 8
  br label %28

28:                                               ; preds = %27, %19, %10
  %29 = load i32*, i32** %3, align 8
  ret i32* %29
}

declare dso_local i32 @IW_IOCTL_IDX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
