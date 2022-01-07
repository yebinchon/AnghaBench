; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_fmsg_nest_common.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_fmsg_nest_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink_fmsg = type { i32 }
%struct.devlink_fmsg_item = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devlink_fmsg*, i32)* @devlink_fmsg_nest_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devlink_fmsg_nest_common(%struct.devlink_fmsg* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.devlink_fmsg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.devlink_fmsg_item*, align 8
  store %struct.devlink_fmsg* %0, %struct.devlink_fmsg** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.devlink_fmsg_item* @kzalloc(i32 8, i32 %7)
  store %struct.devlink_fmsg_item* %8, %struct.devlink_fmsg_item** %6, align 8
  %9 = load %struct.devlink_fmsg_item*, %struct.devlink_fmsg_item** %6, align 8
  %10 = icmp ne %struct.devlink_fmsg_item* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %23

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.devlink_fmsg_item*, %struct.devlink_fmsg_item** %6, align 8
  %17 = getelementptr inbounds %struct.devlink_fmsg_item, %struct.devlink_fmsg_item* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.devlink_fmsg_item*, %struct.devlink_fmsg_item** %6, align 8
  %19 = getelementptr inbounds %struct.devlink_fmsg_item, %struct.devlink_fmsg_item* %18, i32 0, i32 1
  %20 = load %struct.devlink_fmsg*, %struct.devlink_fmsg** %4, align 8
  %21 = getelementptr inbounds %struct.devlink_fmsg, %struct.devlink_fmsg* %20, i32 0, i32 0
  %22 = call i32 @list_add_tail(i32* %19, i32* %21)
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %14, %11
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local %struct.devlink_fmsg_item* @kzalloc(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
