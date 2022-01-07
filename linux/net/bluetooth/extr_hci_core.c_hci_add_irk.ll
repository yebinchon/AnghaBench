; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c_hci_add_irk.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c_hci_add_irk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smp_irk = type { i32, i32, i32, i32, i32 }
%struct.hci_dev = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.smp_irk* @hci_add_irk(%struct.hci_dev* %0, i32* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.smp_irk*, align 8
  %7 = alloca %struct.hci_dev*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.smp_irk*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = load i32, i32* %9, align 4
  %16 = call %struct.smp_irk* @hci_find_irk_by_addr(%struct.hci_dev* %13, i32* %14, i32 %15)
  store %struct.smp_irk* %16, %struct.smp_irk** %12, align 8
  %17 = load %struct.smp_irk*, %struct.smp_irk** %12, align 8
  %18 = icmp ne %struct.smp_irk* %17, null
  br i1 %18, label %38, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.smp_irk* @kzalloc(i32 20, i32 %20)
  store %struct.smp_irk* %21, %struct.smp_irk** %12, align 8
  %22 = load %struct.smp_irk*, %struct.smp_irk** %12, align 8
  %23 = icmp ne %struct.smp_irk* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  store %struct.smp_irk* null, %struct.smp_irk** %6, align 8
  br label %49

25:                                               ; preds = %19
  %26 = load %struct.smp_irk*, %struct.smp_irk** %12, align 8
  %27 = getelementptr inbounds %struct.smp_irk, %struct.smp_irk* %26, i32 0, i32 4
  %28 = load i32*, i32** %8, align 8
  %29 = call i32 @bacpy(i32* %27, i32* %28)
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.smp_irk*, %struct.smp_irk** %12, align 8
  %32 = getelementptr inbounds %struct.smp_irk, %struct.smp_irk* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load %struct.smp_irk*, %struct.smp_irk** %12, align 8
  %34 = getelementptr inbounds %struct.smp_irk, %struct.smp_irk* %33, i32 0, i32 2
  %35 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %36 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %35, i32 0, i32 0
  %37 = call i32 @list_add_rcu(i32* %34, i32* %36)
  br label %38

38:                                               ; preds = %25, %5
  %39 = load %struct.smp_irk*, %struct.smp_irk** %12, align 8
  %40 = getelementptr inbounds %struct.smp_irk, %struct.smp_irk* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %10, align 8
  %43 = call i32 @memcpy(i32 %41, i32* %42, i32 16)
  %44 = load %struct.smp_irk*, %struct.smp_irk** %12, align 8
  %45 = getelementptr inbounds %struct.smp_irk, %struct.smp_irk* %44, i32 0, i32 0
  %46 = load i32*, i32** %11, align 8
  %47 = call i32 @bacpy(i32* %45, i32* %46)
  %48 = load %struct.smp_irk*, %struct.smp_irk** %12, align 8
  store %struct.smp_irk* %48, %struct.smp_irk** %6, align 8
  br label %49

49:                                               ; preds = %38, %24
  %50 = load %struct.smp_irk*, %struct.smp_irk** %6, align 8
  ret %struct.smp_irk* %50
}

declare dso_local %struct.smp_irk* @hci_find_irk_by_addr(%struct.hci_dev*, i32*, i32) #1

declare dso_local %struct.smp_irk* @kzalloc(i32, i32) #1

declare dso_local i32 @bacpy(i32*, i32*) #1

declare dso_local i32 @list_add_rcu(i32*, i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
