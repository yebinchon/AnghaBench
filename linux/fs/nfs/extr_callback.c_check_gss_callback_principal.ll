; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_callback.c_check_gss_callback_principal.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_callback.c_check_gss_callback_principal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_client = type { i64, i32, i32 }
%struct.svc_rqst = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i8* }

@RPC_AUTH_GSS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"nfs@\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_gss_callback_principal(%struct.nfs_client* %0, %struct.svc_rqst* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfs_client*, align 8
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca i8*, align 8
  store %struct.nfs_client* %0, %struct.nfs_client** %4, align 8
  store %struct.svc_rqst* %1, %struct.svc_rqst** %5, align 8
  %7 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %8 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %6, align 8
  %11 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %12 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @RPC_AUTH_GSS, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %59

19:                                               ; preds = %2
  %20 = load %struct.nfs_client*, %struct.nfs_client** %4, align 8
  %21 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %59

25:                                               ; preds = %19
  %26 = load i8*, i8** %6, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %59

29:                                               ; preds = %25
  %30 = load %struct.nfs_client*, %struct.nfs_client** %4, align 8
  %31 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %29
  %35 = load i8*, i8** %6, align 8
  %36 = load %struct.nfs_client*, %struct.nfs_client** %4, align 8
  %37 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @strcmp(i8* %35, i32 %38)
  %40 = icmp ne i64 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %3, align 4
  br label %59

43:                                               ; preds = %29
  %44 = load i8*, i8** %6, align 8
  %45 = call i64 @memcmp(i8* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %59

48:                                               ; preds = %43
  %49 = load i8*, i8** %6, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 4
  store i8* %50, i8** %6, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = load %struct.nfs_client*, %struct.nfs_client** %4, align 8
  %53 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @strcmp(i8* %51, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %59

58:                                               ; preds = %48
  store i32 1, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %57, %47, %34, %28, %24, %18
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
