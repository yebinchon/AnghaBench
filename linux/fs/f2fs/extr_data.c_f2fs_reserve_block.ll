; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c_f2fs_reserve_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c_f2fs_reserve_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dnode_of_data = type { i64, i64 }

@ALLOC_NODE = common dso_local global i32 0, align 4
@NULL_ADDR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f2fs_reserve_block(%struct.dnode_of_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dnode_of_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dnode_of_data* %0, %struct.dnode_of_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.dnode_of_data*, %struct.dnode_of_data** %4, align 8
  %9 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i32 0, i32 1
  store i32 %13, i32* %6, align 4
  %14 = load %struct.dnode_of_data*, %struct.dnode_of_data** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @ALLOC_NODE, align 4
  %17 = call i32 @f2fs_get_dnode_of_data(%struct.dnode_of_data* %14, i32 %15, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %3, align 4
  br label %42

22:                                               ; preds = %2
  %23 = load %struct.dnode_of_data*, %struct.dnode_of_data** %4, align 8
  %24 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @NULL_ADDR, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load %struct.dnode_of_data*, %struct.dnode_of_data** %4, align 8
  %30 = call i32 @f2fs_reserve_new_block(%struct.dnode_of_data* %29)
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %28, %22
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34, %31
  %38 = load %struct.dnode_of_data*, %struct.dnode_of_data** %4, align 8
  %39 = call i32 @f2fs_put_dnode(%struct.dnode_of_data* %38)
  br label %40

40:                                               ; preds = %37, %34
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %40, %20
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @f2fs_get_dnode_of_data(%struct.dnode_of_data*, i32, i32) #1

declare dso_local i32 @f2fs_reserve_new_block(%struct.dnode_of_data*) #1

declare dso_local i32 @f2fs_put_dnode(%struct.dnode_of_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
