; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_svc_xprt.c_svc_create_xprt.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_svc_xprt.c_svc_create_xprt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_serv = type { i32 }
%struct.net = type { i32 }
%struct.cred = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"svc: creating transport %s[%d]\0A\00", align 1
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"svc%s\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"svc: transport %s not found, err %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @svc_create_xprt(%struct.svc_serv* %0, i8* %1, %struct.net* %2, i32 %3, i16 zeroext %4, i32 %5, %struct.cred* %6) #0 {
  %8 = alloca %struct.svc_serv*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.net*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i16, align 2
  %13 = alloca i32, align 4
  %14 = alloca %struct.cred*, align 8
  %15 = alloca i32, align 4
  store %struct.svc_serv* %0, %struct.svc_serv** %8, align 8
  store i8* %1, i8** %9, align 8
  store %struct.net* %2, %struct.net** %10, align 8
  store i32 %3, i32* %11, align 4
  store i16 %4, i16* %12, align 2
  store i32 %5, i32* %13, align 4
  store %struct.cred* %6, %struct.cred** %14, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = load i16, i16* %12, align 2
  %18 = call i32 @dprintk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %16, i16 zeroext %17)
  %19 = load %struct.svc_serv*, %struct.svc_serv** %8, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = load %struct.net*, %struct.net** %10, align 8
  %22 = load i32, i32* %11, align 4
  %23 = load i16, i16* %12, align 2
  %24 = load i32, i32* %13, align 4
  %25 = load %struct.cred*, %struct.cred** %14, align 8
  %26 = call i32 @_svc_create_xprt(%struct.svc_serv* %19, i8* %20, %struct.net* %21, i32 %22, i16 zeroext %23, i32 %24, %struct.cred* %25)
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %15, align 4
  %28 = load i32, i32* @EPROTONOSUPPORT, align 4
  %29 = sub nsw i32 0, %28
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %7
  %32 = load i8*, i8** %9, align 8
  %33 = call i32 @request_module(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  %34 = load %struct.svc_serv*, %struct.svc_serv** %8, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = load %struct.net*, %struct.net** %10, align 8
  %37 = load i32, i32* %11, align 4
  %38 = load i16, i16* %12, align 2
  %39 = load i32, i32* %13, align 4
  %40 = load %struct.cred*, %struct.cred** %14, align 8
  %41 = call i32 @_svc_create_xprt(%struct.svc_serv* %34, i8* %35, %struct.net* %36, i32 %37, i16 zeroext %38, i32 %39, %struct.cred* %40)
  store i32 %41, i32* %15, align 4
  br label %42

42:                                               ; preds = %31, %7
  %43 = load i32, i32* %15, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load i8*, i8** %9, align 8
  %47 = load i32, i32* %15, align 4
  %48 = sub nsw i32 0, %47
  %49 = trunc i32 %48 to i16
  %50 = call i32 @dprintk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %46, i16 zeroext %49)
  br label %51

51:                                               ; preds = %45, %42
  %52 = load i32, i32* %15, align 4
  ret i32 %52
}

declare dso_local i32 @dprintk(i8*, i8*, i16 zeroext) #1

declare dso_local i32 @_svc_create_xprt(%struct.svc_serv*, i8*, %struct.net*, i32, i16 zeroext, i32, %struct.cred*) #1

declare dso_local i32 @request_module(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
