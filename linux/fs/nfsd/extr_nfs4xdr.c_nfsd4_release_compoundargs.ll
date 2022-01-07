; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_nfsd4_release_compoundargs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_nfsd4_release_compoundargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.nfsd4_compoundargs* }
%struct.nfsd4_compoundargs = type { i64, i64, %struct.svcxdr_tmpbuf*, %struct.svcxdr_tmpbuf* }
%struct.svcxdr_tmpbuf = type { %struct.svcxdr_tmpbuf* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfsd4_release_compoundargs(%struct.svc_rqst* %0) #0 {
  %2 = alloca %struct.svc_rqst*, align 8
  %3 = alloca %struct.nfsd4_compoundargs*, align 8
  %4 = alloca %struct.svcxdr_tmpbuf*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %2, align 8
  %5 = load %struct.svc_rqst*, %struct.svc_rqst** %2, align 8
  %6 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %5, i32 0, i32 0
  %7 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %6, align 8
  store %struct.nfsd4_compoundargs* %7, %struct.nfsd4_compoundargs** %3, align 8
  %8 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %3, align 8
  %9 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %3, align 8
  %12 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %10, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %1
  %16 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %3, align 8
  %17 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.svcxdr_tmpbuf*
  %20 = call i32 @kfree(%struct.svcxdr_tmpbuf* %19)
  %21 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %3, align 8
  %22 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %3, align 8
  %25 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  br label %26

26:                                               ; preds = %15, %1
  %27 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %3, align 8
  %28 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %27, i32 0, i32 3
  %29 = load %struct.svcxdr_tmpbuf*, %struct.svcxdr_tmpbuf** %28, align 8
  %30 = call i32 @kfree(%struct.svcxdr_tmpbuf* %29)
  %31 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %3, align 8
  %32 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %31, i32 0, i32 3
  store %struct.svcxdr_tmpbuf* null, %struct.svcxdr_tmpbuf** %32, align 8
  br label %33

33:                                               ; preds = %38, %26
  %34 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %3, align 8
  %35 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %34, i32 0, i32 2
  %36 = load %struct.svcxdr_tmpbuf*, %struct.svcxdr_tmpbuf** %35, align 8
  %37 = icmp ne %struct.svcxdr_tmpbuf* %36, null
  br i1 %37, label %38, label %49

38:                                               ; preds = %33
  %39 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %3, align 8
  %40 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %39, i32 0, i32 2
  %41 = load %struct.svcxdr_tmpbuf*, %struct.svcxdr_tmpbuf** %40, align 8
  store %struct.svcxdr_tmpbuf* %41, %struct.svcxdr_tmpbuf** %4, align 8
  %42 = load %struct.svcxdr_tmpbuf*, %struct.svcxdr_tmpbuf** %4, align 8
  %43 = getelementptr inbounds %struct.svcxdr_tmpbuf, %struct.svcxdr_tmpbuf* %42, i32 0, i32 0
  %44 = load %struct.svcxdr_tmpbuf*, %struct.svcxdr_tmpbuf** %43, align 8
  %45 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %3, align 8
  %46 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %45, i32 0, i32 2
  store %struct.svcxdr_tmpbuf* %44, %struct.svcxdr_tmpbuf** %46, align 8
  %47 = load %struct.svcxdr_tmpbuf*, %struct.svcxdr_tmpbuf** %4, align 8
  %48 = call i32 @kfree(%struct.svcxdr_tmpbuf* %47)
  br label %33

49:                                               ; preds = %33
  ret void
}

declare dso_local i32 @kfree(%struct.svcxdr_tmpbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
