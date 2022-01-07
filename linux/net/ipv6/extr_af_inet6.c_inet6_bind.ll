; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_af_inet6.c_inet6_bind.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_af_inet6.c_inet6_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.sock*, %struct.sockaddr*, i32)* }
%struct.sockaddr = type { i32 }

@SIN6_LEN_RFC2133 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inet6_bind(%struct.socket* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sock*, align 8
  %9 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.socket*, %struct.socket** %5, align 8
  %11 = getelementptr inbounds %struct.socket, %struct.socket* %10, i32 0, i32 0
  %12 = load %struct.sock*, %struct.sock** %11, align 8
  store %struct.sock* %12, %struct.sock** %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.sock*, %struct.sock** %8, align 8
  %14 = getelementptr inbounds %struct.sock, %struct.sock* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (%struct.sock*, %struct.sockaddr*, i32)*, i32 (%struct.sock*, %struct.sockaddr*, i32)** %16, align 8
  %18 = icmp ne i32 (%struct.sock*, %struct.sockaddr*, i32)* %17, null
  br i1 %18, label %19, label %29

19:                                               ; preds = %3
  %20 = load %struct.sock*, %struct.sock** %8, align 8
  %21 = getelementptr inbounds %struct.sock, %struct.sock* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (%struct.sock*, %struct.sockaddr*, i32)*, i32 (%struct.sock*, %struct.sockaddr*, i32)** %23, align 8
  %25 = load %struct.sock*, %struct.sock** %8, align 8
  %26 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 %24(%struct.sock* %25, %struct.sockaddr* %26, i32 %27)
  store i32 %28, i32* %4, align 4
  br label %49

29:                                               ; preds = %3
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @SIN6_LEN_RFC2133, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %49

36:                                               ; preds = %29
  %37 = load %struct.sock*, %struct.sock** %8, align 8
  %38 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %39 = call i32 @BPF_CGROUP_RUN_PROG_INET6_BIND(%struct.sock* %37, %struct.sockaddr* %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %4, align 4
  br label %49

44:                                               ; preds = %36
  %45 = load %struct.sock*, %struct.sock** %8, align 8
  %46 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @__inet6_bind(%struct.sock* %45, %struct.sockaddr* %46, i32 %47, i32 0, i32 1)
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %44, %42, %33, %19
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @BPF_CGROUP_RUN_PROG_INET6_BIND(%struct.sock*, %struct.sockaddr*) #1

declare dso_local i32 @__inet6_bind(%struct.sock*, %struct.sockaddr*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
