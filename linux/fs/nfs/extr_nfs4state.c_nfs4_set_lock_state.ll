; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4state.c_nfs4_set_lock_state.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4state.c_nfs4_set_lock_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_state = type { i32 }
%struct.file_lock = type { i32*, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.nfs4_lock_state* }
%struct.nfs4_lock_state = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@nfs4_fl_lock_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs4_set_lock_state(%struct.nfs4_state* %0, %struct.file_lock* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfs4_state*, align 8
  %5 = alloca %struct.file_lock*, align 8
  %6 = alloca %struct.nfs4_lock_state*, align 8
  store %struct.nfs4_state* %0, %struct.nfs4_state** %4, align 8
  store %struct.file_lock* %1, %struct.file_lock** %5, align 8
  %7 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %8 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %31

12:                                               ; preds = %2
  %13 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %14 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %15 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.nfs4_lock_state* @nfs4_get_lock_state(%struct.nfs4_state* %13, i32 %16)
  store %struct.nfs4_lock_state* %17, %struct.nfs4_lock_state** %6, align 8
  %18 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %6, align 8
  %19 = icmp eq %struct.nfs4_lock_state* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %12
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %31

23:                                               ; preds = %12
  %24 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %6, align 8
  %25 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %26 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store %struct.nfs4_lock_state* %24, %struct.nfs4_lock_state** %28, align 8
  %29 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %30 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %29, i32 0, i32 0
  store i32* @nfs4_fl_lock_ops, i32** %30, align 8
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %23, %20, %11
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local %struct.nfs4_lock_state* @nfs4_get_lock_state(%struct.nfs4_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
