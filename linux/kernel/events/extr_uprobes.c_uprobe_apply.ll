; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_uprobes.c_uprobe_apply.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_uprobes.c_uprobe_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.uprobe_consumer = type { %struct.uprobe_consumer* }
%struct.uprobe = type { i32, %struct.uprobe_consumer* }

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uprobe_apply(%struct.inode* %0, i32 %1, %struct.uprobe_consumer* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.uprobe_consumer*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.uprobe*, align 8
  %11 = alloca %struct.uprobe_consumer*, align 8
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.uprobe_consumer* %2, %struct.uprobe_consumer** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* @ENOENT, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %12, align 4
  %15 = load %struct.inode*, %struct.inode** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call %struct.uprobe* @find_uprobe(%struct.inode* %15, i32 %16)
  store %struct.uprobe* %17, %struct.uprobe** %10, align 8
  %18 = load %struct.uprobe*, %struct.uprobe** %10, align 8
  %19 = icmp ne %struct.uprobe* %18, null
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i64 @WARN_ON(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* %12, align 4
  store i32 %25, i32* %5, align 4
  br label %67

26:                                               ; preds = %4
  %27 = load %struct.uprobe*, %struct.uprobe** %10, align 8
  %28 = getelementptr inbounds %struct.uprobe, %struct.uprobe* %27, i32 0, i32 0
  %29 = call i32 @down_write(i32* %28)
  %30 = load %struct.uprobe*, %struct.uprobe** %10, align 8
  %31 = getelementptr inbounds %struct.uprobe, %struct.uprobe* %30, i32 0, i32 1
  %32 = load %struct.uprobe_consumer*, %struct.uprobe_consumer** %31, align 8
  store %struct.uprobe_consumer* %32, %struct.uprobe_consumer** %11, align 8
  br label %33

33:                                               ; preds = %43, %26
  %34 = load %struct.uprobe_consumer*, %struct.uprobe_consumer** %11, align 8
  %35 = icmp ne %struct.uprobe_consumer* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load %struct.uprobe_consumer*, %struct.uprobe_consumer** %11, align 8
  %38 = load %struct.uprobe_consumer*, %struct.uprobe_consumer** %8, align 8
  %39 = icmp ne %struct.uprobe_consumer* %37, %38
  br label %40

40:                                               ; preds = %36, %33
  %41 = phi i1 [ false, %33 ], [ %39, %36 ]
  br i1 %41, label %42, label %47

42:                                               ; preds = %40
  br label %43

43:                                               ; preds = %42
  %44 = load %struct.uprobe_consumer*, %struct.uprobe_consumer** %11, align 8
  %45 = getelementptr inbounds %struct.uprobe_consumer, %struct.uprobe_consumer* %44, i32 0, i32 0
  %46 = load %struct.uprobe_consumer*, %struct.uprobe_consumer** %45, align 8
  store %struct.uprobe_consumer* %46, %struct.uprobe_consumer** %11, align 8
  br label %33

47:                                               ; preds = %40
  %48 = load %struct.uprobe_consumer*, %struct.uprobe_consumer** %11, align 8
  %49 = icmp ne %struct.uprobe_consumer* %48, null
  br i1 %49, label %50, label %60

50:                                               ; preds = %47
  %51 = load %struct.uprobe*, %struct.uprobe** %10, align 8
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load %struct.uprobe_consumer*, %struct.uprobe_consumer** %8, align 8
  br label %57

56:                                               ; preds = %50
  br label %57

57:                                               ; preds = %56, %54
  %58 = phi %struct.uprobe_consumer* [ %55, %54 ], [ null, %56 ]
  %59 = call i32 @register_for_each_vma(%struct.uprobe* %51, %struct.uprobe_consumer* %58)
  store i32 %59, i32* %12, align 4
  br label %60

60:                                               ; preds = %57, %47
  %61 = load %struct.uprobe*, %struct.uprobe** %10, align 8
  %62 = getelementptr inbounds %struct.uprobe, %struct.uprobe* %61, i32 0, i32 0
  %63 = call i32 @up_write(i32* %62)
  %64 = load %struct.uprobe*, %struct.uprobe** %10, align 8
  %65 = call i32 @put_uprobe(%struct.uprobe* %64)
  %66 = load i32, i32* %12, align 4
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %60, %24
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local %struct.uprobe* @find_uprobe(%struct.inode*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @register_for_each_vma(%struct.uprobe*, %struct.uprobe_consumer*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @put_uprobe(%struct.uprobe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
