; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst_pvt.c_sst_create_ipc_msg.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst_pvt.c_sst_create_ipc_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipc_post = type { i32, i32* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SST_MAILBOX_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sst_create_ipc_msg(%struct.ipc_post** %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipc_post**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ipc_post*, align 8
  store %struct.ipc_post** %0, %struct.ipc_post*** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @GFP_ATOMIC, align 4
  %8 = call i8* @kzalloc(i32 16, i32 %7)
  %9 = bitcast i8* %8 to %struct.ipc_post*
  store %struct.ipc_post* %9, %struct.ipc_post** %6, align 8
  %10 = load %struct.ipc_post*, %struct.ipc_post** %6, align 8
  %11 = icmp ne %struct.ipc_post* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %44

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %35

18:                                               ; preds = %15
  %19 = load i32, i32* @SST_MAILBOX_SIZE, align 4
  %20 = load i32, i32* @GFP_ATOMIC, align 4
  %21 = call i8* @kzalloc(i32 %19, i32 %20)
  %22 = bitcast i8* %21 to i32*
  %23 = load %struct.ipc_post*, %struct.ipc_post** %6, align 8
  %24 = getelementptr inbounds %struct.ipc_post, %struct.ipc_post* %23, i32 0, i32 1
  store i32* %22, i32** %24, align 8
  %25 = load %struct.ipc_post*, %struct.ipc_post** %6, align 8
  %26 = getelementptr inbounds %struct.ipc_post, %struct.ipc_post* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %18
  %30 = load %struct.ipc_post*, %struct.ipc_post** %6, align 8
  %31 = call i32 @kfree(%struct.ipc_post* %30)
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %44

34:                                               ; preds = %18
  br label %38

35:                                               ; preds = %15
  %36 = load %struct.ipc_post*, %struct.ipc_post** %6, align 8
  %37 = getelementptr inbounds %struct.ipc_post, %struct.ipc_post* %36, i32 0, i32 1
  store i32* null, i32** %37, align 8
  br label %38

38:                                               ; preds = %35, %34
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.ipc_post*, %struct.ipc_post** %6, align 8
  %41 = getelementptr inbounds %struct.ipc_post, %struct.ipc_post* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.ipc_post*, %struct.ipc_post** %6, align 8
  %43 = load %struct.ipc_post**, %struct.ipc_post*** %4, align 8
  store %struct.ipc_post* %42, %struct.ipc_post** %43, align 8
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %38, %29, %12
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.ipc_post*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
