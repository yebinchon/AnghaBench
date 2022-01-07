; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_wext-priv.c_ioctl_private_call.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_wext-priv.c_ioctl_private_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iwreq = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_priv_args = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EIWCOMMIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ioctl_private_call(%struct.net_device* %0, %struct.iwreq* %1, i32 %2, %struct.iw_request_info* %3, i32 (%struct.net_device*, %struct.iw_request_info*, %struct.TYPE_4__*, i8*)* %4) #0 {
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iwreq*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.iw_request_info*, align 8
  %10 = alloca i32 (%struct.net_device*, %struct.iw_request_info*, %struct.TYPE_4__*, i8*)*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.iw_priv_args*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iwreq* %1, %struct.iwreq** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.iw_request_info* %3, %struct.iw_request_info** %9, align 8
  store i32 (%struct.net_device*, %struct.iw_request_info*, %struct.TYPE_4__*, i8*)* %4, i32 (%struct.net_device*, %struct.iw_request_info*, %struct.TYPE_4__*, i8*)** %10, align 8
  store i32 0, i32* %11, align 4
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %12, align 4
  %16 = load %struct.net_device*, %struct.net_device** %6, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @get_priv_descr_and_size(%struct.net_device* %16, i32 %17, %struct.iw_priv_args** %13)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %5
  %22 = load i32 (%struct.net_device*, %struct.iw_request_info*, %struct.TYPE_4__*, i8*)*, i32 (%struct.net_device*, %struct.iw_request_info*, %struct.TYPE_4__*, i8*)** %10, align 8
  %23 = load %struct.net_device*, %struct.net_device** %6, align 8
  %24 = load %struct.iw_request_info*, %struct.iw_request_info** %9, align 8
  %25 = load %struct.iwreq*, %struct.iwreq** %7, align 8
  %26 = getelementptr inbounds %struct.iwreq, %struct.iwreq* %25, i32 0, i32 0
  %27 = load %struct.iwreq*, %struct.iwreq** %7, align 8
  %28 = getelementptr inbounds %struct.iwreq, %struct.iwreq* %27, i32 0, i32 0
  %29 = bitcast %struct.TYPE_4__* %28 to i8*
  %30 = call i32 %22(%struct.net_device* %23, %struct.iw_request_info* %24, %struct.TYPE_4__* %26, i8* %29)
  store i32 %30, i32* %12, align 4
  br label %42

31:                                               ; preds = %5
  %32 = load %struct.iwreq*, %struct.iwreq** %7, align 8
  %33 = getelementptr inbounds %struct.iwreq, %struct.iwreq* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.iw_priv_args*, %struct.iw_priv_args** %13, align 8
  %37 = load i32 (%struct.net_device*, %struct.iw_request_info*, %struct.TYPE_4__*, i8*)*, i32 (%struct.net_device*, %struct.iw_request_info*, %struct.TYPE_4__*, i8*)** %10, align 8
  %38 = load %struct.net_device*, %struct.net_device** %6, align 8
  %39 = load %struct.iw_request_info*, %struct.iw_request_info** %9, align 8
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @ioctl_private_iw_point(i32* %34, i32 %35, %struct.iw_priv_args* %36, i32 (%struct.net_device*, %struct.iw_request_info*, %struct.TYPE_4__*, i8*)* %37, %struct.net_device* %38, %struct.iw_request_info* %39, i32 %40)
  store i32 %41, i32* %12, align 4
  br label %42

42:                                               ; preds = %31, %21
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* @EIWCOMMIT, align 4
  %45 = sub nsw i32 0, %44
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load %struct.net_device*, %struct.net_device** %6, align 8
  %49 = call i32 @call_commit_handler(%struct.net_device* %48)
  store i32 %49, i32* %12, align 4
  br label %50

50:                                               ; preds = %47, %42
  %51 = load i32, i32* %12, align 4
  ret i32 %51
}

declare dso_local i32 @get_priv_descr_and_size(%struct.net_device*, i32, %struct.iw_priv_args**) #1

declare dso_local i32 @ioctl_private_iw_point(i32*, i32, %struct.iw_priv_args*, i32 (%struct.net_device*, %struct.iw_request_info*, %struct.TYPE_4__*, i8*)*, %struct.net_device*, %struct.iw_request_info*, i32) #1

declare dso_local i32 @call_commit_handler(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
