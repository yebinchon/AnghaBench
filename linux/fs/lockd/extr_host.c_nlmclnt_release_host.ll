; ModuleID = '/home/carl/AnghaBench/linux/fs/lockd/extr_host.c_nlmclnt_release_host.c'
source_filename = "/home/carl/AnghaBench/linux/fs/lockd/extr_host.c_nlmclnt_release_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_host = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"lockd: release client host %s\0A\00", align 1
@nlm_host_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nlmclnt_release_host(%struct.nlm_host* %0) #0 {
  %2 = alloca %struct.nlm_host*, align 8
  store %struct.nlm_host* %0, %struct.nlm_host** %2, align 8
  %3 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %4 = icmp eq %struct.nlm_host* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %44

6:                                                ; preds = %1
  %7 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %8 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @dprintk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %12 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @WARN_ON_ONCE(i32 %13)
  %15 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %16 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %15, i32 0, i32 4
  %17 = call i64 @refcount_dec_and_mutex_lock(i32* %16, i32* @nlm_host_mutex)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %44

19:                                               ; preds = %6
  %20 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %21 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %20, i32 0, i32 3
  %22 = call i32 @list_empty(i32* %21)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @WARN_ON_ONCE(i32 %25)
  %27 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %28 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %27, i32 0, i32 2
  %29 = call i32 @list_empty(i32* %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 @WARN_ON_ONCE(i32 %32)
  %34 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %35 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %34, i32 0, i32 1
  %36 = call i32 @list_empty(i32* %35)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i32 @WARN_ON_ONCE(i32 %39)
  %41 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %42 = call i32 @nlm_destroy_host_locked(%struct.nlm_host* %41)
  %43 = call i32 @mutex_unlock(i32* @nlm_host_mutex)
  br label %44

44:                                               ; preds = %5, %19, %6
  ret void
}

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @refcount_dec_and_mutex_lock(i32*, i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @nlm_destroy_host_locked(%struct.nlm_host*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
