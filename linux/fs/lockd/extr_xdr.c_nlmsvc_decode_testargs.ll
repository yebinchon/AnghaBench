; ModuleID = '/home/carl/AnghaBench/linux/fs/lockd/extr_xdr.c_nlmsvc_decode_testargs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/lockd/extr_xdr.c_nlmsvc_decode_testargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.nlm_args* }
%struct.nlm_args = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@F_WRLCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nlmsvc_decode_testargs(%struct.svc_rqst* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.nlm_args*, align 8
  %7 = alloca i64, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %9 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %8, i32 0, i32 0
  %10 = load %struct.nlm_args*, %struct.nlm_args** %9, align 8
  store %struct.nlm_args* %10, %struct.nlm_args** %6, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = load %struct.nlm_args*, %struct.nlm_args** %6, align 8
  %13 = getelementptr inbounds %struct.nlm_args, %struct.nlm_args* %12, i32 0, i32 1
  %14 = call i32* @nlm_decode_cookie(i32* %11, i32* %13)
  store i32* %14, i32** %5, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %41

17:                                               ; preds = %2
  %18 = load i32*, i32** %5, align 8
  %19 = getelementptr inbounds i32, i32* %18, i32 1
  store i32* %19, i32** %5, align 8
  %20 = load i32, i32* %18, align 4
  %21 = call i64 @ntohl(i32 %20)
  store i64 %21, i64* %7, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = load %struct.nlm_args*, %struct.nlm_args** %6, align 8
  %24 = getelementptr inbounds %struct.nlm_args, %struct.nlm_args* %23, i32 0, i32 0
  %25 = call i32* @nlm_decode_lock(i32* %22, %struct.TYPE_4__* %24)
  store i32* %25, i32** %5, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %41

28:                                               ; preds = %17
  %29 = load i64, i64* %7, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load i32, i32* @F_WRLCK, align 4
  %33 = load %struct.nlm_args*, %struct.nlm_args** %6, align 8
  %34 = getelementptr inbounds %struct.nlm_args, %struct.nlm_args* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store i32 %32, i32* %36, align 4
  br label %37

37:                                               ; preds = %31, %28
  %38 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @xdr_argsize_check(%struct.svc_rqst* %38, i32* %39)
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %37, %27, %16
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32* @nlm_decode_cookie(i32*, i32*) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32* @nlm_decode_lock(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @xdr_argsize_check(%struct.svc_rqst*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
