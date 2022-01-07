; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_multiorder.c_multiorder_iteration_race.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_multiorder.c_multiorder_iteration_race.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xarray = type { i32 }

@_SC_NPROCESSORS_ONLN = common dso_local global i32 0, align 4
@creator_func = common dso_local global i32 0, align 4
@iterator_func = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xarray*)* @multiorder_iteration_race to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @multiorder_iteration_race(%struct.xarray* %0) #0 {
  %2 = alloca %struct.xarray*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.xarray* %0, %struct.xarray** %2, align 8
  %7 = load i32, i32* @_SC_NPROCESSORS_ONLN, align 4
  %8 = call i32 @sysconf(i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %4, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %5, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load %struct.xarray*, %struct.xarray** %2, align 8
  %15 = call i32 @pthread_create(i32* %13, i32* null, i32* @creator_func, %struct.xarray* %14)
  store i32 1, i32* %6, align 4
  br label %16

16:                                               ; preds = %26, %1
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %16
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %12, i64 %22
  %24 = load %struct.xarray*, %struct.xarray** %2, align 8
  %25 = call i32 @pthread_create(i32* %23, i32* null, i32* @iterator_func, %struct.xarray* %24)
  br label %26

26:                                               ; preds = %20
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %6, align 4
  br label %16

29:                                               ; preds = %16
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %40, %29
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %3, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %30
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %12, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @pthread_join(i32 %38, i32* null)
  br label %40

40:                                               ; preds = %34
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %30

43:                                               ; preds = %30
  %44 = load %struct.xarray*, %struct.xarray** %2, align 8
  %45 = call i32 @item_kill_tree(%struct.xarray* %44)
  %46 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %46)
  ret void
}

declare dso_local i32 @sysconf(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32*, %struct.xarray*) #1

declare dso_local i32 @pthread_join(i32, i32*) #1

declare dso_local i32 @item_kill_tree(%struct.xarray*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
