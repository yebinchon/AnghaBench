; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_jump_label.c_jump_label_cmp.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_jump_label.c_jump_label_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jump_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @jump_label_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jump_label_cmp(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.jump_entry*, align 8
  %7 = alloca %struct.jump_entry*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.jump_entry*
  store %struct.jump_entry* %9, %struct.jump_entry** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.jump_entry*
  store %struct.jump_entry* %11, %struct.jump_entry** %7, align 8
  %12 = load %struct.jump_entry*, %struct.jump_entry** %6, align 8
  %13 = call i64 @jump_entry_key(%struct.jump_entry* %12)
  %14 = load %struct.jump_entry*, %struct.jump_entry** %7, align 8
  %15 = call i64 @jump_entry_key(%struct.jump_entry* %14)
  %16 = icmp slt i64 %13, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %40

18:                                               ; preds = %2
  %19 = load %struct.jump_entry*, %struct.jump_entry** %6, align 8
  %20 = call i64 @jump_entry_key(%struct.jump_entry* %19)
  %21 = load %struct.jump_entry*, %struct.jump_entry** %7, align 8
  %22 = call i64 @jump_entry_key(%struct.jump_entry* %21)
  %23 = icmp sgt i64 %20, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 1, i32* %3, align 4
  br label %40

25:                                               ; preds = %18
  %26 = load %struct.jump_entry*, %struct.jump_entry** %6, align 8
  %27 = call i64 @jump_entry_code(%struct.jump_entry* %26)
  %28 = load %struct.jump_entry*, %struct.jump_entry** %7, align 8
  %29 = call i64 @jump_entry_code(%struct.jump_entry* %28)
  %30 = icmp slt i64 %27, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i32 -1, i32* %3, align 4
  br label %40

32:                                               ; preds = %25
  %33 = load %struct.jump_entry*, %struct.jump_entry** %6, align 8
  %34 = call i64 @jump_entry_code(%struct.jump_entry* %33)
  %35 = load %struct.jump_entry*, %struct.jump_entry** %7, align 8
  %36 = call i64 @jump_entry_code(%struct.jump_entry* %35)
  %37 = icmp sgt i64 %34, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i32 1, i32* %3, align 4
  br label %40

39:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %38, %31, %24, %17
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i64 @jump_entry_key(%struct.jump_entry*) #1

declare dso_local i64 @jump_entry_code(%struct.jump_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
