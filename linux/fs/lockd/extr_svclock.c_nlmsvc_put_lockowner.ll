; ModuleID = '/home/carl/AnghaBench/linux/fs/lockd/extr_svclock.c_nlmsvc_put_lockowner.c'
source_filename = "/home/carl/AnghaBench/linux/fs/lockd/extr_svclock.c_nlmsvc_put_lockowner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_lockowner = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nlm_lockowner*)* @nlmsvc_put_lockowner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nlmsvc_put_lockowner(%struct.nlm_lockowner* %0) #0 {
  %2 = alloca %struct.nlm_lockowner*, align 8
  store %struct.nlm_lockowner* %0, %struct.nlm_lockowner** %2, align 8
  %3 = load %struct.nlm_lockowner*, %struct.nlm_lockowner** %2, align 8
  %4 = getelementptr inbounds %struct.nlm_lockowner, %struct.nlm_lockowner* %3, i32 0, i32 2
  %5 = load %struct.nlm_lockowner*, %struct.nlm_lockowner** %2, align 8
  %6 = getelementptr inbounds %struct.nlm_lockowner, %struct.nlm_lockowner* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = call i32 @refcount_dec_and_lock(i32* %4, i32* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %27

12:                                               ; preds = %1
  %13 = load %struct.nlm_lockowner*, %struct.nlm_lockowner** %2, align 8
  %14 = getelementptr inbounds %struct.nlm_lockowner, %struct.nlm_lockowner* %13, i32 0, i32 1
  %15 = call i32 @list_del(i32* %14)
  %16 = load %struct.nlm_lockowner*, %struct.nlm_lockowner** %2, align 8
  %17 = getelementptr inbounds %struct.nlm_lockowner, %struct.nlm_lockowner* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call i32 @spin_unlock(i32* %19)
  %21 = load %struct.nlm_lockowner*, %struct.nlm_lockowner** %2, align 8
  %22 = getelementptr inbounds %struct.nlm_lockowner, %struct.nlm_lockowner* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = call i32 @nlmsvc_release_host(%struct.TYPE_2__* %23)
  %25 = load %struct.nlm_lockowner*, %struct.nlm_lockowner** %2, align 8
  %26 = call i32 @kfree(%struct.nlm_lockowner* %25)
  br label %27

27:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @refcount_dec_and_lock(i32*, i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @nlmsvc_release_host(%struct.TYPE_2__*) #1

declare dso_local i32 @kfree(%struct.nlm_lockowner*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
