; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_control.c__snd_ctl_register_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_control.c__snd_ctl_register_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.snd_kctl_ioctl = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@snd_ioctl_rwsem = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.list_head*)* @_snd_ctl_register_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_snd_ctl_register_ioctl(i32 %0, %struct.list_head* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca %struct.snd_kctl_ioctl*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.list_head* %1, %struct.list_head** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.snd_kctl_ioctl* @kzalloc(i32 8, i32 %7)
  store %struct.snd_kctl_ioctl* %8, %struct.snd_kctl_ioctl** %6, align 8
  %9 = load %struct.snd_kctl_ioctl*, %struct.snd_kctl_ioctl** %6, align 8
  %10 = icmp eq %struct.snd_kctl_ioctl* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %24

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.snd_kctl_ioctl*, %struct.snd_kctl_ioctl** %6, align 8
  %17 = getelementptr inbounds %struct.snd_kctl_ioctl, %struct.snd_kctl_ioctl* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = call i32 @down_write(i32* @snd_ioctl_rwsem)
  %19 = load %struct.snd_kctl_ioctl*, %struct.snd_kctl_ioctl** %6, align 8
  %20 = getelementptr inbounds %struct.snd_kctl_ioctl, %struct.snd_kctl_ioctl* %19, i32 0, i32 0
  %21 = load %struct.list_head*, %struct.list_head** %5, align 8
  %22 = call i32 @list_add_tail(i32* %20, %struct.list_head* %21)
  %23 = call i32 @up_write(i32* @snd_ioctl_rwsem)
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %14, %11
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local %struct.snd_kctl_ioctl* @kzalloc(i32, i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
