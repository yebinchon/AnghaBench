; ModuleID = '/home/carl/AnghaBench/linux/net/ax25/extr_ax25_iface.c_ax25_listen_register.c'
source_filename = "/home/carl/AnghaBench/linux/net/ax25/extr_ax25_iface.c_ax25_listen_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.listen_struct = type { %struct.listen_struct*, %struct.net_device*, i32 }
%struct.net_device = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@listen_lock = common dso_local global i32 0, align 4
@listen_list = common dso_local global %struct.listen_struct* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ax25_listen_register(i32* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.listen_struct*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %5, align 8
  %9 = call i64 @ax25_listen_mine(i32* %7, %struct.net_device* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %33

12:                                               ; preds = %2
  %13 = load i32, i32* @GFP_ATOMIC, align 4
  %14 = call %struct.listen_struct* @kmalloc(i32 24, i32 %13)
  store %struct.listen_struct* %14, %struct.listen_struct** %6, align 8
  %15 = icmp eq %struct.listen_struct* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %33

19:                                               ; preds = %12
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.listen_struct*, %struct.listen_struct** %6, align 8
  %23 = getelementptr inbounds %struct.listen_struct, %struct.listen_struct* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load %struct.net_device*, %struct.net_device** %5, align 8
  %25 = load %struct.listen_struct*, %struct.listen_struct** %6, align 8
  %26 = getelementptr inbounds %struct.listen_struct, %struct.listen_struct* %25, i32 0, i32 1
  store %struct.net_device* %24, %struct.net_device** %26, align 8
  %27 = call i32 @spin_lock_bh(i32* @listen_lock)
  %28 = load %struct.listen_struct*, %struct.listen_struct** @listen_list, align 8
  %29 = load %struct.listen_struct*, %struct.listen_struct** %6, align 8
  %30 = getelementptr inbounds %struct.listen_struct, %struct.listen_struct* %29, i32 0, i32 0
  store %struct.listen_struct* %28, %struct.listen_struct** %30, align 8
  %31 = load %struct.listen_struct*, %struct.listen_struct** %6, align 8
  store %struct.listen_struct* %31, %struct.listen_struct** @listen_list, align 8
  %32 = call i32 @spin_unlock_bh(i32* @listen_lock)
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %19, %16, %11
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i64 @ax25_listen_mine(i32*, %struct.net_device*) #1

declare dso_local %struct.listen_struct* @kmalloc(i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
