; ModuleID = '/home/carl/AnghaBench/linux/fs/lockd/extr_svclock.c_retry_deferred_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/lockd/extr_svclock.c_retry_deferred_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_block = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*, i32)* }

@B_GOT_CALLBACK = common dso_local global i32 0, align 4
@B_TIMED_OUT = common dso_local global i32 0, align 4
@NLM_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"revisit block %p flags %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nlm_block*)* @retry_deferred_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @retry_deferred_block(%struct.nlm_block* %0) #0 {
  %2 = alloca %struct.nlm_block*, align 8
  store %struct.nlm_block* %0, %struct.nlm_block** %2, align 8
  %3 = load %struct.nlm_block*, %struct.nlm_block** %2, align 8
  %4 = getelementptr inbounds %struct.nlm_block, %struct.nlm_block* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @B_GOT_CALLBACK, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @B_TIMED_OUT, align 4
  %11 = load %struct.nlm_block*, %struct.nlm_block** %2, align 8
  %12 = getelementptr inbounds %struct.nlm_block, %struct.nlm_block* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = or i32 %13, %10
  store i32 %14, i32* %12, align 8
  br label %15

15:                                               ; preds = %9, %1
  %16 = load %struct.nlm_block*, %struct.nlm_block** %2, align 8
  %17 = load i32, i32* @NLM_TIMEOUT, align 4
  %18 = call i32 @nlmsvc_insert_block(%struct.nlm_block* %16, i32 %17)
  %19 = load %struct.nlm_block*, %struct.nlm_block** %2, align 8
  %20 = load %struct.nlm_block*, %struct.nlm_block** %2, align 8
  %21 = getelementptr inbounds %struct.nlm_block, %struct.nlm_block* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @dprintk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), %struct.nlm_block* %19, i32 %22)
  %24 = load %struct.nlm_block*, %struct.nlm_block** %2, align 8
  %25 = getelementptr inbounds %struct.nlm_block, %struct.nlm_block* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = icmp ne %struct.TYPE_2__* %26, null
  br i1 %27, label %28, label %40

28:                                               ; preds = %15
  %29 = load %struct.nlm_block*, %struct.nlm_block** %2, align 8
  %30 = getelementptr inbounds %struct.nlm_block, %struct.nlm_block* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32 (%struct.TYPE_2__*, i32)*, i32 (%struct.TYPE_2__*, i32)** %32, align 8
  %34 = load %struct.nlm_block*, %struct.nlm_block** %2, align 8
  %35 = getelementptr inbounds %struct.nlm_block, %struct.nlm_block* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = call i32 %33(%struct.TYPE_2__* %36, i32 0)
  %38 = load %struct.nlm_block*, %struct.nlm_block** %2, align 8
  %39 = getelementptr inbounds %struct.nlm_block, %struct.nlm_block* %38, i32 0, i32 1
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %39, align 8
  br label %40

40:                                               ; preds = %28, %15
  ret void
}

declare dso_local i32 @nlmsvc_insert_block(%struct.nlm_block*, i32) #1

declare dso_local i32 @dprintk(i8*, %struct.nlm_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
