; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_debugfs.c_irq_add_debugfs_entry.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_debugfs.c_irq_add_debugfs_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i64 }

@irq_dir = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@dfs_irq_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @irq_add_debugfs_entry(i32 %0, %struct.irq_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_desc*, align 8
  %5 = alloca [10 x i8], align 1
  store i32 %0, i32* %3, align 4
  store %struct.irq_desc* %1, %struct.irq_desc** %4, align 8
  %6 = load i32, i32* @irq_dir, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %2
  %9 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %10 = icmp ne %struct.irq_desc* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %8
  %12 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %13 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11, %8, %2
  br label %27

17:                                               ; preds = %11
  %18 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @sprintf(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  %22 = load i32, i32* @irq_dir, align 4
  %23 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %24 = call i64 @debugfs_create_file(i8* %21, i32 420, i32 %22, %struct.irq_desc* %23, i32* @dfs_irq_ops)
  %25 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %26 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  br label %27

27:                                               ; preds = %17, %16
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i64 @debugfs_create_file(i8*, i32, i32, %struct.irq_desc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
