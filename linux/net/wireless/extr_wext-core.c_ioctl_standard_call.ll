; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_wext-core.c_ioctl_standard_call.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_wext-core.c_ioctl_standard_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iw_ioctl_description = type { i64, i32 }
%struct.net_device = type { i32 }
%struct.iwreq = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.iw_request_info = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@standard_ioctl_num = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@standard_ioctl = common dso_local global %struct.iw_ioctl_description* null, align 8
@IW_HEADER_TYPE_POINT = common dso_local global i64 0, align 8
@IW_DESCR_FLAG_EVENT = common dso_local global i32 0, align 4
@EIWCOMMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iwreq*, i32, %struct.iw_request_info*, i32 (%struct.net_device*, %struct.iw_request_info*, %struct.TYPE_5__*, i32*)*)* @ioctl_standard_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioctl_standard_call(%struct.net_device* %0, %struct.iwreq* %1, i32 %2, %struct.iw_request_info* %3, i32 (%struct.net_device*, %struct.iw_request_info*, %struct.TYPE_5__*, i32*)* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.iwreq*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.iw_request_info*, align 8
  %11 = alloca i32 (%struct.net_device*, %struct.iw_request_info*, %struct.TYPE_5__*, i32*)*, align 8
  %12 = alloca %struct.iw_ioctl_description*, align 8
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %7, align 8
  store %struct.iwreq* %1, %struct.iwreq** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.iw_request_info* %3, %struct.iw_request_info** %10, align 8
  store i32 (%struct.net_device*, %struct.iw_request_info*, %struct.TYPE_5__*, i32*)* %4, i32 (%struct.net_device*, %struct.iw_request_info*, %struct.TYPE_5__*, i32*)** %11, align 8
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* %9, align 4
  %17 = call i64 @IW_IOCTL_IDX(i32 %16)
  %18 = load i64, i64* @standard_ioctl_num, align 8
  %19 = icmp uge i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = load i32, i32* @EOPNOTSUPP, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %81

23:                                               ; preds = %5
  %24 = load %struct.iw_ioctl_description*, %struct.iw_ioctl_description** @standard_ioctl, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i64 @IW_IOCTL_IDX(i32 %25)
  %27 = getelementptr inbounds %struct.iw_ioctl_description, %struct.iw_ioctl_description* %24, i64 %26
  store %struct.iw_ioctl_description* %27, %struct.iw_ioctl_description** %12, align 8
  %28 = load %struct.iw_ioctl_description*, %struct.iw_ioctl_description** %12, align 8
  %29 = getelementptr inbounds %struct.iw_ioctl_description, %struct.iw_ioctl_description* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @IW_HEADER_TYPE_POINT, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %61

33:                                               ; preds = %23
  %34 = load i32 (%struct.net_device*, %struct.iw_request_info*, %struct.TYPE_5__*, i32*)*, i32 (%struct.net_device*, %struct.iw_request_info*, %struct.TYPE_5__*, i32*)** %11, align 8
  %35 = load %struct.net_device*, %struct.net_device** %7, align 8
  %36 = load %struct.iw_request_info*, %struct.iw_request_info** %10, align 8
  %37 = load %struct.iwreq*, %struct.iwreq** %8, align 8
  %38 = getelementptr inbounds %struct.iwreq, %struct.iwreq* %37, i32 0, i32 0
  %39 = call i32 %34(%struct.net_device* %35, %struct.iw_request_info* %36, %struct.TYPE_5__* %38, i32* null)
  store i32 %39, i32* %13, align 4
  %40 = load %struct.iw_ioctl_description*, %struct.iw_ioctl_description** %12, align 8
  %41 = getelementptr inbounds %struct.iw_ioctl_description, %struct.iw_ioctl_description* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @IW_DESCR_FLAG_EVENT, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %33
  %47 = load i32, i32* %13, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* @EIWCOMMIT, align 4
  %52 = sub nsw i32 0, %51
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %49, %46
  %55 = load %struct.net_device*, %struct.net_device** %7, align 8
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.iwreq*, %struct.iwreq** %8, align 8
  %58 = getelementptr inbounds %struct.iwreq, %struct.iwreq* %57, i32 0, i32 0
  %59 = call i32 @wireless_send_event(%struct.net_device* %55, i32 %56, %struct.TYPE_5__* %58, i32* null)
  br label %60

60:                                               ; preds = %54, %49, %33
  br label %71

61:                                               ; preds = %23
  %62 = load %struct.iwreq*, %struct.iwreq** %8, align 8
  %63 = getelementptr inbounds %struct.iwreq, %struct.iwreq* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.iw_ioctl_description*, %struct.iw_ioctl_description** %12, align 8
  %67 = load i32 (%struct.net_device*, %struct.iw_request_info*, %struct.TYPE_5__*, i32*)*, i32 (%struct.net_device*, %struct.iw_request_info*, %struct.TYPE_5__*, i32*)** %11, align 8
  %68 = load %struct.net_device*, %struct.net_device** %7, align 8
  %69 = load %struct.iw_request_info*, %struct.iw_request_info** %10, align 8
  %70 = call i32 @ioctl_standard_iw_point(i32* %64, i32 %65, %struct.iw_ioctl_description* %66, i32 (%struct.net_device*, %struct.iw_request_info*, %struct.TYPE_5__*, i32*)* %67, %struct.net_device* %68, %struct.iw_request_info* %69)
  store i32 %70, i32* %13, align 4
  br label %71

71:                                               ; preds = %61, %60
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* @EIWCOMMIT, align 4
  %74 = sub nsw i32 0, %73
  %75 = icmp eq i32 %72, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load %struct.net_device*, %struct.net_device** %7, align 8
  %78 = call i32 @call_commit_handler(%struct.net_device* %77)
  store i32 %78, i32* %13, align 4
  br label %79

79:                                               ; preds = %76, %71
  %80 = load i32, i32* %13, align 4
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %79, %20
  %82 = load i32, i32* %6, align 4
  ret i32 %82
}

declare dso_local i64 @IW_IOCTL_IDX(i32) #1

declare dso_local i32 @wireless_send_event(%struct.net_device*, i32, %struct.TYPE_5__*, i32*) #1

declare dso_local i32 @ioctl_standard_iw_point(i32*, i32, %struct.iw_ioctl_description*, i32 (%struct.net_device*, %struct.iw_request_info*, %struct.TYPE_5__*, i32*)*, %struct.net_device*, %struct.iw_request_info*) #1

declare dso_local i32 @call_commit_handler(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
