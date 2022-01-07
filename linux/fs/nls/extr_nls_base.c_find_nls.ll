; ModuleID = '/home/carl/AnghaBench/linux/fs/nls/extr_nls_base.c_find_nls.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nls/extr_nls_base.c_find_nls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nls_table = type { i32, i64, i64, %struct.nls_table* }

@nls_lock = common dso_local global i32 0, align 4
@tables = common dso_local global %struct.nls_table* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nls_table* (i8*)* @find_nls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nls_table* @find_nls(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.nls_table*, align 8
  store i8* %0, i8** %2, align 8
  %4 = call i32 @spin_lock(i32* @nls_lock)
  %5 = load %struct.nls_table*, %struct.nls_table** @tables, align 8
  store %struct.nls_table* %5, %struct.nls_table** %3, align 8
  br label %6

6:                                                ; preds = %31, %1
  %7 = load %struct.nls_table*, %struct.nls_table** %3, align 8
  %8 = icmp ne %struct.nls_table* %7, null
  br i1 %8, label %9, label %35

9:                                                ; preds = %6
  %10 = load %struct.nls_table*, %struct.nls_table** %3, align 8
  %11 = getelementptr inbounds %struct.nls_table, %struct.nls_table* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = call i32 @strcmp(i64 %12, i8* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %9
  br label %35

17:                                               ; preds = %9
  %18 = load %struct.nls_table*, %struct.nls_table** %3, align 8
  %19 = getelementptr inbounds %struct.nls_table, %struct.nls_table* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = load %struct.nls_table*, %struct.nls_table** %3, align 8
  %24 = getelementptr inbounds %struct.nls_table, %struct.nls_table* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i8*, i8** %2, align 8
  %27 = call i32 @strcmp(i64 %25, i8* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %22
  br label %35

30:                                               ; preds = %22, %17
  br label %31

31:                                               ; preds = %30
  %32 = load %struct.nls_table*, %struct.nls_table** %3, align 8
  %33 = getelementptr inbounds %struct.nls_table, %struct.nls_table* %32, i32 0, i32 3
  %34 = load %struct.nls_table*, %struct.nls_table** %33, align 8
  store %struct.nls_table* %34, %struct.nls_table** %3, align 8
  br label %6

35:                                               ; preds = %29, %16, %6
  %36 = load %struct.nls_table*, %struct.nls_table** %3, align 8
  %37 = icmp ne %struct.nls_table* %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = load %struct.nls_table*, %struct.nls_table** %3, align 8
  %40 = getelementptr inbounds %struct.nls_table, %struct.nls_table* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @try_module_get(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %38
  store %struct.nls_table* null, %struct.nls_table** %3, align 8
  br label %45

45:                                               ; preds = %44, %38, %35
  %46 = call i32 @spin_unlock(i32* @nls_lock)
  %47 = load %struct.nls_table*, %struct.nls_table** %3, align 8
  ret %struct.nls_table* %47
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @strcmp(i64, i8*) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
