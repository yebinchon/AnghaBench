; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_proc_tty.c_proc_tty_register_driver.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_proc_tty.c_proc_tty_register_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_driver = type { %struct.proc_dir_entry*, %struct.TYPE_2__*, i32 }
%struct.proc_dir_entry = type { i32 }
%struct.TYPE_2__ = type { i32 }

@proc_tty_driver = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @proc_tty_register_driver(%struct.tty_driver* %0) #0 {
  %2 = alloca %struct.tty_driver*, align 8
  %3 = alloca %struct.proc_dir_entry*, align 8
  store %struct.tty_driver* %0, %struct.tty_driver** %2, align 8
  %4 = load %struct.tty_driver*, %struct.tty_driver** %2, align 8
  %5 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %20

8:                                                ; preds = %1
  %9 = load %struct.tty_driver*, %struct.tty_driver** %2, align 8
  %10 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %9, i32 0, i32 0
  %11 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %10, align 8
  %12 = icmp ne %struct.proc_dir_entry* %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %8
  %14 = load %struct.tty_driver*, %struct.tty_driver** %2, align 8
  %15 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %13, %8, %1
  br label %36

21:                                               ; preds = %13
  %22 = load %struct.tty_driver*, %struct.tty_driver** %2, align 8
  %23 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @proc_tty_driver, align 4
  %26 = load %struct.tty_driver*, %struct.tty_driver** %2, align 8
  %27 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.tty_driver*, %struct.tty_driver** %2, align 8
  %32 = call %struct.proc_dir_entry* @proc_create_single_data(i32 %24, i32 0, i32 %25, i32 %30, %struct.tty_driver* %31)
  store %struct.proc_dir_entry* %32, %struct.proc_dir_entry** %3, align 8
  %33 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %3, align 8
  %34 = load %struct.tty_driver*, %struct.tty_driver** %2, align 8
  %35 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %34, i32 0, i32 0
  store %struct.proc_dir_entry* %33, %struct.proc_dir_entry** %35, align 8
  br label %36

36:                                               ; preds = %21, %20
  ret void
}

declare dso_local %struct.proc_dir_entry* @proc_create_single_data(i32, i32, i32, i32, %struct.tty_driver*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
