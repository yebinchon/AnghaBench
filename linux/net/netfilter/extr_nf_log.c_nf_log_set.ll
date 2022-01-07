; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_log.c_nf_log_set.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_log.c_nf_log_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.nf_logger = type { i32 }

@NFPROTO_UNSPEC = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@nf_log_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nf_log_set(%struct.net* %0, i64 %1, %struct.nf_logger* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.nf_logger*, align 8
  %8 = alloca %struct.nf_logger*, align 8
  store %struct.net* %0, %struct.net** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.nf_logger* %2, %struct.nf_logger** %7, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* @NFPROTO_UNSPEC, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %20, label %12

12:                                               ; preds = %3
  %13 = load i64, i64* %6, align 8
  %14 = load %struct.net*, %struct.net** %5, align 8
  %15 = getelementptr inbounds %struct.net, %struct.net* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = call i64 @ARRAY_SIZE(i32* %17)
  %19 = icmp uge i64 %13, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %12, %3
  %21 = load i32, i32* @EOPNOTSUPP, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %47

23:                                               ; preds = %12
  %24 = call i32 @mutex_lock(i32* @nf_log_mutex)
  %25 = load %struct.net*, %struct.net** %5, align 8
  %26 = getelementptr inbounds %struct.net, %struct.net* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* %6, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.nf_logger* @nft_log_dereference(i32 %31)
  store %struct.nf_logger* %32, %struct.nf_logger** %8, align 8
  %33 = load %struct.nf_logger*, %struct.nf_logger** %8, align 8
  %34 = icmp eq %struct.nf_logger* %33, null
  br i1 %34, label %35, label %45

35:                                               ; preds = %23
  %36 = load %struct.net*, %struct.net** %5, align 8
  %37 = getelementptr inbounds %struct.net, %struct.net* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* %6, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.nf_logger*, %struct.nf_logger** %7, align 8
  %44 = call i32 @rcu_assign_pointer(i32 %42, %struct.nf_logger* %43)
  br label %45

45:                                               ; preds = %35, %23
  %46 = call i32 @mutex_unlock(i32* @nf_log_mutex)
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %45, %20
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.nf_logger* @nft_log_dereference(i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.nf_logger*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
