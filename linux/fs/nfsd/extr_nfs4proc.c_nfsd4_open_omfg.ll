; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4proc.c_nfsd4_open_omfg.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4proc.c_nfsd4_open_omfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd4_compound_state = type { i32 }
%struct.nfsd4_op = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.nfsd4_open }
%struct.nfsd4_open = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, %struct.nfsd4_compound_state*, %struct.nfsd4_op*)* @nfsd4_open_omfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd4_open_omfg(%struct.svc_rqst* %0, %struct.nfsd4_compound_state* %1, %struct.nfsd4_op* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca %struct.nfsd4_compound_state*, align 8
  %7 = alloca %struct.nfsd4_op*, align 8
  %8 = alloca %struct.nfsd4_open*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store %struct.nfsd4_compound_state* %1, %struct.nfsd4_compound_state** %6, align 8
  store %struct.nfsd4_op* %2, %struct.nfsd4_op** %7, align 8
  %9 = load %struct.nfsd4_op*, %struct.nfsd4_op** %7, align 8
  %10 = getelementptr inbounds %struct.nfsd4_op, %struct.nfsd4_op* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.nfsd4_open* %11, %struct.nfsd4_open** %8, align 8
  %12 = load %struct.nfsd4_op*, %struct.nfsd4_op** %7, align 8
  %13 = getelementptr inbounds %struct.nfsd4_op, %struct.nfsd4_op* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ntohl(i32 %14)
  %16 = call i32 @seqid_mutating_err(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %3
  %19 = load %struct.nfsd4_op*, %struct.nfsd4_op** %7, align 8
  %20 = getelementptr inbounds %struct.nfsd4_op, %struct.nfsd4_op* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %4, align 4
  br label %41

22:                                               ; preds = %3
  %23 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %24 = call i64 @nfsd4_has_session(%struct.nfsd4_compound_state* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load %struct.nfsd4_op*, %struct.nfsd4_op** %7, align 8
  %28 = getelementptr inbounds %struct.nfsd4_op, %struct.nfsd4_op* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %4, align 4
  br label %41

30:                                               ; preds = %22
  %31 = load %struct.nfsd4_op*, %struct.nfsd4_op** %7, align 8
  %32 = getelementptr inbounds %struct.nfsd4_op, %struct.nfsd4_op* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.nfsd4_open*, %struct.nfsd4_open** %8, align 8
  %35 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %37 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %38 = load %struct.nfsd4_op*, %struct.nfsd4_op** %7, align 8
  %39 = getelementptr inbounds %struct.nfsd4_op, %struct.nfsd4_op* %38, i32 0, i32 0
  %40 = call i32 @nfsd4_open(%struct.svc_rqst* %36, %struct.nfsd4_compound_state* %37, %struct.TYPE_2__* %39)
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %30, %26, %18
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @seqid_mutating_err(i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i64 @nfsd4_has_session(%struct.nfsd4_compound_state*) #1

declare dso_local i32 @nfsd4_open(%struct.svc_rqst*, %struct.nfsd4_compound_state*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
