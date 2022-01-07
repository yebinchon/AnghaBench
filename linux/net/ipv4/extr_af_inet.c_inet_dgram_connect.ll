; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_af_inet.c_inet_dgram_connect.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_af_inet.c_inet_dgram_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.sock*, i32)*, i32 (%struct.sock*, %struct.sockaddr*, i32)*, i32 (%struct.sock*, %struct.sockaddr*, i32)* }
%struct.sockaddr = type { i64 }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inet_dgram_connect(%struct.socket* %0, %struct.sockaddr* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sock*, align 8
  %11 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %6, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.socket*, %struct.socket** %6, align 8
  %13 = getelementptr inbounds %struct.socket, %struct.socket* %12, i32 0, i32 0
  %14 = load %struct.sock*, %struct.sock** %13, align 8
  store %struct.sock* %14, %struct.sock** %10, align 8
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = icmp ult i64 %16, 8
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %78

21:                                               ; preds = %4
  %22 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %23 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @AF_UNSPEC, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %21
  %28 = load %struct.sock*, %struct.sock** %10, align 8
  %29 = getelementptr inbounds %struct.sock, %struct.sock* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32 (%struct.sock*, i32)*, i32 (%struct.sock*, i32)** %31, align 8
  %33 = load %struct.sock*, %struct.sock** %10, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i32 %32(%struct.sock* %33, i32 %34)
  store i32 %35, i32* %5, align 4
  br label %78

36:                                               ; preds = %21
  %37 = load %struct.sock*, %struct.sock** %10, align 8
  %38 = call i64 @BPF_CGROUP_PRE_CONNECT_ENABLED(%struct.sock* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %36
  %41 = load %struct.sock*, %struct.sock** %10, align 8
  %42 = getelementptr inbounds %struct.sock, %struct.sock* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32 (%struct.sock*, %struct.sockaddr*, i32)*, i32 (%struct.sock*, %struct.sockaddr*, i32)** %44, align 8
  %46 = load %struct.sock*, %struct.sock** %10, align 8
  %47 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 %45(%struct.sock* %46, %struct.sockaddr* %47, i32 %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %40
  %53 = load i32, i32* %11, align 4
  store i32 %53, i32* %5, align 4
  br label %78

54:                                               ; preds = %40
  br label %55

55:                                               ; preds = %54, %36
  %56 = load %struct.sock*, %struct.sock** %10, align 8
  %57 = call %struct.TYPE_4__* @inet_sk(%struct.sock* %56)
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %55
  %62 = load %struct.sock*, %struct.sock** %10, align 8
  %63 = call i64 @inet_autobind(%struct.sock* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load i32, i32* @EAGAIN, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %5, align 4
  br label %78

68:                                               ; preds = %61, %55
  %69 = load %struct.sock*, %struct.sock** %10, align 8
  %70 = getelementptr inbounds %struct.sock, %struct.sock* %69, i32 0, i32 0
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 2
  %73 = load i32 (%struct.sock*, %struct.sockaddr*, i32)*, i32 (%struct.sock*, %struct.sockaddr*, i32)** %72, align 8
  %74 = load %struct.sock*, %struct.sock** %10, align 8
  %75 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %76 = load i32, i32* %8, align 4
  %77 = call i32 %73(%struct.sock* %74, %struct.sockaddr* %75, i32 %76)
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %68, %65, %52, %27, %18
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i64 @BPF_CGROUP_PRE_CONNECT_ENABLED(%struct.sock*) #1

declare dso_local %struct.TYPE_4__* @inet_sk(%struct.sock*) #1

declare dso_local i64 @inet_autobind(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
