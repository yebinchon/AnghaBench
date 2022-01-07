; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_addr.c_rpc_pton.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_addr.c_rpc_pton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sockaddr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rpc_pton(%struct.net* %0, i8* %1, i64 %2, %struct.sockaddr* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.net*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sockaddr*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.sockaddr* %3, %struct.sockaddr** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 0, i32* %12, align 4
  br label %13

13:                                               ; preds = %34, %5
  %14 = load i32, i32* %12, align 4
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %9, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %37

18:                                               ; preds = %13
  %19 = load i8*, i8** %8, align 8
  %20 = load i32, i32* %12, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 58
  br i1 %25, label %26, label %33

26:                                               ; preds = %18
  %27 = load %struct.net*, %struct.net** %7, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = load i64, i64* %9, align 8
  %30 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %31 = load i64, i64* %11, align 8
  %32 = call i64 @rpc_pton6(%struct.net* %27, i8* %28, i64 %29, %struct.sockaddr* %30, i64 %31)
  store i64 %32, i64* %6, align 8
  br label %43

33:                                               ; preds = %18
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %12, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %12, align 4
  br label %13

37:                                               ; preds = %13
  %38 = load i8*, i8** %8, align 8
  %39 = load i64, i64* %9, align 8
  %40 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %41 = load i64, i64* %11, align 8
  %42 = call i64 @rpc_pton4(i8* %38, i64 %39, %struct.sockaddr* %40, i64 %41)
  store i64 %42, i64* %6, align 8
  br label %43

43:                                               ; preds = %37, %26
  %44 = load i64, i64* %6, align 8
  ret i64 %44
}

declare dso_local i64 @rpc_pton6(%struct.net*, i8*, i64, %struct.sockaddr*, i64) #1

declare dso_local i64 @rpc_pton4(i8*, i64, %struct.sockaddr*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
