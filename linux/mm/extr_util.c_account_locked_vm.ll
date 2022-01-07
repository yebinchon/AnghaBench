; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_util.c_account_locked_vm.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_util.c_account_locked_vm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }

@current = common dso_local global i32 0, align 4
@CAP_IPC_LOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @account_locked_vm(%struct.mm_struct* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i64, i64* %6, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %13 = icmp ne %struct.mm_struct* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %11, %3
  store i32 0, i32* %4, align 4
  br label %30

15:                                               ; preds = %11
  %16 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %17 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %16, i32 0, i32 0
  %18 = call i32 @down_write(i32* %17)
  %19 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @current, align 4
  %23 = load i32, i32* @CAP_IPC_LOCK, align 4
  %24 = call i32 @capable(i32 %23)
  %25 = call i32 @__account_locked_vm(%struct.mm_struct* %19, i64 %20, i32 %21, i32 %22, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %27 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %26, i32 0, i32 0
  %28 = call i32 @up_write(i32* %27)
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %15, %14
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @__account_locked_vm(%struct.mm_struct*, i64, i32, i32, i32) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
