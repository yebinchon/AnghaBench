; ModuleID = '/home/carl/AnghaBench/linux/fs/pstore/extr_pmsg.c_pstore_register_pmsg.c'
source_filename = "/home/carl/AnghaBench/linux/fs/pstore/extr_pmsg.c_pstore_register_pmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@PMSG_NAME = common dso_local global i32 0, align 4
@pmsg_fops = common dso_local global i32 0, align 4
@pmsg_major = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"register_chrdev failed\0A\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@pmsg_class = common dso_local global %struct.device* null, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"device class file already in use\0A\00", align 1
@pmsg_devnode = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"failed to create device\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pstore_register_pmsg() #0 {
  %1 = alloca %struct.device*, align 8
  %2 = load i32, i32* @PMSG_NAME, align 4
  %3 = call i64 @register_chrdev(i32 0, i32 %2, i32* @pmsg_fops)
  store i64 %3, i64* @pmsg_major, align 8
  %4 = load i64, i64* @pmsg_major, align 8
  %5 = icmp slt i64 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %39

8:                                                ; preds = %0
  %9 = load i32, i32* @THIS_MODULE, align 4
  %10 = load i32, i32* @PMSG_NAME, align 4
  %11 = call %struct.device* @class_create(i32 %9, i32 %10)
  store %struct.device* %11, %struct.device** @pmsg_class, align 8
  %12 = load %struct.device*, %struct.device** @pmsg_class, align 8
  %13 = call i64 @IS_ERR(%struct.device* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %8
  %16 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %35

17:                                               ; preds = %8
  %18 = load i32, i32* @pmsg_devnode, align 4
  %19 = load %struct.device*, %struct.device** @pmsg_class, align 8
  %20 = getelementptr inbounds %struct.device, %struct.device* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.device*, %struct.device** @pmsg_class, align 8
  %22 = load i64, i64* @pmsg_major, align 8
  %23 = call i32 @MKDEV(i64 %22, i32 0)
  %24 = load i32, i32* @PMSG_NAME, align 4
  %25 = call %struct.device* @device_create(%struct.device* %21, i32* null, i32 %23, i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %24, i32 0)
  store %struct.device* %25, %struct.device** %1, align 8
  %26 = load %struct.device*, %struct.device** %1, align 8
  %27 = call i64 @IS_ERR(%struct.device* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %17
  %30 = call i32 @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %32

31:                                               ; preds = %17
  br label %40

32:                                               ; preds = %29
  %33 = load %struct.device*, %struct.device** @pmsg_class, align 8
  %34 = call i32 @class_destroy(%struct.device* %33)
  br label %35

35:                                               ; preds = %32, %15
  %36 = load i64, i64* @pmsg_major, align 8
  %37 = load i32, i32* @PMSG_NAME, align 4
  %38 = call i32 @unregister_chrdev(i64 %36, i32 %37)
  br label %39

39:                                               ; preds = %35, %6
  br label %40

40:                                               ; preds = %39, %31
  ret void
}

declare dso_local i64 @register_chrdev(i32, i32, i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.device* @class_create(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.device*) #1

declare dso_local %struct.device* @device_create(%struct.device*, i32*, i32, i32*, i8*, i32, i32) #1

declare dso_local i32 @MKDEV(i64, i32) #1

declare dso_local i32 @class_destroy(%struct.device*) #1

declare dso_local i32 @unregister_chrdev(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
