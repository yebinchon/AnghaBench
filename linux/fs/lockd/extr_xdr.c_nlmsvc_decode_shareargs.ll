; ModuleID = '/home/carl/AnghaBench/linux/fs/lockd/extr_xdr.c_nlmsvc_decode_shareargs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/lockd/extr_xdr.c_nlmsvc_decode_shareargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.nlm_args* }
%struct.nlm_args = type { i8*, i8*, i32, %struct.nlm_lock }
%struct.nlm_lock = type { i32, i32, i32, i32, i32, i32 }

@NLM_MAXSTRLEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nlmsvc_decode_shareargs(%struct.svc_rqst* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.nlm_args*, align 8
  %7 = alloca %struct.nlm_lock*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %9 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %8, i32 0, i32 0
  %10 = load %struct.nlm_args*, %struct.nlm_args** %9, align 8
  store %struct.nlm_args* %10, %struct.nlm_args** %6, align 8
  %11 = load %struct.nlm_args*, %struct.nlm_args** %6, align 8
  %12 = getelementptr inbounds %struct.nlm_args, %struct.nlm_args* %11, i32 0, i32 3
  store %struct.nlm_lock* %12, %struct.nlm_lock** %7, align 8
  %13 = load %struct.nlm_lock*, %struct.nlm_lock** %7, align 8
  %14 = call i32 @memset(%struct.nlm_lock* %13, i32 0, i32 24)
  %15 = load %struct.nlm_lock*, %struct.nlm_lock** %7, align 8
  %16 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %15, i32 0, i32 5
  %17 = call i32 @locks_init_lock(i32* %16)
  %18 = load %struct.nlm_lock*, %struct.nlm_lock** %7, align 8
  %19 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %18, i32 0, i32 4
  store i32 -1, i32* %19, align 4
  %20 = load i32*, i32** %5, align 8
  %21 = load %struct.nlm_args*, %struct.nlm_args** %6, align 8
  %22 = getelementptr inbounds %struct.nlm_args, %struct.nlm_args* %21, i32 0, i32 2
  %23 = call i32* @nlm_decode_cookie(i32* %20, i32* %22)
  store i32* %23, i32** %5, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %46

25:                                               ; preds = %2
  %26 = load i32*, i32** %5, align 8
  %27 = load %struct.nlm_lock*, %struct.nlm_lock** %7, align 8
  %28 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %27, i32 0, i32 3
  %29 = load %struct.nlm_lock*, %struct.nlm_lock** %7, align 8
  %30 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %29, i32 0, i32 2
  %31 = load i32, i32* @NLM_MAXSTRLEN, align 4
  %32 = call i32* @xdr_decode_string_inplace(i32* %26, i32* %28, i32* %30, i32 %31)
  store i32* %32, i32** %5, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %46

34:                                               ; preds = %25
  %35 = load i32*, i32** %5, align 8
  %36 = load %struct.nlm_lock*, %struct.nlm_lock** %7, align 8
  %37 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %36, i32 0, i32 1
  %38 = call i32* @nlm_decode_fh(i32* %35, i32* %37)
  store i32* %38, i32** %5, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load i32*, i32** %5, align 8
  %42 = load %struct.nlm_lock*, %struct.nlm_lock** %7, align 8
  %43 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %42, i32 0, i32 0
  %44 = call i32* @nlm_decode_oh(i32* %41, i32* %43)
  store i32* %44, i32** %5, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %40, %34, %25, %2
  store i32 0, i32* %3, align 4
  br label %63

47:                                               ; preds = %40
  %48 = load i32*, i32** %5, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %49, i32** %5, align 8
  %50 = load i32, i32* %48, align 4
  %51 = call i8* @ntohl(i32 %50)
  %52 = load %struct.nlm_args*, %struct.nlm_args** %6, align 8
  %53 = getelementptr inbounds %struct.nlm_args, %struct.nlm_args* %52, i32 0, i32 1
  store i8* %51, i8** %53, align 8
  %54 = load i32*, i32** %5, align 8
  %55 = getelementptr inbounds i32, i32* %54, i32 1
  store i32* %55, i32** %5, align 8
  %56 = load i32, i32* %54, align 4
  %57 = call i8* @ntohl(i32 %56)
  %58 = load %struct.nlm_args*, %struct.nlm_args** %6, align 8
  %59 = getelementptr inbounds %struct.nlm_args, %struct.nlm_args* %58, i32 0, i32 0
  store i8* %57, i8** %59, align 8
  %60 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %61 = load i32*, i32** %5, align 8
  %62 = call i32 @xdr_argsize_check(%struct.svc_rqst* %60, i32* %61)
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %47, %46
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @memset(%struct.nlm_lock*, i32, i32) #1

declare dso_local i32 @locks_init_lock(i32*) #1

declare dso_local i32* @nlm_decode_cookie(i32*, i32*) #1

declare dso_local i32* @xdr_decode_string_inplace(i32*, i32*, i32*, i32) #1

declare dso_local i32* @nlm_decode_fh(i32*, i32*) #1

declare dso_local i32* @nlm_decode_oh(i32*, i32*) #1

declare dso_local i8* @ntohl(i32) #1

declare dso_local i32 @xdr_argsize_check(%struct.svc_rqst*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
