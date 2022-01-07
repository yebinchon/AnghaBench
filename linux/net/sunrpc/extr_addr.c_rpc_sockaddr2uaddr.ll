; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_addr.c_rpc_sockaddr2uaddr.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_addr.c_rpc_sockaddr2uaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr_in6 = type { i32 }

@RPCBIND_MAXUADDRPLEN = common dso_local global i32 0, align 4
@RPCBIND_MAXUADDRLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c".%u.%u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rpc_sockaddr2uaddr(%struct.sockaddr* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.sockaddr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i16, align 2
  %10 = alloca i32, align 4
  store %struct.sockaddr* %0, %struct.sockaddr** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* @RPCBIND_MAXUADDRPLEN, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load i32, i32* @RPCBIND_MAXUADDRLEN, align 4
  %16 = zext i32 %15 to i64
  %17 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %8, align 8
  %18 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %19 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %45 [
    i32 129, label %21
    i32 128, label %33
  ]

21:                                               ; preds = %2
  %22 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %23 = trunc i64 %16 to i32
  %24 = call i32 @rpc_ntop4(%struct.sockaddr* %22, i8* %17, i32 %23)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i8* null, i8** %3, align 8
  store i32 1, i32* %10, align 4
  br label %69

27:                                               ; preds = %21
  %28 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %29 = bitcast %struct.sockaddr* %28 to %struct.sockaddr_in*
  %30 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call zeroext i16 @ntohs(i32 %31)
  store i16 %32, i16* %9, align 2
  br label %46

33:                                               ; preds = %2
  %34 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %35 = trunc i64 %16 to i32
  %36 = call i32 @rpc_ntop6_noscopeid(%struct.sockaddr* %34, i8* %17, i32 %35)
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i8* null, i8** %3, align 8
  store i32 1, i32* %10, align 4
  br label %69

39:                                               ; preds = %33
  %40 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %41 = bitcast %struct.sockaddr* %40 to %struct.sockaddr_in6*
  %42 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call zeroext i16 @ntohs(i32 %43)
  store i16 %44, i16* %9, align 2
  br label %46

45:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  store i32 1, i32* %10, align 4
  br label %69

46:                                               ; preds = %39, %27
  %47 = trunc i64 %12 to i32
  %48 = load i16, i16* %9, align 2
  %49 = zext i16 %48 to i32
  %50 = ashr i32 %49, 8
  %51 = trunc i32 %50 to i16
  %52 = load i16, i16* %9, align 2
  %53 = zext i16 %52 to i32
  %54 = and i32 %53, 255
  %55 = trunc i32 %54 to i16
  %56 = call i32 @snprintf(i8* %14, i32 %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i16 zeroext %51, i16 zeroext %55)
  %57 = trunc i64 %12 to i32
  %58 = icmp sgt i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %46
  store i8* null, i8** %3, align 8
  store i32 1, i32* %10, align 4
  br label %69

60:                                               ; preds = %46
  %61 = trunc i64 %16 to i32
  %62 = call i32 @strlcat(i8* %17, i8* %14, i32 %61)
  %63 = sext i32 %62 to i64
  %64 = icmp ugt i64 %63, %16
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  store i8* null, i8** %3, align 8
  store i32 1, i32* %10, align 4
  br label %69

66:                                               ; preds = %60
  %67 = load i32, i32* %5, align 4
  %68 = call i8* @kstrdup(i8* %17, i32 %67)
  store i8* %68, i8** %3, align 8
  store i32 1, i32* %10, align 4
  br label %69

69:                                               ; preds = %66, %65, %59, %45, %38, %26
  %70 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %70)
  %71 = load i8*, i8** %3, align 8
  ret i8* %71
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @rpc_ntop4(%struct.sockaddr*, i8*, i32) #2

declare dso_local zeroext i16 @ntohs(i32) #2

declare dso_local i32 @rpc_ntop6_noscopeid(%struct.sockaddr*, i8*, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i16 zeroext, i16 zeroext) #2

declare dso_local i32 @strlcat(i8*, i8*, i32) #2

declare dso_local i8* @kstrdup(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
