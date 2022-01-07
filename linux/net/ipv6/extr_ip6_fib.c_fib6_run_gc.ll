; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_fib.c_fib6_run_gc.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_fib.c_fib6_run_gc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.fib6_gc_args = type { i32, i64 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@fib6_age = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fib6_run_gc(i64 %0, %struct.net* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fib6_gc_args, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store %struct.net* %1, %struct.net** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = load %struct.net*, %struct.net** %5, align 8
  %13 = getelementptr inbounds %struct.net, %struct.net* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = call i32 @spin_lock_bh(i32* %14)
  br label %31

16:                                               ; preds = %3
  %17 = load %struct.net*, %struct.net** %5, align 8
  %18 = getelementptr inbounds %struct.net, %struct.net* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = call i32 @spin_trylock_bh(i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %16
  %23 = load %struct.net*, %struct.net** %5, align 8
  %24 = getelementptr inbounds %struct.net, %struct.net* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  %26 = load i64, i64* @jiffies, align 8
  %27 = load i64, i64* @HZ, align 8
  %28 = add i64 %26, %27
  %29 = call i32 @mod_timer(i32* %25, i64 %28)
  br label %83

30:                                               ; preds = %16
  br label %31

31:                                               ; preds = %30, %11
  %32 = load i64, i64* %4, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i64, i64* %4, align 8
  %36 = trunc i64 %35 to i32
  br label %43

37:                                               ; preds = %31
  %38 = load %struct.net*, %struct.net** %5, align 8
  %39 = getelementptr inbounds %struct.net, %struct.net* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  br label %43

43:                                               ; preds = %37, %34
  %44 = phi i32 [ %36, %34 ], [ %42, %37 ]
  %45 = getelementptr inbounds %struct.fib6_gc_args, %struct.fib6_gc_args* %7, i32 0, i32 0
  store i32 %44, i32* %45, align 8
  %46 = getelementptr inbounds %struct.fib6_gc_args, %struct.fib6_gc_args* %7, i32 0, i32 1
  store i64 0, i64* %46, align 8
  %47 = load %struct.net*, %struct.net** %5, align 8
  %48 = load i32, i32* @fib6_age, align 4
  %49 = call i32 @fib6_clean_all(%struct.net* %47, i32 %48, %struct.fib6_gc_args* %7)
  %50 = load i64, i64* @jiffies, align 8
  store i64 %50, i64* %8, align 8
  %51 = load i64, i64* %8, align 8
  %52 = load %struct.net*, %struct.net** %5, align 8
  %53 = getelementptr inbounds %struct.net, %struct.net* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i64 %51, i64* %54, align 8
  %55 = getelementptr inbounds %struct.fib6_gc_args, %struct.fib6_gc_args* %7, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %73

58:                                               ; preds = %43
  %59 = load %struct.net*, %struct.net** %5, align 8
  %60 = getelementptr inbounds %struct.net, %struct.net* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  %62 = load i64, i64* %8, align 8
  %63 = load %struct.net*, %struct.net** %5, align 8
  %64 = getelementptr inbounds %struct.net, %struct.net* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = add i64 %62, %68
  %70 = trunc i64 %69 to i32
  %71 = call i64 @round_jiffies(i32 %70)
  %72 = call i32 @mod_timer(i32* %61, i64 %71)
  br label %78

73:                                               ; preds = %43
  %74 = load %struct.net*, %struct.net** %5, align 8
  %75 = getelementptr inbounds %struct.net, %struct.net* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 2
  %77 = call i32 @del_timer(i32* %76)
  br label %78

78:                                               ; preds = %73, %58
  %79 = load %struct.net*, %struct.net** %5, align 8
  %80 = getelementptr inbounds %struct.net, %struct.net* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = call i32 @spin_unlock_bh(i32* %81)
  br label %83

83:                                               ; preds = %78, %22
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_trylock_bh(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @fib6_clean_all(%struct.net*, i32, %struct.fib6_gc_args*) #1

declare dso_local i64 @round_jiffies(i32) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
