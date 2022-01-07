; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_utils.c_inet_addr_is_any.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_utils.c_inet_addr_is_any.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.sockaddr = type { i64 }
%struct.sockaddr_in6 = type { %struct.TYPE_4__ }
%struct.sockaddr_in = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@AF_INET6 = common dso_local global i64 0, align 8
@IN6ADDR_ANY_INIT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@AF_INET = common dso_local global i64 0, align 8
@INADDR_ANY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"unexpected address family %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inet_addr_is_any(%struct.sockaddr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sockaddr*, align 8
  %4 = alloca %struct.sockaddr_in6*, align 8
  %5 = alloca %struct.sockaddr_in6, align 4
  %6 = alloca %struct.sockaddr_in*, align 8
  store %struct.sockaddr* %0, %struct.sockaddr** %3, align 8
  %7 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8
  %8 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @AF_INET6, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %28

12:                                               ; preds = %1
  %13 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8
  %14 = bitcast %struct.sockaddr* %13 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %14, %struct.sockaddr_in6** %4, align 8
  %15 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %5, i32 0, i32 0
  %16 = bitcast %struct.TYPE_4__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 bitcast (%struct.TYPE_4__* @IN6ADDR_ANY_INIT to i8*), i64 4, i1 false)
  %17 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %4, align 8
  %18 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %5, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @memcmp(i32 %20, i32 %23, i32 16)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %12
  store i32 1, i32* %2, align 4
  br label %53

27:                                               ; preds = %12
  br label %52

28:                                               ; preds = %1
  %29 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8
  %30 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @AF_INET, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %28
  %35 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8
  %36 = bitcast %struct.sockaddr* %35 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %36, %struct.sockaddr_in** %6, align 8
  %37 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %38 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* @INADDR_ANY, align 4
  %42 = call i64 @htonl(i32 %41)
  %43 = icmp eq i64 %40, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  store i32 1, i32* %2, align 4
  br label %53

45:                                               ; preds = %34
  br label %51

46:                                               ; preds = %28
  %47 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8
  %48 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @pr_warn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %49)
  br label %51

51:                                               ; preds = %46, %45
  br label %52

52:                                               ; preds = %51, %27
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %52, %44, %26
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memcmp(i32, i32, i32) #2

declare dso_local i64 @htonl(i32) #2

declare dso_local i32 @pr_warn(i8*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
