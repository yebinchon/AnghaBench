; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_fmsg_binary_pair_put.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_fmsg_binary_pair_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink_fmsg = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @devlink_fmsg_binary_pair_put(%struct.devlink_fmsg* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.devlink_fmsg*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.devlink_fmsg* %0, %struct.devlink_fmsg** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.devlink_fmsg*, %struct.devlink_fmsg** %6, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call i32 @devlink_fmsg_pair_nest_start(%struct.devlink_fmsg* %11, i8* %12)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* %10, align 4
  store i32 %17, i32* %5, align 4
  br label %35

18:                                               ; preds = %4
  %19 = load %struct.devlink_fmsg*, %struct.devlink_fmsg** %6, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @devlink_fmsg_binary_put(%struct.devlink_fmsg* %19, i8* %20, i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %5, align 4
  br label %35

27:                                               ; preds = %18
  %28 = load %struct.devlink_fmsg*, %struct.devlink_fmsg** %6, align 8
  %29 = call i32 @devlink_fmsg_pair_nest_end(%struct.devlink_fmsg* %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %5, align 4
  br label %35

34:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %34, %32, %25, %16
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i32 @devlink_fmsg_pair_nest_start(%struct.devlink_fmsg*, i8*) #1

declare dso_local i32 @devlink_fmsg_binary_put(%struct.devlink_fmsg*, i8*, i32) #1

declare dso_local i32 @devlink_fmsg_pair_nest_end(%struct.devlink_fmsg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
