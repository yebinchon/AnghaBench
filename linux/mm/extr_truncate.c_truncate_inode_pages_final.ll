; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_truncate.c_truncate_inode_pages_final.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_truncate.c_truncate_inode_pages_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i64, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @truncate_inode_pages_final(%struct.address_space* %0) #0 {
  %2 = alloca %struct.address_space*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.address_space* %0, %struct.address_space** %2, align 8
  %5 = load %struct.address_space*, %struct.address_space** %2, align 8
  %6 = call i32 @mapping_set_exiting(%struct.address_space* %5)
  %7 = load %struct.address_space*, %struct.address_space** %2, align 8
  %8 = getelementptr inbounds %struct.address_space, %struct.address_space* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %4, align 8
  %10 = call i32 (...) @smp_rmb()
  %11 = load %struct.address_space*, %struct.address_space** %2, align 8
  %12 = getelementptr inbounds %struct.address_space, %struct.address_space* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %3, align 8
  %14 = load i64, i64* %4, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i64, i64* %3, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %16, %1
  %20 = load %struct.address_space*, %struct.address_space** %2, align 8
  %21 = getelementptr inbounds %struct.address_space, %struct.address_space* %20, i32 0, i32 2
  %22 = call i32 @xa_lock_irq(i32* %21)
  %23 = load %struct.address_space*, %struct.address_space** %2, align 8
  %24 = getelementptr inbounds %struct.address_space, %struct.address_space* %23, i32 0, i32 2
  %25 = call i32 @xa_unlock_irq(i32* %24)
  br label %26

26:                                               ; preds = %19, %16
  %27 = load %struct.address_space*, %struct.address_space** %2, align 8
  %28 = call i32 @truncate_inode_pages(%struct.address_space* %27, i32 0)
  ret void
}

declare dso_local i32 @mapping_set_exiting(%struct.address_space*) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i32 @xa_lock_irq(i32*) #1

declare dso_local i32 @xa_unlock_irq(i32*) #1

declare dso_local i32 @truncate_inode_pages(%struct.address_space*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
