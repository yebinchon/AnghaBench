; ModuleID = '/home/carl/AnghaBench/linux/net/caif/extr_cfctrl.c_cfctrl_req_eq.c'
source_filename = "/home/carl/AnghaBench/linux/net/caif/extr_cfctrl.c_cfctrl_req_eq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfctrl_request_info = type { i64, i64, i32 }

@CFCTRL_CMD_LINK_SETUP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cfctrl_request_info*, %struct.cfctrl_request_info*)* @cfctrl_req_eq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfctrl_req_eq(%struct.cfctrl_request_info* %0, %struct.cfctrl_request_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cfctrl_request_info*, align 8
  %5 = alloca %struct.cfctrl_request_info*, align 8
  store %struct.cfctrl_request_info* %0, %struct.cfctrl_request_info** %4, align 8
  store %struct.cfctrl_request_info* %1, %struct.cfctrl_request_info** %5, align 8
  %6 = load %struct.cfctrl_request_info*, %struct.cfctrl_request_info** %4, align 8
  %7 = getelementptr inbounds %struct.cfctrl_request_info, %struct.cfctrl_request_info* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.cfctrl_request_info*, %struct.cfctrl_request_info** %5, align 8
  %10 = getelementptr inbounds %struct.cfctrl_request_info, %struct.cfctrl_request_info* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %35

14:                                               ; preds = %2
  %15 = load %struct.cfctrl_request_info*, %struct.cfctrl_request_info** %4, align 8
  %16 = getelementptr inbounds %struct.cfctrl_request_info, %struct.cfctrl_request_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @CFCTRL_CMD_LINK_SETUP, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = load %struct.cfctrl_request_info*, %struct.cfctrl_request_info** %4, align 8
  %22 = getelementptr inbounds %struct.cfctrl_request_info, %struct.cfctrl_request_info* %21, i32 0, i32 2
  %23 = load %struct.cfctrl_request_info*, %struct.cfctrl_request_info** %5, align 8
  %24 = getelementptr inbounds %struct.cfctrl_request_info, %struct.cfctrl_request_info* %23, i32 0, i32 2
  %25 = call i32 @param_eq(i32* %22, i32* %24)
  store i32 %25, i32* %3, align 4
  br label %35

26:                                               ; preds = %14
  %27 = load %struct.cfctrl_request_info*, %struct.cfctrl_request_info** %4, align 8
  %28 = getelementptr inbounds %struct.cfctrl_request_info, %struct.cfctrl_request_info* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.cfctrl_request_info*, %struct.cfctrl_request_info** %5, align 8
  %31 = getelementptr inbounds %struct.cfctrl_request_info, %struct.cfctrl_request_info* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %29, %32
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %26, %20, %13
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @param_eq(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
