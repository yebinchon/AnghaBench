; ModuleID = '/home/carl/AnghaBench/linux/fs/lockd/extr_clnt4xdr.c_decode_cookie.c'
source_filename = "/home/carl/AnghaBench/linux/fs/lockd/extr_clnt4xdr.c_decode_cookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.nlm_cookie = type { i32, i32 }

@NLM_MAXCOOKIELEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"NFS: returned cookie was too long: %u\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xdr_stream*, %struct.nlm_cookie*)* @decode_cookie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_cookie(%struct.xdr_stream* %0, %struct.nlm_cookie* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca %struct.nlm_cookie*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store %struct.nlm_cookie* %1, %struct.nlm_cookie** %5, align 8
  %8 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %9 = call i32* @xdr_inline_decode(%struct.xdr_stream* %8, i32 4)
  store i32* %9, i32** %7, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = icmp eq i32* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %61

16:                                               ; preds = %2
  %17 = load i32*, i32** %7, align 8
  %18 = getelementptr inbounds i32, i32* %17, i32 1
  store i32* %18, i32** %7, align 8
  %19 = ptrtoint i32* %17 to i32
  %20 = call i32 @be32_to_cpup(i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %49

24:                                               ; preds = %16
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @NLM_MAXCOOKIELEN, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %56

29:                                               ; preds = %24
  %30 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32* @xdr_inline_decode(%struct.xdr_stream* %30, i32 %31)
  store i32* %32, i32** %7, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = icmp eq i32* %33, null
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  br label %61

39:                                               ; preds = %29
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.nlm_cookie*, %struct.nlm_cookie** %5, align 8
  %42 = getelementptr inbounds %struct.nlm_cookie, %struct.nlm_cookie* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.nlm_cookie*, %struct.nlm_cookie** %5, align 8
  %44 = getelementptr inbounds %struct.nlm_cookie, %struct.nlm_cookie* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @memcpy(i32 %45, i32* %46, i32 %47)
  store i32 0, i32* %3, align 4
  br label %64

49:                                               ; preds = %23
  %50 = load %struct.nlm_cookie*, %struct.nlm_cookie** %5, align 8
  %51 = getelementptr inbounds %struct.nlm_cookie, %struct.nlm_cookie* %50, i32 0, i32 0
  store i32 4, i32* %51, align 4
  %52 = load %struct.nlm_cookie*, %struct.nlm_cookie** %5, align 8
  %53 = getelementptr inbounds %struct.nlm_cookie, %struct.nlm_cookie* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @memset(i32 %54, i32 0, i32 4)
  store i32 0, i32* %3, align 4
  br label %64

56:                                               ; preds = %28
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @dprintk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* @EIO, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %64

61:                                               ; preds = %38, %15
  %62 = load i32, i32* @EIO, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %61, %56, %49, %39
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32* @xdr_inline_decode(%struct.xdr_stream*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @be32_to_cpup(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @dprintk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
