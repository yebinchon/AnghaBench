; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_bind_addr.c_sctp_copy_one_addr.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_bind_addr.c_sctp_copy_one_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sctp_bind_addr = type { i32 }
%union.sctp_addr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@AF_INET = common dso_local global i64 0, align 8
@SCTP_ADDR4_PEERSUPP = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@SCTP_ADDR6_ALLOWED = common dso_local global i32 0, align 4
@SCTP_ADDR6_PEERSUPP = common dso_local global i32 0, align 4
@SCTP_ADDR_SRC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sctp_bind_addr*, %union.sctp_addr*, i32, i32, i32)* @sctp_copy_one_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_copy_one_addr(%struct.net* %0, %struct.sctp_bind_addr* %1, %union.sctp_addr* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.sctp_bind_addr*, align 8
  %9 = alloca %union.sctp_addr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %7, align 8
  store %struct.sctp_bind_addr* %1, %struct.sctp_bind_addr** %8, align 8
  store %union.sctp_addr* %2, %union.sctp_addr** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %14 = load %union.sctp_addr*, %union.sctp_addr** %9, align 8
  %15 = call i64 @sctp_is_any(i32* null, %union.sctp_addr* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %6
  %18 = load %struct.net*, %struct.net** %7, align 8
  %19 = load %struct.sctp_bind_addr*, %struct.sctp_bind_addr** %8, align 8
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %12, align 4
  %23 = call i32 @sctp_copy_local_addr_list(%struct.net* %18, %struct.sctp_bind_addr* %19, i32 %20, i32 %21, i32 %22)
  store i32 %23, i32* %13, align 4
  br label %67

24:                                               ; preds = %6
  %25 = load %struct.net*, %struct.net** %7, align 8
  %26 = load %union.sctp_addr*, %union.sctp_addr** %9, align 8
  %27 = load i32, i32* %10, align 4
  %28 = call i64 @sctp_in_scope(%struct.net* %25, %union.sctp_addr* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %66

30:                                               ; preds = %24
  %31 = load i64, i64* @AF_INET, align 8
  %32 = load %union.sctp_addr*, %union.sctp_addr** %9, align 8
  %33 = bitcast %union.sctp_addr* %32 to %struct.TYPE_2__*
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %31, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %30
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* @SCTP_ADDR4_PEERSUPP, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %59, label %42

42:                                               ; preds = %37, %30
  %43 = load i64, i64* @AF_INET6, align 8
  %44 = load %union.sctp_addr*, %union.sctp_addr** %9, align 8
  %45 = bitcast %union.sctp_addr* %44 to %struct.TYPE_2__*
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %43, %47
  br i1 %48, label %49, label %65

49:                                               ; preds = %42
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* @SCTP_ADDR6_ALLOWED, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %49
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* @SCTP_ADDR6_PEERSUPP, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %54, %37
  %60 = load %struct.sctp_bind_addr*, %struct.sctp_bind_addr** %8, align 8
  %61 = load %union.sctp_addr*, %union.sctp_addr** %9, align 8
  %62 = load i32, i32* @SCTP_ADDR_SRC, align 4
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @sctp_add_bind_addr(%struct.sctp_bind_addr* %60, %union.sctp_addr* %61, i32 8, i32 %62, i32 %63)
  store i32 %64, i32* %13, align 4
  br label %65

65:                                               ; preds = %59, %54, %49, %42
  br label %66

66:                                               ; preds = %65, %24
  br label %67

67:                                               ; preds = %66, %17
  %68 = load i32, i32* %13, align 4
  ret i32 %68
}

declare dso_local i64 @sctp_is_any(i32*, %union.sctp_addr*) #1

declare dso_local i32 @sctp_copy_local_addr_list(%struct.net*, %struct.sctp_bind_addr*, i32, i32, i32) #1

declare dso_local i64 @sctp_in_scope(%struct.net*, %union.sctp_addr*, i32) #1

declare dso_local i32 @sctp_add_bind_addr(%struct.sctp_bind_addr*, %union.sctp_addr*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
