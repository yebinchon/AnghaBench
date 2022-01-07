; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_6lowpan.c_bt_6lowpan_listen.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_6lowpan.c_bt_6lowpan_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_chan = type { i32, i32, i32, i32* }

@BDADDR_ANY = common dso_local global i32* null, align 8
@enable_6lowpan = common dso_local global i32 0, align 4
@bt_6lowpan_chan_ops = common dso_local global i32 0, align 4
@BT_LISTEN = common dso_local global i32 0, align 4
@BDADDR_LE_PUBLIC = common dso_local global i32 0, align 4
@L2CAP_NESTING_PARENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"chan %p src type %d\00", align 1
@L2CAP_PSM_IPSP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"psm cannot be added err %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.l2cap_chan* ()* @bt_6lowpan_listen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.l2cap_chan* @bt_6lowpan_listen() #0 {
  %1 = alloca %struct.l2cap_chan*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.l2cap_chan*, align 8
  %4 = alloca i32, align 4
  %5 = load i32*, i32** @BDADDR_ANY, align 8
  store i32* %5, i32** %2, align 8
  %6 = load i32, i32* @enable_6lowpan, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  store %struct.l2cap_chan* null, %struct.l2cap_chan** %1, align 8
  br label %46

9:                                                ; preds = %0
  %10 = call %struct.l2cap_chan* (...) @chan_create()
  store %struct.l2cap_chan* %10, %struct.l2cap_chan** %3, align 8
  %11 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %12 = icmp ne %struct.l2cap_chan* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  store %struct.l2cap_chan* null, %struct.l2cap_chan** %1, align 8
  br label %46

14:                                               ; preds = %9
  %15 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %16 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %15, i32 0, i32 3
  store i32* @bt_6lowpan_chan_ops, i32** %16, align 8
  %17 = load i32, i32* @BT_LISTEN, align 4
  %18 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %19 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* @BDADDR_LE_PUBLIC, align 4
  %21 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %22 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %24 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %23, i32 0, i32 1
  %25 = load i32, i32* @L2CAP_NESTING_PARENT, align 4
  %26 = call i32 @atomic_set(i32* %24, i32 %25)
  %27 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %28 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %29 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @BT_DBG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %struct.l2cap_chan* %27, i32 %30)
  %32 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %33 = load i32*, i32** %2, align 8
  %34 = load i32, i32* @L2CAP_PSM_IPSP, align 4
  %35 = call i32 @cpu_to_le16(i32 %34)
  %36 = call i32 @l2cap_add_psm(%struct.l2cap_chan* %32, i32* %33, i32 %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %14
  %40 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %41 = call i32 @l2cap_chan_put(%struct.l2cap_chan* %40)
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @BT_ERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  store %struct.l2cap_chan* null, %struct.l2cap_chan** %1, align 8
  br label %46

44:                                               ; preds = %14
  %45 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  store %struct.l2cap_chan* %45, %struct.l2cap_chan** %1, align 8
  br label %46

46:                                               ; preds = %44, %39, %13, %8
  %47 = load %struct.l2cap_chan*, %struct.l2cap_chan** %1, align 8
  ret %struct.l2cap_chan* %47
}

declare dso_local %struct.l2cap_chan* @chan_create(...) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @BT_DBG(i8*, %struct.l2cap_chan*, i32) #1

declare dso_local i32 @l2cap_add_psm(%struct.l2cap_chan*, i32*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @l2cap_chan_put(%struct.l2cap_chan*) #1

declare dso_local i32 @BT_ERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
