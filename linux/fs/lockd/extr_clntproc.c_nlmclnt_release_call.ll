; ModuleID = '/home/carl/AnghaBench/linux/fs/lockd/extr_clntproc.c_nlmclnt_release_call.c'
source_filename = "/home/carl/AnghaBench/linux/fs/lockd/extr_clntproc.c_nlmclnt_release_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_rqst = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { %struct.nlmclnt_operations* }
%struct.nlmclnt_operations = type { i32 (i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nlmclnt_release_call(%struct.nlm_rqst* %0) #0 {
  %2 = alloca %struct.nlm_rqst*, align 8
  %3 = alloca %struct.nlmclnt_operations*, align 8
  store %struct.nlm_rqst* %0, %struct.nlm_rqst** %2, align 8
  %4 = load %struct.nlm_rqst*, %struct.nlm_rqst** %2, align 8
  %5 = getelementptr inbounds %struct.nlm_rqst, %struct.nlm_rqst* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.nlmclnt_operations*, %struct.nlmclnt_operations** %7, align 8
  store %struct.nlmclnt_operations* %8, %struct.nlmclnt_operations** %3, align 8
  %9 = load %struct.nlm_rqst*, %struct.nlm_rqst** %2, align 8
  %10 = getelementptr inbounds %struct.nlm_rqst, %struct.nlm_rqst* %9, i32 0, i32 2
  %11 = call i32 @refcount_dec_and_test(i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %39

14:                                               ; preds = %1
  %15 = load %struct.nlmclnt_operations*, %struct.nlmclnt_operations** %3, align 8
  %16 = icmp ne %struct.nlmclnt_operations* %15, null
  br i1 %16, label %17, label %30

17:                                               ; preds = %14
  %18 = load %struct.nlmclnt_operations*, %struct.nlmclnt_operations** %3, align 8
  %19 = getelementptr inbounds %struct.nlmclnt_operations, %struct.nlmclnt_operations* %18, i32 0, i32 0
  %20 = load i32 (i32)*, i32 (i32)** %19, align 8
  %21 = icmp ne i32 (i32)* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = load %struct.nlmclnt_operations*, %struct.nlmclnt_operations** %3, align 8
  %24 = getelementptr inbounds %struct.nlmclnt_operations, %struct.nlmclnt_operations* %23, i32 0, i32 0
  %25 = load i32 (i32)*, i32 (i32)** %24, align 8
  %26 = load %struct.nlm_rqst*, %struct.nlm_rqst** %2, align 8
  %27 = getelementptr inbounds %struct.nlm_rqst, %struct.nlm_rqst* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 %25(i32 %28)
  br label %30

30:                                               ; preds = %22, %17, %14
  %31 = load %struct.nlm_rqst*, %struct.nlm_rqst** %2, align 8
  %32 = getelementptr inbounds %struct.nlm_rqst, %struct.nlm_rqst* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = call i32 @nlmclnt_release_host(%struct.TYPE_2__* %33)
  %35 = load %struct.nlm_rqst*, %struct.nlm_rqst** %2, align 8
  %36 = call i32 @nlmclnt_release_lockargs(%struct.nlm_rqst* %35)
  %37 = load %struct.nlm_rqst*, %struct.nlm_rqst** %2, align 8
  %38 = call i32 @kfree(%struct.nlm_rqst* %37)
  br label %39

39:                                               ; preds = %30, %13
  ret void
}

declare dso_local i32 @refcount_dec_and_test(i32*) #1

declare dso_local i32 @nlmclnt_release_host(%struct.TYPE_2__*) #1

declare dso_local i32 @nlmclnt_release_lockargs(%struct.nlm_rqst*) #1

declare dso_local i32 @kfree(%struct.nlm_rqst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
