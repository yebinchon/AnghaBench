; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_addr.c_rpc_uaddr2sockaddr.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_addr.c_rpc_uaddr2sockaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { i8* }
%struct.sockaddr_in6 = type { i8* }

@RPCBIND_MAXUADDRLEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rpc_uaddr2sockaddr(%struct.net* %0, i8* %1, i64 %2, %struct.sockaddr* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.net*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sockaddr*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i16, align 2
  %18 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.sockaddr* %3, %struct.sockaddr** %10, align 8
  store i64 %4, i64* %11, align 8
  %19 = load i32, i32* @RPCBIND_MAXUADDRLEN, align 4
  %20 = sext i32 %19 to i64
  %21 = add i64 %20, 4
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %13, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %14, align 8
  %24 = load i64, i64* %9, align 8
  %25 = load i32, i32* @RPCBIND_MAXUADDRLEN, align 4
  %26 = sext i32 %25 to i64
  %27 = icmp ugt i64 %24, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %5
  store i64 0, i64* %6, align 8
  store i32 1, i32* %18, align 4
  br label %100

29:                                               ; preds = %5
  %30 = load i8*, i8** %8, align 8
  %31 = load i64, i64* %9, align 8
  %32 = call i32 @memcpy(i8* %23, i8* %30, i64 %31)
  %33 = load i64, i64* %9, align 8
  %34 = getelementptr inbounds i8, i8* %23, i64 %33
  store i8 0, i8* %34, align 1
  %35 = call i8* @strrchr(i8* %23, i8 signext 46)
  store i8* %35, i8** %12, align 8
  %36 = load i8*, i8** %12, align 8
  %37 = icmp eq i8* %36, null
  %38 = zext i1 %37 to i32
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %29
  store i64 0, i64* %6, align 8
  store i32 1, i32* %18, align 4
  br label %100

42:                                               ; preds = %29
  %43 = load i8*, i8** %12, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  %45 = call i64 @kstrtou8(i8* %44, i32 10, i32* %15)
  %46 = icmp ne i64 %45, 0
  %47 = zext i1 %46 to i32
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  store i64 0, i64* %6, align 8
  store i32 1, i32* %18, align 4
  br label %100

51:                                               ; preds = %42
  %52 = load i8*, i8** %12, align 8
  store i8 0, i8* %52, align 1
  %53 = call i8* @strrchr(i8* %23, i8 signext 46)
  store i8* %53, i8** %12, align 8
  %54 = load i8*, i8** %12, align 8
  %55 = icmp eq i8* %54, null
  %56 = zext i1 %55 to i32
  %57 = call i64 @unlikely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  store i64 0, i64* %6, align 8
  store i32 1, i32* %18, align 4
  br label %100

60:                                               ; preds = %51
  %61 = load i8*, i8** %12, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 1
  %63 = call i64 @kstrtou8(i8* %62, i32 10, i32* %16)
  %64 = icmp ne i64 %63, 0
  %65 = zext i1 %64 to i32
  %66 = call i64 @unlikely(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  store i64 0, i64* %6, align 8
  store i32 1, i32* %18, align 4
  br label %100

69:                                               ; preds = %60
  %70 = load i32, i32* %16, align 4
  %71 = shl i32 %70, 8
  %72 = load i32, i32* %15, align 4
  %73 = or i32 %71, %72
  %74 = trunc i32 %73 to i16
  store i16 %74, i16* %17, align 2
  %75 = load i8*, i8** %12, align 8
  store i8 0, i8* %75, align 1
  %76 = load %struct.net*, %struct.net** %7, align 8
  %77 = call i32 @strlen(i8* %23)
  %78 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %79 = load i64, i64* %11, align 8
  %80 = call i64 @rpc_pton(%struct.net* %76, i8* %23, i32 %77, %struct.sockaddr* %78, i64 %79)
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %69
  store i64 0, i64* %6, align 8
  store i32 1, i32* %18, align 4
  br label %100

83:                                               ; preds = %69
  %84 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %85 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  switch i32 %86, label %99 [
    i32 129, label %87
    i32 128, label %93
  ]

87:                                               ; preds = %83
  %88 = load i16, i16* %17, align 2
  %89 = call i8* @htons(i16 zeroext %88)
  %90 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %91 = bitcast %struct.sockaddr* %90 to %struct.sockaddr_in*
  %92 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %91, i32 0, i32 0
  store i8* %89, i8** %92, align 8
  store i64 8, i64* %6, align 8
  store i32 1, i32* %18, align 4
  br label %100

93:                                               ; preds = %83
  %94 = load i16, i16* %17, align 2
  %95 = call i8* @htons(i16 zeroext %94)
  %96 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %97 = bitcast %struct.sockaddr* %96 to %struct.sockaddr_in6*
  %98 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %97, i32 0, i32 0
  store i8* %95, i8** %98, align 8
  store i64 8, i64* %6, align 8
  store i32 1, i32* %18, align 4
  br label %100

99:                                               ; preds = %83
  store i64 0, i64* %6, align 8
  store i32 1, i32* %18, align 4
  br label %100

100:                                              ; preds = %99, %93, %87, %82, %68, %59, %50, %41, %28
  %101 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %101)
  %102 = load i64, i64* %6, align 8
  ret i64 %102
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local i64 @kstrtou8(i8*, i32, i32*) #2

declare dso_local i64 @rpc_pton(%struct.net*, i8*, i32, %struct.sockaddr*, i64) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i8* @htons(i16 zeroext) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
