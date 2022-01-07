; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_jump_label.c_addr_conflict.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_jump_label.c_addr_conflict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jump_entry = type { i32 }

@JUMP_LABEL_NOP_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jump_entry*, i8*, i8*)* @addr_conflict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addr_conflict(%struct.jump_entry* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.jump_entry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.jump_entry* %0, %struct.jump_entry** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load %struct.jump_entry*, %struct.jump_entry** %5, align 8
  %9 = call i64 @jump_entry_code(%struct.jump_entry* %8)
  %10 = load i8*, i8** %7, align 8
  %11 = ptrtoint i8* %10 to i64
  %12 = icmp ule i64 %9, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %3
  %14 = load %struct.jump_entry*, %struct.jump_entry** %5, align 8
  %15 = call i64 @jump_entry_code(%struct.jump_entry* %14)
  %16 = load i64, i64* @JUMP_LABEL_NOP_SIZE, align 8
  %17 = add i64 %15, %16
  %18 = load i8*, i8** %6, align 8
  %19 = ptrtoint i8* %18 to i64
  %20 = icmp ugt i64 %17, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  store i32 1, i32* %4, align 4
  br label %23

22:                                               ; preds = %13, %3
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %22, %21
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

declare dso_local i64 @jump_entry_code(%struct.jump_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
