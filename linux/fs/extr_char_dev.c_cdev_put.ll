; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_char_dev.c_cdev_put.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_char_dev.c_cdev_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32, %struct.module* }
%struct.module = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cdev_put(%struct.cdev* %0) #0 {
  %2 = alloca %struct.cdev*, align 8
  %3 = alloca %struct.module*, align 8
  store %struct.cdev* %0, %struct.cdev** %2, align 8
  %4 = load %struct.cdev*, %struct.cdev** %2, align 8
  %5 = icmp ne %struct.cdev* %4, null
  br i1 %5, label %6, label %15

6:                                                ; preds = %1
  %7 = load %struct.cdev*, %struct.cdev** %2, align 8
  %8 = getelementptr inbounds %struct.cdev, %struct.cdev* %7, i32 0, i32 1
  %9 = load %struct.module*, %struct.module** %8, align 8
  store %struct.module* %9, %struct.module** %3, align 8
  %10 = load %struct.cdev*, %struct.cdev** %2, align 8
  %11 = getelementptr inbounds %struct.cdev, %struct.cdev* %10, i32 0, i32 0
  %12 = call i32 @kobject_put(i32* %11)
  %13 = load %struct.module*, %struct.module** %3, align 8
  %14 = call i32 @module_put(%struct.module* %13)
  br label %15

15:                                               ; preds = %6, %1
  ret void
}

declare dso_local i32 @kobject_put(i32*) #1

declare dso_local i32 @module_put(%struct.module*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
