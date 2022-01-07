; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_core.c_nf_conntrack_double_lock.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_core.c_nf_conntrack_double_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }

@CONNTRACK_LOCKS = common dso_local global i32 0, align 4
@nf_conntrack_locks = common dso_local global i32* null, align 8
@SINGLE_DEPTH_NESTING = common dso_local global i32 0, align 4
@nf_conntrack_generation = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, i32, i32, i32)* @nf_conntrack_double_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nf_conntrack_double_lock(%struct.net* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* @CONNTRACK_LOCKS, align 4
  %11 = load i32, i32* %7, align 4
  %12 = urem i32 %11, %10
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* @CONNTRACK_LOCKS, align 4
  %14 = load i32, i32* %8, align 4
  %15 = urem i32 %14, %13
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ule i32 %16, %17
  br i1 %18, label %19, label %36

19:                                               ; preds = %4
  %20 = load i32*, i32** @nf_conntrack_locks, align 8
  %21 = load i32, i32* %7, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = call i32 @nf_conntrack_lock(i32* %23)
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %19
  %29 = load i32*, i32** @nf_conntrack_locks, align 8
  %30 = load i32, i32* %8, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* @SINGLE_DEPTH_NESTING, align 4
  %34 = call i32 @spin_lock_nested(i32* %32, i32 %33)
  br label %35

35:                                               ; preds = %28, %19
  br label %48

36:                                               ; preds = %4
  %37 = load i32*, i32** @nf_conntrack_locks, align 8
  %38 = load i32, i32* %8, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = call i32 @nf_conntrack_lock(i32* %40)
  %42 = load i32*, i32** @nf_conntrack_locks, align 8
  %43 = load i32, i32* %7, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* @SINGLE_DEPTH_NESTING, align 4
  %47 = call i32 @spin_lock_nested(i32* %45, i32 %46)
  br label %48

48:                                               ; preds = %36, %35
  %49 = load i32, i32* %9, align 4
  %50 = call i64 @read_seqcount_retry(i32* @nf_conntrack_generation, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @nf_conntrack_double_unlock(i32 %53, i32 %54)
  store i32 1, i32* %5, align 4
  br label %57

56:                                               ; preds = %48
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %56, %52
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i32 @nf_conntrack_lock(i32*) #1

declare dso_local i32 @spin_lock_nested(i32*, i32) #1

declare dso_local i64 @read_seqcount_retry(i32*, i32) #1

declare dso_local i32 @nf_conntrack_double_unlock(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
