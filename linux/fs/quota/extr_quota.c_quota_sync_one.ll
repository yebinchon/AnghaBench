; ModuleID = '/home/carl/AnghaBench/linux/fs/quota/extr_quota.c_quota_sync_one.c'
source_filename = "/home/carl/AnghaBench/linux/fs/quota/extr_quota.c_quota_sync_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.super_block*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*, i8*)* @quota_sync_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @quota_sync_one(%struct.super_block* %0, i8* %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to i32*
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %5, align 4
  %9 = load %struct.super_block*, %struct.super_block** %3, align 8
  %10 = getelementptr inbounds %struct.super_block, %struct.super_block* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  br i1 %12, label %13, label %37

13:                                               ; preds = %2
  %14 = load %struct.super_block*, %struct.super_block** %3, align 8
  %15 = getelementptr inbounds %struct.super_block, %struct.super_block* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)** %17, align 8
  %19 = icmp ne i32 (%struct.super_block*, i32)* %18, null
  br i1 %19, label %20, label %37

20:                                               ; preds = %13
  %21 = load %struct.super_block*, %struct.super_block** %3, align 8
  %22 = getelementptr inbounds %struct.super_block, %struct.super_block* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = shl i32 1, %24
  %26 = and i32 %23, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %20
  %29 = load %struct.super_block*, %struct.super_block** %3, align 8
  %30 = getelementptr inbounds %struct.super_block, %struct.super_block* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)** %32, align 8
  %34 = load %struct.super_block*, %struct.super_block** %3, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 %33(%struct.super_block* %34, i32 %35)
  br label %37

37:                                               ; preds = %28, %20, %13, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
