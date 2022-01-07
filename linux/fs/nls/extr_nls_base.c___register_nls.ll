; ModuleID = '/home/carl/AnghaBench/linux/fs/nls/extr_nls_base.c___register_nls.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nls/extr_nls_base.c___register_nls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nls_table = type { %struct.nls_table*, %struct.module* }
%struct.module = type { i32 }

@tables = common dso_local global %struct.nls_table* null, align 8
@EBUSY = common dso_local global i32 0, align 4
@nls_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__register_nls(%struct.nls_table* %0, %struct.module* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nls_table*, align 8
  %5 = alloca %struct.module*, align 8
  %6 = alloca %struct.nls_table**, align 8
  store %struct.nls_table* %0, %struct.nls_table** %4, align 8
  store %struct.module* %1, %struct.module** %5, align 8
  store %struct.nls_table** @tables, %struct.nls_table*** %6, align 8
  %7 = load %struct.nls_table*, %struct.nls_table** %4, align 8
  %8 = getelementptr inbounds %struct.nls_table, %struct.nls_table* %7, i32 0, i32 0
  %9 = load %struct.nls_table*, %struct.nls_table** %8, align 8
  %10 = icmp ne %struct.nls_table* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @EBUSY, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %42

14:                                               ; preds = %2
  %15 = load %struct.module*, %struct.module** %5, align 8
  %16 = load %struct.nls_table*, %struct.nls_table** %4, align 8
  %17 = getelementptr inbounds %struct.nls_table, %struct.nls_table* %16, i32 0, i32 1
  store %struct.module* %15, %struct.module** %17, align 8
  %18 = call i32 @spin_lock(i32* @nls_lock)
  br label %19

19:                                               ; preds = %32, %14
  %20 = load %struct.nls_table**, %struct.nls_table*** %6, align 8
  %21 = load %struct.nls_table*, %struct.nls_table** %20, align 8
  %22 = icmp ne %struct.nls_table* %21, null
  br i1 %22, label %23, label %36

23:                                               ; preds = %19
  %24 = load %struct.nls_table*, %struct.nls_table** %4, align 8
  %25 = load %struct.nls_table**, %struct.nls_table*** %6, align 8
  %26 = load %struct.nls_table*, %struct.nls_table** %25, align 8
  %27 = icmp eq %struct.nls_table* %24, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = call i32 @spin_unlock(i32* @nls_lock)
  %30 = load i32, i32* @EBUSY, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %42

32:                                               ; preds = %23
  %33 = load %struct.nls_table**, %struct.nls_table*** %6, align 8
  %34 = load %struct.nls_table*, %struct.nls_table** %33, align 8
  %35 = getelementptr inbounds %struct.nls_table, %struct.nls_table* %34, i32 0, i32 0
  store %struct.nls_table** %35, %struct.nls_table*** %6, align 8
  br label %19

36:                                               ; preds = %19
  %37 = load %struct.nls_table*, %struct.nls_table** @tables, align 8
  %38 = load %struct.nls_table*, %struct.nls_table** %4, align 8
  %39 = getelementptr inbounds %struct.nls_table, %struct.nls_table* %38, i32 0, i32 0
  store %struct.nls_table* %37, %struct.nls_table** %39, align 8
  %40 = load %struct.nls_table*, %struct.nls_table** %4, align 8
  store %struct.nls_table* %40, %struct.nls_table** @tables, align 8
  %41 = call i32 @spin_unlock(i32* @nls_lock)
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %36, %28, %11
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
