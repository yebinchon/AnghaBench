; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_budget.c_run_gc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_budget.c_run_gc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"GC freed LEB %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*)* @run_gc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_gc(%struct.ubifs_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ubifs_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %3, align 8
  %6 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %7 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %6, i32 0, i32 0
  %8 = call i32 @down_read(i32* %7)
  %9 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %10 = call i32 @ubifs_garbage_collect(%struct.ubifs_info* %9, i32 1)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %12 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %11, i32 0, i32 0
  %13 = call i32 @up_read(i32* %12)
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %29

18:                                               ; preds = %1
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @dbg_budg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @ubifs_return_leb(%struct.ubifs_info* %21, i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %29

28:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %26, %16
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @ubifs_garbage_collect(%struct.ubifs_info*, i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @dbg_budg(i8*, i32) #1

declare dso_local i32 @ubifs_return_leb(%struct.ubifs_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
