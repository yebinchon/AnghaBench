; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfsd4_sequence_done.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfsd4_sequence_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_compoundres = type { %struct.nfsd4_compound_state }
%struct.nfsd4_compound_state = type { i64, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@nfserr_replay_cache = common dso_local global i64 0, align 8
@NFSD4_SLOT_INUSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfsd4_sequence_done(%struct.nfsd4_compoundres* %0) #0 {
  %2 = alloca %struct.nfsd4_compoundres*, align 8
  %3 = alloca %struct.nfsd4_compound_state*, align 8
  store %struct.nfsd4_compoundres* %0, %struct.nfsd4_compoundres** %2, align 8
  %4 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %2, align 8
  %5 = getelementptr inbounds %struct.nfsd4_compoundres, %struct.nfsd4_compoundres* %4, i32 0, i32 0
  store %struct.nfsd4_compound_state* %5, %struct.nfsd4_compound_state** %3, align 8
  %6 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %3, align 8
  %7 = call i64 @nfsd4_has_session(%struct.nfsd4_compound_state* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %31

9:                                                ; preds = %1
  %10 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %3, align 8
  %11 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @nfserr_replay_cache, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %9
  %16 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %2, align 8
  %17 = call i32 @nfsd4_store_cache_entry(%struct.nfsd4_compoundres* %16)
  %18 = load i32, i32* @NFSD4_SLOT_INUSE, align 4
  %19 = xor i32 %18, -1
  %20 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %3, align 8
  %21 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %20, i32 0, i32 3
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, %19
  store i32 %25, i32* %23, align 4
  br label %26

26:                                               ; preds = %15, %9
  %27 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %3, align 8
  %28 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @nfsd4_put_session(i32 %29)
  br label %42

31:                                               ; preds = %1
  %32 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %3, align 8
  %33 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %3, align 8
  %38 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @put_client_renew(i64 %39)
  br label %41

41:                                               ; preds = %36, %31
  br label %42

42:                                               ; preds = %41, %26
  ret void
}

declare dso_local i64 @nfsd4_has_session(%struct.nfsd4_compound_state*) #1

declare dso_local i32 @nfsd4_store_cache_entry(%struct.nfsd4_compoundres*) #1

declare dso_local i32 @nfsd4_put_session(i32) #1

declare dso_local i32 @put_client_renew(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
