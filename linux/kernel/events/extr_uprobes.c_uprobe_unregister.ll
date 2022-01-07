; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_uprobes.c_uprobe_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_uprobes.c_uprobe_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.uprobe_consumer = type { i32 }
%struct.uprobe = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uprobe_unregister(%struct.inode* %0, i32 %1, %struct.uprobe_consumer* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.uprobe_consumer*, align 8
  %7 = alloca %struct.uprobe*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.uprobe_consumer* %2, %struct.uprobe_consumer** %6, align 8
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.uprobe* @find_uprobe(%struct.inode* %8, i32 %9)
  store %struct.uprobe* %10, %struct.uprobe** %7, align 8
  %11 = load %struct.uprobe*, %struct.uprobe** %7, align 8
  %12 = icmp ne %struct.uprobe* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @WARN_ON(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %30

18:                                               ; preds = %3
  %19 = load %struct.uprobe*, %struct.uprobe** %7, align 8
  %20 = getelementptr inbounds %struct.uprobe, %struct.uprobe* %19, i32 0, i32 0
  %21 = call i32 @down_write(i32* %20)
  %22 = load %struct.uprobe*, %struct.uprobe** %7, align 8
  %23 = load %struct.uprobe_consumer*, %struct.uprobe_consumer** %6, align 8
  %24 = call i32 @__uprobe_unregister(%struct.uprobe* %22, %struct.uprobe_consumer* %23)
  %25 = load %struct.uprobe*, %struct.uprobe** %7, align 8
  %26 = getelementptr inbounds %struct.uprobe, %struct.uprobe* %25, i32 0, i32 0
  %27 = call i32 @up_write(i32* %26)
  %28 = load %struct.uprobe*, %struct.uprobe** %7, align 8
  %29 = call i32 @put_uprobe(%struct.uprobe* %28)
  br label %30

30:                                               ; preds = %18, %17
  ret void
}

declare dso_local %struct.uprobe* @find_uprobe(%struct.inode*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @__uprobe_unregister(%struct.uprobe*, %struct.uprobe_consumer*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @put_uprobe(%struct.uprobe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
