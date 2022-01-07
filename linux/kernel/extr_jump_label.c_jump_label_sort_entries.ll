; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_jump_label.c_jump_label_sort_entries.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_jump_label.c_jump_label_sort_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jump_entry = type { i32 }

@CONFIG_HAVE_ARCH_JUMP_LABEL_RELATIVE = common dso_local global i32 0, align 4
@jump_label_swap = common dso_local global i8* null, align 8
@jump_label_cmp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jump_entry*, %struct.jump_entry*)* @jump_label_sort_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jump_label_sort_entries(%struct.jump_entry* %0, %struct.jump_entry* %1) #0 {
  %3 = alloca %struct.jump_entry*, align 8
  %4 = alloca %struct.jump_entry*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %struct.jump_entry* %0, %struct.jump_entry** %3, align 8
  store %struct.jump_entry* %1, %struct.jump_entry** %4, align 8
  store i8* null, i8** %6, align 8
  %7 = load i32, i32* @CONFIG_HAVE_ARCH_JUMP_LABEL_RELATIVE, align 4
  %8 = call i64 @IS_ENABLED(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i8*, i8** @jump_label_swap, align 8
  store i8* %11, i8** %6, align 8
  br label %12

12:                                               ; preds = %10, %2
  %13 = load %struct.jump_entry*, %struct.jump_entry** %4, align 8
  %14 = ptrtoint %struct.jump_entry* %13 to i64
  %15 = load %struct.jump_entry*, %struct.jump_entry** %3, align 8
  %16 = ptrtoint %struct.jump_entry* %15 to i64
  %17 = sub i64 %14, %16
  %18 = udiv i64 %17, 4
  store i64 %18, i64* %5, align 8
  %19 = load %struct.jump_entry*, %struct.jump_entry** %3, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load i32, i32* @jump_label_cmp, align 4
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @sort(%struct.jump_entry* %19, i64 %20, i32 4, i32 %21, i8* %22)
  ret void
}

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @sort(%struct.jump_entry*, i64, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
