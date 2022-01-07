; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_genalloc.c_gen_pool_set_algo.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_genalloc.c_gen_pool_set_algo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gen_pool = type { i8*, i64 }

@gen_pool_first_fit = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gen_pool_set_algo(%struct.gen_pool* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.gen_pool*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %struct.gen_pool* %0, %struct.gen_pool** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = call i32 (...) @rcu_read_lock()
  %8 = load i64, i64* %5, align 8
  %9 = load %struct.gen_pool*, %struct.gen_pool** %4, align 8
  %10 = getelementptr inbounds %struct.gen_pool, %struct.gen_pool* %9, i32 0, i32 1
  store i64 %8, i64* %10, align 8
  %11 = load %struct.gen_pool*, %struct.gen_pool** %4, align 8
  %12 = getelementptr inbounds %struct.gen_pool, %struct.gen_pool* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i64, i64* @gen_pool_first_fit, align 8
  %17 = load %struct.gen_pool*, %struct.gen_pool** %4, align 8
  %18 = getelementptr inbounds %struct.gen_pool, %struct.gen_pool* %17, i32 0, i32 1
  store i64 %16, i64* %18, align 8
  br label %19

19:                                               ; preds = %15, %3
  %20 = load i8*, i8** %6, align 8
  %21 = load %struct.gen_pool*, %struct.gen_pool** %4, align 8
  %22 = getelementptr inbounds %struct.gen_pool, %struct.gen_pool* %21, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  %23 = call i32 (...) @rcu_read_unlock()
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
