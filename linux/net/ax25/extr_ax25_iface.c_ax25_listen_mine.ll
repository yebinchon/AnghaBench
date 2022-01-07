; ModuleID = '/home/carl/AnghaBench/linux/net/ax25/extr_ax25_iface.c_ax25_listen_mine.c'
source_filename = "/home/carl/AnghaBench/linux/net/ax25/extr_ax25_iface.c_ax25_listen_mine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.listen_struct = type { %struct.net_device*, i32, %struct.listen_struct* }
%struct.net_device = type { i32 }

@listen_lock = common dso_local global i32 0, align 4
@listen_list = common dso_local global %struct.listen_struct* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ax25_listen_mine(i32* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.listen_struct*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %7 = call i32 @spin_lock_bh(i32* @listen_lock)
  %8 = load %struct.listen_struct*, %struct.listen_struct** @listen_list, align 8
  store %struct.listen_struct* %8, %struct.listen_struct** %6, align 8
  br label %9

9:                                                ; preds = %32, %2
  %10 = load %struct.listen_struct*, %struct.listen_struct** %6, align 8
  %11 = icmp ne %struct.listen_struct* %10, null
  br i1 %11, label %12, label %36

12:                                               ; preds = %9
  %13 = load %struct.listen_struct*, %struct.listen_struct** %6, align 8
  %14 = getelementptr inbounds %struct.listen_struct, %struct.listen_struct* %13, i32 0, i32 1
  %15 = load i32*, i32** %4, align 8
  %16 = call i64 @ax25cmp(i32* %14, i32* %15)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %12
  %19 = load %struct.listen_struct*, %struct.listen_struct** %6, align 8
  %20 = getelementptr inbounds %struct.listen_struct, %struct.listen_struct* %19, i32 0, i32 0
  %21 = load %struct.net_device*, %struct.net_device** %20, align 8
  %22 = load %struct.net_device*, %struct.net_device** %5, align 8
  %23 = icmp eq %struct.net_device* %21, %22
  br i1 %23, label %29, label %24

24:                                               ; preds = %18
  %25 = load %struct.listen_struct*, %struct.listen_struct** %6, align 8
  %26 = getelementptr inbounds %struct.listen_struct, %struct.listen_struct* %25, i32 0, i32 0
  %27 = load %struct.net_device*, %struct.net_device** %26, align 8
  %28 = icmp eq %struct.net_device* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %24, %18
  %30 = call i32 @spin_unlock_bh(i32* @listen_lock)
  store i32 1, i32* %3, align 4
  br label %38

31:                                               ; preds = %24, %12
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.listen_struct*, %struct.listen_struct** %6, align 8
  %34 = getelementptr inbounds %struct.listen_struct, %struct.listen_struct* %33, i32 0, i32 2
  %35 = load %struct.listen_struct*, %struct.listen_struct** %34, align 8
  store %struct.listen_struct* %35, %struct.listen_struct** %6, align 8
  br label %9

36:                                               ; preds = %9
  %37 = call i32 @spin_unlock_bh(i32* @listen_lock)
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %36, %29
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @ax25cmp(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
