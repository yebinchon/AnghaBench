; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_dax.c_dax_wake_entry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_dax.c_dax_wake_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xa_state = type { i32 }
%struct.exceptional_entry_key = type { i32 }

@TASK_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xa_state*, i8*, i32)* @dax_wake_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dax_wake_entry(%struct.xa_state* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.xa_state*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.exceptional_entry_key, align 4
  %8 = alloca i32*, align 8
  store %struct.xa_state* %0, %struct.xa_state** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.xa_state*, %struct.xa_state** %4, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i32* @dax_entry_waitqueue(%struct.xa_state* %9, i8* %10, %struct.exceptional_entry_key* %7)
  store i32* %11, i32** %8, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = call i64 @waitqueue_active(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %3
  %16 = load i32*, i32** %8, align 8
  %17 = load i32, i32* @TASK_NORMAL, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 0, i32 1
  %22 = call i32 @__wake_up(i32* %16, i32 %17, i32 %21, %struct.exceptional_entry_key* %7)
  br label %23

23:                                               ; preds = %15, %3
  ret void
}

declare dso_local i32* @dax_entry_waitqueue(%struct.xa_state*, i8*, %struct.exceptional_entry_key*) #1

declare dso_local i64 @waitqueue_active(i32*) #1

declare dso_local i32 @__wake_up(i32*, i32, i32, %struct.exceptional_entry_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
