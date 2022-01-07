; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfsproc.c_nfsd_proc_rename.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfsproc.c_nfsd_proc_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.nfsd_renameargs* }
%struct.nfsd_renameargs = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"nfsd: RENAME   %s %.*s -> \0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"nfsd:        ->  %s %.*s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*)* @nfsd_proc_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd_proc_rename(%struct.svc_rqst* %0) #0 {
  %2 = alloca %struct.svc_rqst*, align 8
  %3 = alloca %struct.nfsd_renameargs*, align 8
  %4 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %2, align 8
  %5 = load %struct.svc_rqst*, %struct.svc_rqst** %2, align 8
  %6 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %5, i32 0, i32 0
  %7 = load %struct.nfsd_renameargs*, %struct.nfsd_renameargs** %6, align 8
  store %struct.nfsd_renameargs* %7, %struct.nfsd_renameargs** %3, align 8
  %8 = load %struct.nfsd_renameargs*, %struct.nfsd_renameargs** %3, align 8
  %9 = getelementptr inbounds %struct.nfsd_renameargs, %struct.nfsd_renameargs* %8, i32 0, i32 1
  %10 = call i32 @SVCFH_fmt(i32* %9)
  %11 = load %struct.nfsd_renameargs*, %struct.nfsd_renameargs** %3, align 8
  %12 = getelementptr inbounds %struct.nfsd_renameargs, %struct.nfsd_renameargs* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.nfsd_renameargs*, %struct.nfsd_renameargs** %3, align 8
  %15 = getelementptr inbounds %struct.nfsd_renameargs, %struct.nfsd_renameargs* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @dprintk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %13, i32 %16)
  %18 = load %struct.nfsd_renameargs*, %struct.nfsd_renameargs** %3, align 8
  %19 = getelementptr inbounds %struct.nfsd_renameargs, %struct.nfsd_renameargs* %18, i32 0, i32 0
  %20 = call i32 @SVCFH_fmt(i32* %19)
  %21 = load %struct.nfsd_renameargs*, %struct.nfsd_renameargs** %3, align 8
  %22 = getelementptr inbounds %struct.nfsd_renameargs, %struct.nfsd_renameargs* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.nfsd_renameargs*, %struct.nfsd_renameargs** %3, align 8
  %25 = getelementptr inbounds %struct.nfsd_renameargs, %struct.nfsd_renameargs* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dprintk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %20, i32 %23, i32 %26)
  %28 = load %struct.svc_rqst*, %struct.svc_rqst** %2, align 8
  %29 = load %struct.nfsd_renameargs*, %struct.nfsd_renameargs** %3, align 8
  %30 = getelementptr inbounds %struct.nfsd_renameargs, %struct.nfsd_renameargs* %29, i32 0, i32 1
  %31 = load %struct.nfsd_renameargs*, %struct.nfsd_renameargs** %3, align 8
  %32 = getelementptr inbounds %struct.nfsd_renameargs, %struct.nfsd_renameargs* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.nfsd_renameargs*, %struct.nfsd_renameargs** %3, align 8
  %35 = getelementptr inbounds %struct.nfsd_renameargs, %struct.nfsd_renameargs* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.nfsd_renameargs*, %struct.nfsd_renameargs** %3, align 8
  %38 = getelementptr inbounds %struct.nfsd_renameargs, %struct.nfsd_renameargs* %37, i32 0, i32 0
  %39 = load %struct.nfsd_renameargs*, %struct.nfsd_renameargs** %3, align 8
  %40 = getelementptr inbounds %struct.nfsd_renameargs, %struct.nfsd_renameargs* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.nfsd_renameargs*, %struct.nfsd_renameargs** %3, align 8
  %43 = getelementptr inbounds %struct.nfsd_renameargs, %struct.nfsd_renameargs* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @nfsd_rename(%struct.svc_rqst* %28, i32* %30, i32 %33, i32 %36, i32* %38, i32 %41, i32 %44)
  store i32 %45, i32* %4, align 4
  %46 = load %struct.nfsd_renameargs*, %struct.nfsd_renameargs** %3, align 8
  %47 = getelementptr inbounds %struct.nfsd_renameargs, %struct.nfsd_renameargs* %46, i32 0, i32 1
  %48 = call i32 @fh_put(i32* %47)
  %49 = load %struct.nfsd_renameargs*, %struct.nfsd_renameargs** %3, align 8
  %50 = getelementptr inbounds %struct.nfsd_renameargs, %struct.nfsd_renameargs* %49, i32 0, i32 0
  %51 = call i32 @fh_put(i32* %50)
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @dprintk(i8*, i32, i32, i32) #1

declare dso_local i32 @SVCFH_fmt(i32*) #1

declare dso_local i32 @nfsd_rename(%struct.svc_rqst*, i32*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @fh_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
