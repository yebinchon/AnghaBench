; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c_hci_bdaddr_list_add_with_irk.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c_hci_bdaddr_list_add_with_irk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.bdaddr_list_with_irk = type { i32, i32, i32, i32, i32 }

@BDADDR_ANY = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hci_bdaddr_list_add_with_irk(%struct.list_head* %0, i32* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.list_head*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.bdaddr_list_with_irk*, align 8
  store %struct.list_head* %0, %struct.list_head** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = load i32, i32* @BDADDR_ANY, align 4
  %15 = call i32 @bacmp(i32* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %5
  %18 = load i32, i32* @EBADF, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %6, align 4
  br label %67

20:                                               ; preds = %5
  %21 = load %struct.list_head*, %struct.list_head** %7, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i64 @hci_bdaddr_list_lookup(%struct.list_head* %21, i32* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i32, i32* @EEXIST, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %67

29:                                               ; preds = %20
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.bdaddr_list_with_irk* @kzalloc(i32 20, i32 %30)
  store %struct.bdaddr_list_with_irk* %31, %struct.bdaddr_list_with_irk** %12, align 8
  %32 = load %struct.bdaddr_list_with_irk*, %struct.bdaddr_list_with_irk** %12, align 8
  %33 = icmp ne %struct.bdaddr_list_with_irk* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %67

37:                                               ; preds = %29
  %38 = load %struct.bdaddr_list_with_irk*, %struct.bdaddr_list_with_irk** %12, align 8
  %39 = getelementptr inbounds %struct.bdaddr_list_with_irk, %struct.bdaddr_list_with_irk* %38, i32 0, i32 4
  %40 = load i32*, i32** %8, align 8
  %41 = call i32 @bacpy(i32* %39, i32* %40)
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.bdaddr_list_with_irk*, %struct.bdaddr_list_with_irk** %12, align 8
  %44 = getelementptr inbounds %struct.bdaddr_list_with_irk, %struct.bdaddr_list_with_irk* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = load i32*, i32** %10, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %37
  %48 = load %struct.bdaddr_list_with_irk*, %struct.bdaddr_list_with_irk** %12, align 8
  %49 = getelementptr inbounds %struct.bdaddr_list_with_irk, %struct.bdaddr_list_with_irk* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %10, align 8
  %52 = call i32 @memcpy(i32 %50, i32* %51, i32 16)
  br label %53

53:                                               ; preds = %47, %37
  %54 = load i32*, i32** %11, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load %struct.bdaddr_list_with_irk*, %struct.bdaddr_list_with_irk** %12, align 8
  %58 = getelementptr inbounds %struct.bdaddr_list_with_irk, %struct.bdaddr_list_with_irk* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %11, align 8
  %61 = call i32 @memcpy(i32 %59, i32* %60, i32 16)
  br label %62

62:                                               ; preds = %56, %53
  %63 = load %struct.bdaddr_list_with_irk*, %struct.bdaddr_list_with_irk** %12, align 8
  %64 = getelementptr inbounds %struct.bdaddr_list_with_irk, %struct.bdaddr_list_with_irk* %63, i32 0, i32 0
  %65 = load %struct.list_head*, %struct.list_head** %7, align 8
  %66 = call i32 @list_add(i32* %64, %struct.list_head* %65)
  store i32 0, i32* %6, align 4
  br label %67

67:                                               ; preds = %62, %34, %26, %17
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local i32 @bacmp(i32*, i32) #1

declare dso_local i64 @hci_bdaddr_list_lookup(%struct.list_head*, i32*, i32) #1

declare dso_local %struct.bdaddr_list_with_irk* @kzalloc(i32, i32) #1

declare dso_local i32 @bacpy(i32*, i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @list_add(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
