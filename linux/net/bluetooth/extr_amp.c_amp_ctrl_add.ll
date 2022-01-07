; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_amp.c_amp_ctrl_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_amp.c_amp_ctrl_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amp_ctrl = type { i32, i32, i32 }
%struct.amp_mgr = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"mgr %p ctrl %p\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.amp_ctrl* @amp_ctrl_add(%struct.amp_mgr* %0, i32 %1) #0 {
  %3 = alloca %struct.amp_ctrl*, align 8
  %4 = alloca %struct.amp_mgr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.amp_ctrl*, align 8
  store %struct.amp_mgr* %0, %struct.amp_mgr** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.amp_ctrl* @kzalloc(i32 12, i32 %7)
  store %struct.amp_ctrl* %8, %struct.amp_ctrl** %6, align 8
  %9 = load %struct.amp_ctrl*, %struct.amp_ctrl** %6, align 8
  %10 = icmp ne %struct.amp_ctrl* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.amp_ctrl* null, %struct.amp_ctrl** %3, align 8
  br label %34

12:                                               ; preds = %2
  %13 = load %struct.amp_ctrl*, %struct.amp_ctrl** %6, align 8
  %14 = getelementptr inbounds %struct.amp_ctrl, %struct.amp_ctrl* %13, i32 0, i32 2
  %15 = call i32 @kref_init(i32* %14)
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.amp_ctrl*, %struct.amp_ctrl** %6, align 8
  %18 = getelementptr inbounds %struct.amp_ctrl, %struct.amp_ctrl* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.amp_mgr*, %struct.amp_mgr** %4, align 8
  %20 = getelementptr inbounds %struct.amp_mgr, %struct.amp_mgr* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.amp_ctrl*, %struct.amp_ctrl** %6, align 8
  %23 = getelementptr inbounds %struct.amp_ctrl, %struct.amp_ctrl* %22, i32 0, i32 0
  %24 = load %struct.amp_mgr*, %struct.amp_mgr** %4, align 8
  %25 = getelementptr inbounds %struct.amp_mgr, %struct.amp_mgr* %24, i32 0, i32 1
  %26 = call i32 @list_add(i32* %23, i32* %25)
  %27 = load %struct.amp_mgr*, %struct.amp_mgr** %4, align 8
  %28 = getelementptr inbounds %struct.amp_mgr, %struct.amp_mgr* %27, i32 0, i32 0
  %29 = call i32 @mutex_unlock(i32* %28)
  %30 = load %struct.amp_mgr*, %struct.amp_mgr** %4, align 8
  %31 = load %struct.amp_ctrl*, %struct.amp_ctrl** %6, align 8
  %32 = call i32 @BT_DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.amp_mgr* %30, %struct.amp_ctrl* %31)
  %33 = load %struct.amp_ctrl*, %struct.amp_ctrl** %6, align 8
  store %struct.amp_ctrl* %33, %struct.amp_ctrl** %3, align 8
  br label %34

34:                                               ; preds = %12, %11
  %35 = load %struct.amp_ctrl*, %struct.amp_ctrl** %3, align 8
  ret %struct.amp_ctrl* %35
}

declare dso_local %struct.amp_ctrl* @kzalloc(i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @BT_DBG(i8*, %struct.amp_mgr*, %struct.amp_ctrl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
