; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_dpipe_entry_clear.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_dpipe_entry_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink_dpipe_entry = type { i32, i32, %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value* }
%struct.devlink_dpipe_value = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @devlink_dpipe_entry_clear(%struct.devlink_dpipe_entry* %0) #0 {
  %2 = alloca %struct.devlink_dpipe_entry*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.devlink_dpipe_value*, align 8
  store %struct.devlink_dpipe_entry* %0, %struct.devlink_dpipe_entry** %2, align 8
  %6 = load %struct.devlink_dpipe_entry*, %struct.devlink_dpipe_entry** %2, align 8
  %7 = getelementptr inbounds %struct.devlink_dpipe_entry, %struct.devlink_dpipe_entry* %6, i32 0, i32 3
  %8 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %7, align 8
  store %struct.devlink_dpipe_value* %8, %struct.devlink_dpipe_value** %5, align 8
  %9 = load %struct.devlink_dpipe_entry*, %struct.devlink_dpipe_entry** %2, align 8
  %10 = getelementptr inbounds %struct.devlink_dpipe_entry, %struct.devlink_dpipe_entry* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %31, %1
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %34

16:                                               ; preds = %12
  %17 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %5, align 8
  %18 = load i32, i32* %4, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %17, i64 %19
  %21 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @kfree(i32 %22)
  %24 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %5, align 8
  %25 = load i32, i32* %4, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %24, i64 %26
  %28 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @kfree(i32 %29)
  br label %31

31:                                               ; preds = %16
  %32 = load i32, i32* %4, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %12

34:                                               ; preds = %12
  %35 = load %struct.devlink_dpipe_entry*, %struct.devlink_dpipe_entry** %2, align 8
  %36 = getelementptr inbounds %struct.devlink_dpipe_entry, %struct.devlink_dpipe_entry* %35, i32 0, i32 2
  %37 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %36, align 8
  store %struct.devlink_dpipe_value* %37, %struct.devlink_dpipe_value** %5, align 8
  %38 = load %struct.devlink_dpipe_entry*, %struct.devlink_dpipe_entry** %2, align 8
  %39 = getelementptr inbounds %struct.devlink_dpipe_entry, %struct.devlink_dpipe_entry* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %60, %34
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* %3, align 4
  %44 = icmp ult i32 %42, %43
  br i1 %44, label %45, label %63

45:                                               ; preds = %41
  %46 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %5, align 8
  %47 = load i32, i32* %4, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %46, i64 %48
  %50 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @kfree(i32 %51)
  %53 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %5, align 8
  %54 = load i32, i32* %4, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %53, i64 %55
  %57 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @kfree(i32 %58)
  br label %60

60:                                               ; preds = %45
  %61 = load i32, i32* %4, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %4, align 4
  br label %41

63:                                               ; preds = %41
  ret void
}

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
