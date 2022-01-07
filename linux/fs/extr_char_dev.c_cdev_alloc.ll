; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_char_dev.c_cdev_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_char_dev.c_cdev_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ktype_cdev_dynamic = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cdev* @cdev_alloc() #0 {
  %1 = alloca %struct.cdev*, align 8
  %2 = load i32, i32* @GFP_KERNEL, align 4
  %3 = call %struct.cdev* @kzalloc(i32 8, i32 %2)
  store %struct.cdev* %3, %struct.cdev** %1, align 8
  %4 = load %struct.cdev*, %struct.cdev** %1, align 8
  %5 = icmp ne %struct.cdev* %4, null
  br i1 %5, label %6, label %13

6:                                                ; preds = %0
  %7 = load %struct.cdev*, %struct.cdev** %1, align 8
  %8 = getelementptr inbounds %struct.cdev, %struct.cdev* %7, i32 0, i32 1
  %9 = call i32 @INIT_LIST_HEAD(i32* %8)
  %10 = load %struct.cdev*, %struct.cdev** %1, align 8
  %11 = getelementptr inbounds %struct.cdev, %struct.cdev* %10, i32 0, i32 0
  %12 = call i32 @kobject_init(i32* %11, i32* @ktype_cdev_dynamic)
  br label %13

13:                                               ; preds = %6, %0
  %14 = load %struct.cdev*, %struct.cdev** %1, align 8
  ret %struct.cdev* %14
}

declare dso_local %struct.cdev* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @kobject_init(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
