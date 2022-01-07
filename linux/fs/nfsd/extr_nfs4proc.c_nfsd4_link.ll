; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4proc.c_nfsd4_link.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4proc.c_nfsd4_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd4_compound_state = type { i32, i32 }
%union.nfsd4_op_u = type { %struct.nfsd4_link }
%struct.nfsd4_link = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, %struct.nfsd4_compound_state*, %union.nfsd4_op_u*)* @nfsd4_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd4_link(%struct.svc_rqst* %0, %struct.nfsd4_compound_state* %1, %union.nfsd4_op_u* %2) #0 {
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca %struct.nfsd4_compound_state*, align 8
  %6 = alloca %union.nfsd4_op_u*, align 8
  %7 = alloca %struct.nfsd4_link*, align 8
  %8 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store %struct.nfsd4_compound_state* %1, %struct.nfsd4_compound_state** %5, align 8
  store %union.nfsd4_op_u* %2, %union.nfsd4_op_u** %6, align 8
  %9 = load %union.nfsd4_op_u*, %union.nfsd4_op_u** %6, align 8
  %10 = bitcast %union.nfsd4_op_u* %9 to %struct.nfsd4_link*
  store %struct.nfsd4_link* %10, %struct.nfsd4_link** %7, align 8
  %11 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %12 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %5, align 8
  %13 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %12, i32 0, i32 0
  %14 = load %struct.nfsd4_link*, %struct.nfsd4_link** %7, align 8
  %15 = getelementptr inbounds %struct.nfsd4_link, %struct.nfsd4_link* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.nfsd4_link*, %struct.nfsd4_link** %7, align 8
  %18 = getelementptr inbounds %struct.nfsd4_link, %struct.nfsd4_link* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %5, align 8
  %21 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %20, i32 0, i32 1
  %22 = call i32 @nfsd_link(%struct.svc_rqst* %11, i32* %13, i32 %16, i32 %19, i32* %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %3
  %26 = load %struct.nfsd4_link*, %struct.nfsd4_link** %7, align 8
  %27 = getelementptr inbounds %struct.nfsd4_link, %struct.nfsd4_link* %26, i32 0, i32 0
  %28 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %5, align 8
  %29 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %28, i32 0, i32 0
  %30 = call i32 @set_change_info(i32* %27, i32* %29)
  br label %31

31:                                               ; preds = %25, %3
  %32 = load i32, i32* %8, align 4
  ret i32 %32
}

declare dso_local i32 @nfsd_link(%struct.svc_rqst*, i32*, i32, i32, i32*) #1

declare dso_local i32 @set_change_info(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
