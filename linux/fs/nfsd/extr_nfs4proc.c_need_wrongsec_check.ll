; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4proc.c_need_wrongsec_check.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4proc.c_need_wrongsec_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundres* }
%struct.nfsd4_compoundargs = type { i64, %struct.nfsd4_op* }
%struct.nfsd4_op = type { i64 }
%struct.nfsd4_compoundres = type { i32 }
%struct.nfsd4_operation = type { i32 }

@OP_IS_PUTFH_LIKE = common dso_local global i32 0, align 4
@OP_ILLEGAL = common dso_local global i64 0, align 8
@OP_HANDLES_WRONGSEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*)* @need_wrongsec_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @need_wrongsec_check(%struct.svc_rqst* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.svc_rqst*, align 8
  %4 = alloca %struct.nfsd4_compoundres*, align 8
  %5 = alloca %struct.nfsd4_compoundargs*, align 8
  %6 = alloca %struct.nfsd4_op*, align 8
  %7 = alloca %struct.nfsd4_op*, align 8
  %8 = alloca %struct.nfsd4_operation*, align 8
  %9 = alloca %struct.nfsd4_operation*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %3, align 8
  %10 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %11 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %10, i32 0, i32 1
  %12 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %11, align 8
  store %struct.nfsd4_compoundres* %12, %struct.nfsd4_compoundres** %4, align 8
  %13 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %14 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %13, i32 0, i32 0
  %15 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %14, align 8
  store %struct.nfsd4_compoundargs* %15, %struct.nfsd4_compoundargs** %5, align 8
  %16 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %5, align 8
  %17 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %16, i32 0, i32 1
  %18 = load %struct.nfsd4_op*, %struct.nfsd4_op** %17, align 8
  %19 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %4, align 8
  %20 = getelementptr inbounds %struct.nfsd4_compoundres, %struct.nfsd4_compoundres* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.nfsd4_op, %struct.nfsd4_op* %18, i64 %23
  store %struct.nfsd4_op* %24, %struct.nfsd4_op** %6, align 8
  %25 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %5, align 8
  %26 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %25, i32 0, i32 1
  %27 = load %struct.nfsd4_op*, %struct.nfsd4_op** %26, align 8
  %28 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %4, align 8
  %29 = getelementptr inbounds %struct.nfsd4_compoundres, %struct.nfsd4_compoundres* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.nfsd4_op, %struct.nfsd4_op* %27, i64 %31
  store %struct.nfsd4_op* %32, %struct.nfsd4_op** %7, align 8
  %33 = load %struct.nfsd4_op*, %struct.nfsd4_op** %6, align 8
  %34 = call %struct.nfsd4_operation* @OPDESC(%struct.nfsd4_op* %33)
  store %struct.nfsd4_operation* %34, %struct.nfsd4_operation** %8, align 8
  %35 = load %struct.nfsd4_operation*, %struct.nfsd4_operation** %8, align 8
  %36 = getelementptr inbounds %struct.nfsd4_operation, %struct.nfsd4_operation* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @OP_IS_PUTFH_LIKE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %70

42:                                               ; preds = %1
  %43 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %5, align 8
  %44 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %4, align 8
  %47 = getelementptr inbounds %struct.nfsd4_compoundres, %struct.nfsd4_compoundres* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = icmp eq i64 %45, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %42
  store i32 0, i32* %2, align 4
  br label %70

52:                                               ; preds = %42
  %53 = load %struct.nfsd4_op*, %struct.nfsd4_op** %7, align 8
  %54 = getelementptr inbounds %struct.nfsd4_op, %struct.nfsd4_op* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @OP_ILLEGAL, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  store i32 0, i32* %2, align 4
  br label %70

59:                                               ; preds = %52
  %60 = load %struct.nfsd4_op*, %struct.nfsd4_op** %7, align 8
  %61 = call %struct.nfsd4_operation* @OPDESC(%struct.nfsd4_op* %60)
  store %struct.nfsd4_operation* %61, %struct.nfsd4_operation** %9, align 8
  %62 = load %struct.nfsd4_operation*, %struct.nfsd4_operation** %9, align 8
  %63 = getelementptr inbounds %struct.nfsd4_operation, %struct.nfsd4_operation* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @OP_HANDLES_WRONGSEC, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %59, %58, %51, %41
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local %struct.nfsd4_operation* @OPDESC(%struct.nfsd4_op*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
