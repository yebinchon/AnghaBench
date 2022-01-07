; ModuleID = '/home/carl/AnghaBench/linux/fs/lockd/extr_xdr.c_nlmsvc_decode_lockargs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/lockd/extr_xdr.c_nlmsvc_decode_lockargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.nlm_args* }
%struct.nlm_args = type { i32, i8*, i8*, %struct.TYPE_4__, i8*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@F_WRLCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nlmsvc_decode_lockargs(%struct.svc_rqst* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.nlm_args*, align 8
  %7 = alloca i8*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %9 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %8, i32 0, i32 0
  %10 = load %struct.nlm_args*, %struct.nlm_args** %9, align 8
  store %struct.nlm_args* %10, %struct.nlm_args** %6, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = load %struct.nlm_args*, %struct.nlm_args** %6, align 8
  %13 = getelementptr inbounds %struct.nlm_args, %struct.nlm_args* %12, i32 0, i32 5
  %14 = call i32* @nlm_decode_cookie(i32* %11, i32* %13)
  store i32* %14, i32** %5, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %61

17:                                               ; preds = %2
  %18 = load i32*, i32** %5, align 8
  %19 = getelementptr inbounds i32, i32* %18, i32 1
  store i32* %19, i32** %5, align 8
  %20 = load i32, i32* %18, align 4
  %21 = call i8* @ntohl(i32 %20)
  %22 = load %struct.nlm_args*, %struct.nlm_args** %6, align 8
  %23 = getelementptr inbounds %struct.nlm_args, %struct.nlm_args* %22, i32 0, i32 4
  store i8* %21, i8** %23, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = getelementptr inbounds i32, i32* %24, i32 1
  store i32* %25, i32** %5, align 8
  %26 = load i32, i32* %24, align 4
  %27 = call i8* @ntohl(i32 %26)
  store i8* %27, i8** %7, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = load %struct.nlm_args*, %struct.nlm_args** %6, align 8
  %30 = getelementptr inbounds %struct.nlm_args, %struct.nlm_args* %29, i32 0, i32 3
  %31 = call i32* @nlm_decode_lock(i32* %28, %struct.TYPE_4__* %30)
  store i32* %31, i32** %5, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %61

34:                                               ; preds = %17
  %35 = load i8*, i8** %7, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load i32, i32* @F_WRLCK, align 4
  %39 = load %struct.nlm_args*, %struct.nlm_args** %6, align 8
  %40 = getelementptr inbounds %struct.nlm_args, %struct.nlm_args* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  store i32 %38, i32* %42, align 8
  br label %43

43:                                               ; preds = %37, %34
  %44 = load i32*, i32** %5, align 8
  %45 = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %45, i32** %5, align 8
  %46 = load i32, i32* %44, align 4
  %47 = call i8* @ntohl(i32 %46)
  %48 = load %struct.nlm_args*, %struct.nlm_args** %6, align 8
  %49 = getelementptr inbounds %struct.nlm_args, %struct.nlm_args* %48, i32 0, i32 2
  store i8* %47, i8** %49, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %51, i32** %5, align 8
  %52 = load i32, i32* %50, align 4
  %53 = call i8* @ntohl(i32 %52)
  %54 = load %struct.nlm_args*, %struct.nlm_args** %6, align 8
  %55 = getelementptr inbounds %struct.nlm_args, %struct.nlm_args* %54, i32 0, i32 1
  store i8* %53, i8** %55, align 8
  %56 = load %struct.nlm_args*, %struct.nlm_args** %6, align 8
  %57 = getelementptr inbounds %struct.nlm_args, %struct.nlm_args* %56, i32 0, i32 0
  store i32 1, i32* %57, align 8
  %58 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %59 = load i32*, i32** %5, align 8
  %60 = call i32 @xdr_argsize_check(%struct.svc_rqst* %58, i32* %59)
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %43, %33, %16
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32* @nlm_decode_cookie(i32*, i32*) #1

declare dso_local i8* @ntohl(i32) #1

declare dso_local i32* @nlm_decode_lock(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @xdr_argsize_check(%struct.svc_rqst*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
