; ModuleID = '/home/carl/AnghaBench/linux/net/key/extr_af_key.c_parse_sockaddr_pair.c'
source_filename = "/home/carl/AnghaBench/linux/net/key/extr_af_key.c_parse_sockaddr_pair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockaddr*, i32, i32*, i32*, i32*)* @parse_sockaddr_pair to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_sockaddr_pair(%struct.sockaddr* %0, i32 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sockaddr* %0, %struct.sockaddr** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 2
  br i1 %15, label %23, label %16

16:                                               ; preds = %5
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %19 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @pfkey_sockaddr_pair_size(i32 %20)
  %22 = icmp slt i32 %17, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %16, %5
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %54

26:                                               ; preds = %16
  %27 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = call i32 @pfkey_sockaddr_extract(%struct.sockaddr* %27, i32* %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %54

35:                                               ; preds = %26
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @pfkey_sockaddr_len(i32 %36)
  store i32 %37, i32* %13, align 4
  %38 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %39 = bitcast %struct.sockaddr* %38 to i32*
  %40 = load i32, i32* %13, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = bitcast i32* %42 to %struct.sockaddr*
  %44 = load i32*, i32** %10, align 8
  %45 = call i32 @pfkey_sockaddr_extract(%struct.sockaddr* %43, i32* %44)
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %35
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %6, align 4
  br label %54

51:                                               ; preds = %35
  %52 = load i32, i32* %12, align 4
  %53 = load i32*, i32** %11, align 8
  store i32 %52, i32* %53, align 4
  store i32 0, i32* %6, align 4
  br label %54

54:                                               ; preds = %51, %48, %32, %23
  %55 = load i32, i32* %6, align 4
  ret i32 %55
}

declare dso_local i32 @pfkey_sockaddr_pair_size(i32) #1

declare dso_local i32 @pfkey_sockaddr_extract(%struct.sockaddr*, i32*) #1

declare dso_local i32 @pfkey_sockaddr_len(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
