; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_file.c_set_close_on_exec.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_file.c_set_close_on_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.files_struct* }
%struct.files_struct = type { i32 }
%struct.fdtable = type { i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_close_on_exec(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.files_struct*, align 8
  %6 = alloca %struct.fdtable*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.files_struct*, %struct.files_struct** %8, align 8
  store %struct.files_struct* %9, %struct.files_struct** %5, align 8
  %10 = load %struct.files_struct*, %struct.files_struct** %5, align 8
  %11 = getelementptr inbounds %struct.files_struct, %struct.files_struct* %10, i32 0, i32 0
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.files_struct*, %struct.files_struct** %5, align 8
  %14 = call %struct.fdtable* @files_fdtable(%struct.files_struct* %13)
  store %struct.fdtable* %14, %struct.fdtable** %6, align 8
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.fdtable*, %struct.fdtable** %6, align 8
  %20 = call i32 @__set_close_on_exec(i32 %18, %struct.fdtable* %19)
  br label %25

21:                                               ; preds = %2
  %22 = load i32, i32* %3, align 4
  %23 = load %struct.fdtable*, %struct.fdtable** %6, align 8
  %24 = call i32 @__clear_close_on_exec(i32 %22, %struct.fdtable* %23)
  br label %25

25:                                               ; preds = %21, %17
  %26 = load %struct.files_struct*, %struct.files_struct** %5, align 8
  %27 = getelementptr inbounds %struct.files_struct, %struct.files_struct* %26, i32 0, i32 0
  %28 = call i32 @spin_unlock(i32* %27)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.fdtable* @files_fdtable(%struct.files_struct*) #1

declare dso_local i32 @__set_close_on_exec(i32, %struct.fdtable*) #1

declare dso_local i32 @__clear_close_on_exec(i32, %struct.fdtable*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
