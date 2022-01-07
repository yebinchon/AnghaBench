; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_log.c_nf_log_unset.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_log.c_nf_log_unset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.nf_logger = type { i32 }

@nf_log_mutex = common dso_local global i32 0, align 4
@NFPROTO_NUMPROTO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nf_log_unset(%struct.net* %0, %struct.nf_logger* %1) #0 {
  %3 = alloca %struct.net*, align 8
  %4 = alloca %struct.nf_logger*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nf_logger*, align 8
  store %struct.net* %0, %struct.net** %3, align 8
  store %struct.nf_logger* %1, %struct.nf_logger** %4, align 8
  %7 = call i32 @mutex_lock(i32* @nf_log_mutex)
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %36, %2
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @NFPROTO_NUMPROTO, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %39

12:                                               ; preds = %8
  %13 = load %struct.net*, %struct.net** %3, align 8
  %14 = getelementptr inbounds %struct.net, %struct.net* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.nf_logger* @nft_log_dereference(i32 %20)
  store %struct.nf_logger* %21, %struct.nf_logger** %6, align 8
  %22 = load %struct.nf_logger*, %struct.nf_logger** %6, align 8
  %23 = load %struct.nf_logger*, %struct.nf_logger** %4, align 8
  %24 = icmp eq %struct.nf_logger* %22, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %12
  %26 = load %struct.net*, %struct.net** %3, align 8
  %27 = getelementptr inbounds %struct.net, %struct.net* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @RCU_INIT_POINTER(i32 %33, i32* null)
  br label %35

35:                                               ; preds = %25, %12
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %8

39:                                               ; preds = %8
  %40 = call i32 @mutex_unlock(i32* @nf_log_mutex)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.nf_logger* @nft_log_dereference(i32) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
