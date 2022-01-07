; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/extr_cmp.c_cmp_connection_establish.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/extr_cmp.c_cmp_connection_establish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmp_connection = type { i32, i64, i32, i32 }

@EISCONN = common dso_local global i32 0, align 4
@CMP_OUTPUT = common dso_local global i64 0, align 8
@opcr_set_modify = common dso_local global i32 0, align 4
@pcr_set_check = common dso_local global i32 0, align 4
@ABORT_ON_BUS_RESET = common dso_local global i32 0, align 4
@ipcr_set_modify = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmp_connection_establish(%struct.cmp_connection* %0) #0 {
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
  %11 = call i64 @WARN_ON(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.cmp_connection*, %struct.cmp_connection** %3, align 8
  %15 = getelementptr inbounds %struct.cmp_connection, %struct.cmp_connection* %14, i32 0, i32 2
  %16 = call i32 @mutex_unlock(i32* %15)
  %17 = load i32, i32* @EISCONN, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %62

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %49, %19
  %21 = load %struct.cmp_connection*, %struct.cmp_connection** %3, align 8
  %22 = getelementptr inbounds %struct.cmp_connection, %struct.cmp_connection* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @CMP_OUTPUT, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = load %struct.cmp_connection*, %struct.cmp_connection** %3, align 8
  %28 = load i32, i32* @opcr_set_modify, align 4
  %29 = load i32, i32* @pcr_set_check, align 4
  %30 = load i32, i32* @ABORT_ON_BUS_RESET, align 4
  %31 = call i32 @pcr_modify(%struct.cmp_connection* %27, i32 %28, i32 %29, i32 %30)
  store i32 %31, i32* %4, align 4
  br label %38

32:                                               ; preds = %20
  %33 = load %struct.cmp_connection*, %struct.cmp_connection** %3, align 8
  %34 = load i32, i32* @ipcr_set_modify, align 4
  %35 = load i32, i32* @pcr_set_check, align 4
  %36 = load i32, i32* @ABORT_ON_BUS_RESET, align 4
  %37 = call i32 @pcr_modify(%struct.cmp_connection* %33, i32 %34, i32 %35, i32 %36)
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %32, %26
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @EAGAIN, align 4
  %41 = sub nsw i32 0, %40
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %38
  %44 = load %struct.cmp_connection*, %struct.cmp_connection** %3, align 8
  %45 = getelementptr inbounds %struct.cmp_connection, %struct.cmp_connection* %44, i32 0, i32 3
  %46 = call i32 @fw_iso_resources_update(i32* %45)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp sge i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %20

50:                                               ; preds = %43
  br label %51

51:                                               ; preds = %50, %38
  %52 = load i32, i32* %4, align 4
  %53 = icmp sge i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load %struct.cmp_connection*, %struct.cmp_connection** %3, align 8
  %56 = getelementptr inbounds %struct.cmp_connection, %struct.cmp_connection* %55, i32 0, i32 0
  store i32 1, i32* %56, align 8
  br label %57

57:                                               ; preds = %54, %51
  %58 = load %struct.cmp_connection*, %struct.cmp_connection** %3, align 8
  %59 = getelementptr inbounds %struct.cmp_connection, %struct.cmp_connection* %58, i32 0, i32 2
  %60 = call i32 @mutex_unlock(i32* %59)
  %61 = load i32, i32* %4, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %57, %13
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pcr_modify(%struct.cmp_connection*, i32, i32, i32) #1

declare dso_local i32 @fw_iso_resources_update(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
