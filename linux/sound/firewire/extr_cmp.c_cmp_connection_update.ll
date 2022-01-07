; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/extr_cmp.c_cmp_connection_update.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/extr_cmp.c_cmp_connection_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmp_connection = type { i32, i64, i32, i32 }

@CMP_OUTPUT = common dso_local global i64 0, align 8
@opcr_set_modify = common dso_local global i32 0, align 4
@pcr_set_check = common dso_local global i32 0, align 4
@SUCCEED_ON_BUS_RESET = common dso_local global i32 0, align 4
@ipcr_set_modify = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmp_connection_update(%struct.cmp_connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cmp_connection*, align 8
  %4 = alloca i32, align 4
  store %struct.cmp_connection* %0, %struct.cmp_connection** %3, align 8
  %5 = load %struct.cmp_connection*, %struct.cmp_connection** %3, align 8
  %6 = getelementptr inbounds %struct.cmp_connection, %struct.cmp_connection* %5, i32 0, i32 2
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load %struct.cmp_connection*, %struct.cmp_connection** %3, align 8
  %9 = getelementptr inbounds %struct.cmp_connection, %struct.cmp_connection* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load %struct.cmp_connection*, %struct.cmp_connection** %3, align 8
  %14 = getelementptr inbounds %struct.cmp_connection, %struct.cmp_connection* %13, i32 0, i32 2
  %15 = call i32 @mutex_unlock(i32* %14)
  store i32 0, i32* %2, align 4
  br label %56

16:                                               ; preds = %1
  %17 = load %struct.cmp_connection*, %struct.cmp_connection** %3, align 8
  %18 = getelementptr inbounds %struct.cmp_connection, %struct.cmp_connection* %17, i32 0, i32 3
  %19 = call i32 @fw_iso_resources_update(i32* %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %49

23:                                               ; preds = %16
  %24 = load %struct.cmp_connection*, %struct.cmp_connection** %3, align 8
  %25 = getelementptr inbounds %struct.cmp_connection, %struct.cmp_connection* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @CMP_OUTPUT, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load %struct.cmp_connection*, %struct.cmp_connection** %3, align 8
  %31 = load i32, i32* @opcr_set_modify, align 4
  %32 = load i32, i32* @pcr_set_check, align 4
  %33 = load i32, i32* @SUCCEED_ON_BUS_RESET, align 4
  %34 = call i32 @pcr_modify(%struct.cmp_connection* %30, i32 %31, i32 %32, i32 %33)
  store i32 %34, i32* %4, align 4
  br label %41

35:                                               ; preds = %23
  %36 = load %struct.cmp_connection*, %struct.cmp_connection** %3, align 8
  %37 = load i32, i32* @ipcr_set_modify, align 4
  %38 = load i32, i32* @pcr_set_check, align 4
  %39 = load i32, i32* @SUCCEED_ON_BUS_RESET, align 4
  %40 = call i32 @pcr_modify(%struct.cmp_connection* %36, i32 %37, i32 %38, i32 %39)
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %35, %29
  %42 = load i32, i32* %4, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  br label %49

45:                                               ; preds = %41
  %46 = load %struct.cmp_connection*, %struct.cmp_connection** %3, align 8
  %47 = getelementptr inbounds %struct.cmp_connection, %struct.cmp_connection* %46, i32 0, i32 2
  %48 = call i32 @mutex_unlock(i32* %47)
  store i32 0, i32* %2, align 4
  br label %56

49:                                               ; preds = %44, %22
  %50 = load %struct.cmp_connection*, %struct.cmp_connection** %3, align 8
  %51 = getelementptr inbounds %struct.cmp_connection, %struct.cmp_connection* %50, i32 0, i32 0
  store i32 0, i32* %51, align 8
  %52 = load %struct.cmp_connection*, %struct.cmp_connection** %3, align 8
  %53 = getelementptr inbounds %struct.cmp_connection, %struct.cmp_connection* %52, i32 0, i32 2
  %54 = call i32 @mutex_unlock(i32* %53)
  %55 = load i32, i32* %4, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %49, %45, %12
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @fw_iso_resources_update(i32*) #1

declare dso_local i32 @pcr_modify(%struct.cmp_connection*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
