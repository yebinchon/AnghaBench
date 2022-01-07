; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_sidtab.c_sidtab_init.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_sidtab.c_sidtab_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sidtab = type { i32, i32*, i64, %struct.TYPE_2__*, i32*, i32 }
%struct.TYPE_2__ = type { i64 }

@SIDTAB_RCACHE_SIZE = common dso_local global i64 0, align 8
@SIDTAB_MAX = common dso_local global i32 0, align 4
@SECINITSID_NUM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sidtab_init(%struct.sidtab* %0) #0 {
  %2 = alloca %struct.sidtab*, align 8
  %3 = alloca i64, align 8
  store %struct.sidtab* %0, %struct.sidtab** %2, align 8
  %4 = load %struct.sidtab*, %struct.sidtab** %2, align 8
  %5 = getelementptr inbounds %struct.sidtab, %struct.sidtab* %4, i32 0, i32 5
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @memset(i32 %6, i32 0, i32 4)
  store i64 0, i64* %3, align 8
  br label %8

8:                                                ; preds = %19, %1
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @SIDTAB_RCACHE_SIZE, align 8
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %12, label %22

12:                                               ; preds = %8
  %13 = load i32, i32* @SIDTAB_MAX, align 4
  %14 = load %struct.sidtab*, %struct.sidtab** %2, align 8
  %15 = getelementptr inbounds %struct.sidtab, %struct.sidtab* %14, i32 0, i32 4
  %16 = load i32*, i32** %15, align 8
  %17 = load i64, i64* %3, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  store i32 %13, i32* %18, align 4
  br label %19

19:                                               ; preds = %12
  %20 = load i64, i64* %3, align 8
  %21 = add i64 %20, 1
  store i64 %21, i64* %3, align 8
  br label %8

22:                                               ; preds = %8
  store i64 0, i64* %3, align 8
  br label %23

23:                                               ; preds = %34, %22
  %24 = load i64, i64* %3, align 8
  %25 = load i64, i64* @SECINITSID_NUM, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %23
  %28 = load %struct.sidtab*, %struct.sidtab** %2, align 8
  %29 = getelementptr inbounds %struct.sidtab, %struct.sidtab* %28, i32 0, i32 3
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i64, i64* %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  br label %34

34:                                               ; preds = %27
  %35 = load i64, i64* %3, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %3, align 8
  br label %23

37:                                               ; preds = %23
  %38 = load %struct.sidtab*, %struct.sidtab** %2, align 8
  %39 = getelementptr inbounds %struct.sidtab, %struct.sidtab* %38, i32 0, i32 2
  store i64 0, i64* %39, align 8
  %40 = load %struct.sidtab*, %struct.sidtab** %2, align 8
  %41 = getelementptr inbounds %struct.sidtab, %struct.sidtab* %40, i32 0, i32 1
  store i32* null, i32** %41, align 8
  %42 = load %struct.sidtab*, %struct.sidtab** %2, align 8
  %43 = getelementptr inbounds %struct.sidtab, %struct.sidtab* %42, i32 0, i32 0
  %44 = call i32 @spin_lock_init(i32* %43)
  ret i32 0
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
