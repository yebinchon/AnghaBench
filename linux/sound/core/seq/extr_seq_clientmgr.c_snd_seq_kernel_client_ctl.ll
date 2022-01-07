; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_clientmgr.c_snd_seq_kernel_client_ctl.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_clientmgr.c_snd_seq_kernel_client_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioctl_handler = type { i32, i32 (%struct.snd_seq_client*, i8*)* }
%struct.snd_seq_client = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@ioctl_handlers = common dso_local global %struct.ioctl_handler* null, align 8
@.str = private unnamed_addr constant [59 x i8] c"ALSA: seq unknown ioctl() 0x%x (type='%c', number=0x%02x)\0A\00", align 1
@ENOTTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_seq_kernel_client_ctl(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ioctl_handler*, align 8
  %9 = alloca %struct.snd_seq_client*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.snd_seq_client* @clientptr(i32 %10)
  store %struct.snd_seq_client* %11, %struct.snd_seq_client** %9, align 8
  %12 = load %struct.snd_seq_client*, %struct.snd_seq_client** %9, align 8
  %13 = icmp eq %struct.snd_seq_client* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @ENXIO, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %50

17:                                               ; preds = %3
  %18 = load %struct.ioctl_handler*, %struct.ioctl_handler** @ioctl_handlers, align 8
  store %struct.ioctl_handler* %18, %struct.ioctl_handler** %8, align 8
  br label %19

19:                                               ; preds = %38, %17
  %20 = load %struct.ioctl_handler*, %struct.ioctl_handler** %8, align 8
  %21 = getelementptr inbounds %struct.ioctl_handler, %struct.ioctl_handler* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ugt i32 %22, 0
  br i1 %23, label %24, label %41

24:                                               ; preds = %19
  %25 = load %struct.ioctl_handler*, %struct.ioctl_handler** %8, align 8
  %26 = getelementptr inbounds %struct.ioctl_handler, %struct.ioctl_handler* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = load %struct.ioctl_handler*, %struct.ioctl_handler** %8, align 8
  %32 = getelementptr inbounds %struct.ioctl_handler, %struct.ioctl_handler* %31, i32 0, i32 1
  %33 = load i32 (%struct.snd_seq_client*, i8*)*, i32 (%struct.snd_seq_client*, i8*)** %32, align 8
  %34 = load %struct.snd_seq_client*, %struct.snd_seq_client** %9, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 %33(%struct.snd_seq_client* %34, i8* %35)
  store i32 %36, i32* %4, align 4
  br label %50

37:                                               ; preds = %24
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.ioctl_handler*, %struct.ioctl_handler** %8, align 8
  %40 = getelementptr inbounds %struct.ioctl_handler, %struct.ioctl_handler* %39, i32 1
  store %struct.ioctl_handler* %40, %struct.ioctl_handler** %8, align 8
  br label %19

41:                                               ; preds = %19
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @_IOC_TYPE(i32 %43)
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @_IOC_NR(i32 %45)
  %47 = call i32 @pr_debug(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %44, i32 %46)
  %48 = load i32, i32* @ENOTTY, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %41, %30, %14
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local %struct.snd_seq_client* @clientptr(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32) #1

declare dso_local i32 @_IOC_TYPE(i32) #1

declare dso_local i32 @_IOC_NR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
