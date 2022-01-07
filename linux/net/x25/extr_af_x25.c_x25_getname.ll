; ModuleID = '/home/carl/AnghaBench/linux/net/x25/extr_af_x25.c_x25_getname.c'
source_filename = "/home/carl/AnghaBench/linux/net/x25/extr_af_x25.c_x25_getname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i64 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_x25 = type { i32, i32 }
%struct.x25_sock = type { i32, i32 }

@TCP_ESTABLISHED = common dso_local global i64 0, align 8
@ENOTCONN = common dso_local global i32 0, align 4
@AF_X25 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32)* @x25_getname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x25_getname(%struct.socket* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr_x25*, align 8
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.x25_sock*, align 8
  %10 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %4, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %12 = bitcast %struct.sockaddr* %11 to %struct.sockaddr_x25*
  store %struct.sockaddr_x25* %12, %struct.sockaddr_x25** %7, align 8
  %13 = load %struct.socket*, %struct.socket** %4, align 8
  %14 = getelementptr inbounds %struct.socket, %struct.socket* %13, i32 0, i32 0
  %15 = load %struct.sock*, %struct.sock** %14, align 8
  store %struct.sock* %15, %struct.sock** %8, align 8
  %16 = load %struct.sock*, %struct.sock** %8, align 8
  %17 = call %struct.x25_sock* @x25_sk(%struct.sock* %16)
  store %struct.x25_sock* %17, %struct.x25_sock** %9, align 8
  store i32 0, i32* %10, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %3
  %21 = load %struct.sock*, %struct.sock** %8, align 8
  %22 = getelementptr inbounds %struct.sock, %struct.sock* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @TCP_ESTABLISHED, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i32, i32* @ENOTCONN, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %10, align 4
  br label %45

29:                                               ; preds = %20
  %30 = load %struct.x25_sock*, %struct.x25_sock** %9, align 8
  %31 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.sockaddr_x25*, %struct.sockaddr_x25** %7, align 8
  %34 = getelementptr inbounds %struct.sockaddr_x25, %struct.sockaddr_x25* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  br label %41

35:                                               ; preds = %3
  %36 = load %struct.x25_sock*, %struct.x25_sock** %9, align 8
  %37 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.sockaddr_x25*, %struct.sockaddr_x25** %7, align 8
  %40 = getelementptr inbounds %struct.sockaddr_x25, %struct.sockaddr_x25* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %35, %29
  %42 = load i32, i32* @AF_X25, align 4
  %43 = load %struct.sockaddr_x25*, %struct.sockaddr_x25** %7, align 8
  %44 = getelementptr inbounds %struct.sockaddr_x25, %struct.sockaddr_x25* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  store i32 8, i32* %10, align 4
  br label %45

45:                                               ; preds = %41, %26
  %46 = load i32, i32* %10, align 4
  ret i32 %46
}

declare dso_local %struct.x25_sock* @x25_sk(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
