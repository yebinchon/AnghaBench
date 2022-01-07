; ModuleID = '/home/carl/AnghaBench/linux/net/9p/extr_trans_rdma.c_p9_rdma_bind_privport.c'
source_filename = "/home/carl/AnghaBench/linux/net/9p/extr_trans_rdma.c_p9_rdma_bind_privport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_trans_rdma = type { i32 }
%struct.sockaddr_in = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr = type { i32 }

@INADDR_ANY = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@P9_DEF_MAX_RESVPORT = common dso_local global i32 0, align 4
@P9_DEF_MIN_RESVPORT = common dso_local global i32 0, align 4
@EADDRINUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.p9_trans_rdma*)* @p9_rdma_bind_privport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p9_rdma_bind_privport(%struct.p9_trans_rdma* %0) #0 {
  %2 = alloca %struct.p9_trans_rdma*, align 8
  %3 = alloca %struct.sockaddr_in, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.p9_trans_rdma* %0, %struct.p9_trans_rdma** %2, align 8
  %6 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 0
  store i32 0, i32* %6, align 4
  %7 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* @INADDR_ANY, align 4
  %10 = call i32 @htonl(i32 %9)
  store i32 %10, i32* %8, align 4
  %11 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 2
  %12 = load i32, i32* @AF_INET, align 4
  store i32 %12, i32* %11, align 4
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* @P9_DEF_MAX_RESVPORT, align 4
  store i32 %15, i32* %4, align 4
  br label %16

16:                                               ; preds = %35, %1
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @P9_DEF_MIN_RESVPORT, align 4
  %19 = icmp sge i32 %17, %18
  br i1 %19, label %20, label %38

20:                                               ; preds = %16
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @htons(i32 %21)
  %23 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %2, align 8
  %25 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = bitcast %struct.sockaddr_in* %3 to %struct.sockaddr*
  %28 = call i32 @rdma_bind_addr(i32 %26, %struct.sockaddr* %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @EADDRINUSE, align 4
  %31 = sub nsw i32 0, %30
  %32 = icmp ne i32 %29, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %20
  br label %38

34:                                               ; preds = %20
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %4, align 4
  br label %16

38:                                               ; preds = %33, %16
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @rdma_bind_addr(i32, %struct.sockaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
