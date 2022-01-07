; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/extr_cmp.c_cmp_connection_reserve.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/extr_cmp.c_cmp_connection_reserve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmp_connection = type { i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmp_connection_reserve(%struct.cmp_connection* %0, i32 %1) #0 {
  %3 = alloca %struct.cmp_connection*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cmp_connection* %0, %struct.cmp_connection** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.cmp_connection*, %struct.cmp_connection** %3, align 8
  %7 = getelementptr inbounds %struct.cmp_connection, %struct.cmp_connection* %6, i32 0, i32 0
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.cmp_connection*, %struct.cmp_connection** %3, align 8
  %10 = getelementptr inbounds %struct.cmp_connection, %struct.cmp_connection* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @WARN_ON(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EBUSY, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %39

18:                                               ; preds = %2
  %19 = load %struct.cmp_connection*, %struct.cmp_connection** %3, align 8
  %20 = getelementptr inbounds %struct.cmp_connection, %struct.cmp_connection* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.cmp_connection*, %struct.cmp_connection** %3, align 8
  %23 = getelementptr inbounds %struct.cmp_connection, %struct.cmp_connection* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.TYPE_3__* @fw_parent_device(i32 %25)
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @min(i32 %21, i32 %28)
  %30 = load %struct.cmp_connection*, %struct.cmp_connection** %3, align 8
  %31 = getelementptr inbounds %struct.cmp_connection, %struct.cmp_connection* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.cmp_connection*, %struct.cmp_connection** %3, align 8
  %33 = getelementptr inbounds %struct.cmp_connection, %struct.cmp_connection* %32, i32 0, i32 2
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.cmp_connection*, %struct.cmp_connection** %3, align 8
  %36 = getelementptr inbounds %struct.cmp_connection, %struct.cmp_connection* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @fw_iso_resources_allocate(%struct.TYPE_4__* %33, i32 %34, i32 %37)
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %18, %15
  %40 = load %struct.cmp_connection*, %struct.cmp_connection** %3, align 8
  %41 = getelementptr inbounds %struct.cmp_connection, %struct.cmp_connection* %40, i32 0, i32 0
  %42 = call i32 @mutex_unlock(i32* %41)
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local %struct.TYPE_3__* @fw_parent_device(i32) #1

declare dso_local i32 @fw_iso_resources_allocate(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
