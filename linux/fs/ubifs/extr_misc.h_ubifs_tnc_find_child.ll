; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_misc.h_ubifs_tnc_find_child.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_misc.h_ubifs_tnc_find_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_znode = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ubifs_znode* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ubifs_znode* (%struct.ubifs_znode*, i32)* @ubifs_tnc_find_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ubifs_znode* @ubifs_tnc_find_child(%struct.ubifs_znode* %0, i32 %1) #0 {
  %3 = alloca %struct.ubifs_znode*, align 8
  %4 = alloca %struct.ubifs_znode*, align 8
  %5 = alloca i32, align 4
  store %struct.ubifs_znode* %0, %struct.ubifs_znode** %4, align 8
  store i32 %1, i32* %5, align 4
  br label %6

6:                                                ; preds = %31, %2
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.ubifs_znode*, %struct.ubifs_znode** %4, align 8
  %9 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %34

12:                                               ; preds = %6
  %13 = load %struct.ubifs_znode*, %struct.ubifs_znode** %4, align 8
  %14 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.ubifs_znode*, %struct.ubifs_znode** %19, align 8
  %21 = icmp ne %struct.ubifs_znode* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %12
  %23 = load %struct.ubifs_znode*, %struct.ubifs_znode** %4, align 8
  %24 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load %struct.ubifs_znode*, %struct.ubifs_znode** %29, align 8
  store %struct.ubifs_znode* %30, %struct.ubifs_znode** %3, align 8
  br label %35

31:                                               ; preds = %12
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %6

34:                                               ; preds = %6
  store %struct.ubifs_znode* null, %struct.ubifs_znode** %3, align 8
  br label %35

35:                                               ; preds = %34, %22
  %36 = load %struct.ubifs_znode*, %struct.ubifs_znode** %3, align 8
  ret %struct.ubifs_znode* %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
