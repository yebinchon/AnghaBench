; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c_hci_bdaddr_list_del.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c_hci_bdaddr_list_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.bdaddr_list = type { i32 }

@BDADDR_ANY = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hci_bdaddr_list_del(%struct.list_head* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bdaddr_list*, align 8
  store %struct.list_head* %0, %struct.list_head** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32*, i32** %6, align 8
  %10 = load i32, i32* @BDADDR_ANY, align 4
  %11 = call i32 @bacmp(i32* %9, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load %struct.list_head*, %struct.list_head** %5, align 8
  %15 = call i32 @hci_bdaddr_list_clear(%struct.list_head* %14)
  store i32 0, i32* %4, align 4
  br label %32

16:                                               ; preds = %3
  %17 = load %struct.list_head*, %struct.list_head** %5, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call %struct.bdaddr_list* @hci_bdaddr_list_lookup(%struct.list_head* %17, i32* %18, i32 %19)
  store %struct.bdaddr_list* %20, %struct.bdaddr_list** %8, align 8
  %21 = load %struct.bdaddr_list*, %struct.bdaddr_list** %8, align 8
  %22 = icmp ne %struct.bdaddr_list* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %16
  %24 = load i32, i32* @ENOENT, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %32

26:                                               ; preds = %16
  %27 = load %struct.bdaddr_list*, %struct.bdaddr_list** %8, align 8
  %28 = getelementptr inbounds %struct.bdaddr_list, %struct.bdaddr_list* %27, i32 0, i32 0
  %29 = call i32 @list_del(i32* %28)
  %30 = load %struct.bdaddr_list*, %struct.bdaddr_list** %8, align 8
  %31 = call i32 @kfree(%struct.bdaddr_list* %30)
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %26, %23, %13
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @bacmp(i32*, i32) #1

declare dso_local i32 @hci_bdaddr_list_clear(%struct.list_head*) #1

declare dso_local %struct.bdaddr_list* @hci_bdaddr_list_lookup(%struct.list_head*, i32*, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.bdaddr_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
