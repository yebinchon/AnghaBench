; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c_hci_bdaddr_list_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c_hci_bdaddr_list_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.bdaddr_list = type { i32, i32, i32 }

@BDADDR_ANY = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hci_bdaddr_list_add(%struct.list_head* %0, i32* %1, i32 %2) #0 {
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
  %14 = load i32, i32* @EBADF, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %45

16:                                               ; preds = %3
  %17 = load %struct.list_head*, %struct.list_head** %5, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i64 @hci_bdaddr_list_lookup(%struct.list_head* %17, i32* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32, i32* @EEXIST, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %45

25:                                               ; preds = %16
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.bdaddr_list* @kzalloc(i32 12, i32 %26)
  store %struct.bdaddr_list* %27, %struct.bdaddr_list** %8, align 8
  %28 = load %struct.bdaddr_list*, %struct.bdaddr_list** %8, align 8
  %29 = icmp ne %struct.bdaddr_list* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %45

33:                                               ; preds = %25
  %34 = load %struct.bdaddr_list*, %struct.bdaddr_list** %8, align 8
  %35 = getelementptr inbounds %struct.bdaddr_list, %struct.bdaddr_list* %34, i32 0, i32 2
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @bacpy(i32* %35, i32* %36)
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.bdaddr_list*, %struct.bdaddr_list** %8, align 8
  %40 = getelementptr inbounds %struct.bdaddr_list, %struct.bdaddr_list* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.bdaddr_list*, %struct.bdaddr_list** %8, align 8
  %42 = getelementptr inbounds %struct.bdaddr_list, %struct.bdaddr_list* %41, i32 0, i32 0
  %43 = load %struct.list_head*, %struct.list_head** %5, align 8
  %44 = call i32 @list_add(i32* %42, %struct.list_head* %43)
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %33, %30, %22, %13
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @bacmp(i32*, i32) #1

declare dso_local i64 @hci_bdaddr_list_lookup(%struct.list_head*, i32*, i32) #1

declare dso_local %struct.bdaddr_list* @kzalloc(i32, i32) #1

declare dso_local i32 @bacpy(i32*, i32*) #1

declare dso_local i32 @list_add(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
