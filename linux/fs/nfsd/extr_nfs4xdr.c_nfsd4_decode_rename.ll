; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_nfsd4_decode_rename.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_nfsd4_decode_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_compoundargs = type { i32 }
%struct.nfsd4_rename = type { i32, i32, i32, i32 }

@DECODE_HEAD = common dso_local global i32 0, align 4
@p = common dso_local global i32 0, align 4
@status = common dso_local global i32 0, align 4
@DECODE_TAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfsd4_compoundargs*, %struct.nfsd4_rename*)* @nfsd4_decode_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd4_decode_rename(%struct.nfsd4_compoundargs* %0, %struct.nfsd4_rename* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfsd4_compoundargs*, align 8
  %5 = alloca %struct.nfsd4_rename*, align 8
  store %struct.nfsd4_compoundargs* %0, %struct.nfsd4_compoundargs** %4, align 8
  store %struct.nfsd4_rename* %1, %struct.nfsd4_rename** %5, align 8
  %6 = load i32, i32* @DECODE_HEAD, align 4
  %7 = call i32 @READ_BUF(i32 4)
  %8 = load i32, i32* @p, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* @p, align 4
  %10 = call i8* @be32_to_cpup(i32 %8)
  %11 = ptrtoint i8* %10 to i32
  %12 = load %struct.nfsd4_rename*, %struct.nfsd4_rename** %5, align 8
  %13 = getelementptr inbounds %struct.nfsd4_rename, %struct.nfsd4_rename* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load %struct.nfsd4_rename*, %struct.nfsd4_rename** %5, align 8
  %15 = getelementptr inbounds %struct.nfsd4_rename, %struct.nfsd4_rename* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @READ_BUF(i32 %16)
  %18 = load %struct.nfsd4_rename*, %struct.nfsd4_rename** %5, align 8
  %19 = getelementptr inbounds %struct.nfsd4_rename, %struct.nfsd4_rename* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.nfsd4_rename*, %struct.nfsd4_rename** %5, align 8
  %22 = getelementptr inbounds %struct.nfsd4_rename, %struct.nfsd4_rename* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @SAVEMEM(i32 %20, i32 %23)
  %25 = call i32 @READ_BUF(i32 4)
  %26 = load i32, i32* @p, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* @p, align 4
  %28 = call i8* @be32_to_cpup(i32 %26)
  %29 = ptrtoint i8* %28 to i32
  %30 = load %struct.nfsd4_rename*, %struct.nfsd4_rename** %5, align 8
  %31 = getelementptr inbounds %struct.nfsd4_rename, %struct.nfsd4_rename* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.nfsd4_rename*, %struct.nfsd4_rename** %5, align 8
  %33 = getelementptr inbounds %struct.nfsd4_rename, %struct.nfsd4_rename* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @READ_BUF(i32 %34)
  %36 = load %struct.nfsd4_rename*, %struct.nfsd4_rename** %5, align 8
  %37 = getelementptr inbounds %struct.nfsd4_rename, %struct.nfsd4_rename* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.nfsd4_rename*, %struct.nfsd4_rename** %5, align 8
  %40 = getelementptr inbounds %struct.nfsd4_rename, %struct.nfsd4_rename* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @SAVEMEM(i32 %38, i32 %41)
  %43 = load %struct.nfsd4_rename*, %struct.nfsd4_rename** %5, align 8
  %44 = getelementptr inbounds %struct.nfsd4_rename, %struct.nfsd4_rename* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.nfsd4_rename*, %struct.nfsd4_rename** %5, align 8
  %47 = getelementptr inbounds %struct.nfsd4_rename, %struct.nfsd4_rename* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @check_filename(i32 %45, i32 %48)
  store i32 %49, i32* @status, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %2
  %52 = load i32, i32* @status, align 4
  store i32 %52, i32* %3, align 4
  br label %66

53:                                               ; preds = %2
  %54 = load %struct.nfsd4_rename*, %struct.nfsd4_rename** %5, align 8
  %55 = getelementptr inbounds %struct.nfsd4_rename, %struct.nfsd4_rename* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.nfsd4_rename*, %struct.nfsd4_rename** %5, align 8
  %58 = getelementptr inbounds %struct.nfsd4_rename, %struct.nfsd4_rename* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @check_filename(i32 %56, i32 %59)
  store i32 %60, i32* @status, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %53
  %63 = load i32, i32* @status, align 4
  store i32 %63, i32* %3, align 4
  br label %66

64:                                               ; preds = %53
  %65 = load i32, i32* @DECODE_TAIL, align 4
  br label %66

66:                                               ; preds = %64, %62, %51
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @READ_BUF(i32) #1

declare dso_local i8* @be32_to_cpup(i32) #1

declare dso_local i32 @SAVEMEM(i32, i32) #1

declare dso_local i32 @check_filename(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
