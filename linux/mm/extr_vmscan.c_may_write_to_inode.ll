; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_vmscan.c_may_write_to_inode.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_vmscan.c_may_write_to_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }
%struct.inode = type { i32 }
%struct.scan_control = type { i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@PF_SWAPWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.scan_control*)* @may_write_to_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @may_write_to_inode(%struct.inode* %0, %struct.scan_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.scan_control*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.scan_control* %1, %struct.scan_control** %5, align 8
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @PF_SWAPWRITE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %27

13:                                               ; preds = %2
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = call i32 @inode_write_congested(%struct.inode* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  store i32 1, i32* %3, align 4
  br label %27

18:                                               ; preds = %13
  %19 = load %struct.inode*, %struct.inode** %4, align 8
  %20 = call i64 @inode_to_bdi(%struct.inode* %19)
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  store i32 1, i32* %3, align 4
  br label %27

26:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %26, %25, %17, %12
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @inode_write_congested(%struct.inode*) #1

declare dso_local i64 @inode_to_bdi(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
