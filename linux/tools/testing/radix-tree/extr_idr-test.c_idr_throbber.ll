; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_idr-test.c_idr_throbber.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_idr-test.c_idr_throbber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@find_idr = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @idr_throbber to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @idr_throbber(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = call i64 @time(i32* null)
  store i64 %5, i64* %3, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to i32*
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %4, align 4
  %9 = call i32 (...) @rcu_register_thread()
  br label %10

10:                                               ; preds = %20, %1
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @xa_mk_value(i32 %11)
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = add nsw i32 %14, 1
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i32 @idr_alloc(i32* @find_idr, i32 %12, i32 %13, i32 %15, i32 %16)
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @idr_remove(i32* @find_idr, i32 %18)
  br label %20

20:                                               ; preds = %10
  %21 = call i64 @time(i32* null)
  %22 = load i64, i64* %3, align 8
  %23 = add nsw i64 %22, 10
  %24 = icmp slt i64 %21, %23
  br i1 %24, label %10, label %25

25:                                               ; preds = %20
  %26 = call i32 (...) @rcu_unregister_thread()
  ret i8* null
}

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @rcu_register_thread(...) #1

declare dso_local i32 @idr_alloc(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @xa_mk_value(i32) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i32 @rcu_unregister_thread(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
