; ModuleID = '/home/carl/AnghaBench/linux/fs/orangefs/extr_devorangefs-req.c_orangefs_dev_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/orangefs/extr_devorangefs-req.c_orangefs_dev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ORANGEFS_REQDEVICE_NAME = common dso_local global i32 0, align 4
@orangefs_devreq_file_operations = common dso_local global i32 0, align 4
@orangefs_dev_major = common dso_local global i64 0, align 8
@GOSSIP_DEV_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Failed to register /dev/%s (error %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"*** /dev/%s character device registered ***\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"'mknod /dev/%s c %d 0'.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @orangefs_dev_init() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @ORANGEFS_REQDEVICE_NAME, align 4
  %3 = call i64 @register_chrdev(i32 0, i32 %2, i32* @orangefs_devreq_file_operations)
  store i64 %3, i64* @orangefs_dev_major, align 8
  %4 = load i64, i64* @orangefs_dev_major, align 8
  %5 = icmp slt i64 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %0
  %7 = load i32, i32* @GOSSIP_DEV_DEBUG, align 4
  %8 = load i32, i32* @ORANGEFS_REQDEVICE_NAME, align 4
  %9 = load i64, i64* @orangefs_dev_major, align 8
  %10 = call i32 (i32, i8*, i32, ...) @gossip_debug(i32 %7, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %8, i64 %9)
  %11 = load i64, i64* @orangefs_dev_major, align 8
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %1, align 4
  br label %21

13:                                               ; preds = %0
  %14 = load i32, i32* @GOSSIP_DEV_DEBUG, align 4
  %15 = load i32, i32* @ORANGEFS_REQDEVICE_NAME, align 4
  %16 = call i32 (i32, i8*, i32, ...) @gossip_debug(i32 %14, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @GOSSIP_DEV_DEBUG, align 4
  %18 = load i32, i32* @ORANGEFS_REQDEVICE_NAME, align 4
  %19 = load i64, i64* @orangefs_dev_major, align 8
  %20 = call i32 (i32, i8*, i32, ...) @gossip_debug(i32 %17, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %18, i64 %19)
  store i32 0, i32* %1, align 4
  br label %21

21:                                               ; preds = %13, %6
  %22 = load i32, i32* %1, align 4
  ret i32 %22
}

declare dso_local i64 @register_chrdev(i32, i32, i32*) #1

declare dso_local i32 @gossip_debug(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
