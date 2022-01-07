; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs3proc.c_nfsd3_proc_rename.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs3proc.c_nfsd3_proc_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.nfsd3_renameres*, %struct.nfsd3_renameargs* }
%struct.nfsd3_renameres = type { i32, i32 }
%struct.nfsd3_renameargs = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"nfsd: RENAME(3)   %s %.*s ->\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"nfsd: -> %s %.*s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*)* @nfsd3_proc_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd3_proc_rename(%struct.svc_rqst* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.svc_rqst*, align 8
  %4 = alloca %struct.nfsd3_renameargs*, align 8
  %5 = alloca %struct.nfsd3_renameres*, align 8
  %6 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %3, align 8
  %7 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %8 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %7, i32 0, i32 1
  %9 = load %struct.nfsd3_renameargs*, %struct.nfsd3_renameargs** %8, align 8
  store %struct.nfsd3_renameargs* %9, %struct.nfsd3_renameargs** %4, align 8
  %10 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %11 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %10, i32 0, i32 0
  %12 = load %struct.nfsd3_renameres*, %struct.nfsd3_renameres** %11, align 8
  store %struct.nfsd3_renameres* %12, %struct.nfsd3_renameres** %5, align 8
  %13 = load %struct.nfsd3_renameargs*, %struct.nfsd3_renameargs** %4, align 8
  %14 = getelementptr inbounds %struct.nfsd3_renameargs, %struct.nfsd3_renameargs* %13, i32 0, i32 5
  %15 = call i32 @SVCFH_fmt(i32* %14)
  %16 = load %struct.nfsd3_renameargs*, %struct.nfsd3_renameargs** %4, align 8
  %17 = getelementptr inbounds %struct.nfsd3_renameargs, %struct.nfsd3_renameargs* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.nfsd3_renameargs*, %struct.nfsd3_renameargs** %4, align 8
  %20 = getelementptr inbounds %struct.nfsd3_renameargs, %struct.nfsd3_renameargs* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dprintk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18, i32 %21)
  %23 = load %struct.nfsd3_renameargs*, %struct.nfsd3_renameargs** %4, align 8
  %24 = getelementptr inbounds %struct.nfsd3_renameargs, %struct.nfsd3_renameargs* %23, i32 0, i32 4
  %25 = call i32 @SVCFH_fmt(i32* %24)
  %26 = load %struct.nfsd3_renameargs*, %struct.nfsd3_renameargs** %4, align 8
  %27 = getelementptr inbounds %struct.nfsd3_renameargs, %struct.nfsd3_renameargs* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.nfsd3_renameargs*, %struct.nfsd3_renameargs** %4, align 8
  %30 = getelementptr inbounds %struct.nfsd3_renameargs, %struct.nfsd3_renameargs* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dprintk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %25, i32 %28, i32 %31)
  %33 = load %struct.nfsd3_renameres*, %struct.nfsd3_renameres** %5, align 8
  %34 = getelementptr inbounds %struct.nfsd3_renameres, %struct.nfsd3_renameres* %33, i32 0, i32 1
  %35 = load %struct.nfsd3_renameargs*, %struct.nfsd3_renameargs** %4, align 8
  %36 = getelementptr inbounds %struct.nfsd3_renameargs, %struct.nfsd3_renameargs* %35, i32 0, i32 5
  %37 = call i32 @fh_copy(i32* %34, i32* %36)
  %38 = load %struct.nfsd3_renameres*, %struct.nfsd3_renameres** %5, align 8
  %39 = getelementptr inbounds %struct.nfsd3_renameres, %struct.nfsd3_renameres* %38, i32 0, i32 0
  %40 = load %struct.nfsd3_renameargs*, %struct.nfsd3_renameargs** %4, align 8
  %41 = getelementptr inbounds %struct.nfsd3_renameargs, %struct.nfsd3_renameargs* %40, i32 0, i32 4
  %42 = call i32 @fh_copy(i32* %39, i32* %41)
  %43 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %44 = load %struct.nfsd3_renameres*, %struct.nfsd3_renameres** %5, align 8
  %45 = getelementptr inbounds %struct.nfsd3_renameres, %struct.nfsd3_renameres* %44, i32 0, i32 1
  %46 = load %struct.nfsd3_renameargs*, %struct.nfsd3_renameargs** %4, align 8
  %47 = getelementptr inbounds %struct.nfsd3_renameargs, %struct.nfsd3_renameargs* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.nfsd3_renameargs*, %struct.nfsd3_renameargs** %4, align 8
  %50 = getelementptr inbounds %struct.nfsd3_renameargs, %struct.nfsd3_renameargs* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.nfsd3_renameres*, %struct.nfsd3_renameres** %5, align 8
  %53 = getelementptr inbounds %struct.nfsd3_renameres, %struct.nfsd3_renameres* %52, i32 0, i32 0
  %54 = load %struct.nfsd3_renameargs*, %struct.nfsd3_renameargs** %4, align 8
  %55 = getelementptr inbounds %struct.nfsd3_renameargs, %struct.nfsd3_renameargs* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.nfsd3_renameargs*, %struct.nfsd3_renameargs** %4, align 8
  %58 = getelementptr inbounds %struct.nfsd3_renameargs, %struct.nfsd3_renameargs* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @nfsd_rename(%struct.svc_rqst* %43, i32* %45, i32 %48, i32 %51, i32* %53, i32 %56, i32 %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @RETURN_STATUS(i32 %61)
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @dprintk(i8*, i32, i32, i32) #1

declare dso_local i32 @SVCFH_fmt(i32*) #1

declare dso_local i32 @fh_copy(i32*, i32*) #1

declare dso_local i32 @nfsd_rename(%struct.svc_rqst*, i32*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @RETURN_STATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
