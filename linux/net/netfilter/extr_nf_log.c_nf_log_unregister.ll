; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_log.c_nf_log_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_log.c_nf_log_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_logger = type { i64 }

@nf_log_mutex = common dso_local global i32 0, align 4
@NFPROTO_NUMPROTO = common dso_local global i32 0, align 4
@loggers = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nf_log_unregister(%struct.nf_logger* %0) #0 {
  %2 = alloca %struct.nf_logger*, align 8
  %3 = alloca %struct.nf_logger*, align 8
  %4 = alloca i32, align 4
  store %struct.nf_logger* %0, %struct.nf_logger** %2, align 8
  %5 = call i32 @mutex_lock(i32* @nf_log_mutex)
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %38, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @NFPROTO_NUMPROTO, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %41

10:                                               ; preds = %6
  %11 = load i32**, i32*** @loggers, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32*, i32** %11, i64 %13
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.nf_logger*, %struct.nf_logger** %2, align 8
  %17 = getelementptr inbounds %struct.nf_logger, %struct.nf_logger* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds i32, i32* %15, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.nf_logger* @nft_log_dereference(i32 %20)
  store %struct.nf_logger* %21, %struct.nf_logger** %3, align 8
  %22 = load %struct.nf_logger*, %struct.nf_logger** %3, align 8
  %23 = load %struct.nf_logger*, %struct.nf_logger** %2, align 8
  %24 = icmp eq %struct.nf_logger* %22, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %10
  %26 = load i32**, i32*** @loggers, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32*, i32** %26, i64 %28
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.nf_logger*, %struct.nf_logger** %2, align 8
  %32 = getelementptr inbounds %struct.nf_logger, %struct.nf_logger* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @RCU_INIT_POINTER(i32 %35, i32* null)
  br label %37

37:                                               ; preds = %25, %10
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %6

41:                                               ; preds = %6
  %42 = call i32 @mutex_unlock(i32* @nf_log_mutex)
  %43 = call i32 (...) @synchronize_rcu()
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.nf_logger* @nft_log_dereference(i32) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @synchronize_rcu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
