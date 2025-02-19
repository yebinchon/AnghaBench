; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/extr_cmp.c_cmp_connection_break.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/extr_cmp.c_cmp_connection_break.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmp_connection = type { i32, i32 }

@pcr_break_modify = common dso_local global i32 0, align 4
@SUCCEED_ON_BUS_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"plug is still connected\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cmp_connection_break(%struct.cmp_connection* %0) #0 {
  %2 = alloca %struct.cmp_connection*, align 8
  %3 = alloca i32, align 4
  store %struct.cmp_connection* %0, %struct.cmp_connection** %2, align 8
  %4 = load %struct.cmp_connection*, %struct.cmp_connection** %2, align 8
  %5 = getelementptr inbounds %struct.cmp_connection, %struct.cmp_connection* %4, i32 0, i32 1
  %6 = call i32 @mutex_lock(i32* %5)
  %7 = load %struct.cmp_connection*, %struct.cmp_connection** %2, align 8
  %8 = getelementptr inbounds %struct.cmp_connection, %struct.cmp_connection* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load %struct.cmp_connection*, %struct.cmp_connection** %2, align 8
  %13 = getelementptr inbounds %struct.cmp_connection, %struct.cmp_connection* %12, i32 0, i32 1
  %14 = call i32 @mutex_unlock(i32* %13)
  br label %31

15:                                               ; preds = %1
  %16 = load %struct.cmp_connection*, %struct.cmp_connection** %2, align 8
  %17 = load i32, i32* @pcr_break_modify, align 4
  %18 = load i32, i32* @SUCCEED_ON_BUS_RESET, align 4
  %19 = call i32 @pcr_modify(%struct.cmp_connection* %16, i32 %17, i32* null, i32 %18)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = load %struct.cmp_connection*, %struct.cmp_connection** %2, align 8
  %24 = call i32 @cmp_error(%struct.cmp_connection* %23, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %22, %15
  %26 = load %struct.cmp_connection*, %struct.cmp_connection** %2, align 8
  %27 = getelementptr inbounds %struct.cmp_connection, %struct.cmp_connection* %26, i32 0, i32 0
  store i32 0, i32* %27, align 4
  %28 = load %struct.cmp_connection*, %struct.cmp_connection** %2, align 8
  %29 = getelementptr inbounds %struct.cmp_connection, %struct.cmp_connection* %28, i32 0, i32 1
  %30 = call i32 @mutex_unlock(i32* %29)
  br label %31

31:                                               ; preds = %25, %11
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pcr_modify(%struct.cmp_connection*, i32, i32*, i32) #1

declare dso_local i32 @cmp_error(%struct.cmp_connection*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
