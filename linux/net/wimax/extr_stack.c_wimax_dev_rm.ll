; ModuleID = '/home/carl/AnghaBench/linux/net/wimax/extr_stack.c_wimax_dev_rm.c'
source_filename = "/home/carl/AnghaBench/linux/net/wimax/extr_stack.c_wimax_dev_rm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wimax_dev = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"(wimax_dev %p)\0A\00", align 1
@__WIMAX_ST_QUIESCING = common dso_local global i32 0, align 4
@WIMAX_ST_DOWN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"(wimax_dev %p) = void\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wimax_dev_rm(%struct.wimax_dev* %0) #0 {
  %2 = alloca %struct.wimax_dev*, align 8
  store %struct.wimax_dev* %0, %struct.wimax_dev** %2, align 8
  %3 = load %struct.wimax_dev*, %struct.wimax_dev** %2, align 8
  %4 = call i32 @d_fnstart(i32 3, i32* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.wimax_dev* %3)
  %5 = load %struct.wimax_dev*, %struct.wimax_dev** %2, align 8
  %6 = getelementptr inbounds %struct.wimax_dev, %struct.wimax_dev* %5, i32 0, i32 0
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load %struct.wimax_dev*, %struct.wimax_dev** %2, align 8
  %9 = load i32, i32* @__WIMAX_ST_QUIESCING, align 4
  %10 = call i32 @__wimax_state_change(%struct.wimax_dev* %8, i32 %9)
  %11 = load %struct.wimax_dev*, %struct.wimax_dev** %2, align 8
  %12 = call i32 @wimax_debugfs_rm(%struct.wimax_dev* %11)
  %13 = load %struct.wimax_dev*, %struct.wimax_dev** %2, align 8
  %14 = call i32 @wimax_id_table_rm(%struct.wimax_dev* %13)
  %15 = load %struct.wimax_dev*, %struct.wimax_dev** %2, align 8
  %16 = load i32, i32* @WIMAX_ST_DOWN, align 4
  %17 = call i32 @__wimax_state_change(%struct.wimax_dev* %15, i32 %16)
  %18 = load %struct.wimax_dev*, %struct.wimax_dev** %2, align 8
  %19 = getelementptr inbounds %struct.wimax_dev, %struct.wimax_dev* %18, i32 0, i32 0
  %20 = call i32 @mutex_unlock(i32* %19)
  %21 = load %struct.wimax_dev*, %struct.wimax_dev** %2, align 8
  %22 = call i32 @wimax_rfkill_rm(%struct.wimax_dev* %21)
  %23 = load %struct.wimax_dev*, %struct.wimax_dev** %2, align 8
  %24 = call i32 @d_fnend(i32 3, i32* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), %struct.wimax_dev* %23)
  ret void
}

declare dso_local i32 @d_fnstart(i32, i32*, i8*, %struct.wimax_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__wimax_state_change(%struct.wimax_dev*, i32) #1

declare dso_local i32 @wimax_debugfs_rm(%struct.wimax_dev*) #1

declare dso_local i32 @wimax_id_table_rm(%struct.wimax_dev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wimax_rfkill_rm(%struct.wimax_dev*) #1

declare dso_local i32 @d_fnend(i32, i32*, i8*, %struct.wimax_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
