; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4idmap.c_do_name_to_id.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4idmap.c_do_name_to_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@nfs4_disable_idmapping = common dso_local global i64 0, align 8
@RPC_AUTH_GSS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, i32, i8*, i32, i32*)* @do_name_to_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_name_to_id(%struct.svc_rqst* %0, i32 %1, i8* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.svc_rqst*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %12 = load i64, i64* @nfs4_disable_idmapping, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %31

14:                                               ; preds = %5
  %15 = load %struct.svc_rqst*, %struct.svc_rqst** %7, align 8
  %16 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @RPC_AUTH_GSS, align 8
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %14
  %22 = load %struct.svc_rqst*, %struct.svc_rqst** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load i8*, i8** %9, align 8
  %25 = load i32, i32* %10, align 4
  %26 = load i32*, i32** %11, align 8
  %27 = call i64 @numeric_name_to_id(%struct.svc_rqst* %22, i32 %23, i8* %24, i32 %25, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  store i32 0, i32* %6, align 4
  br label %38

30:                                               ; preds = %21
  br label %31

31:                                               ; preds = %30, %14, %5
  %32 = load %struct.svc_rqst*, %struct.svc_rqst** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i8*, i8** %9, align 8
  %35 = load i32, i32* %10, align 4
  %36 = load i32*, i32** %11, align 8
  %37 = call i32 @idmap_name_to_id(%struct.svc_rqst* %32, i32 %33, i8* %34, i32 %35, i32* %36)
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %31, %29
  %39 = load i32, i32* %6, align 4
  ret i32 %39
}

declare dso_local i64 @numeric_name_to_id(%struct.svc_rqst*, i32, i8*, i32, i32*) #1

declare dso_local i32 @idmap_name_to_id(%struct.svc_rqst*, i32, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
