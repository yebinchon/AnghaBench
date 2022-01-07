; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfsd4_enc_sequence_replay.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfsd4_enc_sequence_replay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_compoundargs = type { i32, %struct.nfsd4_op* }
%struct.nfsd4_op = type { i32 }
%struct.nfsd4_compoundres = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.nfsd4_slot* }
%struct.nfsd4_slot = type { i32 }

@NFSD4_SLOT_CACHED = common dso_local global i32 0, align 4
@nfserr_seq_false_retry = common dso_local global i32 0, align 4
@nfserr_retry_uncached_rep = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfsd4_compoundargs*, %struct.nfsd4_compoundres*)* @nfsd4_enc_sequence_replay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd4_enc_sequence_replay(%struct.nfsd4_compoundargs* %0, %struct.nfsd4_compoundres* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfsd4_compoundargs*, align 8
  %5 = alloca %struct.nfsd4_compoundres*, align 8
  %6 = alloca %struct.nfsd4_op*, align 8
  %7 = alloca %struct.nfsd4_slot*, align 8
  store %struct.nfsd4_compoundargs* %0, %struct.nfsd4_compoundargs** %4, align 8
  store %struct.nfsd4_compoundres* %1, %struct.nfsd4_compoundres** %5, align 8
  %8 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %5, align 8
  %9 = getelementptr inbounds %struct.nfsd4_compoundres, %struct.nfsd4_compoundres* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.nfsd4_slot*, %struct.nfsd4_slot** %10, align 8
  store %struct.nfsd4_slot* %11, %struct.nfsd4_slot** %7, align 8
  %12 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %4, align 8
  %13 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %12, i32 0, i32 1
  %14 = load %struct.nfsd4_op*, %struct.nfsd4_op** %13, align 8
  %15 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %5, align 8
  %16 = getelementptr inbounds %struct.nfsd4_compoundres, %struct.nfsd4_compoundres* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sub nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.nfsd4_op, %struct.nfsd4_op* %14, i64 %19
  store %struct.nfsd4_op* %20, %struct.nfsd4_op** %6, align 8
  %21 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %5, align 8
  %22 = load %struct.nfsd4_op*, %struct.nfsd4_op** %6, align 8
  %23 = call i32 @nfsd4_encode_operation(%struct.nfsd4_compoundres* %21, %struct.nfsd4_op* %22)
  %24 = load %struct.nfsd4_slot*, %struct.nfsd4_slot** %7, align 8
  %25 = getelementptr inbounds %struct.nfsd4_slot, %struct.nfsd4_slot* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @NFSD4_SLOT_CACHED, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %2
  %31 = load %struct.nfsd4_op*, %struct.nfsd4_op** %6, align 8
  %32 = getelementptr inbounds %struct.nfsd4_op, %struct.nfsd4_op* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %3, align 4
  br label %63

34:                                               ; preds = %2
  %35 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %4, align 8
  %36 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i32, i32* @nfserr_seq_false_retry, align 4
  %41 = load %struct.nfsd4_op*, %struct.nfsd4_op** %6, align 8
  %42 = getelementptr inbounds %struct.nfsd4_op, %struct.nfsd4_op* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  br label %59

43:                                               ; preds = %34
  %44 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %4, align 8
  %45 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %44, i32 0, i32 1
  %46 = load %struct.nfsd4_op*, %struct.nfsd4_op** %45, align 8
  %47 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %5, align 8
  %48 = getelementptr inbounds %struct.nfsd4_compoundres, %struct.nfsd4_compoundres* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 8
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds %struct.nfsd4_op, %struct.nfsd4_op* %46, i64 %51
  store %struct.nfsd4_op* %52, %struct.nfsd4_op** %6, align 8
  %53 = load i32, i32* @nfserr_retry_uncached_rep, align 4
  %54 = load %struct.nfsd4_op*, %struct.nfsd4_op** %6, align 8
  %55 = getelementptr inbounds %struct.nfsd4_op, %struct.nfsd4_op* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %5, align 8
  %57 = load %struct.nfsd4_op*, %struct.nfsd4_op** %6, align 8
  %58 = call i32 @nfsd4_encode_operation(%struct.nfsd4_compoundres* %56, %struct.nfsd4_op* %57)
  br label %59

59:                                               ; preds = %43, %39
  %60 = load %struct.nfsd4_op*, %struct.nfsd4_op** %6, align 8
  %61 = getelementptr inbounds %struct.nfsd4_op, %struct.nfsd4_op* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %59, %30
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @nfsd4_encode_operation(%struct.nfsd4_compoundres*, %struct.nfsd4_op*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
