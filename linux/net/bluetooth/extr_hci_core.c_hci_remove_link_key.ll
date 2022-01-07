; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c_hci_remove_link_key.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c_hci_remove_link_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.link_key = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"%s removing %pMR\00", align 1
@rcu = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hci_remove_link_key(%struct.hci_dev* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.link_key*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = call %struct.link_key* @hci_find_link_key(%struct.hci_dev* %7, i32* %8)
  store %struct.link_key* %9, %struct.link_key** %6, align 8
  %10 = load %struct.link_key*, %struct.link_key** %6, align 8
  %11 = icmp ne %struct.link_key* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOENT, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %27

15:                                               ; preds = %2
  %16 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %17 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @BT_DBG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %18, i32* %19)
  %21 = load %struct.link_key*, %struct.link_key** %6, align 8
  %22 = getelementptr inbounds %struct.link_key, %struct.link_key* %21, i32 0, i32 0
  %23 = call i32 @list_del_rcu(i32* %22)
  %24 = load %struct.link_key*, %struct.link_key** %6, align 8
  %25 = load i32, i32* @rcu, align 4
  %26 = call i32 @kfree_rcu(%struct.link_key* %24, i32 %25)
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %15, %12
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local %struct.link_key* @hci_find_link_key(%struct.hci_dev*, i32*) #1

declare dso_local i32 @BT_DBG(i8*, i32, i32*) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @kfree_rcu(%struct.link_key*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
