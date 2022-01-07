; ModuleID = '/home/carl/AnghaBench/linux/sound/ac97/extr_bus.c_ac97_add_adapter.c'
source_filename = "/home/carl/AnghaBench/linux/sound/ac97/extr_bus.c_ac97_add_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ac97_controller = type { i32, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32* }

@ac97_controllers_mutex = common dso_local global i32 0, align 4
@ac97_adapter_idr = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"ac97-%d\00", align 1
@ac97_adapter_type = common dso_local global i32 0, align 4
@ac97_controllers = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"adapter registered by %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ac97_controller*)* @ac97_add_adapter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ac97_add_adapter(%struct.ac97_controller* %0) #0 {
  %2 = alloca %struct.ac97_controller*, align 8
  %3 = alloca i32, align 4
  store %struct.ac97_controller* %0, %struct.ac97_controller** %2, align 8
  %4 = call i32 @mutex_lock(i32* @ac97_controllers_mutex)
  %5 = load %struct.ac97_controller*, %struct.ac97_controller** %2, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call i32 @idr_alloc(i32* @ac97_adapter_idr, %struct.ac97_controller* %5, i32 0, i32 0, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.ac97_controller*, %struct.ac97_controller** %2, align 8
  %10 = getelementptr inbounds %struct.ac97_controller, %struct.ac97_controller* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 8
  %11 = load i32, i32* %3, align 4
  %12 = icmp sge i32 %11, 0
  br i1 %12, label %13, label %37

13:                                               ; preds = %1
  %14 = load %struct.ac97_controller*, %struct.ac97_controller** %2, align 8
  %15 = getelementptr inbounds %struct.ac97_controller, %struct.ac97_controller* %14, i32 0, i32 2
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @dev_set_name(%struct.TYPE_5__* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.ac97_controller*, %struct.ac97_controller** %2, align 8
  %19 = getelementptr inbounds %struct.ac97_controller, %struct.ac97_controller* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  store i32* @ac97_adapter_type, i32** %20, align 8
  %21 = load %struct.ac97_controller*, %struct.ac97_controller** %2, align 8
  %22 = getelementptr inbounds %struct.ac97_controller, %struct.ac97_controller* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ac97_controller*, %struct.ac97_controller** %2, align 8
  %25 = getelementptr inbounds %struct.ac97_controller, %struct.ac97_controller* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 8
  %27 = load %struct.ac97_controller*, %struct.ac97_controller** %2, align 8
  %28 = getelementptr inbounds %struct.ac97_controller, %struct.ac97_controller* %27, i32 0, i32 2
  %29 = call i32 @device_register(%struct.TYPE_5__* %28)
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %13
  %33 = load %struct.ac97_controller*, %struct.ac97_controller** %2, align 8
  %34 = getelementptr inbounds %struct.ac97_controller, %struct.ac97_controller* %33, i32 0, i32 2
  %35 = call i32 @put_device(%struct.TYPE_5__* %34)
  br label %36

36:                                               ; preds = %32, %13
  br label %37

37:                                               ; preds = %36, %1
  %38 = load i32, i32* %3, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = load %struct.ac97_controller*, %struct.ac97_controller** %2, align 8
  %42 = getelementptr inbounds %struct.ac97_controller, %struct.ac97_controller* %41, i32 0, i32 3
  %43 = call i32 @list_add(i32* %42, i32* @ac97_controllers)
  br label %44

44:                                               ; preds = %40, %37
  %45 = call i32 @mutex_unlock(i32* @ac97_controllers_mutex)
  %46 = load i32, i32* %3, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %44
  %49 = load %struct.ac97_controller*, %struct.ac97_controller** %2, align 8
  %50 = getelementptr inbounds %struct.ac97_controller, %struct.ac97_controller* %49, i32 0, i32 2
  %51 = load %struct.ac97_controller*, %struct.ac97_controller** %2, align 8
  %52 = getelementptr inbounds %struct.ac97_controller, %struct.ac97_controller* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @dev_name(i32 %53)
  %55 = call i32 @dev_dbg(%struct.TYPE_5__* %50, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %48, %44
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @idr_alloc(i32*, %struct.ac97_controller*, i32, i32, i32) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @device_register(%struct.TYPE_5__*) #1

declare dso_local i32 @put_device(%struct.TYPE_5__*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @dev_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
