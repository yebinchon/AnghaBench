; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_sync_open_stateid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_sync_open_stateid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.nfs4_state = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %struct.nfs4_state*)* @nfs4_sync_open_stateid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs4_sync_open_stateid(%struct.TYPE_6__* %0, %struct.nfs4_state* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.nfs4_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store %struct.nfs4_state* %1, %struct.nfs4_state** %4, align 8
  br label %8

8:                                                ; preds = %43, %31, %2
  %9 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %10 = call i32 @nfs4_valid_open_stateid(%struct.nfs4_state* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  br label %59

13:                                               ; preds = %8
  %14 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %15 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %14, i32 0, i32 0
  %16 = call i32 @read_seqbegin(i32* %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = call i32 @nfs4_state_match_open_stateid_other(%struct.nfs4_state* %17, %struct.TYPE_6__* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %33, label %21

21:                                               ; preds = %13
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %23 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %24 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %23, i32 0, i32 1
  %25 = call i32 @nfs4_stateid_copy(%struct.TYPE_6__* %22, %struct.TYPE_7__* %24)
  %26 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %27 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %26, i32 0, i32 0
  %28 = load i32, i32* %7, align 4
  %29 = call i64 @read_seqretry(i32* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  br label %8

32:                                               ; preds = %21
  br label %59

33:                                               ; preds = %13
  %34 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %35 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %5, align 4
  %38 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %39 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %38, i32 0, i32 0
  %40 = load i32, i32* %7, align 4
  %41 = call i64 @read_seqretry(i32* %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  br label %8

44:                                               ; preds = %33
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @be32_to_cpu(i32 %47)
  store i64 %48, i64* %6, align 8
  %49 = load i64, i64* %6, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i64 @be32_to_cpu(i32 %50)
  %52 = sub nsw i64 %49, %51
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %44
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  br label %58

58:                                               ; preds = %54, %44
  br label %59

59:                                               ; preds = %58, %32, %12
  ret void
}

declare dso_local i32 @nfs4_valid_open_stateid(%struct.nfs4_state*) #1

declare dso_local i32 @read_seqbegin(i32*) #1

declare dso_local i32 @nfs4_state_match_open_stateid_other(%struct.nfs4_state*, %struct.TYPE_6__*) #1

declare dso_local i32 @nfs4_stateid_copy(%struct.TYPE_6__*, %struct.TYPE_7__*) #1

declare dso_local i64 @read_seqretry(i32*, i32) #1

declare dso_local i64 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
