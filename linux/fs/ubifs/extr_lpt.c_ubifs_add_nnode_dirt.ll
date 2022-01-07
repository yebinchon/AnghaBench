; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt.c_ubifs_add_nnode_dirt.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt.c_ubifs_add_nnode_dirt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, i32, i32, i32 }
%struct.ubifs_nnode = type { i64, %struct.TYPE_2__*, %struct.ubifs_nnode* }
%struct.TYPE_2__ = type { i32 }

@LTAB_DIRTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ubifs_add_nnode_dirt(%struct.ubifs_info* %0, %struct.ubifs_nnode* %1) #0 {
  %3 = alloca %struct.ubifs_info*, align 8
  %4 = alloca %struct.ubifs_nnode*, align 8
  %5 = alloca %struct.ubifs_nnode*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %3, align 8
  store %struct.ubifs_nnode* %1, %struct.ubifs_nnode** %4, align 8
  %6 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %4, align 8
  %7 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %6, i32 0, i32 2
  %8 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %7, align 8
  store %struct.ubifs_nnode* %8, %struct.ubifs_nnode** %5, align 8
  %9 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %5, align 8
  %10 = icmp ne %struct.ubifs_nnode* %9, null
  br i1 %10, label %11, label %26

11:                                               ; preds = %2
  %12 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %13 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %5, align 8
  %14 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %4, align 8
  %17 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %23 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ubifs_add_lpt_dirt(%struct.ubifs_info* %12, i32 %21, i32 %24)
  br label %56

26:                                               ; preds = %2
  %27 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %28 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %29 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %32 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ubifs_add_lpt_dirt(%struct.ubifs_info* %27, i32 %30, i32 %33)
  %35 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %36 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @LTAB_DIRTY, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %55, label %41

41:                                               ; preds = %26
  %42 = load i32, i32* @LTAB_DIRTY, align 4
  %43 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %44 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  %47 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %48 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %49 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %52 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ubifs_add_lpt_dirt(%struct.ubifs_info* %47, i32 %50, i32 %53)
  br label %55

55:                                               ; preds = %41, %26
  br label %56

56:                                               ; preds = %55, %11
  ret void
}

declare dso_local i32 @ubifs_add_lpt_dirt(%struct.ubifs_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
