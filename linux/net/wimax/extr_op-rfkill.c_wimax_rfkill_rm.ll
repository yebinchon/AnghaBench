; ModuleID = '/home/carl/AnghaBench/linux/net/wimax/extr_op-rfkill.c_wimax_rfkill_rm.c'
source_filename = "/home/carl/AnghaBench/linux/net/wimax/extr_op-rfkill.c_wimax_rfkill_rm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wimax_dev = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"(wimax_dev %p)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wimax_rfkill_rm(%struct.wimax_dev* %0) #0 {
  %2 = alloca %struct.wimax_dev*, align 8
  %3 = alloca %struct.device*, align 8
  store %struct.wimax_dev* %0, %struct.wimax_dev** %2, align 8
  %4 = load %struct.wimax_dev*, %struct.wimax_dev** %2, align 8
  %5 = call %struct.device* @wimax_dev_to_dev(%struct.wimax_dev* %4)
  store %struct.device* %5, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = load %struct.wimax_dev*, %struct.wimax_dev** %2, align 8
  %8 = call i32 @d_fnstart(i32 3, %struct.device* %6, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.wimax_dev* %7)
  %9 = load %struct.wimax_dev*, %struct.wimax_dev** %2, align 8
  %10 = getelementptr inbounds %struct.wimax_dev, %struct.wimax_dev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @rfkill_unregister(i32 %11)
  %13 = load %struct.wimax_dev*, %struct.wimax_dev** %2, align 8
  %14 = getelementptr inbounds %struct.wimax_dev, %struct.wimax_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @rfkill_destroy(i32 %15)
  %17 = load %struct.device*, %struct.device** %3, align 8
  %18 = load %struct.wimax_dev*, %struct.wimax_dev** %2, align 8
  %19 = call i32 @d_fnend(i32 3, %struct.device* %17, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.wimax_dev* %18)
  ret void
}

declare dso_local %struct.device* @wimax_dev_to_dev(%struct.wimax_dev*) #1

declare dso_local i32 @d_fnstart(i32, %struct.device*, i8*, %struct.wimax_dev*) #1

declare dso_local i32 @rfkill_unregister(i32) #1

declare dso_local i32 @rfkill_destroy(i32) #1

declare dso_local i32 @d_fnend(i32, %struct.device*, i8*, %struct.wimax_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
