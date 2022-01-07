; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_nfsd4_check_resp_size.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_nfsd4_check_resp_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_compoundres = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.nfsd4_slot* }
%struct.nfsd4_slot = type { i32 }
%struct.TYPE_3__ = type { %struct.xdr_buf }
%struct.xdr_buf = type { i64, i64 }

@nfs_ok = common dso_local global i32 0, align 4
@nfserr_resource = common dso_local global i32 0, align 4
@NFSD4_SLOT_CACHETHIS = common dso_local global i32 0, align 4
@nfserr_rep_too_big_to_cache = common dso_local global i32 0, align 4
@nfserr_rep_too_big = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsd4_check_resp_size(%struct.nfsd4_compoundres* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfsd4_compoundres*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.xdr_buf*, align 8
  %7 = alloca %struct.nfsd4_slot*, align 8
  store %struct.nfsd4_compoundres* %0, %struct.nfsd4_compoundres** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %4, align 8
  %9 = getelementptr inbounds %struct.nfsd4_compoundres, %struct.nfsd4_compoundres* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store %struct.xdr_buf* %11, %struct.xdr_buf** %6, align 8
  %12 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %4, align 8
  %13 = getelementptr inbounds %struct.nfsd4_compoundres, %struct.nfsd4_compoundres* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.nfsd4_slot*, %struct.nfsd4_slot** %14, align 8
  store %struct.nfsd4_slot* %15, %struct.nfsd4_slot** %7, align 8
  %16 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %17 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %5, align 8
  %20 = add nsw i64 %18, %19
  %21 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %22 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp sle i64 %20, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* @nfs_ok, align 4
  store i32 %26, i32* %3, align 4
  br label %46

27:                                               ; preds = %2
  %28 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %4, align 8
  %29 = getelementptr inbounds %struct.nfsd4_compoundres, %struct.nfsd4_compoundres* %28, i32 0, i32 0
  %30 = call i32 @nfsd4_has_session(%struct.TYPE_4__* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @nfserr_resource, align 4
  store i32 %33, i32* %3, align 4
  br label %46

34:                                               ; preds = %27
  %35 = load %struct.nfsd4_slot*, %struct.nfsd4_slot** %7, align 8
  %36 = getelementptr inbounds %struct.nfsd4_slot, %struct.nfsd4_slot* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @NFSD4_SLOT_CACHETHIS, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = call i32 @WARN_ON_ONCE(i32 1)
  %43 = load i32, i32* @nfserr_rep_too_big_to_cache, align 4
  store i32 %43, i32* %3, align 4
  br label %46

44:                                               ; preds = %34
  %45 = load i32, i32* @nfserr_rep_too_big, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %44, %41, %32, %25
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @nfsd4_has_session(%struct.TYPE_4__*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
