; ModuleID = '/home/carl/AnghaBench/linux/net/rose/extr_af_rose.c_rose_getname.c'
source_filename = "/home/carl/AnghaBench/linux/net/rose/extr_af_rose.c_rose_getname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i64 }
%struct.sockaddr = type { i32 }
%struct.full_sockaddr_rose = type { i32, i32*, i32, i32, i8* }
%struct.rose_sock = type { i32, i32, i32*, i32, i32, i32*, i32, i32 }

@TCP_ESTABLISHED = common dso_local global i64 0, align 8
@ENOTCONN = common dso_local global i32 0, align 4
@AF_ROSE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32)* @rose_getname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rose_getname(%struct.socket* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.full_sockaddr_rose*, align 8
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.rose_sock*, align 8
  %11 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %13 = bitcast %struct.sockaddr* %12 to %struct.full_sockaddr_rose*
  store %struct.full_sockaddr_rose* %13, %struct.full_sockaddr_rose** %8, align 8
  %14 = load %struct.socket*, %struct.socket** %5, align 8
  %15 = getelementptr inbounds %struct.socket, %struct.socket* %14, i32 0, i32 0
  %16 = load %struct.sock*, %struct.sock** %15, align 8
  store %struct.sock* %16, %struct.sock** %9, align 8
  %17 = load %struct.sock*, %struct.sock** %9, align 8
  %18 = call %struct.rose_sock* @rose_sk(%struct.sock* %17)
  store %struct.rose_sock* %18, %struct.rose_sock** %10, align 8
  %19 = load %struct.full_sockaddr_rose*, %struct.full_sockaddr_rose** %8, align 8
  %20 = call i32 @memset(%struct.full_sockaddr_rose* %19, i32 0, i32 32)
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %75

23:                                               ; preds = %3
  %24 = load %struct.sock*, %struct.sock** %9, align 8
  %25 = getelementptr inbounds %struct.sock, %struct.sock* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @TCP_ESTABLISHED, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32, i32* @ENOTCONN, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %119

32:                                               ; preds = %23
  %33 = load i8*, i8** @AF_ROSE, align 8
  %34 = load %struct.full_sockaddr_rose*, %struct.full_sockaddr_rose** %8, align 8
  %35 = getelementptr inbounds %struct.full_sockaddr_rose, %struct.full_sockaddr_rose* %34, i32 0, i32 4
  store i8* %33, i8** %35, align 8
  %36 = load %struct.rose_sock*, %struct.rose_sock** %10, align 8
  %37 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %36, i32 0, i32 7
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.full_sockaddr_rose*, %struct.full_sockaddr_rose** %8, align 8
  %40 = getelementptr inbounds %struct.full_sockaddr_rose, %struct.full_sockaddr_rose* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  %41 = load %struct.rose_sock*, %struct.rose_sock** %10, align 8
  %42 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.full_sockaddr_rose*, %struct.full_sockaddr_rose** %8, align 8
  %45 = getelementptr inbounds %struct.full_sockaddr_rose, %struct.full_sockaddr_rose* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = load %struct.rose_sock*, %struct.rose_sock** %10, align 8
  %47 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.full_sockaddr_rose*, %struct.full_sockaddr_rose** %8, align 8
  %50 = getelementptr inbounds %struct.full_sockaddr_rose, %struct.full_sockaddr_rose* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  store i32 0, i32* %11, align 4
  br label %51

51:                                               ; preds = %71, %32
  %52 = load i32, i32* %11, align 4
  %53 = load %struct.rose_sock*, %struct.rose_sock** %10, align 8
  %54 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %74

57:                                               ; preds = %51
  %58 = load %struct.rose_sock*, %struct.rose_sock** %10, align 8
  %59 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %58, i32 0, i32 5
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.full_sockaddr_rose*, %struct.full_sockaddr_rose** %8, align 8
  %66 = getelementptr inbounds %struct.full_sockaddr_rose, %struct.full_sockaddr_rose* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32 %64, i32* %70, align 4
  br label %71

71:                                               ; preds = %57
  %72 = load i32, i32* %11, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %11, align 4
  br label %51

74:                                               ; preds = %51
  br label %118

75:                                               ; preds = %3
  %76 = load i8*, i8** @AF_ROSE, align 8
  %77 = load %struct.full_sockaddr_rose*, %struct.full_sockaddr_rose** %8, align 8
  %78 = getelementptr inbounds %struct.full_sockaddr_rose, %struct.full_sockaddr_rose* %77, i32 0, i32 4
  store i8* %76, i8** %78, align 8
  %79 = load %struct.rose_sock*, %struct.rose_sock** %10, align 8
  %80 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.full_sockaddr_rose*, %struct.full_sockaddr_rose** %8, align 8
  %83 = getelementptr inbounds %struct.full_sockaddr_rose, %struct.full_sockaddr_rose* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 4
  %84 = load %struct.rose_sock*, %struct.rose_sock** %10, align 8
  %85 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.full_sockaddr_rose*, %struct.full_sockaddr_rose** %8, align 8
  %88 = getelementptr inbounds %struct.full_sockaddr_rose, %struct.full_sockaddr_rose* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 8
  %89 = load %struct.rose_sock*, %struct.rose_sock** %10, align 8
  %90 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.full_sockaddr_rose*, %struct.full_sockaddr_rose** %8, align 8
  %93 = getelementptr inbounds %struct.full_sockaddr_rose, %struct.full_sockaddr_rose* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  store i32 0, i32* %11, align 4
  br label %94

94:                                               ; preds = %114, %75
  %95 = load i32, i32* %11, align 4
  %96 = load %struct.rose_sock*, %struct.rose_sock** %10, align 8
  %97 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp slt i32 %95, %98
  br i1 %99, label %100, label %117

100:                                              ; preds = %94
  %101 = load %struct.rose_sock*, %struct.rose_sock** %10, align 8
  %102 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %101, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.full_sockaddr_rose*, %struct.full_sockaddr_rose** %8, align 8
  %109 = getelementptr inbounds %struct.full_sockaddr_rose, %struct.full_sockaddr_rose* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %11, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  store i32 %107, i32* %113, align 4
  br label %114

114:                                              ; preds = %100
  %115 = load i32, i32* %11, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %11, align 4
  br label %94

117:                                              ; preds = %94
  br label %118

118:                                              ; preds = %117, %74
  store i32 32, i32* %4, align 4
  br label %119

119:                                              ; preds = %118, %29
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local %struct.rose_sock* @rose_sk(%struct.sock*) #1

declare dso_local i32 @memset(%struct.full_sockaddr_rose*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
