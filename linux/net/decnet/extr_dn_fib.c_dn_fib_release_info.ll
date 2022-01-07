; ModuleID = '/home/carl/AnghaBench/linux/net/decnet/extr_dn_fib.c_dn_fib_release_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/decnet/extr_dn_fib.c_dn_fib_release_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dn_fib_info = type { i64, i32, %struct.dn_fib_info*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.dn_fib_info* }

@dn_fib_info_lock = common dso_local global i32 0, align 4
@dn_fib_info_list = common dso_local global %struct.dn_fib_info* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dn_fib_release_info(%struct.dn_fib_info* %0) #0 {
  %2 = alloca %struct.dn_fib_info*, align 8
  store %struct.dn_fib_info* %0, %struct.dn_fib_info** %2, align 8
  %3 = call i32 @spin_lock(i32* @dn_fib_info_lock)
  %4 = load %struct.dn_fib_info*, %struct.dn_fib_info** %2, align 8
  %5 = icmp ne %struct.dn_fib_info* %4, null
  br i1 %5, label %6, label %51

6:                                                ; preds = %1
  %7 = load %struct.dn_fib_info*, %struct.dn_fib_info** %2, align 8
  %8 = getelementptr inbounds %struct.dn_fib_info, %struct.dn_fib_info* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = add nsw i64 %9, -1
  store i64 %10, i64* %8, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %51

12:                                               ; preds = %6
  %13 = load %struct.dn_fib_info*, %struct.dn_fib_info** %2, align 8
  %14 = getelementptr inbounds %struct.dn_fib_info, %struct.dn_fib_info* %13, i32 0, i32 2
  %15 = load %struct.dn_fib_info*, %struct.dn_fib_info** %14, align 8
  %16 = icmp ne %struct.dn_fib_info* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %12
  %18 = load %struct.dn_fib_info*, %struct.dn_fib_info** %2, align 8
  %19 = getelementptr inbounds %struct.dn_fib_info, %struct.dn_fib_info* %18, i32 0, i32 3
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load %struct.dn_fib_info*, %struct.dn_fib_info** %2, align 8
  %22 = getelementptr inbounds %struct.dn_fib_info, %struct.dn_fib_info* %21, i32 0, i32 2
  %23 = load %struct.dn_fib_info*, %struct.dn_fib_info** %22, align 8
  %24 = getelementptr inbounds %struct.dn_fib_info, %struct.dn_fib_info* %23, i32 0, i32 3
  store %struct.TYPE_2__* %20, %struct.TYPE_2__** %24, align 8
  br label %25

25:                                               ; preds = %17, %12
  %26 = load %struct.dn_fib_info*, %struct.dn_fib_info** %2, align 8
  %27 = getelementptr inbounds %struct.dn_fib_info, %struct.dn_fib_info* %26, i32 0, i32 3
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = icmp ne %struct.TYPE_2__* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load %struct.dn_fib_info*, %struct.dn_fib_info** %2, align 8
  %32 = getelementptr inbounds %struct.dn_fib_info, %struct.dn_fib_info* %31, i32 0, i32 2
  %33 = load %struct.dn_fib_info*, %struct.dn_fib_info** %32, align 8
  %34 = load %struct.dn_fib_info*, %struct.dn_fib_info** %2, align 8
  %35 = getelementptr inbounds %struct.dn_fib_info, %struct.dn_fib_info* %34, i32 0, i32 3
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store %struct.dn_fib_info* %33, %struct.dn_fib_info** %37, align 8
  br label %38

38:                                               ; preds = %30, %25
  %39 = load %struct.dn_fib_info*, %struct.dn_fib_info** %2, align 8
  %40 = load %struct.dn_fib_info*, %struct.dn_fib_info** @dn_fib_info_list, align 8
  %41 = icmp eq %struct.dn_fib_info* %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load %struct.dn_fib_info*, %struct.dn_fib_info** %2, align 8
  %44 = getelementptr inbounds %struct.dn_fib_info, %struct.dn_fib_info* %43, i32 0, i32 2
  %45 = load %struct.dn_fib_info*, %struct.dn_fib_info** %44, align 8
  store %struct.dn_fib_info* %45, %struct.dn_fib_info** @dn_fib_info_list, align 8
  br label %46

46:                                               ; preds = %42, %38
  %47 = load %struct.dn_fib_info*, %struct.dn_fib_info** %2, align 8
  %48 = getelementptr inbounds %struct.dn_fib_info, %struct.dn_fib_info* %47, i32 0, i32 1
  store i32 1, i32* %48, align 8
  %49 = load %struct.dn_fib_info*, %struct.dn_fib_info** %2, align 8
  %50 = call i32 @dn_fib_info_put(%struct.dn_fib_info* %49)
  br label %51

51:                                               ; preds = %46, %6, %1
  %52 = call i32 @spin_unlock(i32* @dn_fib_info_lock)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @dn_fib_info_put(%struct.dn_fib_info*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
