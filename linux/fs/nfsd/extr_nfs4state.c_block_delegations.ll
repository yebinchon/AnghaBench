; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_block_delegations.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_block_delegations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bloom_pair = type { i64, i64, i32, i32* }
%struct.knfsd_fh = type { i32, i32 }

@blocked_delegations = common dso_local global %struct.bloom_pair zeroinitializer, align 8
@blocked_delegations_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.knfsd_fh*)* @block_delegations to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @block_delegations(%struct.knfsd_fh* %0) #0 {
  %2 = alloca %struct.knfsd_fh*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.bloom_pair*, align 8
  store %struct.knfsd_fh* %0, %struct.knfsd_fh** %2, align 8
  store %struct.bloom_pair* @blocked_delegations, %struct.bloom_pair** %4, align 8
  %5 = load %struct.knfsd_fh*, %struct.knfsd_fh** %2, align 8
  %6 = getelementptr inbounds %struct.knfsd_fh, %struct.knfsd_fh* %5, i32 0, i32 1
  %7 = load %struct.knfsd_fh*, %struct.knfsd_fh** %2, align 8
  %8 = getelementptr inbounds %struct.knfsd_fh, %struct.knfsd_fh* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @jhash(i32* %6, i32 %9, i32 0)
  store i32 %10, i32* %3, align 4
  %11 = call i32 @spin_lock(i32* @blocked_delegations_lock)
  %12 = load i32, i32* %3, align 4
  %13 = and i32 %12, 255
  %14 = load %struct.bloom_pair*, %struct.bloom_pair** %4, align 8
  %15 = getelementptr inbounds %struct.bloom_pair, %struct.bloom_pair* %14, i32 0, i32 3
  %16 = load i32*, i32** %15, align 8
  %17 = load %struct.bloom_pair*, %struct.bloom_pair** %4, align 8
  %18 = getelementptr inbounds %struct.bloom_pair, %struct.bloom_pair* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds i32, i32* %16, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @__set_bit(i32 %13, i32 %21)
  %23 = load i32, i32* %3, align 4
  %24 = ashr i32 %23, 8
  %25 = and i32 %24, 255
  %26 = load %struct.bloom_pair*, %struct.bloom_pair** %4, align 8
  %27 = getelementptr inbounds %struct.bloom_pair, %struct.bloom_pair* %26, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.bloom_pair*, %struct.bloom_pair** %4, align 8
  %30 = getelementptr inbounds %struct.bloom_pair, %struct.bloom_pair* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @__set_bit(i32 %25, i32 %33)
  %35 = load i32, i32* %3, align 4
  %36 = ashr i32 %35, 16
  %37 = and i32 %36, 255
  %38 = load %struct.bloom_pair*, %struct.bloom_pair** %4, align 8
  %39 = getelementptr inbounds %struct.bloom_pair, %struct.bloom_pair* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.bloom_pair*, %struct.bloom_pair** %4, align 8
  %42 = getelementptr inbounds %struct.bloom_pair, %struct.bloom_pair* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @__set_bit(i32 %37, i32 %45)
  %47 = load %struct.bloom_pair*, %struct.bloom_pair** %4, align 8
  %48 = getelementptr inbounds %struct.bloom_pair, %struct.bloom_pair* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %1
  %52 = call i32 (...) @seconds_since_boot()
  %53 = load %struct.bloom_pair*, %struct.bloom_pair** %4, align 8
  %54 = getelementptr inbounds %struct.bloom_pair, %struct.bloom_pair* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  br label %55

55:                                               ; preds = %51, %1
  %56 = load %struct.bloom_pair*, %struct.bloom_pair** %4, align 8
  %57 = getelementptr inbounds %struct.bloom_pair, %struct.bloom_pair* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* %57, align 8
  %60 = call i32 @spin_unlock(i32* @blocked_delegations_lock)
  ret void
}

declare dso_local i32 @jhash(i32*, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @seconds_since_boot(...) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
