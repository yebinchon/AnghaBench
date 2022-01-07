; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_a2mp.c_amp_mgr_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_a2mp.c_amp_mgr_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amp_mgr = type { i32, i32, i32, i32, %struct.l2cap_chan*, %struct.l2cap_conn* }
%struct.l2cap_chan = type { %struct.amp_mgr* }
%struct.l2cap_conn = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.amp_mgr* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"conn %p mgr %p\00", align 1
@amp_mgr_list_lock = common dso_local global i32 0, align 4
@amp_mgr_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.amp_mgr* (%struct.l2cap_conn*, i32)* @amp_mgr_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.amp_mgr* @amp_mgr_create(%struct.l2cap_conn* %0, i32 %1) #0 {
  %3 = alloca %struct.amp_mgr*, align 8
  %4 = alloca %struct.l2cap_conn*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.amp_mgr*, align 8
  %7 = alloca %struct.l2cap_chan*, align 8
  store %struct.l2cap_conn* %0, %struct.l2cap_conn** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.amp_mgr* @kzalloc(i32 32, i32 %8)
  store %struct.amp_mgr* %9, %struct.amp_mgr** %6, align 8
  %10 = load %struct.amp_mgr*, %struct.amp_mgr** %6, align 8
  %11 = icmp ne %struct.amp_mgr* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.amp_mgr* null, %struct.amp_mgr** %3, align 8
  br label %55

13:                                               ; preds = %2
  %14 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %15 = load %struct.amp_mgr*, %struct.amp_mgr** %6, align 8
  %16 = call i32 @BT_DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.l2cap_conn* %14, %struct.amp_mgr* %15)
  %17 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %18 = load %struct.amp_mgr*, %struct.amp_mgr** %6, align 8
  %19 = getelementptr inbounds %struct.amp_mgr, %struct.amp_mgr* %18, i32 0, i32 5
  store %struct.l2cap_conn* %17, %struct.l2cap_conn** %19, align 8
  %20 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call %struct.l2cap_chan* @a2mp_chan_open(%struct.l2cap_conn* %20, i32 %21)
  store %struct.l2cap_chan* %22, %struct.l2cap_chan** %7, align 8
  %23 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %24 = icmp ne %struct.l2cap_chan* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %13
  %26 = load %struct.amp_mgr*, %struct.amp_mgr** %6, align 8
  %27 = call i32 @kfree(%struct.amp_mgr* %26)
  store %struct.amp_mgr* null, %struct.amp_mgr** %3, align 8
  br label %55

28:                                               ; preds = %13
  %29 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %30 = load %struct.amp_mgr*, %struct.amp_mgr** %6, align 8
  %31 = getelementptr inbounds %struct.amp_mgr, %struct.amp_mgr* %30, i32 0, i32 4
  store %struct.l2cap_chan* %29, %struct.l2cap_chan** %31, align 8
  %32 = load %struct.amp_mgr*, %struct.amp_mgr** %6, align 8
  %33 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %34 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %33, i32 0, i32 0
  store %struct.amp_mgr* %32, %struct.amp_mgr** %34, align 8
  %35 = load %struct.amp_mgr*, %struct.amp_mgr** %6, align 8
  %36 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %37 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store %struct.amp_mgr* %35, %struct.amp_mgr** %39, align 8
  %40 = load %struct.amp_mgr*, %struct.amp_mgr** %6, align 8
  %41 = getelementptr inbounds %struct.amp_mgr, %struct.amp_mgr* %40, i32 0, i32 3
  %42 = call i32 @kref_init(i32* %41)
  %43 = load %struct.amp_mgr*, %struct.amp_mgr** %6, align 8
  %44 = getelementptr inbounds %struct.amp_mgr, %struct.amp_mgr* %43, i32 0, i32 2
  %45 = call i32 @INIT_LIST_HEAD(i32* %44)
  %46 = load %struct.amp_mgr*, %struct.amp_mgr** %6, align 8
  %47 = getelementptr inbounds %struct.amp_mgr, %struct.amp_mgr* %46, i32 0, i32 1
  %48 = call i32 @mutex_init(i32* %47)
  %49 = call i32 @mutex_lock(i32* @amp_mgr_list_lock)
  %50 = load %struct.amp_mgr*, %struct.amp_mgr** %6, align 8
  %51 = getelementptr inbounds %struct.amp_mgr, %struct.amp_mgr* %50, i32 0, i32 0
  %52 = call i32 @list_add(i32* %51, i32* @amp_mgr_list)
  %53 = call i32 @mutex_unlock(i32* @amp_mgr_list_lock)
  %54 = load %struct.amp_mgr*, %struct.amp_mgr** %6, align 8
  store %struct.amp_mgr* %54, %struct.amp_mgr** %3, align 8
  br label %55

55:                                               ; preds = %28, %25, %12
  %56 = load %struct.amp_mgr*, %struct.amp_mgr** %3, align 8
  ret %struct.amp_mgr* %56
}

declare dso_local %struct.amp_mgr* @kzalloc(i32, i32) #1

declare dso_local i32 @BT_DBG(i8*, %struct.l2cap_conn*, %struct.amp_mgr*) #1

declare dso_local %struct.l2cap_chan* @a2mp_chan_open(%struct.l2cap_conn*, i32) #1

declare dso_local i32 @kfree(%struct.amp_mgr*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
