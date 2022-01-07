; ModuleID = '/home/carl/AnghaBench/linux/fs/pstore/extr_platform.c_pstore_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/fs/pstore/extr_platform.c_pstore_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pstore_info = type { i32 }

@pstore_update_ms = common dso_local global i32 0, align 4
@pstore_timer = common dso_local global i32 0, align 4
@pstore_work = common dso_local global i32 0, align 4
@PSTORE_FLAGS_PMSG = common dso_local global i32 0, align 4
@PSTORE_FLAGS_FTRACE = common dso_local global i32 0, align 4
@PSTORE_FLAGS_CONSOLE = common dso_local global i32 0, align 4
@PSTORE_FLAGS_DMESG = common dso_local global i32 0, align 4
@psinfo = common dso_local global i32* null, align 8
@backend = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pstore_unregister(%struct.pstore_info* %0) #0 {
  %2 = alloca %struct.pstore_info*, align 8
  store %struct.pstore_info* %0, %struct.pstore_info** %2, align 8
  store i32 -1, i32* @pstore_update_ms, align 4
  %3 = call i32 @del_timer_sync(i32* @pstore_timer)
  %4 = call i32 @flush_work(i32* @pstore_work)
  %5 = load %struct.pstore_info*, %struct.pstore_info** %2, align 8
  %6 = getelementptr inbounds %struct.pstore_info, %struct.pstore_info* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @PSTORE_FLAGS_PMSG, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 (...) @pstore_unregister_pmsg()
  br label %13

13:                                               ; preds = %11, %1
  %14 = load %struct.pstore_info*, %struct.pstore_info** %2, align 8
  %15 = getelementptr inbounds %struct.pstore_info, %struct.pstore_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @PSTORE_FLAGS_FTRACE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = call i32 (...) @pstore_unregister_ftrace()
  br label %22

22:                                               ; preds = %20, %13
  %23 = load %struct.pstore_info*, %struct.pstore_info** %2, align 8
  %24 = getelementptr inbounds %struct.pstore_info, %struct.pstore_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @PSTORE_FLAGS_CONSOLE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = call i32 (...) @pstore_unregister_console()
  br label %31

31:                                               ; preds = %29, %22
  %32 = load %struct.pstore_info*, %struct.pstore_info** %2, align 8
  %33 = getelementptr inbounds %struct.pstore_info, %struct.pstore_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @PSTORE_FLAGS_DMESG, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = call i32 (...) @pstore_unregister_kmsg()
  br label %40

40:                                               ; preds = %38, %31
  %41 = call i32 (...) @free_buf_for_compression()
  store i32* null, i32** @psinfo, align 8
  store i32* null, i32** @backend, align 8
  ret void
}

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @pstore_unregister_pmsg(...) #1

declare dso_local i32 @pstore_unregister_ftrace(...) #1

declare dso_local i32 @pstore_unregister_console(...) #1

declare dso_local i32 @pstore_unregister_kmsg(...) #1

declare dso_local i32 @free_buf_for_compression(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
