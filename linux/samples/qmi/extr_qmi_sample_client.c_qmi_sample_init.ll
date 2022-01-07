; ModuleID = '/home/carl/AnghaBench/linux/samples/qmi/extr_qmi_sample_client.c_qmi_sample_init.c'
source_filename = "/home/carl/AnghaBench/linux/samples/qmi/extr_qmi_sample_client.c_qmi_sample_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"qmi_sample\00", align 1
@qmi_debug_dir = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to create qmi_sample dir\0A\00", align 1
@qmi_sample_driver = common dso_local global i32 0, align 4
@lookup_client = common dso_local global i32 0, align 4
@lookup_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @qmi_sample_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qmi_sample_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @debugfs_create_dir(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* null)
  store i32 %3, i32* @qmi_debug_dir, align 4
  %4 = load i32, i32* @qmi_debug_dir, align 4
  %5 = call i64 @IS_ERR(i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %0
  %8 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %9 = load i32, i32* @qmi_debug_dir, align 4
  %10 = call i32 @PTR_ERR(i32 %9)
  store i32 %10, i32* %1, align 4
  br label %29

11:                                               ; preds = %0
  %12 = call i32 @platform_driver_register(i32* @qmi_sample_driver)
  store i32 %12, i32* %2, align 4
  %13 = load i32, i32* %2, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %25

16:                                               ; preds = %11
  %17 = call i32 @qmi_handle_init(i32* @lookup_client, i32 0, i32* @lookup_ops, i32* null)
  store i32 %17, i32* %2, align 4
  %18 = load i32, i32* %2, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %23

21:                                               ; preds = %16
  %22 = call i32 @qmi_add_lookup(i32* @lookup_client, i32 15, i32 0, i32 0)
  store i32 0, i32* %1, align 4
  br label %29

23:                                               ; preds = %20
  %24 = call i32 @platform_driver_unregister(i32* @qmi_sample_driver)
  br label %25

25:                                               ; preds = %23, %15
  %26 = load i32, i32* @qmi_debug_dir, align 4
  %27 = call i32 @debugfs_remove(i32 %26)
  %28 = load i32, i32* %2, align 4
  store i32 %28, i32* %1, align 4
  br label %29

29:                                               ; preds = %25, %21, %7
  %30 = load i32, i32* %1, align 4
  ret i32 %30
}

declare dso_local i32 @debugfs_create_dir(i8*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @platform_driver_register(i32*) #1

declare dso_local i32 @qmi_handle_init(i32*, i32, i32*, i32*) #1

declare dso_local i32 @qmi_add_lookup(i32*, i32, i32, i32) #1

declare dso_local i32 @platform_driver_unregister(i32*) #1

declare dso_local i32 @debugfs_remove(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
