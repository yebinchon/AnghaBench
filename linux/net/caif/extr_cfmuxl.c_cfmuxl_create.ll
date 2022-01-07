; ModuleID = '/home/carl/AnghaBench/linux/net/caif/extr_cfmuxl.c_cfmuxl_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/caif/extr_cfmuxl.c_cfmuxl_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cflayer = type { i32, i32, i32, i32 }
%struct.cfmuxl = type { %struct.cflayer, i32, i32, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@cfmuxl_receive = common dso_local global i32 0, align 4
@cfmuxl_transmit = common dso_local global i32 0, align 4
@cfmuxl_ctrlcmd = common dso_local global i32 0, align 4
@CAIF_LAYER_NAME_SZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"mux\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cflayer* @cfmuxl_create() #0 {
  %1 = alloca %struct.cflayer*, align 8
  %2 = alloca %struct.cfmuxl*, align 8
  %3 = load i32, i32* @GFP_ATOMIC, align 4
  %4 = call %struct.cfmuxl* @kzalloc(i32 32, i32 %3)
  store %struct.cfmuxl* %4, %struct.cfmuxl** %2, align 8
  %5 = load %struct.cfmuxl*, %struct.cfmuxl** %2, align 8
  %6 = icmp ne %struct.cfmuxl* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store %struct.cflayer* null, %struct.cflayer** %1, align 8
  br label %41

8:                                                ; preds = %0
  %9 = load i32, i32* @cfmuxl_receive, align 4
  %10 = load %struct.cfmuxl*, %struct.cfmuxl** %2, align 8
  %11 = getelementptr inbounds %struct.cfmuxl, %struct.cfmuxl* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %11, i32 0, i32 3
  store i32 %9, i32* %12, align 4
  %13 = load i32, i32* @cfmuxl_transmit, align 4
  %14 = load %struct.cfmuxl*, %struct.cfmuxl** %2, align 8
  %15 = getelementptr inbounds %struct.cfmuxl, %struct.cfmuxl* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %15, i32 0, i32 2
  store i32 %13, i32* %16, align 4
  %17 = load i32, i32* @cfmuxl_ctrlcmd, align 4
  %18 = load %struct.cfmuxl*, %struct.cfmuxl** %2, align 8
  %19 = getelementptr inbounds %struct.cfmuxl, %struct.cfmuxl* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %19, i32 0, i32 1
  store i32 %17, i32* %20, align 4
  %21 = load %struct.cfmuxl*, %struct.cfmuxl** %2, align 8
  %22 = getelementptr inbounds %struct.cfmuxl, %struct.cfmuxl* %21, i32 0, i32 4
  %23 = call i32 @INIT_LIST_HEAD(i32* %22)
  %24 = load %struct.cfmuxl*, %struct.cfmuxl** %2, align 8
  %25 = getelementptr inbounds %struct.cfmuxl, %struct.cfmuxl* %24, i32 0, i32 3
  %26 = call i32 @INIT_LIST_HEAD(i32* %25)
  %27 = load %struct.cfmuxl*, %struct.cfmuxl** %2, align 8
  %28 = getelementptr inbounds %struct.cfmuxl, %struct.cfmuxl* %27, i32 0, i32 2
  %29 = call i32 @spin_lock_init(i32* %28)
  %30 = load %struct.cfmuxl*, %struct.cfmuxl** %2, align 8
  %31 = getelementptr inbounds %struct.cfmuxl, %struct.cfmuxl* %30, i32 0, i32 1
  %32 = call i32 @spin_lock_init(i32* %31)
  %33 = load %struct.cfmuxl*, %struct.cfmuxl** %2, align 8
  %34 = getelementptr inbounds %struct.cfmuxl, %struct.cfmuxl* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @CAIF_LAYER_NAME_SZ, align 4
  %38 = call i32 @snprintf(i32 %36, i32 %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %39 = load %struct.cfmuxl*, %struct.cfmuxl** %2, align 8
  %40 = getelementptr inbounds %struct.cfmuxl, %struct.cfmuxl* %39, i32 0, i32 0
  store %struct.cflayer* %40, %struct.cflayer** %1, align 8
  br label %41

41:                                               ; preds = %8, %7
  %42 = load %struct.cflayer*, %struct.cflayer** %1, align 8
  ret %struct.cflayer* %42
}

declare dso_local %struct.cfmuxl* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
