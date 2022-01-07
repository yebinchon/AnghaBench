; ModuleID = '/home/carl/AnghaBench/linux/fs/orangefs/extr_devorangefs-req.c_check_ioctl_command.c'
source_filename = "/home/carl/AnghaBench/linux/fs/orangefs/extr_devorangefs-req.c_check_ioctl_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ORANGEFS_DEV_MAGIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [110 x i8] c"device ioctl magic numbers don't match! Did you rebuild pvfs2-client-core/libpvfs2? [cmd %x, magic %x != %x]\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@ORANGEFS_DEV_MAXNR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Invalid ioctl command number [%d >= %d]\0A\00", align 1
@ENOIOCTLCMD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @check_ioctl_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @check_ioctl_command(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i64 @_IOC_TYPE(i32 %4)
  %6 = load i64, i64* @ORANGEFS_DEV_MAGIC, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i64 @_IOC_TYPE(i32 %10)
  %12 = load i64, i64* @ORANGEFS_DEV_MAGIC, align 8
  %13 = call i32 (i8*, i32, i64, ...) @gossip_err(i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str, i64 0, i64 0), i32 %9, i64 %11, i64 %12)
  %14 = load i64, i64* @EINVAL, align 8
  %15 = sub nsw i64 0, %14
  store i64 %15, i64* %2, align 8
  br label %34

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @_IOC_NR(i32 %17)
  %19 = load i32, i32* @ORANGEFS_DEV_MAXNR, align 4
  %20 = icmp sge i32 %18, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @_IOC_NR(i32 %22)
  %24 = icmp sle i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %21, %16
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @_IOC_NR(i32 %26)
  %28 = load i32, i32* @ORANGEFS_DEV_MAXNR, align 4
  %29 = sext i32 %28 to i64
  %30 = call i32 (i8*, i32, i64, ...) @gossip_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %27, i64 %29)
  %31 = load i64, i64* @ENOIOCTLCMD, align 8
  %32 = sub nsw i64 0, %31
  store i64 %32, i64* %2, align 8
  br label %34

33:                                               ; preds = %21
  store i64 0, i64* %2, align 8
  br label %34

34:                                               ; preds = %33, %25, %8
  %35 = load i64, i64* %2, align 8
  ret i64 %35
}

declare dso_local i64 @_IOC_TYPE(i32) #1

declare dso_local i32 @gossip_err(i8*, i32, i64, ...) #1

declare dso_local i32 @_IOC_NR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
