; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_char_dev.c_cdev_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_char_dev.c_cdev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.file_operations*, i32, i32 }
%struct.file_operations = type { i32 }

@ktype_cdev_default = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cdev_init(%struct.cdev* %0, %struct.file_operations* %1) #0 {
  %3 = alloca %struct.cdev*, align 8
  %4 = alloca %struct.file_operations*, align 8
  store %struct.cdev* %0, %struct.cdev** %3, align 8
  store %struct.file_operations* %1, %struct.file_operations** %4, align 8
  %5 = load %struct.cdev*, %struct.cdev** %3, align 8
  %6 = call i32 @memset(%struct.cdev* %5, i32 0, i32 16)
  %7 = load %struct.cdev*, %struct.cdev** %3, align 8
  %8 = getelementptr inbounds %struct.cdev, %struct.cdev* %7, i32 0, i32 2
  %9 = call i32 @INIT_LIST_HEAD(i32* %8)
  %10 = load %struct.cdev*, %struct.cdev** %3, align 8
  %11 = getelementptr inbounds %struct.cdev, %struct.cdev* %10, i32 0, i32 1
  %12 = call i32 @kobject_init(i32* %11, i32* @ktype_cdev_default)
  %13 = load %struct.file_operations*, %struct.file_operations** %4, align 8
  %14 = load %struct.cdev*, %struct.cdev** %3, align 8
  %15 = getelementptr inbounds %struct.cdev, %struct.cdev* %14, i32 0, i32 0
  store %struct.file_operations* %13, %struct.file_operations** %15, align 8
  ret void
}

declare dso_local i32 @memset(%struct.cdev*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @kobject_init(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
