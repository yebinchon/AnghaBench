; ModuleID = '/home/carl/AnghaBench/linux/fs/lockd/extr_xdr.c_nlm_decode_cookie.c'
source_filename = "/home/carl/AnghaBench/linux/fs/lockd/extr_xdr.c_nlm_decode_cookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_cookie = type { i32, i32 }

@NLM_MAXCOOKIELEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"lockd: bad cookie size %d (only cookies under %d bytes are supported.)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.nlm_cookie*)* @nlm_decode_cookie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @nlm_decode_cookie(i32* %0, %struct.nlm_cookie* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.nlm_cookie*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.nlm_cookie* %1, %struct.nlm_cookie** %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = getelementptr inbounds i32, i32* %7, i32 1
  store i32* %8, i32** %4, align 8
  %9 = load i32, i32* %7, align 4
  %10 = call i32 @ntohl(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load %struct.nlm_cookie*, %struct.nlm_cookie** %5, align 8
  %15 = getelementptr inbounds %struct.nlm_cookie, %struct.nlm_cookie* %14, i32 0, i32 0
  store i32 4, i32* %15, align 4
  %16 = load %struct.nlm_cookie*, %struct.nlm_cookie** %5, align 8
  %17 = getelementptr inbounds %struct.nlm_cookie, %struct.nlm_cookie* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @memset(i32 %18, i32 0, i32 4)
  br label %44

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @NLM_MAXCOOKIELEN, align 4
  %23 = icmp ule i32 %21, %22
  br i1 %23, label %24, label %39

24:                                               ; preds = %20
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.nlm_cookie*, %struct.nlm_cookie** %5, align 8
  %27 = getelementptr inbounds %struct.nlm_cookie, %struct.nlm_cookie* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.nlm_cookie*, %struct.nlm_cookie** %5, align 8
  %29 = getelementptr inbounds %struct.nlm_cookie, %struct.nlm_cookie* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @memcpy(i32 %30, i32* %31, i32 %32)
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @XDR_QUADLEN(i32 %34)
  %36 = load i32*, i32** %4, align 8
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  store i32* %38, i32** %4, align 8
  br label %43

39:                                               ; preds = %20
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @NLM_MAXCOOKIELEN, align 4
  %42 = call i32 @dprintk(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %41)
  store i32* null, i32** %3, align 8
  br label %46

43:                                               ; preds = %24
  br label %44

44:                                               ; preds = %43, %13
  %45 = load i32*, i32** %4, align 8
  store i32* %45, i32** %3, align 8
  br label %46

46:                                               ; preds = %44, %39
  %47 = load i32*, i32** %3, align 8
  ret i32* %47
}

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @XDR_QUADLEN(i32) #1

declare dso_local i32 @dprintk(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
