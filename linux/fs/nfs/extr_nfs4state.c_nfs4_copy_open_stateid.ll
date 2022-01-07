; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4state.c_nfs4_copy_open_stateid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4state.c_nfs4_copy_open_stateid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_state = type { i32, i32, i32 }

@zero_stateid = common dso_local global i32 0, align 4
@NFS_OPEN_STATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs4_copy_open_stateid(i32* %0, %struct.nfs4_state* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.nfs4_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.nfs4_state* %1, %struct.nfs4_state** %4, align 8
  br label %8

8:                                                ; preds = %24, %2
  store i32 0, i32* %5, align 4
  store i32* @zero_stateid, i32** %6, align 8
  %9 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %10 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %9, i32 0, i32 2
  %11 = call i32 @read_seqbegin(i32* %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* @NFS_OPEN_STATE, align 4
  %13 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %14 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %13, i32 0, i32 1
  %15 = call i64 @test_bit(i32 %12, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %8
  %18 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %19 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %18, i32 0, i32 0
  store i32* %19, i32** %6, align 8
  store i32 1, i32* %5, align 4
  br label %20

20:                                               ; preds = %17, %8
  %21 = load i32*, i32** %3, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @nfs4_stateid_copy(i32* %21, i32* %22)
  br label %24

24:                                               ; preds = %20
  %25 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %26 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %25, i32 0, i32 2
  %27 = load i32, i32* %7, align 4
  %28 = call i64 @read_seqretry(i32* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %8, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local i32 @read_seqbegin(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @nfs4_stateid_copy(i32*, i32*) #1

declare dso_local i64 @read_seqretry(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
