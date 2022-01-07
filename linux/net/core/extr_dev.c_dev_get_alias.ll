; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_dev.c_dev_get_alias.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_dev.c_dev_get_alias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.dev_ifalias = type { i8* }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dev_get_alias(%struct.net_device* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.dev_ifalias*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %8, align 4
  %9 = call i32 (...) @rcu_read_lock()
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.dev_ifalias* @rcu_dereference(i32 %12)
  store %struct.dev_ifalias* %13, %struct.dev_ifalias** %7, align 8
  %14 = load %struct.dev_ifalias*, %struct.dev_ifalias** %7, align 8
  %15 = icmp ne %struct.dev_ifalias* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = load i8*, i8** %5, align 8
  %18 = load i64, i64* %6, align 8
  %19 = load %struct.dev_ifalias*, %struct.dev_ifalias** %7, align 8
  %20 = getelementptr inbounds %struct.dev_ifalias, %struct.dev_ifalias* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @snprintf(i8* %17, i64 %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %21)
  store i32 %22, i32* %8, align 4
  br label %23

23:                                               ; preds = %16, %3
  %24 = call i32 (...) @rcu_read_unlock()
  %25 = load i32, i32* %8, align 4
  ret i32 %25
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.dev_ifalias* @rcu_dereference(i32) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
