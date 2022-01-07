; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4state.c_nfs4_get_lock_state.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4state.c_nfs4_get_lock_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_lock_state = type { i32 }
%struct.nfs4_state = type { %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@LK_STATE_IN_USE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfs4_lock_state* (%struct.nfs4_state*, i32)* @nfs4_get_lock_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfs4_lock_state* @nfs4_get_lock_state(%struct.nfs4_state* %0, i32 %1) #0 {
  %3 = alloca %struct.nfs4_lock_state*, align 8
  %4 = alloca %struct.nfs4_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfs4_lock_state*, align 8
  %7 = alloca %struct.nfs4_lock_state*, align 8
  store %struct.nfs4_state* %0, %struct.nfs4_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.nfs4_lock_state* null, %struct.nfs4_lock_state** %7, align 8
  br label %8

8:                                                ; preds = %42, %2
  %9 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %10 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %9, i32 0, i32 1
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.nfs4_lock_state* @__nfs4_find_lock_state(%struct.nfs4_state* %12, i32 %13, i32* null)
  store %struct.nfs4_lock_state* %14, %struct.nfs4_lock_state** %6, align 8
  %15 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %6, align 8
  %16 = icmp ne %struct.nfs4_lock_state* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %8
  br label %43

18:                                               ; preds = %8
  %19 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %7, align 8
  %20 = icmp ne %struct.nfs4_lock_state* %19, null
  br i1 %20, label %21, label %32

21:                                               ; preds = %18
  %22 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %7, align 8
  %23 = getelementptr inbounds %struct.nfs4_lock_state, %struct.nfs4_lock_state* %22, i32 0, i32 0
  %24 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %25 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %24, i32 0, i32 3
  %26 = call i32 @list_add(i32* %23, i32* %25)
  %27 = load i32, i32* @LK_STATE_IN_USE, align 4
  %28 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %29 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %28, i32 0, i32 2
  %30 = call i32 @set_bit(i32 %27, i32* %29)
  %31 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %7, align 8
  store %struct.nfs4_lock_state* %31, %struct.nfs4_lock_state** %6, align 8
  store %struct.nfs4_lock_state* null, %struct.nfs4_lock_state** %7, align 8
  br label %43

32:                                               ; preds = %18
  %33 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %34 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %33, i32 0, i32 1
  %35 = call i32 @spin_unlock(i32* %34)
  %36 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call %struct.nfs4_lock_state* @nfs4_alloc_lock_state(%struct.nfs4_state* %36, i32 %37)
  store %struct.nfs4_lock_state* %38, %struct.nfs4_lock_state** %7, align 8
  %39 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %7, align 8
  %40 = icmp eq %struct.nfs4_lock_state* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  store %struct.nfs4_lock_state* null, %struct.nfs4_lock_state** %3, align 8
  br label %59

42:                                               ; preds = %32
  br label %8

43:                                               ; preds = %21, %17
  %44 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %45 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %44, i32 0, i32 1
  %46 = call i32 @spin_unlock(i32* %45)
  %47 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %7, align 8
  %48 = icmp ne %struct.nfs4_lock_state* %47, null
  br i1 %48, label %49, label %57

49:                                               ; preds = %43
  %50 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %51 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %7, align 8
  %56 = call i32 @nfs4_free_lock_state(i32 %54, %struct.nfs4_lock_state* %55)
  br label %57

57:                                               ; preds = %49, %43
  %58 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %6, align 8
  store %struct.nfs4_lock_state* %58, %struct.nfs4_lock_state** %3, align 8
  br label %59

59:                                               ; preds = %57, %41
  %60 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %3, align 8
  ret %struct.nfs4_lock_state* %60
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.nfs4_lock_state* @__nfs4_find_lock_state(%struct.nfs4_state*, i32, i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.nfs4_lock_state* @nfs4_alloc_lock_state(%struct.nfs4_state*, i32) #1

declare dso_local i32 @nfs4_free_lock_state(i32, %struct.nfs4_lock_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
