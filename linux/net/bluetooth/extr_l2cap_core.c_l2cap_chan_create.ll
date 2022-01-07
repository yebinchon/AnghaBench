; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_chan_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_chan_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_chan = type { i32, i32, i32, i32, i32, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@L2CAP_NESTING_NORMAL = common dso_local global i32 0, align 4
@chan_list_lock = common dso_local global i32 0, align 4
@chan_list = common dso_local global i32 0, align 4
@l2cap_chan_timeout = common dso_local global i32 0, align 4
@BT_OPEN = common dso_local global i32 0, align 4
@CONF_NOT_COMPLETE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"chan %p\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.l2cap_chan* @l2cap_chan_create() #0 {
  %1 = alloca %struct.l2cap_chan*, align 8
  %2 = alloca %struct.l2cap_chan*, align 8
  %3 = load i32, i32* @GFP_ATOMIC, align 4
  %4 = call %struct.l2cap_chan* @kzalloc(i32 28, i32 %3)
  store %struct.l2cap_chan* %4, %struct.l2cap_chan** %2, align 8
  %5 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %6 = icmp ne %struct.l2cap_chan* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store %struct.l2cap_chan* null, %struct.l2cap_chan** %1, align 8
  br label %38

8:                                                ; preds = %0
  %9 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %10 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %9, i32 0, i32 6
  %11 = call i32 @mutex_init(i32* %10)
  %12 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %13 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %12, i32 0, i32 5
  %14 = load i32, i32* @L2CAP_NESTING_NORMAL, align 4
  %15 = call i32 @atomic_set(i32* %13, i32 %14)
  %16 = call i32 @write_lock(i32* @chan_list_lock)
  %17 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %18 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %17, i32 0, i32 4
  %19 = call i32 @list_add(i32* %18, i32* @chan_list)
  %20 = call i32 @write_unlock(i32* @chan_list_lock)
  %21 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %22 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %21, i32 0, i32 3
  %23 = load i32, i32* @l2cap_chan_timeout, align 4
  %24 = call i32 @INIT_DELAYED_WORK(i32* %22, i32 %23)
  %25 = load i32, i32* @BT_OPEN, align 4
  %26 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %27 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %29 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %28, i32 0, i32 1
  %30 = call i32 @kref_init(i32* %29)
  %31 = load i32, i32* @CONF_NOT_COMPLETE, align 4
  %32 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %33 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %32, i32 0, i32 0
  %34 = call i32 @set_bit(i32 %31, i32* %33)
  %35 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %36 = call i32 @BT_DBG(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.l2cap_chan* %35)
  %37 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  store %struct.l2cap_chan* %37, %struct.l2cap_chan** %1, align 8
  br label %38

38:                                               ; preds = %8, %7
  %39 = load %struct.l2cap_chan*, %struct.l2cap_chan** %1, align 8
  ret %struct.l2cap_chan* %39
}

declare dso_local %struct.l2cap_chan* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @write_unlock(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @BT_DBG(i8*, %struct.l2cap_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
