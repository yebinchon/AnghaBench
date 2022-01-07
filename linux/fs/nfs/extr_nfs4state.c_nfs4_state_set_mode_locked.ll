; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4state.c_nfs4_state_set_mode_locked.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4state.c_nfs4_state_set_mode_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_state = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@FMODE_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs4_state_set_mode_locked(%struct.nfs4_state* %0, i32 %1) #0 {
  %3 = alloca %struct.nfs4_state*, align 8
  %4 = alloca i32, align 4
  store %struct.nfs4_state* %0, %struct.nfs4_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.nfs4_state*, %struct.nfs4_state** %3, align 8
  %6 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %47

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @FMODE_WRITE, align 4
  %14 = and i32 %12, %13
  %15 = load %struct.nfs4_state*, %struct.nfs4_state** %3, align 8
  %16 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @FMODE_WRITE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %14, %19
  br i1 %20, label %21, label %43

21:                                               ; preds = %11
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @FMODE_WRITE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load %struct.nfs4_state*, %struct.nfs4_state** %3, align 8
  %28 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %27, i32 0, i32 2
  %29 = load %struct.nfs4_state*, %struct.nfs4_state** %3, align 8
  %30 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = call i32 @list_move(i32* %28, i32* %32)
  br label %42

34:                                               ; preds = %21
  %35 = load %struct.nfs4_state*, %struct.nfs4_state** %3, align 8
  %36 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %35, i32 0, i32 2
  %37 = load %struct.nfs4_state*, %struct.nfs4_state** %3, align 8
  %38 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = call i32 @list_move_tail(i32* %36, i32* %40)
  br label %42

42:                                               ; preds = %34, %26
  br label %43

43:                                               ; preds = %42, %11
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.nfs4_state*, %struct.nfs4_state** %3, align 8
  %46 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  br label %47

47:                                               ; preds = %43, %10
  ret void
}

declare dso_local i32 @list_move(i32*, i32*) #1

declare dso_local i32 @list_move_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
