; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_fmsg_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_fmsg_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink_fmsg = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.devlink_fmsg* ()* @devlink_fmsg_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.devlink_fmsg* @devlink_fmsg_alloc() #0 {
  %1 = alloca %struct.devlink_fmsg*, align 8
  %2 = alloca %struct.devlink_fmsg*, align 8
  %3 = load i32, i32* @GFP_KERNEL, align 4
  %4 = call %struct.devlink_fmsg* @kzalloc(i32 4, i32 %3)
  store %struct.devlink_fmsg* %4, %struct.devlink_fmsg** %2, align 8
  %5 = load %struct.devlink_fmsg*, %struct.devlink_fmsg** %2, align 8
  %6 = icmp ne %struct.devlink_fmsg* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store %struct.devlink_fmsg* null, %struct.devlink_fmsg** %1, align 8
  br label %13

8:                                                ; preds = %0
  %9 = load %struct.devlink_fmsg*, %struct.devlink_fmsg** %2, align 8
  %10 = getelementptr inbounds %struct.devlink_fmsg, %struct.devlink_fmsg* %9, i32 0, i32 0
  %11 = call i32 @INIT_LIST_HEAD(i32* %10)
  %12 = load %struct.devlink_fmsg*, %struct.devlink_fmsg** %2, align 8
  store %struct.devlink_fmsg* %12, %struct.devlink_fmsg** %1, align 8
  br label %13

13:                                               ; preds = %8, %7
  %14 = load %struct.devlink_fmsg*, %struct.devlink_fmsg** %1, align 8
  ret %struct.devlink_fmsg* %14
}

declare dso_local %struct.devlink_fmsg* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
