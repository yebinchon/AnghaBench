; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctamixer.c_amixer_mgr_create.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctamixer.c_amixer_mgr_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw = type { i32 }
%struct.amixer_mgr = type { i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AMIXER = common dso_local global i32 0, align 4
@AMIXER_RESOURCE_NUM = common dso_local global i32 0, align 4
@get_amixer_rsc = common dso_local global i32 0, align 4
@put_amixer_rsc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amixer_mgr_create(%struct.hw* %0, %struct.amixer_mgr** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hw*, align 8
  %5 = alloca %struct.amixer_mgr**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.amixer_mgr*, align 8
  store %struct.hw* %0, %struct.hw** %4, align 8
  store %struct.amixer_mgr** %1, %struct.amixer_mgr*** %5, align 8
  %8 = load %struct.amixer_mgr**, %struct.amixer_mgr*** %5, align 8
  store %struct.amixer_mgr* null, %struct.amixer_mgr** %8, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.amixer_mgr* @kzalloc(i32 20, i32 %9)
  store %struct.amixer_mgr* %10, %struct.amixer_mgr** %7, align 8
  %11 = load %struct.amixer_mgr*, %struct.amixer_mgr** %7, align 8
  %12 = icmp ne %struct.amixer_mgr* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %47

16:                                               ; preds = %2
  %17 = load %struct.amixer_mgr*, %struct.amixer_mgr** %7, align 8
  %18 = getelementptr inbounds %struct.amixer_mgr, %struct.amixer_mgr* %17, i32 0, i32 4
  %19 = load i32, i32* @AMIXER, align 4
  %20 = load i32, i32* @AMIXER_RESOURCE_NUM, align 4
  %21 = load %struct.hw*, %struct.hw** %4, align 8
  %22 = call i32 @rsc_mgr_init(i32* %18, i32 %19, i32 %20, %struct.hw* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  br label %43

26:                                               ; preds = %16
  %27 = load %struct.amixer_mgr*, %struct.amixer_mgr** %7, align 8
  %28 = getelementptr inbounds %struct.amixer_mgr, %struct.amixer_mgr* %27, i32 0, i32 3
  %29 = call i32 @spin_lock_init(i32* %28)
  %30 = load i32, i32* @get_amixer_rsc, align 4
  %31 = load %struct.amixer_mgr*, %struct.amixer_mgr** %7, align 8
  %32 = getelementptr inbounds %struct.amixer_mgr, %struct.amixer_mgr* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @put_amixer_rsc, align 4
  %34 = load %struct.amixer_mgr*, %struct.amixer_mgr** %7, align 8
  %35 = getelementptr inbounds %struct.amixer_mgr, %struct.amixer_mgr* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.hw*, %struct.hw** %4, align 8
  %37 = getelementptr inbounds %struct.hw, %struct.hw* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.amixer_mgr*, %struct.amixer_mgr** %7, align 8
  %40 = getelementptr inbounds %struct.amixer_mgr, %struct.amixer_mgr* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.amixer_mgr*, %struct.amixer_mgr** %7, align 8
  %42 = load %struct.amixer_mgr**, %struct.amixer_mgr*** %5, align 8
  store %struct.amixer_mgr* %41, %struct.amixer_mgr** %42, align 8
  store i32 0, i32* %3, align 4
  br label %47

43:                                               ; preds = %25
  %44 = load %struct.amixer_mgr*, %struct.amixer_mgr** %7, align 8
  %45 = call i32 @kfree(%struct.amixer_mgr* %44)
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %43, %26, %13
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.amixer_mgr* @kzalloc(i32, i32) #1

declare dso_local i32 @rsc_mgr_init(i32*, i32, i32, %struct.hw*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @kfree(%struct.amixer_mgr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
