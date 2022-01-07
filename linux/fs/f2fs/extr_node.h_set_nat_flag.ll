; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_node.h_set_nat_flag.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_node.h_set_nat_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nat_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nat_entry*, i32, i32)* @set_nat_flag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_nat_flag(%struct.nat_entry* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nat_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store %struct.nat_entry* %0, %struct.nat_entry** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = shl i32 1, %8
  %10 = trunc i32 %9 to i8
  store i8 %10, i8* %7, align 1
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %3
  %14 = load i8, i8* %7, align 1
  %15 = zext i8 %14 to i32
  %16 = load %struct.nat_entry*, %struct.nat_entry** %4, align 8
  %17 = getelementptr inbounds %struct.nat_entry, %struct.nat_entry* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = or i32 %20, %15
  %22 = trunc i32 %21 to i8
  store i8 %22, i8* %18, align 1
  br label %34

23:                                               ; preds = %3
  %24 = load i8, i8* %7, align 1
  %25 = zext i8 %24 to i32
  %26 = xor i32 %25, -1
  %27 = load %struct.nat_entry*, %struct.nat_entry** %4, align 8
  %28 = getelementptr inbounds %struct.nat_entry, %struct.nat_entry* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = and i32 %31, %26
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* %29, align 1
  br label %34

34:                                               ; preds = %23, %13
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
