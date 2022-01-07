; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_inode.c_destroy_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_inode.c_destroy_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.super_operations* }
%struct.super_operations = type { i64, i32 (%struct.inode.0*)* }
%struct.inode.0 = type opaque

@i_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*)* @destroy_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.super_operations*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %4 = load %struct.inode*, %struct.inode** %2, align 8
  %5 = getelementptr inbounds %struct.inode, %struct.inode* %4, i32 0, i32 3
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.super_operations*, %struct.super_operations** %7, align 8
  store %struct.super_operations* %8, %struct.super_operations** %3, align 8
  %9 = load %struct.inode*, %struct.inode** %2, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 2
  %11 = call i32 @list_empty(i32* %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load %struct.inode*, %struct.inode** %2, align 8
  %17 = call i32 @__destroy_inode(%struct.inode* %16)
  %18 = load %struct.super_operations*, %struct.super_operations** %3, align 8
  %19 = getelementptr inbounds %struct.super_operations, %struct.super_operations* %18, i32 0, i32 1
  %20 = load i32 (%struct.inode.0*)*, i32 (%struct.inode.0*)** %19, align 8
  %21 = icmp ne i32 (%struct.inode.0*)* %20, null
  br i1 %21, label %22, label %35

22:                                               ; preds = %1
  %23 = load %struct.super_operations*, %struct.super_operations** %3, align 8
  %24 = getelementptr inbounds %struct.super_operations, %struct.super_operations* %23, i32 0, i32 1
  %25 = load i32 (%struct.inode.0*)*, i32 (%struct.inode.0*)** %24, align 8
  %26 = load %struct.inode*, %struct.inode** %2, align 8
  %27 = bitcast %struct.inode* %26 to %struct.inode.0*
  %28 = call i32 %25(%struct.inode.0* %27)
  %29 = load %struct.super_operations*, %struct.super_operations** %3, align 8
  %30 = getelementptr inbounds %struct.super_operations, %struct.super_operations* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %22
  br label %45

34:                                               ; preds = %22
  br label %35

35:                                               ; preds = %34, %1
  %36 = load %struct.super_operations*, %struct.super_operations** %3, align 8
  %37 = getelementptr inbounds %struct.super_operations, %struct.super_operations* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.inode*, %struct.inode** %2, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 1
  store i64 %38, i64* %40, align 8
  %41 = load %struct.inode*, %struct.inode** %2, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 0
  %43 = load i32, i32* @i_callback, align 4
  %44 = call i32 @call_rcu(i32* %42, i32 %43)
  br label %45

45:                                               ; preds = %35, %33
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @__destroy_inode(%struct.inode*) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
